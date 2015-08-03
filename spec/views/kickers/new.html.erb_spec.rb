require 'rails_helper'

RSpec.describe "kickers/new", type: :view do
  before(:each) do
    assign(:kicker, Kicker.new(
      :player_name => "MyString",
      :week => 1,
      :kicks_made => 1,
      :kicks_attempted => 1
    ))
  end

  it "renders new kicker form" do
    render

    assert_select "form[action=?][method=?]", kickers_path, "post" do

      assert_select "input#kicker_player_name[name=?]", "kicker[player_name]"

      assert_select "input#kicker_week[name=?]", "kicker[week]"

      assert_select "input#kicker_kicks_made[name=?]", "kicker[kicks_made]"

      assert_select "input#kicker_kicks_attempted[name=?]", "kicker[kicks_attempted]"
    end
  end
end
