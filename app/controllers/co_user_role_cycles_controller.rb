class CoUserRoleCyclesController < ApplicationController
  before_action :set_co_user_role_cycle, only: [:show, :edit, :update, :destroy]

  # GET /co_user_role_cycles
  # GET /co_user_role_cycles.json
  def index
    @co_user_role_cycles = CoUserRoleCycle.all
  end

  # GET /co_user_role_cycles/1
  # GET /co_user_role_cycles/1.json
  def show
  end

  # GET /co_user_role_cycles/new
  def new
    @co_user_role_cycle = CoUserRoleCycle.new
  end

  # GET /co_user_role_cycles/1/edit
  def edit
  end

  # POST /co_user_role_cycles
  # POST /co_user_role_cycles.json
  def create
    @co_user_role_cycle = CoUserRoleCycle.new(co_user_role_cycle_params)

    respond_to do |format|
      if @co_user_role_cycle.save
        format.html { redirect_to @co_user_role_cycle, notice: 'Co user role cycle was successfully created.' }
        format.json { render :show, status: :created, location: @co_user_role_cycle }
      else
        format.html { render :new }
        format.json { render json: @co_user_role_cycle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /co_user_role_cycles/1
  # PATCH/PUT /co_user_role_cycles/1.json
  def update
    respond_to do |format|
      if @co_user_role_cycle.update(co_user_role_cycle_params)
        format.html { redirect_to @co_user_role_cycle, notice: 'Co user role cycle was successfully updated.' }
        format.json { render :show, status: :ok, location: @co_user_role_cycle }
      else
        format.html { render :edit }
        format.json { render json: @co_user_role_cycle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /co_user_role_cycles/1
  # DELETE /co_user_role_cycles/1.json
  def destroy
    @co_user_role_cycle.destroy
    respond_to do |format|
      format.html { redirect_to co_user_role_cycles_url, notice: 'Co user role cycle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_co_user_role_cycle
      @co_user_role_cycle = CoUserRoleCycle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def co_user_role_cycle_params
      params.require(:co_user_role_cycle).permit(:company_id, :user_id, :role_id, :cycle_id)
    end
end
