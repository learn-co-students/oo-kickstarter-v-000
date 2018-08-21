#project.rb
require 'pry'
class Project
  attr_reader :backers, :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)  #accepts Backer argument and stores it in backers array
    @backers << backer
    backer.back_project(self) #adds the project to the backer's backed_projects array
  end
end
