class CustomRelationsController < ApplicationController
  unloadable

  def create
    @custom_relations_value =
      CustomRelationsValue.where(
        permitted_params.slice(:issue_id, :custom_relations_field_id)
      ).first_or_initialize

    flash[:notice] =
      if permitted_params[:issue_to_id].blank?
        l(:notice_successful_update) if @custom_relations_value.destroy
      else @custom_relations_value.update_attributes(issue_to_id: permitted_params[:issue_to_id])
        l(:notice_successful_update)
      end
    redirect_to :back
  end

  private

  def permitted_params
    params.require(:custom_relations_value)
          .permit(:issue_id, :custom_relations_field_id, :issue_to_id)
  end
end
