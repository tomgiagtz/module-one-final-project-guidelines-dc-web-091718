class CreatePeriods < ActiveRecord::Migration[5.2]
  def change
    create_table :periods do |t|
      t.string :name
      t.integer :price
      t.integer :region_id
    end
  end
end
