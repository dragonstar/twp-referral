require 'test_helper'

class MyReferralsControllerTest < ActionController::TestCase
  setup do
    @my_referral = my_referrals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_referrals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_referral" do
    assert_difference('MyReferral.count') do
      post :create, :my_referral => @my_referral.attributes
    end

    assert_redirected_to my_referral_path(assigns(:my_referral))
  end

  test "should show my_referral" do
    get :show, :id => @my_referral
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @my_referral
    assert_response :success
  end

  test "should update my_referral" do
    put :update, :id => @my_referral, :my_referral => @my_referral.attributes
    assert_redirected_to my_referral_path(assigns(:my_referral))
  end

  test "should destroy my_referral" do
    assert_difference('MyReferral.count', -1) do
      delete :destroy, :id => @my_referral
    end

    assert_redirected_to my_referrals_path
  end
end
