class DesiresController < ApplicationController
  # GET /desires
  # GET /desires.json
  def index
    @desires = Desire.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @desires }
    end
  end

  # GET /desires/1
  # GET /desires/1.json
  def show
    @desire = Desire.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @desire }
    end
  end

  # GET /desires/new
  # GET /desires/new.json
  def new
    @desire = Desire.new
    @desire.desire_type = params[:desire_type]
    @desire.project_id = params[:project_id]
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @desire }
    end
  end

  # GET /desires/1/edit
  def edit
    @desire = Desire.find(params[:id])
  end

  # POST /desires
  # POST /desires.json
  def create
    @desire = Desire.new(params[:desire])


    respond_to do |format|
      if @desire.save
        format.html { redirect_to project_path(@desire.project), :notice => "You successfully added a new item to #{@desire.desire_type}"}
        format.json { render json: @desire, status: :created, location: @desire }
      else
        format.html { render action: "new" }
        format.json { render json: @desire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /desires/1
  # PUT /desires/1.json
  def update
    @desire = Desire.find(params[:id])

    respond_to do |format|
      if @desire.update_attributes(params[:desire])
        format.html { redirect_to project_url(@desire.project_id), notice: "#{@desire.desire_type} successfully updated." }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @desire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /desires/1
  # DELETE /desires/1.json
  def destroy
    @desire = Desire.find(params[:id])
    projectid = @desire.project_id
    @desire.destroy

    respond_to do |format|
      format.html { redirect_to project_url(projectid), :notice => "You successfully deleted your item." }
      format.json { head :ok }
    end
  end
end
