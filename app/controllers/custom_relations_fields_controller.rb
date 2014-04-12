class CustomRelationsFieldsController < ApplicationController
  unloadable

  layout 'admin'

  before_filter :require_admin
  before_filter :find_custom_relations_field, :only => [:edit, :update, :destroy]
  # before_filter :authorize

  def index
    @custom_relations_fields = CustomRelationsField.all
  end

  def new
    @custom_relations_field = CustomRelationsField.new
  end

  def create
    @custom_relations_field = CustomRelationsField.new(params[:custom_relations_field])
    if @custom_relations_field.save
      flash[:notice] = l(:notice_successful_create)
      redirect_to custom_relations_fields_path
    else
      render :action => 'new'
    end
  end

  def edit
  end

  def update
    if @custom_relations_field.update_attributes(params[:custom_relations_field])
      flash[:notice] = l(:notice_successful_update)
      redirect_to custom_relations_fields_path
    else
      render :action => 'edit'
    end
  end

  def destroy
    if @custom_relations_field.destroy
      flash[:notice] = l(:notice_successful_delete)
    end
    redirect_to custom_relations_fields_path
  end

private
  def find_custom_relations_field
    @custom_relations_field = CustomRelationsField.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render_404
  end


end
