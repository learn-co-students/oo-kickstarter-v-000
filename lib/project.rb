class Project
	  attr_accessor :backers, :title, :name

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(name)
    self.backers << name
    name.backed_projects << self
  end
end
