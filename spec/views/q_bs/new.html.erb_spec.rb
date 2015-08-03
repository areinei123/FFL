require 'rails_helper'

RSpec.describe "qbs/new", type: :view do
  before(:each) do
    assign(:qb, Qb.new(
      :player_name => "MyString",
      :week => 1,
      :pass_attempts => 1,
      :pass_completes => 1,
      :touchdowns => 1,
      :interceptions => 1,
      :fumbles => 1
    ))
  end

  it "renders new qb form" do
    render

    assert_select "form[action=?][method=?]", qbs_path, "post" do

      assert_select "input#qb_player_name[name=?]", "qb[player_name]"

      assert_select "input#qb_week[name=?]", "qb[week]"

      assert_select "input#qb_pass_attempts[name=?]", "qb[pass_attempts]"

      assert_select "input#qb_pass_completes[name=?]", "qb[pass_completes]"

      assert_select "input#qb_touchdowns[name=?]", "qb[touchdowns]"

      assert_select "input#qb_interceptions[name=?]", "qb[interceptions]"

      assert_select "input#qb_fumbles[name=?]", "qb[fumbles]"
    end
  end
end
