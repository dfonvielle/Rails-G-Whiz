class ControllerActionsController < ApplicationController
  # GET /controller_actions
  # GET /controller_actions.json
  def index
    @controller_actions = ControllerAction.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @controller_actions }
    end
  end

  # GET /controller_actions/1
  # GET /controller_actions/1.json
  def show
    @controller_action = ControllerAction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @controller_action }
    end
  end

  # GET /controller_actions/new
  # GET /controller_actions/new.json
  def new
    @controller_action = ControllerAction.new
    @part = Part.find_by_id(params[:current_part_id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @controller_action }
    end
  end

  # GET /controller_actions/1/edit
  def edit
    @controller_action = ControllerAction.find(params[:id])
  end

  # POST /controller_actions
  # POST /controller_actions.json
  def create
    @controller_action = ControllerAction.new(params[:controller_action])

    respond_to do |format|
      if @controller_action.save
        format.html { redirect_to new_controller_action_path(:current_part_id => @controller_action.part.id), notice: 'Controller action was successfully created.' }
        format.json { render json: @controller_action, status: :created, location: @controller_action }
      else
        format.html { redirect_to new_controller_action_path(:current_part_id => @controller_action.part.id), notice: "Didn't work!!! Did you enter a controller method?" }
        format.json { render json: @controller_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /controller_actions/1
  # PUT /controller_actions/1.json
  def update
    @controller_action = ControllerAction.find(params[:id])

    respond_to do |format|
      if @controller_action.update_attributes(params[:controller_action])
        format.html { redirect_to new_controller_action_path(:current_part_id => @controller_action.part.id), notice: 'Controller action was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @controller_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /controller_actions/1
  # DELETE /controller_actions/1.json
  def destroy
    @controller_action = ControllerAction.find(params[:id])
    @part = @controller_action.part.id
    @controller_action.destroy

    respond_to do |format|
      format.html { redirect_to new_controller_action_path(:current_part_id => @part), notice: "You destroyed a controller method! Is there a method to your madness?" }
      format.json { head :ok }
    end
  end
end
