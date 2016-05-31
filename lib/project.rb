class Project

  attr_accessor :title, :backer


  def initialize(title)
    @title = title
    @backers = []
  end

  def backers
    @backers
  end

  def add_backer(backer)
    backers<< backer

    # add the project to the backer's backed_projects array
    backer.backed_projects<< self

  end

end
