class Project

  attr_accessor :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def title
    @title
  end

  def add_backer(name)
    @backers << name
    name.backed_projects << self
  end

  def backers
    @backers
  end

end
