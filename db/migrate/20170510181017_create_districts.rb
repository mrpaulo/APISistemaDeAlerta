class CreateDistricts < ActiveRecord::Migration[5.0]
  def change
    create_table :districts do |t|
      t.string :name_district, :limit => 40, :null => false
      t.point :localization_district, :null => false

      t.timestamps
    end
  end
end
