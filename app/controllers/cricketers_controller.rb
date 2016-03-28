class CricketersController < ApplicationController
  before_action :set_cricketer, only: [:show, :edit, :update, :destroy]

  # GET /cricketers
  # GET /cricketers.json
  def index
    @cricketers = Cricketer.all
  end

  # GET /cricketers/1
  # GET /cricketers/1.json
  def show
  end

  # GET /cricketers/new
  def new
    @cricketer = Cricketer.new
  end

  # GET /cricketers/1/edit
  def edit
  end

  # POST /cricketers
  # POST /cricketers.json
  def create
    @cricketer = Cricketer.new(cricketer_params)

    respond_to do |format|
      if @cricketer.save
        format.html { redirect_to @cricketer, notice: 'Cricketer was successfully created.' }
        format.json { render :show, status: :created, location: @cricketer }
      else
        format.html { render :new }
        format.json { render json: @cricketer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cricketers/1
  # PATCH/PUT /cricketers/1.json
  def update
    respond_to do |format|
      if @cricketer.update(cricketer_params)
        format.html { redirect_to @cricketer, notice: 'Cricketer was successfully updated.' }
        format.json { render :show, status: :ok, location: @cricketer }
      else
        format.html { render :edit }
        format.json { render json: @cricketer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cricketers/1
  # DELETE /cricketers/1.json
  def destroy
    @cricketer.destroy
    respond_to do |format|
      format.html { redirect_to cricketers_url, notice: 'Cricketer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cricketer
      @cricketer = Cricketer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cricketer_params
      params.require(:cricketer).permit(:fullname, :country, :description, :posted_from)
    end
end
