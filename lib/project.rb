require 'pry'
class Project

  attr_accessor :title, :backers
  
  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    if @backers.include?(backer)
      @backers
    else
      @backers << backer
      backer.back_project(self)
    end
  end

end
