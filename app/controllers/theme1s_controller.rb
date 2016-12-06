class Theme1sController < ApplicationController
  before_action :set_theme1, only: [:show, :edit, :update, :destroy]

  # GET /theme1s
  # GET /theme1s.json
  def index
    @theme1s = Theme1.all
  end

  # GET /theme1s/1
  # GET /theme1s/1.json
  def show
  end

  # GET /theme1s/new
  def new
    @theme1 = Theme1.new
  end

  # GET /theme1s/1/edit
  def edit
  end

  # POST /theme1s
  # POST /theme1s.json
  def create
    @theme1 = Theme1.new(theme1_params)

    respond_to do |format|
      if @theme1.save
        format.html { redirect_to @theme1, notice: 'Theme1 was successfully created.' }
        format.json { render :show, status: :created, location: @theme1 }
      else
        format.html { render :new }
        format.json { render json: @theme1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /theme1s/1
  # PATCH/PUT /theme1s/1.json
  def update
    respond_to do |format|
      if @theme1.update(theme1_params)
        format.html { redirect_to @theme1, notice: 'Theme1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @theme1 }
      else
        format.html { render :edit }
        format.json { render json: @theme1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /theme1s/1
  # DELETE /theme1s/1.json
  def destroy
    @theme1.destroy
    respond_to do |format|
      format.html { redirect_to theme1s_url, notice: 'Theme1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_theme1
      @theme1 = Theme1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def theme1_params
      params.require(:theme1).permit(:name, :qty_items)
    end
end
