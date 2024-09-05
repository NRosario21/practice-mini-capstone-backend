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
      post "/movies.json", params: { name: "lake", category: "horror", year: 1980 }
      assert_response 200
    end

    test "show" do
      get "/movies/#{Movie.first.id}.json"
      assert_response 200

      data = JSON.parse(response.body)
      assert_equal ["id", "name", "category", "year", "created_at", "updated_at"], data.keys
    end

    test "update" do
      movie = Movie.first
      patch "/movies/#{movie.id}.json", params: { name: "Updated name" }
      assert_response 200

      data = JSON.parse(response.body)
      assert_equal "Updated name", data["name"]
    end
  end
end
