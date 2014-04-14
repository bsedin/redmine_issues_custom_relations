module CustomRelations
  module Hooks
    class ViewIssuesFormDetailsBottomHook < Redmine::Hook::ViewListener
      render_on :view_issues_form_details_bottom, :partial => "issues/new_issue_custom_relations"
    end
  end
end
