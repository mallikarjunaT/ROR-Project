require 'test_helper'

class NewemailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @newemail = newemails(:one)
  end

  test "should get index" do
    get newemails_url
    assert_response :success
  end

  test "should get new" do
    get new_newemail_url
    assert_response :success
  end

  test "should create newemail" do
    assert_difference('Newemail.count') do
      post newemails_url, params: { newemail: { email: @newemail.email, login: @newemail.login, name: @newemail.name } }
    end

    assert_redirected_to newemail_url(Newemail.last)
  end

  test "should show newemail" do
    get newemail_url(@newemail)
    assert_response :success
  end

  test "should get edit" do
    get edit_newemail_url(@newemail)
    assert_response :success
  end

  test "should update newemail" do
    patch newemail_url(@newemail), params: { newemail: { email: @newemail.email, login: @newemail.login, name: @newemail.name } }
    assert_redirected_to newemail_url(@newemail)
  end

  test "should destroy newemail" do
    assert_difference('Newemail.count', -1) do
      delete newemail_url(@newemail)
    end

    assert_redirected_to newemails_url
  end
end
