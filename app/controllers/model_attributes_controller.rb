class ModelAttributesController < ApplicationController
  # GET /model_attributes
  # GET /model_attributes.json
  def index
    @model_attributes = ModelAttribute.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @model_attributes }
    end
  end

  # GET /model_attributes/1
  # GET /model_attributes/1.json
  def show
    @model_attribute = ModelAttribute.find(params[:id])
    @part = @model_attribute.part
    @all_model_attributes = @part.model_attributes

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @model_attribute }
    end
  end

  # GET /model_attributes/new
  # GET /model_attributes/new.json
  def new
    @model_attribute = ModelAttribute.new
    @part = Part.find_by_id(params[:current_part_id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @model_attribute }
    end
  end

  # GET /model_attributes/1/edit
  def edit
    @model_attribute = ModelAttribute.find(params[:id])
    @part = Part.find_by_id(params[@model_attribute.part_id])
    
  end

  # POST /model_attributes
  # POST /model_attributes.json
  def create
    @model_attribute = ModelAttribute.new(params[:model_attribute])

    respond_to do |format|
      if @model_attribute.save
        format.html { redirect_to project_path(@model_attribute.part.project.id), notice: 'Model attribute was successfully created.' }
        format.json { render json: @model_attribute, status: :created, location: @model_attribute }
      else
        format.html { render action: "new" }
        format.json { render json: @model_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /model_attributes/1
  # PUT /model_attributes/1.json
  def update
    @model_attribute = ModelAttribute.find(params[:id])

    respond_to do |format|
      if @model_attribute.update_attributes(params[:model_attribute])
        format.html { redirect_to @model_attribute, notice: 'Model attribute was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @model_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /model_attributes/1
  # DELETE /model_attributes/1.json
  def destroy
    @model_attribute = ModelAttribute.find(params[:id])
    @model_attribute.destroy

    respond_to do |format|
      format.html { redirect_to model_attributes_url }
      format.json { head :ok }
    end
  end
end
