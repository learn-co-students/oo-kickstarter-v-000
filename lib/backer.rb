class Backer
      attr_reader :name
       attr_accessor :project
  def initialize(name)
    @name = name
    @backed_projects = []
  end



  def back_project(project)
         @project = project
          @backed_projects << project

      # add self to @backers of another class
        
  end


  def backed_projects

  	@backed_projects
  end



end

# # new instance of class Backer
# bob = Backer.new("Bob")

# # new instance of class Project
# awesome_project = Project.new("This is an Awesome Project")

# # call back_project method on Backer intance
# #
# bob.back_project(awesome_project)

# bob.backed_projects
# # => #<Project:0x000001018683d0 @title="This is an Awesome Project"...>

# awesome_project.backers
# #=> Backer.new
