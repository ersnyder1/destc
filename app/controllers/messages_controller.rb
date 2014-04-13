class MessagesController < ApplicationController

  def index
    @messages = Message.all
  end

  def show
    @message = Message.find_by(id: params[:id])
  end

  def new
  end

  def create
    @receiver = params[:receiver_userid]
    @message = Message.new
    @message.sender_userid = current_user.id
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
    @message.sender_userid = params[:sender_userid]
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
