class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.references  :user, index: true
      t.string      :name
      t.text        :description
      t.date        :finish_by
      t.boolean     :accomplished

      t.timestamps null: false
      t.index   [:user_id, :created_at]
    end
  end
end
