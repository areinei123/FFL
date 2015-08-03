require 'rails_helper'

RSpec.describe "running_backs/show", type: :view do
  before(:each) do
    @running_back = assign(:running_back, RunningBack.create!(
      :player_name => "Player Name",
      :touchdowns => 1,
      :yards => 2,
      :receptions => 3,
      :week => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Player Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
