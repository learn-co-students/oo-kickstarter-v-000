class Project
  attr_accessor:title,:backers
  def initialize(title)
    @title=title
    @backers = []
    end

    def add_backer(backer)
       @backers<<backer
       backer.backed_project(self) if project.backers.include?(self) == false
    end


end