require 'faker'
class Customers
  # CREATE TABLE customers (id SERIAL PRIMARY KEY, name TEXT, email TEXT, address TEXT, city TEXT, state TEXT, zipcode TEXT);
  def initialize

  end

  def create
    result = []
    10.times do
      result << "INSERT INTO customers (name, email, address, city, state, zipcode) VALUES ('#{Faker::Name.name}','#{Faker::Internet.email}','#{Faker::Address.street_address}', '#{Faker::Address.city}', '#{Faker::Address.state}', '#{Faker::Address.zip}');"
    end
    puts result
    result
  end

end