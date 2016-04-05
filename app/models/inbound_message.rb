class InboundMessage
  define_singleton_method :inbound do |from|
    Message.create( body: "We are not human and apologize.", from: from[:To], to: from[:From] )
  end
end
