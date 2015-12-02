class CreateLogisticUsers < ActiveRecord::Migration
  def change
    create_table :logistic_users do |t|

      t.timestamps null: false
    end
  end
end
