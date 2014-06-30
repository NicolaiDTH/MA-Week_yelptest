require 'rails_helper'

describe 'restaurants listing page' do
 context 'no restaurants' do
  it 'tells me there are no restaurants' do
   visit 'restaurants'
   expect(page).to have content 'No restaurants yet'
  end
 end

 context 'are restaurants' do
  before do
   Restaurant.create(name: 'McDonalds')
  end

  it 'should show the restaurant' do
   visit '/restaurants'
   expect(page).to have_content 'McDonalds'
  end
 end
end