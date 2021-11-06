class CreatePartitionedPurchases < ActiveRecord::Migration[6.1]
  def change
    create_table_command = 'CREATE TABLE partitioned_purchases (LIKE purchases INCLUDING ALL)'
    ActiveRecord::Base.connection.execute(create_table_command)
  end
end
