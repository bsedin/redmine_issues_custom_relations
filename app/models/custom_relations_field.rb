class CustomRelationsField < ActiveRecord::Base
  unloadable

  belongs_to :project
  belongs_to :custom_field
  has_many :custom_relations_values

end
