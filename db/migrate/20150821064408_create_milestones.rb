class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.string    :name
      t.string    :description
      t.date      :finish_by
      t.boolean   :accomplished

      t.timestamps null: false
    end
  end
end
