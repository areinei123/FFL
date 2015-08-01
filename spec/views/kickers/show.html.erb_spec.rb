require 'rails_helper'

RSpec.describe "kickers/show", type: :view do
  before(:each) do
    @kicker = assign(:kicker, Kicker.create!(
      :player_name => "Player Name",
      :week => 1,
      :kicks_made => 2,
      :kicks_attempted => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Player Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
