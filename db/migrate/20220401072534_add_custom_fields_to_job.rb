class AddCustomFieldsToJob < ActiveRecord::Migration[7.0]
  def change
    rename_column :jobs, :skills, :activity
    add_column :jobs, :is_salary, :boolean, default: false
    add_column :jobs, :currency, :string
    add_column :jobs, :level, :string
    add_column :jobs, :skills, :string
  end
end
