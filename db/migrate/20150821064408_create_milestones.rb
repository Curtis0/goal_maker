class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.references  :goal, index: true
      t.string      :name
      t.string      :description
      t.date        :finish_by
      t.boolean     :accomplished

      t.timestamps null: false
      t.index   [:goal_id, :created_at]
    end
  end
end
