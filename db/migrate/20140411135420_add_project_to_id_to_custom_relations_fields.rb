class AddProjectToIdToCustomRelationsFields < ActiveRecord::Migration
  def change
    add_column :custom_relations_fields, :project_to_id, :integer
    add_index :custom_relations_fields, :project_to_id
  end
end
