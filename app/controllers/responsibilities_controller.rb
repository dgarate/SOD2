class ResponsibilitiesController < ApplicationController
  before_action :set_responsibility, only: [:show, :edit, :update, :destroy]

  # GET /responsibilities
  # GET /responsibilities.json
  def index
    @responsibilities = Responsibility.all
  end

  # GET /responsibilities/1
  # GET /responsibilities/1.json
  def show
  end

  # GET /responsibilities/new
  def new
    @responsibility = Responsibility.new
  end

  # GET /responsibilities/1/edit
  def edit
  end

  # POST /responsibilities
  # POST /responsibilities.json
  def create
    @responsibility = Responsibility.new(name: responsibility_params[:name], description: responsibility_params[:description], resp_type: responsibility_params[:resp_type], end_date: responsibility_params[:end_date])

    respond_to do |format|
      if @responsibility.save
        responsibility_params[:cycle_ids].reject(&:empty?).each_with_index do |id, index|
          company_id = responsibility_params[:company_ids].reject(&:empty?)
          CoCycleResp.create(responsibility_id: @responsibility.id, cycle_id: id, company_id: company_id[index])
      end
        format.html { redirect_to @responsibility, notice: 'Responsibility was successfully created.' }
        format.json { render :show, status: :created, location: @responsibility }
      else
        format.html { render :new }
        format.json { render json: @responsibility.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /responsibilities/1
  # PATCH/PUT /responsibilities/1.json
  def update
    respond_to do |format|
      if @responsibility.update(responsibility_params)
        format.html { redirect_to @responsibility, notice: 'Responsibility was successfully updated.' }
        format.json { render :show, status: :ok, location: @responsibility }
      else
        format.html { render :edit }
        format.json { render json: @responsibility.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /responsibilities/1
  # DELETE /responsibilities/1.json
  def destroy
    @responsibility.destroy
    respond_to do |format|
      format.html { redirect_to responsibilities_url, notice: 'Responsibility was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_responsibility
      @responsibility = Responsibility.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def responsibility_params
      params.require(:responsibility).permit(:name, :description, :resp_type, :end_date, company_ids:[], cycle_ids:[])
    end
end
