require 'pry'
class Project

  attr_accessor :backers, :title

  def initialize(title)
    @backers = []
    @title = title
  end

  def add_backer(title)
    backers << title
    title.backed_projects << self
  end  

end    