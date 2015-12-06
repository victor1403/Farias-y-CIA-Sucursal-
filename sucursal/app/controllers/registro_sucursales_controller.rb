class RegistroSucursalesController < ApplicationController
	before_action :set_sucursales_controller, only: [:show, :edit, :update, :destroy] 
	
 	# GET /registro_sucursal
  	# GET /registro_sucursal.json
	def index
    @registro_suc = RegistroSucursal.all
  	end


  # GET /registro_sucrusal/1/edit
  def edit
  end

  # GET /registro_sucursal/1
  # GET /registro_sucursal/1.json
  def show
  end

	# GET /registro_sucursal/new
  def new
    @registro_sucursal = RegistroSucursal.new
  end

	 def create
    @registro_suc = RegistroSucursal.new(regisro_sucursal_params)

    respond_to do |format|
      if @registro_suc.save
        format.html { redirect_to @product_type, notice: 'La Sucursal fue creada.' }
        format.json { render :show, status: :created, location: @registro_sucursal }
      else
        format.html { render :new }
        format.json { render json: @product_type.errors, status: :No_pudo_ser_creada }
      end
    end
  end

	def update
    respond_to do |format|
      if @registro_sucursal.update(regisro_sucursal_params)
        format.html { redirect_to @registro_sucursal, notice: 'La sucrusal fue actualizada.' }
        format.json { render :show, status: :ok, location: @registro_sucursal }
      else
        format.html { render :edit }
        format.json { render json: @registro_sucursal.errors, status: :No_pudo_ser_actualizada }
      end
    end
  end

	def destroy
    @registro_sucursal.destroy
    respond_to do |format|
      format.html { redirect_to product_types_url, notice: 'Fue eliminado.' }
      format.json { head :no_hay_contenido}
    end
  end

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_type
      @registro_sucursal = RegistroSucursal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_type_params
      params.require(:registro_sucursal).permit(:nombre_registro_sucursal)
    end

end
