require 'test_helper'

class ExploreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get explore_index_url
    assert_response :success
    assert_select 'nav.side_nav a', minimum: 2
    assert_select 'main ul.catalog li', 3
    assert_select 'h2', 'Foods in Swahili' 
  end

end
