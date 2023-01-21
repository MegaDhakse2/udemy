class UsersController < ApplicationController
  def index
    @user = Datum.all
  end
  def new
    @user = Datum.new
  end
  def create
    @user = Datum.new(user_params)
    @user.user_id = Datum.first.id
    if @user.save
      flash[:success] = "Account succcessfully created"
      redirect_to users_path
      # elsif @user.firstName # ||
      #   # @user.email == nil || @user.password == nil
      #   flash[:empty] = "please fill the empty fields.."
      #   redirect_to signup_path
      # elsif @user.email
      #   flash[:email] = "enter valid email id"
      #   redirect_to signup_path
      # elsif @user.password
      #   flash[
      #     :pass
      #   ] = "password must have atleast 8 characters which must include lower and upper character,
      #    a number digit and a special character. "
      #   redirect_to signup_path
    elsif @user.password != @user.password_digest
      flash[:samepass] = "password and confirm password must be same"
      redirect_to signup_path
    else
      flash[:error] = "Something went wrong"
      # render :new
      redirect_to signup_path
    end
  end
  def show
    @user = Datum.find(params[:id])
  end
  def edit
    @user = Datum.find(params[:id])
  end
  def update
    @user = Datum.find(params[:id])
    if @user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end
  def destroy
    @user = Datum.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private

  #deal carefully with me. I am very danger
  def user_params
    params.require(:datum).permit(:firstName, :lastName, :email)
  end
end
