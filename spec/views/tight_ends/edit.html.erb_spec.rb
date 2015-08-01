require 'rails_helper'

RSpec.describe "tight_ends/edit", type: :view do
  before(:each) do
    @tight_end = assign(:tight_end, TightEnd.create!(
      :player_name => "MyString",
      :week => 1,
      :touchdowns => 1,
      :yards => 1,
      :receptions => 1
    ))
  end

  it "renders the edit tight_end form" do
    render

    assert_select "form[action=?][method=?]", tight_end_path(@tight_end), "post" do

      assert_select "input#tight_end_player_name[name=?]", "tight_end[player_name]"

      assert_select "input#tight_end_week[name=?]", "tight_end[week]"

      assert_select "input#tight_end_touchdowns[name=?]", "tight_end[touchdowns]"

      assert_select "input#tight_end_yards[name=?]", "tight_end[yards]"

      assert_select "input#tight_end_receptions[name=?]", "tight_end[receptions]"
    end
  end
end
