class Project
attr_accessor :title, :backers


  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    self.backers << backer
    backer.backed_projects << self unless backer.backed_projects.include?(backer)
  end

end
