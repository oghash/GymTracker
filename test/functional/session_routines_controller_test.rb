require 'test_helper'

class SessionRoutinesControllerTest < ActionController::TestCase
  setup do
    @session_routine = session_routines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:session_routines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create session_routine" do
    assert_difference('SessionRoutine.count') do
      post :create, session_routine: @session_routine.attributes
    end

    assert_redirected_to session_routine_path(assigns(:session_routine))
  end

  test "should show session_routine" do
    get :show, id: @session_routine
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @session_routine
    assert_response :success
  end

  test "should update session_routine" do
    put :update, id: @session_routine, session_routine: @session_routine.attributes
    assert_redirected_to session_routine_path(assigns(:session_routine))
  end

  test "should destroy session_routine" do
    assert_difference('SessionRoutine.count', -1) do
      delete :destroy, id: @session_routine
    end

    assert_redirected_to session_routines_path
  end
end
