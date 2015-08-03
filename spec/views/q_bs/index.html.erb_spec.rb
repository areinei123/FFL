require 'rails_helper'

RSpec.describe "qbs/index", type: :view do
  before(:each) do
    assign(:qbs, [
      Qb.create!(
        :player_name => "Player Name",
        :week => 1,
        :pass_attempts => 2,
        :pass_completes => 3,
        :touchdowns => 4,
        :interceptions => 5,
        :fumbles => 6
      ),
      Qb.create!(
        :player_name => "Player Name",
        :week => 1,
        :pass_attempts => 2,
        :pass_completes => 3,
        :touchdowns => 4,
        :interceptions => 5,
        :fumbles => 6
      )
    ])
  end

  it "renders a list of qbs" do
    render
    assert_select "tr>td", :text => "Player Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
  end
end
