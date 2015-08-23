class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t| #Creating a model in rails does not create a database. It simply creates a method of information
                               # transfer. Rails uses the model you created as a basis to create a database. It does so when you
                               # hit the "rake db:migrate" command into the terminal after having created the model.
      t.string :name
      t.string :email
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
