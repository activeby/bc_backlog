class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :uid
      t.string :project
      t.string :message
      t.string :stakeholder
      t.integer :time
      t.integer :position

      t.timestamps
    end
  end
end
