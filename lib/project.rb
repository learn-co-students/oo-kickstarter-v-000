class Project
  attr_accessor :title, :backers
  def initialize(title)
    @title = title
    @backers = []
  end
  def add_backer(something)
    @backers << something
    something.backed_projects << self
  end
end
