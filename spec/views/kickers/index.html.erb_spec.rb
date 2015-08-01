require 'rails_helper'

RSpec.describe "kickers/index", type: :view do
  before(:each) do
    assign(:kickers, [
      Kicker.create!(
        :player_name => "Player Name",
        :week => 1,
        :kicks_made => 2,
        :kicks_attempted => 3
      ),
      Kicker.create!(
        :player_name => "Player Name",
        :week => 1,
        :kicks_made => 2,
        :kicks_attempted => 3
      )
    ])
  end

  it "renders a list of kickers" do
    render
    assert_select "tr>td", :text => "Player Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
