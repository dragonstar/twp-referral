require 'test_helper'

class ReferralManagementsControllerTest < ActionController::TestCase
  setup do
    @referral_management = referral_managements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:referral_managements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create referral_management" do
    assert_difference('ReferralManagement.count') do
      post :create, :referral_management => @referral_management.attributes
    end

    assert_redirected_to referral_management_path(assigns(:referral_management))
  end

  test "should show referral_management" do
    get :show, :id => @referral_management
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @referral_management
    assert_response :success
  end

  test "should update referral_management" do
    put :update, :id => @referral_management, :referral_management => @referral_management.attributes
    assert_redirected_to referral_management_path(assigns(:referral_management))
  end

  test "should destroy referral_management" do
    assert_difference('ReferralManagement.count', -1) do
      delete :destroy, :id => @referral_management
    end

    assert_redirected_to referral_managements_path
  end
end
