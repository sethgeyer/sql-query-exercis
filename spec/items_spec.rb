require 'rspec'

describe Items do
  it "should have 9 items" do
    expect(Items.new.create.length).to eq(9)
  end

  it "should have first item" do
    expect(Items.new.create[0]).to eq("INSERT INTO items (name, description) VALUES ('ski01', 'downhill ski');")
  end
end