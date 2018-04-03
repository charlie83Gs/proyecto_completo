class MuestreosController < ApplicationController
  before_action :set_muestreo, only: [:show, :edit, :update, :destroy]

  # GET /muestreos
  # GET /muestreos.json
  def index
    

    if params[:from_proyecto]
        session[:proyecto_id] = params[:proyecto_id]
    end
    proy_id = session[:proyecto_id].to_i
    @muestreos = Muestreo.where(proyecto_id: proy_id).all

    if(@muestreos == nil)
        @muestreos = {}
    end
  end

  # GET /muestreos/1
  # GET /muestreos/1.json
  def show
    @horarios = Schedule.where(muestreo_id: @muestreo.id).all
    if(@horarios == nil)
      @horarios = {}
    end
  end

  # GET /muestreos/new
  def new
    @muestreo = Muestreo.new
  end

  # GET /muestreos/1/edit
  def edit
  end

  # POST /muestreos
  # POST /muestreos.json
  def create

    local_params = muestreo_params
    local_params[:proyecto_id] = session[:proyecto_id]
    
    @muestreo = Muestreo.new(local_params)
    #@id = local_params
    #render inline: "<%= @id %> "
    respond_to do |format|
      if @muestreo.save
        total = local_params[:meta].to_i
        time = Time.now
        minimo = local_params[:minimo].to_i
        maximo = local_params[:maximo].to_i
        #puts total
        #puts local_params
        for i in 0..total
            Schedule.create({muestreo_id: @muestreo.id, hora: time})
            time = time + (minimo + rand((maximo - minimo).abs)).minutes
        end
        format.html { redirect_to @muestreo, notice: 'Muestreo was successfully created.' }
        format.json { render :show, status: :created, location: @muestreo }
      else
        format.html { render :new }
        format.json { render json: @muestreo.errors, status: :unprocessable_entity }
      end

    end
  end

  # PATCH/PUT /muestreos/1
  # PATCH/PUT /muestreos/1.json
  def update

    local_params = muestreo_params
    local_params[:proyecto_id] = session[:proyecto_id]
    respond_to do |format|
      if @muestreo.update(local_params)
        format.html { redirect_to @muestreo, notice: 'Muestreo was successfully updated.' }
        format.json { render :show, status: :ok, location: @muestreo }
      else
        format.html { render :edit }
        format.json { render json: @muestreo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /muestreos/1
  # DELETE /muestreos/1.json
  def destroy
    Muestra.where(muestreo_id: @muestreo.id).delete_all
    Schedule.where(muestreo_id: @muestreo.id).delete_all
    @muestreo.destroy
    respond_to do |format|
      format.html { redirect_to muestreos_url, notice: 'Muestreo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_muestreo
      @muestreo = Muestreo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def muestreo_params
      params.require(:muestreo).permit(:fecha_inicio, :fecha_fin, :meta, :proyecto_id,:minimo,:maximo)
    end
end
