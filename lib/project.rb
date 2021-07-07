class Project

  attr_accessor :backers, :title

  def initialize (title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer # tells project class about the backer
    backer.backed_projects << self #tells backer class about the project
  end

end
