FactoryGirl.define do
  factory :user do
    name     "Jameson Knoll"
    email    "jameson@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end