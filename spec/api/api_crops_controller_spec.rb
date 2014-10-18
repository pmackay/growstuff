require 'spec_helper'

describe Api::V1::CropsController do

  describe "GET crops index" do
    it 'fetches the crops index' do
      get '/api/v1/crops'
      response.should be_success
      response.content_type.should eq("application/json")
    end
  end


end
