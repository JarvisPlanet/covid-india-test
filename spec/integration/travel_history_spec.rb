require 'spec_helper'
require 'pp'

RSpec.describe 'Covid India API data' do
  include CoreLibrary::Services
  # include CoreLibrary::Helpers
  response = nil

  before(:all) do
    # response = covidindia.travel_data
  end
  
  describe 'Travel history response' do

    xit 'Verify covid travel history status code' do
      expect(response.code).to eql 200
    end

  end
end
