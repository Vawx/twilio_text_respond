class Message < ActiveRecord::Base
  before_create :send_message
  validates :body, presence: true

private
  define_method :send_message do
    response = RestClient::Request.new(
      :method => :post,
      :url => "https://api.twilio.com/2010-04-01/Accounts/#{ENV['TWILIO_USER_ID']}/Messages.json",
      :user => ENV['TWILIO_USER_ID'],
      :password => ENV['TWILIO_USER_PASSWORD'],
      :payload => { :Body => body,
                    :From => from,
                    :To => to }
    ).execute
  end
end
