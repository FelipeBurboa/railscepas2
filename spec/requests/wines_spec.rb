require 'rails_helper'

RSpec.describe "Wines", type: :request do
  describe "request list of all wines" do
  wines = Wine.all
  expect(response).to be_successful
  end
end
