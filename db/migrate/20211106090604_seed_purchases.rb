class SeedPurchases < ActiveRecord::Migration[6.1]
  def up
    dates = (Date.today.beginning_of_year..Date.today.to_datetime).select { |d| d.day == 1 }

    dates.each do |date|
      FactoryBot.create(:purchase, date: date )
    end
  end

  def down
    Purchase.destroy_all
  end
end
