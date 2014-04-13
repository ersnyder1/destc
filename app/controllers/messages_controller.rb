class MessagesController < ApplicationController

  def conversation
    @messages = Message.where("user_id = ? or receiver_userid = ?", 
      current_user.id, current_user.id)
  end

  def index
    @messages = Message.where("user_id = ? or receiver_userid = ?", 
      current_user.id, current_user.id)
  end




  def show
    @message = Message.find_by(id: params[:id])
    @receiver= User.find_by(id: @message.receiver_userid)
  end

  def new
    @receiver = User.find_by(id: params[:id])
  end

  def create
    @message = Message.new
    @message.user_id = current_user.id
    @message.receiver_userid = params[:receiver_userid]
    @message.message = params[:message]

    if @message.save
      redirect_to messages_url, notice: "Message created successfully."
    else
      render 'new'
    end
  end

  def edit
    @message = Message.find_by(id: params[:id])
  end

  def update
    @message = Message.find_by(id: params[:id])
    @message.user_id = params[:sender_userid]
    @message.receiver_userid = params[:receiver_userid]
    @message.message = params[:message]

    if @message.save
      redirect_to messages_url, notice: "Message updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @message = Message.find_by(id: params[:id])
    @message.destroy

    redirect_to messages_url, notice: "Message deleted."
  end
end
