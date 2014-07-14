# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :stock do
    symbol "MyString"
    askprice "9.99"
    stockname "MyString"
    closeprice "9.99"
    marketcap "9.99"
  end
end
