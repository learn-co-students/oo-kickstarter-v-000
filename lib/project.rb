#if the relationship is between instances, use an instance variable.
#if the class needs to know it, use a class variable.
#when creating a new relationship that wants to input the class
#deals with the class you are currently on use self
#in order to check the if the object exists in the list use unless or if
#after
class Project
  attr_accessor :title
  attr_reader :backers
  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end

end
