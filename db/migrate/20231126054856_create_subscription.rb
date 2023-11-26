class CreateSubscription < ActiveRecord::Migration[7.0]
  def change
    create_table :subscriptions do |t|
      t.string :title
      t.integer :status
      t.float :price
      t.integer :frequency

      t.timestamps
    end
  end
end
