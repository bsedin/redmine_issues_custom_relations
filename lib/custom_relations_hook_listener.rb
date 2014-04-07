class CustomRelationsHookListener < Redmine::Hook::ViewListener
  render_on :view_issues_show_details_bottom, :partial => "custom_relations/issue_relations"
end
