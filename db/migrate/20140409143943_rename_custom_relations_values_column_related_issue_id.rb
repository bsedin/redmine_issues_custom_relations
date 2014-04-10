class RenameCustomRelationsValuesColumnRelatedIssueId < ActiveRecord::Migration
  def change
    rename_column :custom_relations_values, :related_issue_id, :issue_to_id
  end
end
