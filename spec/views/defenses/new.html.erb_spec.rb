require 'rails_helper'

RSpec.describe "defenses/new", type: :view do
  before(:each) do
    assign(:defense, Defense.new(
      :player_name => "MyString",
      :week => 1,
      :tackles => 1
    ))
  end

  it "renders new defense form" do
    render

    assert_select "form[action=?][method=?]", defenses_path, "post" do

      assert_select "input#defense_player_name[name=?]", "defense[player_name]"

      assert_select "input#defense_week[name=?]", "defense[week]"

      assert_select "input#defense_tackles[name=?]", "defense[tackles]"
    end
  end
end
