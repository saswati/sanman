require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'aboutus'" do
    it "returns http success" do
      get 'aboutus'
      response.should be_success
    end
  end

  describe "GET 'design_services'" do
    it "returns http success" do
      get 'design_services'
      response.should be_success
    end
  end

  describe "GET 'electronic_manufacturing'" do
    it "returns http success" do
      get 'electronic_manufacturing'
      response.should be_success
    end
  end

  describe "GET 'products'" do
    it "returns http success" do
      get 'products'
      response.should be_success
    end
  end

  describe "GET 'rfq'" do
    it "returns http success" do
      get 'rfq'
      response.should be_success
    end
  end

  describe "GET 'careers'" do
    it "returns http success" do
      get 'careers'
      response.should be_success
    end
  end

  describe "GET 'contact_us'" do
    it "returns http success" do
      get 'contact_us'
      response.should be_success
    end
  end

end
