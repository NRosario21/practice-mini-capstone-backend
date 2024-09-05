require "test_helper"

class MoviesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/movies.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Movie.count, data.length
  end

  test "create" do
    assert_difference "Movie.count", 1 do
      post "/movies.json", params: { name: "lake", width: 800, height: 600 }
      assert_response 200
    end
  end
end
