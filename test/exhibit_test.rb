require 'minitest/autorun'
require 'minitest/pride'
require './lib/exhibit'

class ExhibitTest < Minitest::Test

  def setup
    @exhibit = Exhibit.new("Gems and Minerals", 0)
  end

  def test_exhibit_class_exists
    assert_instance_of Exhibit, @exhibit
  end

  def test_what_name_method_can_be_equal_to
    assert_equal "Gems and Minerals", @exhibit.name
  end

  def test_what_cost_method_is_equal_to
    assert_equal 0, @exhibit.cost
  end
end
