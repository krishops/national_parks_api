# require 'rails_helper'

# describe "delete a park route", :type => :request do
#   let!(:parks) { FactoryBot.create_list(:park, 10)}

#   before { delete '/parks/' + :id[0] }

#   it 'deletes one park' do
#     expect(JSON.parse(response.body).message).to eq("This review has been deleted")
#   end

#   it 'returns status code 200' do
#     expect(response).to have_http_status(:success)
#   end
# end