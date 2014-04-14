module CustomRelations
  module Hooks
    class ControllerIssuesNewAfterSaveHook < Redmine::Hook::ViewListener
      def controller_issues_new_after_save(context={})

        if context[:params] && context[:params][:issue] && !context[:issue].new_record?
          if context[:params][:issue][:custom_relations_values] && context[:params][:issue][:custom_relations_values].any?
            context[:params][:issue][:custom_relations_values].each do |field_id, issue_to_id|
              context[:issue].custom_relations_values.create(custom_relations_field_id: field_id, issue_to_id: issue_to_id) if issue_to_id.present?
            end
          end
        end

        return ''
      end 
    end
  end
end
