require 'rails_helper'

RSpec.describe "orders/edit", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      client_name: "MyString",
      table: 1,
      user: nil,
      status: 1
    ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "input[name=?]", "order[client_name]"

      assert_select "input[name=?]", "order[table]"

      assert_select "input[name=?]", "order[user_id]"

      assert_select "input[name=?]", "order[status]"
    end
  end
end
