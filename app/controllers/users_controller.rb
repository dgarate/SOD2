class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(name: user_params[:name], email: user_params[:email], end_date: user_params[:end_date])
    
    respond_to do |format|
      if @user.save
        user_params[:cycle_ids].reject(&:empty?).each_with_index do |id, index|
          role_id = user_params[:role_ids].reject(&:empty?)
          company_id = user_params[:company_ids].reject(&:empty?)
          CoUserRoleCycle.create(user_id: @user.id, cycle_id: id, role_id: role_id[index], company_id: company_id[index])
      end
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(name: user_params[:name], email: user_params[:email], end_date: user_params[:end_date])
        user_params[:cycle_ids].reject(&:empty?).each_with_index do |id, index|
          role_id = user_params[:role_ids].reject(&:empty?)
          company_id = user_params[:company_ids].reject(&:empty?)
          CoUserRoleCycle.where( user_id: @user.id).destroy_all
          CoUserRoleCycle.create(user_id: @user.id, cycle_id: id, role_id: role_id[index], company_id: company_id[index])
      end
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name, :email, :end_date, company_ids:[], role_ids:[], cycle_ids:[])
    end
end
