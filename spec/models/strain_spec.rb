require 'rails_helper'

RSpec.describe Strain, type: :model do
  it "cant have same strains with the same name" do
    strain = Strain.create(name: "Strain1", available: true)
    expect(strain).to be_valid
    end

  it "Name cant be empty1" do
      strain = Strain.create(name: nil, available: true)
      expect(strain).to_not be_valid
    end

  it "Name cant be empty2" do
      strain = Strain.create(name: "", available: true)
      expect(strain).to_not be_valid
  end

  it "Name cant be empty3" do
    strain = Strain.create(name: "Carmenere", available: true)
    expect(strain).to be_valid
  end

end
