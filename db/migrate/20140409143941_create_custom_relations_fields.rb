class CreateCustomRelationsFields < ActiveRecord::Migration
  def change
    create_table :custom_relations_fields do |t|
      t.string :name, :null => false
      t.integer :custom_field_id, :null => false
      t.integer :project_id, :null => false
    end
    add_index :custom_relations_fields, :custom_field_id
    add_index :custom_relations_fields, :project_id
  end
end
