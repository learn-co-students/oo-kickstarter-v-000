require 'pry'
class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    if backer.backed_projects.length > 0
      backer.backed_projects.each do |project|
        project.object_id != self.object_id {backer.back_project(self)}
      end
    else
      backer.back_project(self)
    end
  end

end
