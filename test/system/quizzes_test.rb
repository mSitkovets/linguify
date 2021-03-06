require "application_system_test_case"

class QuizzesTest < ApplicationSystemTestCase
  setup do
    @quiz = quizzes(:one)
    visit login_url
    fill_in 'username', with: 'dave'
    fill_in 'password', with: 'secret'
    click_on 'Login'    
  end

  test "visiting the index" do
    visit quizzes_url
    assert_selector "h1", text: "Quizzes"
  end

  test "creating a Quiz" do
    visit quizzes_url
    click_on "New Quiz"

    fill_in "Description", with: @quiz.description
    select 'Beginner', from: "difficulty_level"
    fill_in "Title", with: @quiz.title
    fill_in "User", with: @quiz.user_id
    click_on "Create Quiz"

    assert_text "Quiz was successfully created"
    click_on "Back"
  end

  test "updating a Quiz" do
    visit quizzes_url
    click_on "Edit", match: :first

    fill_in "Description", with: @quiz.description
    select 'Beginner', from: 'difficulty_level'
    fill_in "Title", with: @quiz.title
    fill_in "User", with: @quiz.user_id
    click_on "Update Quiz"

    assert_text "Quiz was successfully updated"
    click_on "Back"
  end

  test "destroying a Quiz" do
    visit quizzes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Quiz was successfully destroyed"
  end

  test "check routing number" do
    visit login_url
    fill_in 'username', with: 'helen809'
    fill_in 'password', with: 'afsa3234sdf'
    click_on 'Login'  
     
    visit quizzes_url
    click_on 'New Quiz'
    fill_in 'quiz_title', with: 'Foods in French' 
    fill_in 'quiz_description', with: 'Cool new quiz!'
    assert_no_selector "#quiz_routing_number"
    select 'French', from: 'language_learning' 
    select 'English', from: 'instruction_language'
    select 'Beginner', from: 'difficulty_level'
    assert_selector "#quiz_routing_number" 
  end
end
