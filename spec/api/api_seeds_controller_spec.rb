require 'spec_helper'

describe Api::V1::SeedsController do

  describe "GET seeds index" do
    it 'fetches the seeds collection' do
      get '/api/v1/seeds'
      response.should be_success
      response.content_type.should eq("application/json")
    end
  end


end
