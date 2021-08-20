# require 'rails_helper'

# describe "update a park route", :type => :request do

#   before do
#     @park = post '/parks', params: { :name => 'Champoeg', :location => 'OR', :state => true }
#   end

#   it 'updates the park name' do
#     put '/parks/' + @park['id'].to_i, params: {:name => 'Silver Falls'}
#     expect(JSON.parse(response.body)['name']).to eq('Silver Falls')
#   end
# end