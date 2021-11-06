class CreatePurchasesView < ActiveRecord::Migration[6.1]
  def change
    create_view(:purchases_view)

    sql = "ALTER VIEW purchases_view
      ALTER COLUMN id
      SET DEFAULT nextval('purchases_id_seq'::regclass)"

    ActiveRecord::Base.connection.execute(sql)
  end
end
