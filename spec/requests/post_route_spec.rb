require 'rails_helper'

describe "post a park route", :type => :request do

  before do
    post '/parks', params: { :name => 'test_park', :location => 'OR', :state => true }
  end

  it 'returns the park name' do
    expect(JSON.parse(response.body)['name']).to eq('test_park')
  end

  it 'returns the park location' do
    expect(JSON.parse(response.body)['location']).to eq('OR')
  end
  
  it 'returns the national park status' do
    expect(JSON.parse(response.body)['national']).to eq(false)
  end

  it 'returns the state park status' do
    expect(JSON.parse(response.body)['state']).to eq(true)
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end

describe 'post park route - all true exception' do

  before do
    post '/parks', params: { :name => 'test_park', :location => 'OR', :national => true, :state => true }
  end

  it 'returns an exception status' do
    expect(JSON.parse(response.body)['message']).to eq("Set either national or state parameter to true")
  end
end

describe 'post park route - all false exception' do

  before do
    post '/parks', params: { :name => 'test_park', :location => 'OR' }
  end

  it 'returns an exception status' do
    expect(JSON.parse(response.body)['message']).to eq("Set either national or state parameter to true")
  end
end