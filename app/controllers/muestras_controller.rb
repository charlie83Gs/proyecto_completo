class MuestrasController < ApplicationController
  before_action :set_muestra, only: [:show, :edit, :update, :destroy]

  # GET /muestras
  # GET /muestras.json
  def index
    @muestras = Muestra.all
    if params[:from_muestreo]
        session[:muestreo_id] = params[:muestreo_id]
    end
    
    @muest_id = session[:muestreo_id].to_i
    #@empleados = Empleado.where(proyecto_id: session[:proyecto_id].to_i).all
    #puts(@proy_id)
    @can_create = false
    if current_user.permission > 0
      @can_create = true
    end
  end

  # GET /muestras/1
  # GET /muestras/1.json
  def show
     muestra = Muestra.find(params[:id])
     @empleado = Empleado.find(muestra.empleado_id)
     @tarea = Tarea.find(muestra.tarea_id)
  end

  # GET /muestras/new
  def new
    @muestra = Muestra.new
    @proy_id = session[:proyecto_id].to_i
  end

  # GET /muestras/1/edit
  def edit
  end

  # POST /muestras
  # POST /muestras.json
  def create

    local_params = muestra_params;
    local_params[:muestreo_id] = session[:muestreo_id]
    @muestra = Muestra.new(local_params)
    #render inline: "<%= @local_params %>"

    respond_to do |format|
      if @muestra.save
        format.html { redirect_to @muestra, notice: 'Muestra was successfully created.' }
        format.json { render :show, status: :created, location: @muestra }
      else
        format.html { render :new }
        format.json { render json: @muestra.errors, status: :unprocessable_entity }
      end
    end

  end

  # PATCH/PUT /muestras/1
  # PATCH/PUT /muestras/1.json
  def update
    respond_to do |format|
      if @muestra.update(muestra_params)
        format.html { redirect_to @muestra, notice: 'Muestra was successfully updated.' }
        format.json { render :show, status: :ok, location: @muestra }
      else
        format.html { render :edit }
        format.json { render json: @muestra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /muestras/1
  # DELETE /muestras/1.json
  def destroy
    @muestra.destroy
    respond_to do |format|
      format.html { redirect_to muestras_url, notice: 'Muestra was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_muestra
      @muestra = Muestra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def muestra_params
      params.require(:muestra).permit(:hora, :humedad, :temperatura,:tarea_id,:empleado_id)
    end
end
