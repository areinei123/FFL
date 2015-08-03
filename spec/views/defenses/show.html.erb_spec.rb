require 'rails_helper'

RSpec.describe "defenses/show", type: :view do
  before(:each) do
    @defense = assign(:defense, Defense.create!(
      :player_name => "Player Name",
      :week => 1,
      :tackles => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Player Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
