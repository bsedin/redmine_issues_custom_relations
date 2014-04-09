class CustomRelationsFieldsController < ApplicationController
  unloadable

  # before_filter :authorize

  def index
    @custom_relations_fields = CustomRelationsField.all
  end

  def new
    @custom_relations_field = CustomRelationsField.new
  end

  def create
    @custom_relations_field = CustomRelationsField.new(params[:custom_relations_field])
    if @custom_relations_field.save!
      flash[:notice] = l(:notice_custom_relations_field_successful_create)
    end
    redirect_to :action => :index
  end

end
