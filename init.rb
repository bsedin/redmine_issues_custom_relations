require 'custom_relations_hook_listener'
require 'issue_patch'
require 'project_patch'
require 'issues_helper_patch'

Redmine::Plugin.register :issues_custom_relations do
  name 'Issues Custom Relations plugin'
  author 'Sergey Besedin'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://github.com/kressh/redmine_issues_custom_relations'
  author_url 'http://github.com/kressh/redmine_issues_custom_relations'
  # settings :default => {'empty' => true}, :partial => 'settings/custom_relations_settings'
end
