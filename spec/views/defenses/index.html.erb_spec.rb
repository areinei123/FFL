require 'rails_helper'

RSpec.describe "defenses/index", type: :view do
  before(:each) do
    assign(:defenses, [
      Defense.create!(
        :player_name => "Player Name",
        :week => 1,
        :tackles => 2
      ),
      Defense.create!(
        :player_name => "Player Name",
        :week => 1,
        :tackles => 2
      )
    ])
  end

  it "renders a list of defenses" do
    render
    assert_select "tr>td", :text => "Player Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
