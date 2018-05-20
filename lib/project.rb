class Project

  attr_reader :title, :backers


  @@new = []

  def initialize(title)
    @title = title
    @@new << title
    @backers = []
  end

  def add_backer(name)
    @backers << name
    @backers.each do |backer|
      backer.back_project(self) unless backer.backed_projects.include?(self)
    end
  end

end
