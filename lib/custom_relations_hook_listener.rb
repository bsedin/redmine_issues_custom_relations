class CustomRelationsHookListener < Redmine::Hook::ViewListener
  render_on :view_issues_show_details_bottom, :partial => "issues/issue_custom_relations"
end
