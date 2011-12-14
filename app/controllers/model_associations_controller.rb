class ModelAssociationsController < ApplicationController
  # GET /model_associations
  # GET /model_associations.json
  def index
    @model_associations = ModelAssociation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @model_associations }
    end
  end

  # GET /model_associations/1
  # GET /model_associations/1.json
  def show
    @model_association = ModelAssociation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @model_association }
    end
  end

  # GET /model_associations/new
  # GET /model_associations/new.json
  def new
    @model_association = ModelAssociation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @model_association }
    end
  end

  # GET /model_associations/1/edit
  def edit
    @model_association = ModelAssociation.find(params[:id])
  end

  # POST /model_associations
  # POST /model_associations.json
  def create
    @model_association = ModelAssociation.new(params[:model_association])

    respond_to do |format|
      if @model_association.save
        format.html { redirect_to @model_association, notice: 'Model association was successfully created.' }
        format.json { render json: @model_association, status: :created, location: @model_association }
      else
        format.html { render action: "new" }
        format.json { render json: @model_association.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /model_associations/1
  # PUT /model_associations/1.json
  def update
    @model_association = ModelAssociation.find(params[:id])

    respond_to do |format|
      if @model_association.update_attributes(params[:model_association])
        format.html { redirect_to @model_association, notice: 'Model association was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @model_association.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /model_associations/1
  # DELETE /model_associations/1.json
  def destroy
    @model_association = ModelAssociation.find(params[:id])
    @model_association.destroy

    respond_to do |format|
      format.html { redirect_to model_associations_url }
      format.json { head :ok }
    end
  end
end
