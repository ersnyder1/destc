class UsersController < ApplicationController

  def index
    @users = User.all
    @users = User.where(expertcity: params[:expertcity], expert: "1")
    @expertcity = params[:expertcity]
  end

  def show
    @user = User.find_by(id: params[:id])
  end


  def citypick 
    @user = User.all
  end
  
  def about
  end



  def show
    @user = User.find_by(id: params[:id])
    @messages=Message.all

    @messages = Message.where("user_id = ? or receiver_userid = ?", 
      current_user.id, current_user.id).where("user_id = ? or receiver_userid = ?", 
      @user.id, @user.id)
    @receiver = User.find_by(id: params[:id])
  end

  def new
  end

  def create
    @user = User.new
    @user.firstname = params[:firstname]
    @user.lastname = params[:lastname]
    @user.expert = params[:expert]
    @user.admin = params[:admin]
    @user.expertcity = params[:expertcity]
    @user.gender = params[:gender]
    @user.age = params[:age]
    @user.bio = params[:bio]
    @user.pictureurl = params[:pictureurl]
    @user.phone = params[:phone]

    if @user.save
      redirect_to citypick_url, notice: "User created successfully."
    else
      render 'new'
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.firstname = params[:firstname]
    @user.lastname = params[:lastname]
    @user.expert = params[:expert]
    @user.admin = params[:admin]
    @user.expertcity = params[:expertcity]
    @user.gender = params[:gender]
    @user.age = params[:age]
    @user.bio = params[:bio]
    @user.pictureurl = params[:pictureurl]
    @user.phone = params[:phone]

    if @user.save
      redirect_to citypick_url, notice: "User updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy

    redirect_to citypick_url, notice: "User deleted."
  end



end
