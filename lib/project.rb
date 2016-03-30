class Project

  attr_reader 
  attr_accessor :backers, :title

  def initialize(title)
    @title = title
    @backers = []
  end


end