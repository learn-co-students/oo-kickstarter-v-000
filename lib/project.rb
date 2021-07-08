require 'pry'

class Project
attr_accessor :backers, :title
#attr_reader :name

  def initialize(title)
    @backers = []
    @title = title
  end

  def add_backer(backer)
    @backers << backer
    backer.back_project(self) unless backer.backed_projects.include?(self)
  end

end
