require 'rails_helper'

RSpec.describe "running_backs/new", type: :view do
  before(:each) do
    assign(:running_back, RunningBack.new(
      :player_name => "MyString",
      :touchdowns => 1,
      :yards => 1,
      :receptions => 1,
      :week => 1
    ))
  end

  it "renders new running_back form" do
    render

    assert_select "form[action=?][method=?]", running_backs_path, "post" do

      assert_select "input#running_back_player_name[name=?]", "running_back[player_name]"

      assert_select "input#running_back_touchdowns[name=?]", "running_back[touchdowns]"

      assert_select "input#running_back_yards[name=?]", "running_back[yards]"

      assert_select "input#running_back_receptions[name=?]", "running_back[receptions]"

      assert_select "input#running_back_week[name=?]", "running_back[week]"
    end
  end
end
