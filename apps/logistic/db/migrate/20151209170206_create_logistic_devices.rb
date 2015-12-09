class CreateLogisticDevices < ActiveRecord::Migration
  def change
    create_table :logistic_devices do |t|
      t.string :token
      t.integer :device_type, default: 0

      t.timestamps null: false
    end
  end
end
