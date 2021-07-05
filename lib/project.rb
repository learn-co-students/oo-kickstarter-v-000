class Project
  attr_reader :backers, :title
  # Since backers is an array you can add elements
  # but not modify its value.

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(name)
    backers << name # Shove the backer object into the backers instance array variable
    name.backed_projects << self # Shove the object itself into the backed_projects instance array variable
  end

end
