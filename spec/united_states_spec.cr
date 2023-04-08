require "./spec_helper"

describe Zip::Countries::UnitedStates do
  it "tests if a valid zip code is found" do
    zip = Zip::Countries::UnitedStates.new
    zip.find!("00601").city.should eq "Adjuntas"
  end

  it "tests if an invalid code returns nil" do
    zip = Zip::Countries::UnitedStates.new
    zip.find("1").should eq nil
  end
end
