class CreatePurchasesViewInsertTrigger < ActiveRecord::Migration[6.1]
  def change
    file_path = Rails.root.join('db', 'triggers', 'purchases_view_insert_trigger_v1.sql')

    sql = File.read(file_path)

    execute(sql)
  end
end
