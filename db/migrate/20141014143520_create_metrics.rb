class CreateMetrics < ActiveRecord::Migration
  def change
    create_table :metrics do |t|
      t.integer :user_id
      t.integer :energy
      t.integer :happiness
      t.integer :productivity
      t.integer :fulfillment
      t.integer :day

      t.timestamps
    end
  end
end
