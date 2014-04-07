class CustomRelationsController < ApplicationController
  unloadable

  def index
    @custom_relations_fields = CustomRelationsField.all
  end

  def new
  end

  def create
  end

end
