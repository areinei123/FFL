require 'rails_helper'

RSpec.describe "qbs/show", type: :view do
  before(:each) do
    @qb = assign(:qb, Qb.create!(
      :player_name => "Player Name",
      :week => 1,
      :pass_attempts => 2,
      :pass_completes => 3,
      :touchdowns => 4,
      :interceptions => 5,
      :fumbles => 6
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Player Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
  end
end
