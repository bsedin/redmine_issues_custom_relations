class CustomRelationsValue < ActiveRecord::Base
  unloadable

  belongs_to :custom_relations_field
  belongs_to :issue
  belongs_to :related_issue, :class_name => 'Issue', :foreign_key => 'issue_to_id'
  
  validates_presence_of :issue_id, :issue_to_id, :custom_relations_field_id
end
