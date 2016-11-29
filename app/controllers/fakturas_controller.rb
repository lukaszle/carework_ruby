class FakturasController < ApplicationController
  before_action :set_faktura, only: [:show, :edit, :update, :destroy]

  # GET /fakturas
  # GET /fakturas.json
  def index
    @fakturas = Faktura.all
  end

  # GET /fakturas/1
  # GET /fakturas/1.json
  def show
  end

  # GET /fakturas/new
  def new
    @faktura = Faktura.new
  end

  # GET /fakturas/1/edit
  def edit
  end

  # POST /fakturas
  # POST /fakturas.json
  def create
    @faktura = Faktura.new(faktura_params)

    respond_to do |format|
      if @faktura.save
        format.html { redirect_to @faktura, notice: 'Faktura was successfully created.' }
        format.json { render :show, status: :created, location: @faktura }
      else
        format.html { render :new }
        format.json { render json: @faktura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fakturas/1
  # PATCH/PUT /fakturas/1.json
  def update
    respond_to do |format|
      if @faktura.update(faktura_params)
        format.html { redirect_to @faktura, notice: 'Faktura was successfully updated.' }
        format.json { render :show, status: :ok, location: @faktura }
      else
        format.html { render :edit }
        format.json { render json: @faktura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fakturas/1
  # DELETE /fakturas/1.json
  def destroy
    @faktura.destroy
    respond_to do |format|
      format.html { redirect_to fakturas_url, notice: 'Faktura was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faktura
      @faktura = Faktura.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def faktura_params
      params.require(:faktura).permit(:id, :tytul, :data, :wyslana, :klient_id)
    end
end
