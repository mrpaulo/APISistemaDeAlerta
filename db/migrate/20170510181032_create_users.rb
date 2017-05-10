class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.integer :type_user, :limit => 8, :null => false
      t.string :name_user, :limit => 40, :null => false
      t.string :phone, :limit => 16
      t.point :localization_user
      t.string :password, :limit => 12, :null => false
      t.boolean :notification_phone, :default => false

      t.timestamps
    end
  end
end
