require 'pry'
require_relative 'backer.rb'

class Project
  attr_accessor :title
  attr_reader :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    backers << backer
    backer.back_project(self) if !backer.backed_projects.include?(self)
  end
end

game = Project.new("Game")
game.add_backer(Backer.new("Me"))
game
