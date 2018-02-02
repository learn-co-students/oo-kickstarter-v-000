class Backer
  attr_accessor :backed_projects, :name
  @@all = []
  def initialize(name)
    @name = name
    @backed_projects = []
    @@all << self
  end

    def back_project(project)
      @backed_projects << project
      Project.all.each do |x|
        if x == project
          x.backers << self
        end
      end
    end

    def self.all
      @@all
    end
end
