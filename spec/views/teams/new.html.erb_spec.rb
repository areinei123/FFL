require 'rails_helper'

RSpec.describe "teams/new", type: :view do
  before(:each) do
    assign(:team, Team.new(
      :team_name => "MyString",
      :week => 1,
      :qb_total_yards => 1,
      :qb_total_completes => 1,
      :qb_total_attempts => 1,
      :qb_total_touchdowns => 1,
      :qb_total_fumbles => 1,
      :qb_total_interceptions => 1,
      :rb_total_yards => 1,
      :rb_total_receptions => 1,
      :rb_total_touchdowns => 1,
      :wr_total_yards => 1,
      :wr_total_receptions => 1,
      :wr_total_touchdowns => 1,
      :te_total_yards => 1,
      :te_total_receptions => 1,
      :te_total_touchdowns => 1,
      :kicker_total_points => 1,
      :def_total_sacks => 1,
      :def_total_tackles => 1,
      :def_total_interceptions => 1
    ))
  end

  it "renders new team form" do
    render

    assert_select "form[action=?][method=?]", teams_path, "post" do

      assert_select "input#team_team_name[name=?]", "team[team_name]"

      assert_select "input#team_week[name=?]", "team[week]"

      assert_select "input#team_qb_total_yards[name=?]", "team[qb_total_yards]"

      assert_select "input#team_qb_total_completes[name=?]", "team[qb_total_completes]"

      assert_select "input#team_qb_total_attempts[name=?]", "team[qb_total_attempts]"

      assert_select "input#team_qb_total_touchdowns[name=?]", "team[qb_total_touchdowns]"

      assert_select "input#team_qb_total_fumbles[name=?]", "team[qb_total_fumbles]"

      assert_select "input#team_qb_total_interceptions[name=?]", "team[qb_total_interceptions]"

      assert_select "input#team_rb_total_yards[name=?]", "team[rb_total_yards]"

      assert_select "input#team_rb_total_receptions[name=?]", "team[rb_total_receptions]"

      assert_select "input#team_rb_total_touchdowns[name=?]", "team[rb_total_touchdowns]"

      assert_select "input#team_wr_total_yards[name=?]", "team[wr_total_yards]"

      assert_select "input#team_wr_total_receptions[name=?]", "team[wr_total_receptions]"

      assert_select "input#team_wr_total_touchdowns[name=?]", "team[wr_total_touchdowns]"

      assert_select "input#team_te_total_yards[name=?]", "team[te_total_yards]"

      assert_select "input#team_te_total_receptions[name=?]", "team[te_total_receptions]"

      assert_select "input#team_te_total_touchdowns[name=?]", "team[te_total_touchdowns]"

      assert_select "input#team_kicker_total_points[name=?]", "team[kicker_total_points]"

      assert_select "input#team_def_total_sacks[name=?]", "team[def_total_sacks]"

      assert_select "input#team_def_total_tackles[name=?]", "team[def_total_tackles]"

      assert_select "input#team_def_total_interceptions[name=?]", "team[def_total_interceptions]"
    end
  end
end
