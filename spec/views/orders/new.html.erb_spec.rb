require 'rails_helper'

RSpec.describe "orders/new", type: :view do
  before(:each) do
    assign(:order, Order.new(
      client_name: "MyString",
      table: 1,
      user: nil,
      status: 1
    ))
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

      assert_select "input[name=?]", "order[client_name]"

      assert_select "input[name=?]", "order[table]"

      assert_select "input[name=?]", "order[user_id]"

      assert_select "input[name=?]", "order[status]"
    end
  end
end
