require 'test_helper'

class RequirementStylesControllerTest < ActionController::TestCase
  setup do
    @requirement_style = requirement_styles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:requirement_styles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create requirement_style" do
    assert_difference('RequirementStyle.count') do
      post :create, requirement_style: { requirement_id: @requirement_style.requirement_id, style_id: @requirement_style.style_id }
    end

    assert_redirected_to requirement_style_path(assigns(:requirement_style))
  end

  test "should show requirement_style" do
    get :show, id: @requirement_style
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @requirement_style
    assert_response :success
  end

  test "should update requirement_style" do
    put :update, id: @requirement_style, requirement_style: { requirement_id: @requirement_style.requirement_id, style_id: @requirement_style.style_id }
    assert_redirected_to requirement_style_path(assigns(:requirement_style))
  end

  test "should destroy requirement_style" do
    assert_difference('RequirementStyle.count', -1) do
      delete :destroy, id: @requirement_style
    end

    assert_redirected_to requirement_styles_path
  end
end
