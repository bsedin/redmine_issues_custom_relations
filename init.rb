require 'issue_patch'
require 'project_patch'
require 'issues_helper_patch'

Redmine::Plugin.register :issues_custom_relations do
  name 'Issues Custom Relations plugin'
  author 'Sergey Besedin'
  description 'This is a plugin for Redmine'
  version '0.1.0'
  url 'http://github.com/kressh/redmine_issues_custom_relations'
  author_url 'http://github.com/kressh/redmine_issues_custom_relations'
  # settings :default => {'empty' => true}, :partial => 'settings/custom_relations_settings'
  menu :admin_menu, :custom_relations_fields, { :controller => 'custom_relations_fields', :action => 'index' }, :caption => 'Custom Relations Fields'

  permission :view_custom_relations_fields, :custom_relations_fields => :index
  permission :edit_custom_relations_fields, :custom_relations_fields => [:create, :update, :new, :destroy]
end

require 'custom_relations/hooks/controller_issues_new_after_save_hook'
require 'custom_relations/hooks/view_issues_form_details_bottom_hook'
require 'custom_relations/hooks/view_issues_show_details_bottom_hook'
