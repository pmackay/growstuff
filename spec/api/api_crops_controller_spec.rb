require 'spec_helper'

describe Api::V1::CropsController do

  describe "GET crops index" do
    it 'fetches the crops index' do
      get :index, :format => "json"
      response.should be_success
      # response.should render_template("crops/index")
      response.content_type.should eq("application/json")
    end
  end


end
