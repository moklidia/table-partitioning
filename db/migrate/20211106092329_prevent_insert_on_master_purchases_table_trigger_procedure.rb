class PreventInsertOnMasterPurchasesTableTriggerProcedure < ActiveRecord::Migration[6.1]
  def change
    file_path = Rails.root.join('db', 'procedures', 'prevent_insert_on_master_partitioned_purchases_table_v1.sql')
    sql = File.read(file_path)
    execute(sql)
  end
end
