require "application_system_test_case"

class HeadProjectsTest < ApplicationSystemTestCase
  setup do
    @head_project = head_projects(:one)
  end

  test "visiting the index" do
    visit head_projects_url
    assert_selector "h1", text: "Head projects"
  end

  test "should create head project" do
    visit head_projects_url
    click_on "New head project"

    fill_in "Head", with: @head_project.head_id
    fill_in "Project", with: @head_project.project_id
    click_on "Create Head project"

    assert_text "Head project was successfully created"
    click_on "Back"
  end

  test "should update Head project" do
    visit head_project_url(@head_project)
    click_on "Edit this head project", match: :first

    fill_in "Head", with: @head_project.head_id
    fill_in "Project", with: @head_project.project_id
    click_on "Update Head project"

    assert_text "Head project was successfully updated"
    click_on "Back"
  end

  test "should destroy Head project" do
    visit head_project_url(@head_project)
    click_on "Destroy this head project", match: :first

    assert_text "Head project was successfully destroyed"
  end
end
