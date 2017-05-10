class CreateAlerts < ActiveRecord::Migration[5.0]
  def change
    create_table :alerts do |t|
      t.integer :type_alert, :limit => 8, :null => false
      t.string :title, :limit => 20, :null => false
      t.text :description, :null => false
      t.string :photo, :limit => 25

      t.timestamps
    end
  end
end
