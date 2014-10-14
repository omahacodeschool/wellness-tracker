require 'rails_helper'

RSpec.describe "metrics/show", :type => :view do
  before(:each) do
    @metric = assign(:metric, Metric.create!(
      :user_id => 1,
      :energy => 2,
      :happiness => 3,
      :productivity => 4,
      :fulfillment => 5,
      :day => 6
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
  end
end
