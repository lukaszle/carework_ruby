class KontosController < ApplicationController
  before_action :set_konto, only: [:show, :edit, :update, :destroy]

  # GET /kontos
  # GET /kontos.json
  def index
    @kontos = Konto.all
  end

  # GET /kontos/1
  # GET /kontos/1.json
  def show
  end

  # GET /kontos/new
  def new
    @konto = Konto.new
  end

  # GET /kontos/1/edit
  def edit
  end

  # POST /kontos
  # POST /kontos.json
  def create
    @konto = Konto.new(konto_params)

    respond_to do |format|
      if @konto.save
        format.html { redirect_to @konto, notice: 'Konto was successfully created.' }
        format.json { render :show, status: :created, location: @konto }
      else
        format.html { render :new }
        format.json { render json: @konto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kontos/1
  # PATCH/PUT /kontos/1.json
  def update
    respond_to do |format|
      if @konto.update(konto_params)
        format.html { redirect_to @konto, notice: 'Konto was successfully updated.' }
        format.json { render :show, status: :ok, location: @konto }
      else
        format.html { render :edit }
        format.json { render json: @konto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kontos/1
  # DELETE /kontos/1.json
  def destroy
    @konto.destroy
    respond_to do |format|
      format.html { redirect_to kontos_url, notice: 'Konto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_konto
      @konto = Konto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def konto_params
      params.require(:konto).permit(:id, :konto, :klient_id)
    end
end
