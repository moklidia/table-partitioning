CREATE TRIGGER partitioned_purchases_insert_trigger_v1
BEFORE INSERT ON partitioned_purchases
FOR EACH ROW EXECUTE PROCEDURE prevent_insert_on_master_partitioned_purchases_table_trigger_procedure_v1()