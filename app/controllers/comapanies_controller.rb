class ComapaniesController < ApplicationController
  before_action :set_comapany, only: %i[ show edit update destroy ]

  # GET /comapanies or /comapanies.json
  def index
    @comapanies = Comapany.all
  end

  # GET /comapanies/1 or /comapanies/1.json
  def show
  end

  # GET /comapanies/new
  def new
    @comapany = Comapany.new
  end

  # GET /comapanies/1/edit
  def edit
  end

  # POST /comapanies or /comapanies.json
  def create
    @comapany = Comapany.new(comapany_params)

    respond_to do |format|
      if @comapany.save
        format.html { redirect_to comapany_url(@comapany), notice: "Comapany was successfully created." }
        format.json { render :show, status: :created, location: @comapany }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @comapany.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comapanies/1 or /comapanies/1.json
  def update
    respond_to do |format|
      if @comapany.update(comapany_params)
        format.html { redirect_to comapany_url(@comapany), notice: "Comapany was successfully updated." }
        format.json { render :show, status: :ok, location: @comapany }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @comapany.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comapanies/1 or /comapanies/1.json
  def destroy
    @comapany.destroy

    respond_to do |format|
      format.html { redirect_to comapanies_url, notice: "Comapany was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comapany
      @comapany = Comapany.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    # リクエストパラメータより以下で指定したものをmodelへ連携する（ストロングパラメータ）
    def comapany_params
      params.require(:comapany).permit(
        :name,
        :tel,
        :address,
        :invalid_flag,
      )
    end
end
