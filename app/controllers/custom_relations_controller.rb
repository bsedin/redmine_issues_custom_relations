class CustomRelationsController < ApplicationController
  unloadable

  def create
    custom_relations_attributes = params[:custom_relations_value].slice(:issue_id, :custom_relations_field_id)
    @custom_relations_value = CustomRelationsValue.where(custom_relations_attributes).first
    @custom_relations_value = CustomRelationsValue.new(custom_relations_attributes) unless @custom_relations_value
    if params[:custom_relations_value][:issue_to_id].blank?
      flash[:notice] = l(:notice_successful_update) if @custom_relations_value.destroy
    else @custom_relations_value.update_attributes(issue_to_id: params[:custom_relations_value][:issue_to_id])
      flash[:notice] = l(:notice_successful_update)
    end
    redirect_to :back
  end

end
