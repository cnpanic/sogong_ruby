require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
      fixtures :movies
    def test_validity_of_title
        
        movie1 = Movie.new({title:"La la land",information:"Blah Blah"})
        assert movie1.valid?
        
        movie2 = Movie.new({title:"Hey",information:""})
        assert !movie2.valid?, "Title word too short."
        
        movie3 = Movie.new
        assert !movie3.valid?, "Empty data item is created."
        
        movie4 = Movies(:big)
        puts "Motive title is #{movie4.title}"
        assert_equal movie4.title, "My Big Daddy" 
    end
end
