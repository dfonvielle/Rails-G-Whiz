class CreateDesires < ActiveRecord::Migration
  def change
    create_table :desires do |t|
      t.string :user
      t.string :business
      t.boolean :done

      t.timestamps
    end
  end
end
