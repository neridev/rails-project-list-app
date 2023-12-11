require "test_helper"

class HeadProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @head_project = head_projects(:one)
  end

  test "should get index" do
    get head_projects_url
    assert_response :success
  end

  test "should get new" do
    get new_head_project_url
    assert_response :success
  end

  test "should create head_project" do
    assert_difference("HeadProject.count") do
      post head_projects_url, params: { head_project: { head_id: @head_project.head_id, project_id: @head_project.project_id } }
    end

    assert_redirected_to head_project_url(HeadProject.last)
  end

  test "should show head_project" do
    get head_project_url(@head_project)
    assert_response :success
  end

  test "should get edit" do
    get edit_head_project_url(@head_project)
    assert_response :success
  end

  test "should update head_project" do
    patch head_project_url(@head_project), params: { head_project: { head_id: @head_project.head_id, project_id: @head_project.project_id } }
    assert_redirected_to head_project_url(@head_project)
  end

  test "should destroy head_project" do
    assert_difference("HeadProject.count", -1) do
      delete head_project_url(@head_project)
    end

    assert_redirected_to head_projects_url
  end
end
