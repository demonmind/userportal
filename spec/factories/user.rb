FactoryGirl.define do
  factory :user do
    email 'test@example.com'
    password 'f4k3p455w0rd'
    first_name 'Test'
    last_name 'User'
    phone '1234567890'
  end
end