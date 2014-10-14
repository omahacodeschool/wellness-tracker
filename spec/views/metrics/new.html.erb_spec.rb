require 'rails_helper'

RSpec.describe "metrics/new", :type => :view do
  before(:each) do
    assign(:metric, Metric.new(
      :user_id => 1,
      :energy => 1,
      :happiness => 1,
      :productivity => 1,
      :fulfillment => 1,
      :day => 1
    ))
  end

  it "renders new metric form" do
    render

    assert_select "form[action=?][method=?]", metrics_path, "post" do

      assert_select "input#metric_user_id[name=?]", "metric[user_id]"

      assert_select "input#metric_energy[name=?]", "metric[energy]"

      assert_select "input#metric_happiness[name=?]", "metric[happiness]"

      assert_select "input#metric_productivity[name=?]", "metric[productivity]"

      assert_select "input#metric_fulfillment[name=?]", "metric[fulfillment]"

      assert_select "input#metric_day[name=?]", "metric[day]"
    end
  end
end
