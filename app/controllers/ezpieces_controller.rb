class EzpiecesController < ApplicationController
  # GET /ezpieces
  # GET /ezpieces.json
  def index
    @ezpieces = Ezpiece.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ezpieces }
    end
  end

  # GET /ezpieces/1
  # GET /ezpieces/1.json
  def show
    @ezpiece = Ezpiece.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ezpiece }
    end
  end

  # GET /ezpieces/new
  # GET /ezpieces/new.json
  def new
    @ezpiece = Ezpiece.new
    @ezproject = Ezproject.find(params[:id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ezpiece }
    end
  end

  # GET /ezpieces/1/edit
  def edit
    @ezpiece = Ezpiece.find(params[:id])
  end

  # POST /ezpieces
  # POST /ezpieces.json
  def create
    @ezpiece = Ezpiece.new(params[:ezpiece])
    @ezproject = Ezproject.find_by_id(params[:ezproject_id])

    respond_to do |format|
      if @ezpiece.save
        format.html { redirect_to ezpieces_url, notice: 'New piece was successfully created.' }
        format.json { render json: @ezpiece, status: :created, location: @ezpiece }
      else
        format.html { render action: "new" }
        format.json { render json: @ezpiece.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ezpieces/1
  # PUT /ezpieces/1.json
  def update
    @ezpiece = Ezpiece.find(params[:id])

    respond_to do |format|
      if @ezpiece.update_attributes(params[:ezpiece])
        format.html { redirect_to @ezpiece, notice: 'Ezpiece was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @ezpiece.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ezpieces/1
  # DELETE /ezpieces/1.json
  def destroy
    @ezpiece = Ezpiece.find(params[:id])
    @ezpiece.destroy

    respond_to do |format|
      format.html { redirect_to ezpieces_url }
      format.json { head :ok }
    end
  end
end
