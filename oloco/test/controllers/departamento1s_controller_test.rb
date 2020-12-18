require "test_helper"

class Departamento1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @departamento1 = departamento1s(:one)
  end

  test "should get index" do
    get departamento1s_url
    assert_response :success
  end

  test "should get new" do
    get new_departamento1_url
    assert_response :success
  end

  test "should create departamento1" do
    assert_difference('Departamento1.count') do
      post departamento1s_url, params: { departamento1: { nome: @departamento1.nome } }
    end

    assert_redirected_to departamento1_url(Departamento1.last)
  end

  test "should show departamento1" do
    get departamento1_url(@departamento1)
    assert_response :success
  end

  test "should get edit" do
    get edit_departamento1_url(@departamento1)
    assert_response :success
  end

  test "should update departamento1" do
    patch departamento1_url(@departamento1), params: { departamento1: { nome: @departamento1.nome } }
    assert_redirected_to departamento1_url(@departamento1)
  end

  test "should destroy departamento1" do
    assert_difference('Departamento1.count', -1) do
      delete departamento1_url(@departamento1)
    end

    assert_redirected_to departamento1s_url
  end
end
