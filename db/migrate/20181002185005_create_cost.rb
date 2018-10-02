class CreateCost < ActiveRecord::Migration[5.2]
	def change
		create_table :costs do |t|
			t.string :zip_code
			t.float :avg_cost
		end
	end
end
