class MessagesController < ApplicationController
  define_method :index do
    @messages = Message.all
  end

  define_method :new do
    @message = Message.new
  end

  define_method :create do
    @message = Message.new message_params
    if @message.save
      flash[:notice] = "Your message was sent!"
      redirect_to messages_path
    else
      render 'new'
    end
  end

  define_method :show do
    @message = Message.find params[:id]
  end

  private
  define_method :message_params do
    params.require(:message).permit(:to, :from, :body)
  end
end
