

class Museum
  attr_reader :name,
              :exhibits

  def initialize(name)
    @name = name
    @exhibits = []
  end

  def add_exhibit(new_exhibit)
    @exhibits << new_exhibit
  end

  def recommend_exhibits(patron)
    # patron = Exhibit.new("Dead Sea Scrolls", 10), Exhibit.new("Gems and Minerals", 0)
    # Need to change the patron argument, which is a patron object, into an array of
    # exhibit objects that correspond to the patron's interests.
    recommended_arrray = []
    if @exhibits == patron.interests
      recommended_arrray << @exhibits
    end
  end
end
