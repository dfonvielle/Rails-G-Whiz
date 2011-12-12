class ResourceViewsController < ApplicationController
  # GET /resource_views
  # GET /resource_views.json
  def index
    @resource_views = ResourceView.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @resource_views }
    end
  end

  # GET /resource_views/1
  # GET /resource_views/1.json
  def show
    @resource_view = ResourceView.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @resource_view }
    end
  end

  # GET /resource_views/new
  # GET /resource_views/new.json
  def new
    @resource_view = ResourceView.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @resource_view }
    end
  end

  # GET /resource_views/1/edit
  def edit
    @resource_view = ResourceView.find(params[:id])
  end

  # POST /resource_views
  # POST /resource_views.json
  def create
    @resource_view = ResourceView.new(params[:resource_view])

    respond_to do |format|
      if @resource_view.save
        format.html { redirect_to @resource_view, notice: 'Resource view was successfully created.' }
        format.json { render json: @resource_view, status: :created, location: @resource_view }
      else
        format.html { render action: "new" }
        format.json { render json: @resource_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /resource_views/1
  # PUT /resource_views/1.json
  def update
    @resource_view = ResourceView.find(params[:id])

    respond_to do |format|
      if @resource_view.update_attributes(params[:resource_view])
        format.html { redirect_to @resource_view, notice: 'Resource view was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @resource_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resource_views/1
  # DELETE /resource_views/1.json
  def destroy
    @resource_view = ResourceView.find(params[:id])
    @resource_view.destroy

    respond_to do |format|
      format.html { redirect_to resource_views_url }
      format.json { head :ok }
    end
  end
end
