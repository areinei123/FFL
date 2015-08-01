require 'rails_helper'

RSpec.describe "tight_ends/new", type: :view do
  before(:each) do
    assign(:tight_end, TightEnd.new(
      :player_name => "MyString",
      :week => 1,
      :touchdowns => 1,
      :yards => 1,
      :receptions => 1
    ))
  end

  it "renders new tight_end form" do
    render

    assert_select "form[action=?][method=?]", tight_ends_path, "post" do

      assert_select "input#tight_end_player_name[name=?]", "tight_end[player_name]"

      assert_select "input#tight_end_week[name=?]", "tight_end[week]"

      assert_select "input#tight_end_touchdowns[name=?]", "tight_end[touchdowns]"

      assert_select "input#tight_end_yards[name=?]", "tight_end[yards]"

      assert_select "input#tight_end_receptions[name=?]", "tight_end[receptions]"
    end
  end
end
