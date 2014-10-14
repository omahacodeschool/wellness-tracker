require 'rails_helper'

RSpec.describe "metrics/index", :type => :view do
  before(:each) do
    assign(:metrics, [
      Metric.create!(
        :user_id => 1,
        :energy => 2,
        :happiness => 3,
        :productivity => 4,
        :fulfillment => 5,
        :day => 6
      ),
      Metric.create!(
        :user_id => 1,
        :energy => 2,
        :happiness => 3,
        :productivity => 4,
        :fulfillment => 5,
        :day => 6
      )
    ])
  end

  it "renders a list of metrics" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
  end
end
