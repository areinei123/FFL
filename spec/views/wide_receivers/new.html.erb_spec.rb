require 'rails_helper'

RSpec.describe "wide_receivers/new", type: :view do
  before(:each) do
    assign(:wide_receiver, WideReceiver.new(
      :player_name => "MyString",
      :touchdowns => 1,
      :yards => 1,
      :receptions => 1,
      :week => 1
    ))
  end

  it "renders new wide_receiver form" do
    render

    assert_select "form[action=?][method=?]", wide_receivers_path, "post" do

      assert_select "input#wide_receiver_player_name[name=?]", "wide_receiver[player_name]"

      assert_select "input#wide_receiver_touchdowns[name=?]", "wide_receiver[touchdowns]"

      assert_select "input#wide_receiver_yards[name=?]", "wide_receiver[yards]"

      assert_select "input#wide_receiver_receptions[name=?]", "wide_receiver[receptions]"

      assert_select "input#wide_receiver_week[name=?]", "wide_receiver[week]"
    end
  end
end
