
include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :message do
    body 'Test Message'
    to '9718088960'
    from '2023354509'
  end
end
