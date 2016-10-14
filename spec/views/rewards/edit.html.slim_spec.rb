require 'rails_helper'

RSpec.describe "rewards/edit", :type => :view do
  before(:each) do
    @reward = assign(:reward, Reward.create!(
      :name => "MyString",
      :photo => "MyString",
      :share_link => "MyString",
      :timezone => "MyString",
      :default_timezone => false,
      :description => "MyText",
      :quantity => 1,
      :stats => 1,
      :location => nil
    ))
  end

  it "renders the edit reward form" do
    render

    assert_select "form[action=?][method=?]", reward_path(@reward), "post" do

      assert_select "input#reward_name[name=?]", "reward[name]"

      assert_select "input#reward_photo[name=?]", "reward[photo]"

      assert_select "input#reward_share_link[name=?]", "reward[share_link]"

      assert_select "input#reward_timezone[name=?]", "reward[timezone]"

      assert_select "input#reward_default_timezone[name=?]", "reward[default_timezone]"

      assert_select "textarea#reward_description[name=?]", "reward[description]"

      assert_select "input#reward_quantity[name=?]", "reward[quantity]"

      assert_select "input#reward_stats[name=?]", "reward[stats]"

      assert_select "input#reward_location[name=?]", "reward[location]"
    end
  end
end
