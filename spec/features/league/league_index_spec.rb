require 'rails_helper'

feature 'league index' do
  let!(:user) {FactoryGirl.create(:user)}
  let!(:league) {FactoryGirl.create(:league)}

  scenario 'view the league index page' do
    visit leagues_path
    expect(page).to have_content(league.league_name)
  end
end