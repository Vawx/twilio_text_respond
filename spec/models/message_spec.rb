require 'rails_helper'

RSpec.describe Message, type: :model do
  it { should validate_presence_of :body }

  it 'creates a message on init' do
    message = create(:message)
    expect(message.body).to eq("Test Message")
  end
end
