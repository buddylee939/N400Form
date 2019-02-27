require 'test_helper'

class N400FormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @n400_form = n400_forms(:one)
  end

  test "should get index" do
    get n400_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_n400_form_url
    assert_response :success
  end

  test "should create n400_form" do
    assert_difference('N400Form.count') do
      post n400_forms_url, params: { n400_form: { eligitility: @n400_form.eligitility } }
    end

    assert_redirected_to n400_form_url(N400Form.last)
  end

  test "should show n400_form" do
    get n400_form_url(@n400_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_n400_form_url(@n400_form)
    assert_response :success
  end

  test "should update n400_form" do
    patch n400_form_url(@n400_form), params: { n400_form: { eligitility: @n400_form.eligitility } }
    assert_redirected_to n400_form_url(@n400_form)
  end

  test "should destroy n400_form" do
    assert_difference('N400Form.count', -1) do
      delete n400_form_url(@n400_form)
    end

    assert_redirected_to n400_forms_url
  end
end
