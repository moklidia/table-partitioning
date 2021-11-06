class CreatePurchasesViewInsertTriggerProcedure < ActiveRecord::Migration[6.1]
  def change
    file_path = Rails.root.join('db', 'procedures', 'purchases_view_insert_trigger_procedure_v1.sql')
    sql = File.read(file_path)

    execute(sql)
  end
end
