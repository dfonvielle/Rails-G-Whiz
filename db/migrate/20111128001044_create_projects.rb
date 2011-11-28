class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :user_id
      t.string :name
      t.string :mvp
      t.string :github
      t.string :heroku
      t.string :mockup

      t.timestamps
    end
  end
end
