  describe "practice rspec" do
    context "Hello Wirld Test" do
    before {@hello = "Hello World!"}
    it "value of hello is Hello World!" do
    expect(@hello).to eq "Hello World!"
  end
  end
  context "foo Test" do
    before{@foo = "bar"}
    it "value of foo is bar" do
    expect(@foo).to eq "bar"
  end
  end
end
