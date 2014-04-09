class CustomRelationsController < ApplicationController
  unloadable

  def index
    @custom_relations_fields = CustomRelationsField.all
  end

  def new
  end

  def create
    CustomRelationsValue.find_or_create_by(custom_relations_field_id: params[:custom_relations_field_id], issue_id: params[:issue_id], issue_to_id: params[:issue_to_id])
  end

end
