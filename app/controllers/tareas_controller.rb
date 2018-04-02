class TareasController < ApplicationController
  before_action :set_tarea, only: [:show, :edit, :update, :destroy]

  # GET /tareas
  # GET /tareas.json
  def index
    @tareas = Tarea.all
  end

  # GET /tareas/1
  # GET /tareas/1.json
  def show
  end

  # GET /tareas/new
  def new
    @tarea = Tarea.new
  end

  # GET /tareas/1/edit
  def edit
  end

  # POST /tareas
  # POST /tareas.json
  def create
    local_params = tarea_params
    #productivo son 2 puntos
    #colaborativo 1 puntos
    #improductivo 0 puntos
    if(local_params[:pro_type] == "Productiva")
        local_params[:pro_type] = 2;
    elsif(local_params[:pro_type] == "Colaborativa")
        local_params[:pro_type] = 1;
    else
        local_params[:pro_type] = 0;
    end

    @tarea = Tarea.new(local_params)
    puts("My object: #{@tarea_params.inspect}") 
    respond_to do |format|
      if @tarea.save
        format.html { redirect_to @tarea, notice: 'Tarea was successfully created.' }
        format.json { render :show, status: :created, location: @tarea }
      else
        format.html { render :new }
        format.json { render json: @tarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tareas/1
  # PATCH/PUT /tareas/1.json
  def update
    local_params = tarea_params
    #productivo son 2 puntos
    #colaborativo 1 puntos
    #improductivo 0 puntos
    if(local_params[:pro_type] == "Productiva")
        local_params[:pro_type] = 2;
    elsif(local_params[:pro_type] == "Colaborativa")
        local_params[:pro_type] = 1;
    else
        local_params[:pro_type] = 0;
    end
    respond_to do |format|
      if @tarea.update(local_params)
        format.html { redirect_to @tarea, notice: 'Tarea was successfully updated.' }
        format.json { render :show, status: :ok, location: @tarea }
      else
        format.html { render :edit }
        format.json { render json: @tarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tareas/1
  # DELETE /tareas/1.json
  def destroy
    @tarea.destroy
    respond_to do |format|
      format.html { redirect_to tareas_url, notice: 'Tarea was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tarea
      @tarea = Tarea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tarea_params
      params.require(:tarea).permit(:nombre, :descripcion,:pro_type)
    end
end
