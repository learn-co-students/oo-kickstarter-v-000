require 'pry'
class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer_object)
    if @backers.include?(backer_object) == false
       @backers << backer_object
       backer_object.backed_projects << self
       #binding.pry
    end
  end

end
