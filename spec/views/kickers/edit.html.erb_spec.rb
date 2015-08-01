require 'rails_helper'

RSpec.describe "kickers/edit", type: :view do
  before(:each) do
    @kicker = assign(:kicker, Kicker.create!(
      :player_name => "MyString",
      :week => 1,
      :kicks_made => 1,
      :kicks_attempted => 1
    ))
  end

  it "renders the edit kicker form" do
    render

    assert_select "form[action=?][method=?]", kicker_path(@kicker), "post" do

      assert_select "input#kicker_player_name[name=?]", "kicker[player_name]"

      assert_select "input#kicker_week[name=?]", "kicker[week]"

      assert_select "input#kicker_kicks_made[name=?]", "kicker[kicks_made]"

      assert_select "input#kicker_kicks_attempted[name=?]", "kicker[kicks_attempted]"
    end
  end
end
