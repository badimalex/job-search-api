class CreateResumes < ActiveRecord::Migration[7.0]
  def change
    create_table :resumes do |t|
      t.string :name
      t.text :level
      t.string :avatar
      t.boolean :is_search_job
      t.text :tags
      t.integer :experience
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
