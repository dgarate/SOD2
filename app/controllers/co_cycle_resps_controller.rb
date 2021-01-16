class CoCycleRespsController < ApplicationController
  before_action :set_co_cycle_resp, only: [:show, :edit, :update, :destroy]

  # GET /co_cycle_resps
  # GET /co_cycle_resps.json
  def index
    @co_cycle_resps = CoCycleResp.all
  end

  # GET /co_cycle_resps/1
  # GET /co_cycle_resps/1.json
  def show
  end

  # GET /co_cycle_resps/new
  def new
    @co_cycle_resp = CoCycleResp.new
  end

  # GET /co_cycle_resps/1/edit
  def edit
  end

  # POST /co_cycle_resps
  # POST /co_cycle_resps.json
  def create
    @co_cycle_resp = CoCycleResp.new(co_cycle_resp_params)

    respond_to do |format|
      if @co_cycle_resp.save
        format.html { redirect_to @co_cycle_resp, notice: 'Co cycle resp was successfully created.' }
        format.json { render :show, status: :created, location: @co_cycle_resp }
      else
        format.html { render :new }
        format.json { render json: @co_cycle_resp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /co_cycle_resps/1
  # PATCH/PUT /co_cycle_resps/1.json
  def update
    respond_to do |format|
      if @co_cycle_resp.update(co_cycle_resp_params)
        format.html { redirect_to @co_cycle_resp, notice: 'Co cycle resp was successfully updated.' }
        format.json { render :show, status: :ok, location: @co_cycle_resp }
      else
        format.html { render :edit }
        format.json { render json: @co_cycle_resp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /co_cycle_resps/1
  # DELETE /co_cycle_resps/1.json
  def destroy
    @co_cycle_resp.destroy
    respond_to do |format|
      format.html { redirect_to co_cycle_resps_url, notice: 'Co cycle resp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_co_cycle_resp
      @co_cycle_resp = CoCycleResp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def co_cycle_resp_params
      params.require(:co_cycle_resp).permit(:company_id, :cycle_id, :responsibility_id)
    end
end
