require 'rails_helper'

RSpec.describe "defenses/edit", type: :view do
  before(:each) do
    @defense = assign(:defense, Defense.create!(
      :player_name => "MyString",
      :week => 1,
      :tackles => 1
    ))
  end

  it "renders the edit defense form" do
    render

    assert_select "form[action=?][method=?]", defense_path(@defense), "post" do

      assert_select "input#defense_player_name[name=?]", "defense[player_name]"

      assert_select "input#defense_week[name=?]", "defense[week]"

      assert_select "input#defense_tackles[name=?]", "defense[tackles]"
    end
  end
end
