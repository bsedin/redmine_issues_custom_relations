class CustomRelationsField < ActiveRecord::Base
  unloadable

  belongs_to :project
  belongs_to :target_project, :class_name => 'Project', :foreign_key => 'project_to_id'
  belongs_to :custom_field
  has_many :custom_relations_values, :dependent => :destroy

  validates_presence_of :project_id, :project_to_id, :name, :custom_field_id

end
