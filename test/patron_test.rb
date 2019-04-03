require 'minitest/autorun'
require 'minitest/pride'
require './lib/patron'

class PatronTest < Minitest::Test

  def setup
    @bob = Patron.new("Bob", 20)
  end

  def test_if_patron_class_exists
    assert_instance_of Patron, @bob
  end

  def test_what_name_method_is_be_equal_to
    assert_equal "Bob", @bob.name
  end

  def test_what_spending_money_method_is_equal_to
    assert_equal 20, @bob.spending_money
  end

  def test_what_a_patrons_interests_are_equal_to
    assert_equal [], @bob.interests
  end

  def test_what_can_be_added_to_interests
    @bob.add_interest("Dead Sea Scrolls")
    @bot.add_interest("Gems and Minerals")
    
    assert_equal ["Dead Sea Scrolls", "Gems and Minerals"], @bob.interests
  end
end
