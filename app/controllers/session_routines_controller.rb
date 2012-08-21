class SessionRoutinesController < ApplicationController
  # GET /session_routines
  # GET /session_routines.json
  def index
    @session_routines = SessionRoutine.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @session_routines }
    end
  end

  # GET /session_routines/1
  # GET /session_routines/1.json
  def show
    @session_routine = SessionRoutine.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @session_routine }
    end
  end

  # GET /session_routines/new
  # GET /session_routines/new.json
  def new
    @session_routine = SessionRoutine.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @session_routine }
    end
  end

  # GET /session_routines/1/edit
  def edit
    @session_routine = SessionRoutine.find(params[:id])
  end

  # POST /session_routines
  # POST /session_routines.json
  def create
    @session = Session.getInstance

    @routine = Routine.find_by_id(params[:session_routine][:routine])

    @session_routine = SessionRoutine.new(:session => @session, :routine => @routine, :weight => params[:session_routine][:weight], :reps => params[:session_routine][:reps])

    respond_to do |format|
      if @session_routine.save
        format.html { redirect_to @session_routine, notice: 'Session routine was successfully created.' }
        format.json { render json: @session_routine, status: :created, location: @session_routine }
      else
        format.html { render action: "new" }
        format.json { render json: @session_routine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /session_routines/1
  # PUT /session_routines/1.json
  def update
    @session_routine = SessionRoutine.find(params[:id])

    respond_to do |format|
      if @session_routine.update_attributes(params[:session_routine])
        format.html { redirect_to @session_routine, notice: 'Session routine was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @session_routine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /session_routines/1
  # DELETE /session_routines/1.json
  def destroy
    @session_routine = SessionRoutine.find(params[:id])
    @session_routine.destroy

    respond_to do |format|
      format.html { redirect_to session_routines_url }
      format.json { head :no_content }
    end
  end
end
