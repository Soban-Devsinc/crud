class AddNullConstraintsToProjects < ActiveRecord::Migration[7.1]
  def change
    change_column_null :projects, :title, false
    change_column_null :projects, :description, false

  end
end
