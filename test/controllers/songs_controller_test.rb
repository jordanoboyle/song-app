require "test_helper"

class SongsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "create" do
    assert_difference "Song.count", 1 do
      post "/songs.json", params: { title: "lake", artist: "something", length: 600 }
      assert_response 200
    end
  end

  test "index" do
    get "/songs.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Song.count, data.length
  end
end
