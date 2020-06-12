require 'spec_helper'
require 'pp'

RSpec.describe 'Covid India API data' do
  include CoreLibrary::Services
  # include CoreLibrary::Helpers
  response = nil

  before(:all) do
    response = covidindia.state_data
  end
  
  describe 'State wise covid response' do

    it 'Verify covid state wise status code' do
      expect(response.code).to eql 200
      expect(response.body.size).to eql 37 #To verify if there is data for all stated and union terroreries
      expect(response.body["Jharkhand"].districtData.length).to eql 24 #To verify if there is data for all 24 districts of Jharkhand
    end

    it 'Verify if there are no deceased in Palamu jharkhand' do
    	expect(response.body["Jharkhand"].districtData.Palamu.deceased).to be 0 #To verify if there are no deceased in Palamu
    end
  end
end
