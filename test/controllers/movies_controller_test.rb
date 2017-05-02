require 'test_helper'

class MoviesControllerTest < ActionController::IntegrationTest
  test "should not save article without title" do
    movie1 = Movie.new
    assert_not movie1.save, "Saved the movie without a title"
  end
  # test "the truth" do
  #   assert true
  # end
end
