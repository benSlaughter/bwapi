require 'helper'

require 'pry'

describe BWAPI::Client::OAuth do

  before do
    BWAPI.reset
  end

  describe '.determine_grant_type?' do
    it 'returns password for brandwatch-application-client grant_type' do
      bw = BWAPI::Client.new :client_id => 'brandwatch-application-client'
      bw.determine_grant_type.should eql "password"
    end

    it 'returns api-password for brandwatch-api-client grant_type' do
      bw = BWAPI::Client.new :client_id => 'brandwatch-api-client'
      bw.determine_grant_type.should eql "api-password"
    end

    it 'returns preset grant_type for brandwatch-application-client if grant_type set' do
      bw = BWAPI::Client.new :client_id => 'brandwatch-application-client', :grant_type => 'custom_grant_type'
      bw.determine_grant_type.should eql "custom_grant_type"
    end

    it 'returns preset grant_type for brandwatch-api-client if grant_type set' do
      bw = BWAPI::Client.new :client_id => 'brandwatch-api-client', :grant_type => 'custom_grant_type'
      bw.determine_grant_type.should eql "custom_grant_type"
    end
  end

  describe '.oauth_token' do

  end

  describe '.oauth_refresh_token' do

  end

  describe '.oauth_request' do

  end

end