require 'test_helper'

class BallotsControllerTest < ActionController::TestCase
  setup do
    @ballot = ballots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ballots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ballot" do
    assert_difference('Ballot.count') do
      post :create, ballot: { event_id: @ballot.event_id, loc1: @ballot.loc1, loc2: @ballot.loc2, loc3: @ballot.loc3, loc4: @ballot.loc4, time1: @ballot.time1, time2: @ballot.time2, time3: @ballot.time3, time4: @ballot.time4, user_id: @ballot.user_id }
    end

    assert_redirected_to ballot_path(assigns(:ballot))
  end

  test "should show ballot" do
    get :show, id: @ballot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ballot
    assert_response :success
  end

  test "should update ballot" do
    put :update, id: @ballot, ballot: { event_id: @ballot.event_id, loc1: @ballot.loc1, loc2: @ballot.loc2, loc3: @ballot.loc3, loc4: @ballot.loc4, time1: @ballot.time1, time2: @ballot.time2, time3: @ballot.time3, time4: @ballot.time4, user_id: @ballot.user_id }
    assert_redirected_to ballot_path(assigns(:ballot))
  end

  test "should destroy ballot" do
    assert_difference('Ballot.count', -1) do
      delete :destroy, id: @ballot
    end

    assert_redirected_to ballots_path
  end
end
