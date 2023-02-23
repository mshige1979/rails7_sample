require "test_helper"

class ComapaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comapany = comapanies(:one)
  end

  test "should get index" do
    get comapanies_url
    assert_response :success
  end

  test "should get new" do
    get new_comapany_url
    assert_response :success
  end

  test "should create comapany" do
    assert_difference("Comapany.count") do
      post comapanies_url, params: { comapany: { name: @comapany.name } }
    end

    assert_redirected_to comapany_url(Comapany.last)
  end

  test "should show comapany" do
    get comapany_url(@comapany)
    assert_response :success
  end

  test "should get edit" do
    get edit_comapany_url(@comapany)
    assert_response :success
  end

  test "should update comapany" do
    patch comapany_url(@comapany), params: { comapany: { name: @comapany.name } }
    assert_redirected_to comapany_url(@comapany)
  end

  test "should destroy comapany" do
    assert_difference("Comapany.count", -1) do
      delete comapany_url(@comapany)
    end

    assert_redirected_to comapanies_url
  end
end
