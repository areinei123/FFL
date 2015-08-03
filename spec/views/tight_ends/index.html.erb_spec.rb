require 'rails_helper'

RSpec.describe "tight_ends/index", type: :view do
  before(:each) do
    assign(:tight_ends, [
      TightEnd.create!(
        :player_name => "Player Name",
        :week => 1,
        :touchdowns => 2,
        :yards => 3,
        :receptions => 4
      ),
      TightEnd.create!(
        :player_name => "Player Name",
        :week => 1,
        :touchdowns => 2,
        :yards => 3,
        :receptions => 4
      )
    ])
  end

  it "renders a list of tight_ends" do
    render
    assert_select "tr>td", :text => "Player Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
