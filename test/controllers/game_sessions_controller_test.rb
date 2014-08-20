require 'test_helper'

class GameSessionsControllerTest < ActionController::TestCase
  setup do
    @game_session = game_sessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:game_sessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game_session" do
    assert_difference('GameSession.count') do
      post :create, game_session: { name: @game_session.name }
    end

    assert_redirected_to game_session_path(assigns(:game_session))
  end

  test "should show game_session" do
    get :show, id: @game_session
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game_session
    assert_response :success
  end

  test "should update game_session" do
    patch :update, id: @game_session, game_session: { name: @game_session.name }
    assert_redirected_to game_session_path(assigns(:game_session))
  end

  test "should destroy game_session" do
    assert_difference('GameSession.count', -1) do
      delete :destroy, id: @game_session
    end

    assert_redirected_to game_sessions_path
  end
end
