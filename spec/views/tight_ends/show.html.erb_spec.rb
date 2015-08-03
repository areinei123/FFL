require 'rails_helper'

RSpec.describe "tight_ends/show", type: :view do
  before(:each) do
    @tight_end = assign(:tight_end, TightEnd.create!(
      :player_name => "Player Name",
      :week => 1,
      :touchdowns => 2,
      :yards => 3,
      :receptions => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Player Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
