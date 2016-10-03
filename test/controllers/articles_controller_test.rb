require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test 'should get root' do
    get root_url
    assert_response :success
  end

  test "should get index" do
    get articles_index_url
    assert_response :success
    assert_select 'title', 'Namelos'
  end
end
