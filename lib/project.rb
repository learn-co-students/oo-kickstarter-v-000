class Project

  attr_accessor :backers, :title #so Projects can add backers to their list of backers and report on the backers who support them.

  def initialize(title)
    @backers = []
    @title = title
  end

  def add_backer(backer)
    @backers << backer
    #new_project = Projects.new #ropes = Project.new("All The Ropes")
    #backer = Backer.new(name) #arel = Backer.new("Arel")
    #new_project.add_backer(backer) #ropes.add_backer(arel)
    backer.backed_projects << self #(new_project) #expect(arel.backed_projects).to include(ropes)
  end

end
