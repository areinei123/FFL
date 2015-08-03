require 'rails_helper'

RSpec.describe "teams/show", type: :view do
  before(:each) do
    @team = assign(:team, Team.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Team Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/9/)
    expect(rendered).to match(/10/)
    expect(rendered).to match(/11/)
    expect(rendered).to match(/12/)
    expect(rendered).to match(/13/)
    expect(rendered).to match(/14/)
    expect(rendered).to match(/15/)
    expect(rendered).to match(/16/)
    expect(rendered).to match(/17/)
    expect(rendered).to match(/18/)
    expect(rendered).to match(/19/)
    expect(rendered).to match(/20/)
  end
end
