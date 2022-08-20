require 'rails_helper'

RSpec.describe WinesController, type: :controller do

  describe "GET #index" do
    it "assigns all wines as @wines" do
      wine = Wine.create!
      get :index, params: {}
      expect(assigns(:wines)).to eq([wine])
    end
  end

  describe "GET #new" do
    it "assigns a new wine as @wine" do
      get :new, params: {}
      expect(assigns(:wine)).to be_a_new(Wine)
    end
  end

end
