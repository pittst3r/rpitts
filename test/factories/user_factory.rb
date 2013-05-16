FactoryGirl.define do
  factory :superuser, class: Refinery::User do
    username "refinerycms"
    email "refinerycms@refinerycms.com"
    password "password"
    password_confirmation "password"
  end
end
