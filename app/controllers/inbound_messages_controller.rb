class InboundMessagesController < ApplicationController
  define_method :index do
    InboundMessage.inbound params
  end
  define_method :show do

  end
end
