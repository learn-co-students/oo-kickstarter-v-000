class Project
  attr_accessor :backers
  attr_reader :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer_object)
    if !@backers.include?(backer_object)
      @backers << backer_object
    end
    if !backer_object.backed_projects.include?(self)
      backer_object.back_project(self)
    end
  end
end
