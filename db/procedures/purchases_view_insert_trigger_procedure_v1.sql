CREATE OR REPLACE FUNCTION purchases_view_insert_trigger_procedure_v1() RETURNS TRIGGER AS $BODY$
DECLARE
  partition TEXT;
  partition_date TIMESTAMP;
  partition_month TEXT;
  partition_year TEXT;
  start_date TIMESTAMP;
  end_date TIMESTAMP;
BEGIN

  /* Build a name for a new table */
  partition_date     := date_trunc('day', NEW.date);
  partition_month    := date_part('month', NEW.date);
  partition_year     := date_part('year', NEW.date);
  start_date         := date_trunc('month', NEW.date);
  end_date           := start_date + interval '1 month';
  partition          := 'partitioned_purchases' || '_' || partition_year || '_' || partition_month;

  /* Create a child table, if necessary */

  IF NOT EXISTS(SELECT relname FROM pg_class WHERE relname = partition) THEN

    RAISE NOTICE 'A new plaid transactions partition will be created: %', partition;

    EXECUTE 'CREATE TABLE IF NOT EXISTS ' || partition || ' (CHECK (
      date_trunc(''day'', date) >= ''' || start_date || ''' AND
      date_trunc(''day'', date)  < ''' || end_date || '''))
      INHERITS (partitioned_purchases);';

    EXECUTE 'ALTER TABLE ' || partition || ' ADD PRIMARY KEY (id)';
    EXECUTE 'CREATE INDEX IF NOT EXISTS ' || partition || '_user_id ON ' || partition || ' (user_id)';
  END IF;

  EXECUTE 'INSERT INTO ' || partition || ' SELECT(purchases  ' || quote_literal(NEW) || ').* RETURNING id';

RETURN NEW;
END;
$BODY$
LANGUAGE plpgsql;
