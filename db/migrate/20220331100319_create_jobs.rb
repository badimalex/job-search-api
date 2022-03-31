class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.integer :salary
      t.string :company
      t.string :avatar
      t.decimal :rating
      t.text :skills

      t.timestamps
    end
  end
end
