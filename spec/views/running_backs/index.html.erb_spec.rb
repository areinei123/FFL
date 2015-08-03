require 'rails_helper'

RSpec.describe "running_backs/index", type: :view do
  before(:each) do
    assign(:running_backs, [
      RunningBack.create!(
        :player_name => "Player Name",
        :touchdowns => 1,
        :yards => 2,
        :receptions => 3,
        :week => 4
      ),
      RunningBack.create!(
        :player_name => "Player Name",
        :touchdowns => 1,
        :yards => 2,
        :receptions => 3,
        :week => 4
      )
    ])
  end

  it "renders a list of running_backs" do
    render
    assert_select "tr>td", :text => "Player Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
