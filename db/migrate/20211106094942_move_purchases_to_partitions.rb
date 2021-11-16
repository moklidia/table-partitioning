class MovePurchasesToPartitions < ActiveRecord::Migration[6.1]
  def change
    sql = "INSERT INTO purchases_view
           SELECT * FROM purchases"
    execute(sql)
  end
end
