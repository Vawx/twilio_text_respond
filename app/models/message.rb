class Message < ActiveRecord::Base
  before_create :send_message
  validates :body, presence: true

private
  define_method :send_message do
    response = RestClient::Request.new(
      :method => :post,
      :url => "https://api.twilio.com/2010-04-01/Accounts/ACec91727f81ee8699eef144458a654352/Messages.json",
      :user => 'ACec91727f81ee8699eef144458a654352',
      :password => '7a53c2166473860e847b49e5cd32888e',
      :payload => { :Body => body,
                    :From => from,
                    :To => to }
    ).execute
  end
end
