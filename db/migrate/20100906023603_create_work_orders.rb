class CreateWorkOrders < ActiveRecord::Migration
  def self.up
    create_table :work_orders do |t|
      t.string :subject, :null => false
      t.text :description, :null => false
      t.boolean :closed
      t.string :closed_by
      t.datetime :closed_date
      t.text :resolution
      t.integer :user_id, :null => false
      t.integer :assigned_to_id
      t.text :assigned_to_username
      t.integer :priority_list_id
      t.integer :status_id, :null => false, :default => 1
      t.string :created_by
      t.string :edited_by

      t.timestamps
    end
  end

  def self.down
    drop_table :work_orders
  end
end
