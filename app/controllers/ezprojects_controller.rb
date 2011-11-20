class EzprojectsController < ApplicationController
  # GET /ezprojects
  # GET /ezprojects.json
  def index
    @ezprojects = Ezproject.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ezprojects }
    end
  end

  # GET /ezprojects/1
  # GET /ezprojects/1.json
  def show
    @ezproject = Ezproject.find(params[:id])
    @ezpieces = @ezproject.ezpieces

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ezproject }
    end
  end

  # GET /ezprojects/new
  # GET /ezprojects/new.json
  def new
    @ezproject = Ezproject.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ezproject }
    end
  end

  # GET /ezprojects/1/edit
  def edit
    @ezproject = Ezproject.find(params[:id])
  end

  # POST /ezprojects
  # POST /ezprojects.json
  def create
    @ezproject = Ezproject.new(params[:ezproject])

    respond_to do |format|
      if @ezproject.save
        format.html { redirect_to @ezproject, notice: "#{@ezproject.ezname}" ' project was successfully created.' }
        format.json { render json: @ezproject, status: :created, location: @ezproject }
      else
        format.html { render action: "new" }
        format.json { render json: @ezproject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ezprojects/1
  # PUT /ezprojects/1.json
  def update
    @ezproject = Ezproject.find(params[:id])

    respond_to do |format|
      if @ezproject.update_attributes(params[:ezproject])
        format.html { redirect_to @ezproject, notice: "#{@ezproject.ezname}"' project was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @ezproject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ezprojects/1
  # DELETE /ezprojects/1.json
  def destroy
    @ezproject = Ezproject.find(params[:id])
    @ezproject.destroy

    respond_to do |format|
      format.html { redirect_to ezprojects_url }
      format.json { head :ok }
    end
  end
end
