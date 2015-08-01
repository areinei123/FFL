require 'rails_helper'

RSpec.describe "teams/index", type: :view do
  before(:each) do
    assign(:teams, [
      Team.create!(
        :team_name => "Team Name",
        :week => 1,
        :qb_total_yards => 2,
        :qb_total_completes => 3,
        :qb_total_attempts => 4,
        :qb_total_touchdowns => 5,
        :qb_total_fumbles => 6,
        :qb_total_interceptions => 7,
        :rb_total_yards => 8,
        :rb_total_receptions => 9,
        :rb_total_touchdowns => 10,
        :wr_total_yards => 11,
        :wr_total_receptions => 12,
        :wr_total_touchdowns => 13,
        :te_total_yards => 14,
        :te_total_receptions => 15,
        :te_total_touchdowns => 16,
        :kicker_total_points => 17,
        :def_total_sacks => 18,
        :def_total_tackles => 19,
        :def_total_interceptions => 20
      ),
      Team.create!(
        :team_name => "Team Name",
        :week => 1,
        :qb_total_yards => 2,
        :qb_total_completes => 3,
        :qb_total_attempts => 4,
        :qb_total_touchdowns => 5,
        :qb_total_fumbles => 6,
        :qb_total_interceptions => 7,
        :rb_total_yards => 8,
        :rb_total_receptions => 9,
        :rb_total_touchdowns => 10,
        :wr_total_yards => 11,
        :wr_total_receptions => 12,
        :wr_total_touchdowns => 13,
        :te_total_yards => 14,
        :te_total_receptions => 15,
        :te_total_touchdowns => 16,
        :kicker_total_points => 17,
        :def_total_sacks => 18,
        :def_total_tackles => 19,
        :def_total_interceptions => 20
      )
    ])
  end

  it "renders a list of teams" do
    render
    assert_select "tr>td", :text => "Team Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => 10.to_s, :count => 2
    assert_select "tr>td", :text => 11.to_s, :count => 2
    assert_select "tr>td", :text => 12.to_s, :count => 2
    assert_select "tr>td", :text => 13.to_s, :count => 2
    assert_select "tr>td", :text => 14.to_s, :count => 2
    assert_select "tr>td", :text => 15.to_s, :count => 2
    assert_select "tr>td", :text => 16.to_s, :count => 2
    assert_select "tr>td", :text => 17.to_s, :count => 2
    assert_select "tr>td", :text => 18.to_s, :count => 2
    assert_select "tr>td", :text => 19.to_s, :count => 2
    assert_select "tr>td", :text => 20.to_s, :count => 2
  end
end
