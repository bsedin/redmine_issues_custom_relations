class CreateCustomRelationsValues < ActiveRecord::Migration
  def change
    create_table :custom_relations_values do |t|
      t.integer :issue_id, :null => false
      t.integer :custom_relations_field_id, :null => false
      t.integer :related_issue_id, :null => false
    end
    add_index :custom_relations_values, :issue_id
    add_index :custom_relations_values, :custom_relations_field_id
    add_index :custom_relations_values, :related_issue_id
  end
end
