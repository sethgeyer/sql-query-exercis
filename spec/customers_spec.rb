require 'rspec'

describe Customers do
  it "should create 10 customers" do
    customer = Customers.new
    expect(customer.create.length).to eq(10)
  end

  it "should have first customer" do
    # this test fails because of the random generation of names
    # and emails ... using the faker gem.
    # Good for inspecting the results.
    expect(Customers.new.create[0]).to eq("INSERT INTO customers (name, email, address, city, state, zipcode) VALUES ('Isai Vandervort','annamarie_mohr@langspinka.name','262 Ernser Radial', 'Cathrynfort', 'Utah', '71622-8149');")
  end
end