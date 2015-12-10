class CustomRelationsFieldsController < ApplicationController
  unloadable

  layout 'admin'

  helper_method :custom_relations_fields, :custom_relations_field

  before_filter :require_admin
  # before_filter :authorize

  def index
  end

  def new
    @resource = CustomRelationsField.new
  end

  def create
    @resource = CustomRelationsField.new(permitted_params)
    if resource.save
      flash[:notice] = l(:notice_successful_create)
      redirect_to custom_relations_fields_path
    else
      render :action => 'new'
    end
  end

  def edit
  end

  def update
    if resource.update_attributes(permitted_params)
      flash[:notice] = l(:notice_successful_update)
      redirect_to custom_relations_fields_path
    else
      render :action => 'edit'
    end
  end

  def destroy
    if resource.destroy
      flash[:notice] = l(:notice_successful_delete)
    end
    redirect_to custom_relations_fields_path
  end

  private

  def resource
    @resource ||=
      begin
        CustomRelationsField.find(params[:id])
      rescue ActiveRecord::RecordNotFound
        render_404
      end
  end

  alias_method :custom_relations_field, :resource

  def collection
    @collection ||= CustomRelationsField.all
  end

  alias_method :custom_relations_fields, :collection

  def permitted_params
    params.require(:custom_relations_field)
          .permit(:project_to_id, :project_to_id, :name, :custom_field_id)
  end
end
