CREATE OR REPLACE FUNCTION prevent_insert_on_master_partitioned_purchases_table_trigger_procedure_v1()
RETURNS TRIGGER AS $BODY$
BEGIN
  RAISE EXCEPTION 'Insert on the master partitioned_purchases table is forbidden';

  RETURN NULL;
END;
$BODY$
LANGUAGE plpgsql;
