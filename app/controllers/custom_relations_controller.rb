class CustomRelationsController < ApplicationController
  unloadable

  def create
    @custom_relations_value = CustomRelationsValue.new(params[:custom_relations_value])
    if @custom_relations_value.save!
      flash[:notice] = l(:notice_custom_relations_value_successful_create)
    end
    redirect_to :back
  end

end
