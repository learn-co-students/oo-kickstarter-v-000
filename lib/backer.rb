class Backer #has many recipricol relationship! w. has many you know you need to set up an empty array! (put into initialize method!)
  attr_accessor :backed_projects, :name  #putting backed_projects here allows you to more easily read/write that array outside of this class!

  def initialize(name) #each instance is initialized with a name of a backer
    @name = name #local name var that is passed into the meth is set to an instance var
    @backed_projects = [] #empty array to save each instance
  end

  def back_project(project) #meth that takes in project argument
    @backed_projects << project #save the local project var into the instance backed_projects array. so Backer class knows abot the project!
    #need to them set up opposite relationship so that PROJECT knows about the BACKER
    #Project is an object of the Project Class. Which means it has access to ANY method within its class. So it has access to its instance method
    #add_backer(backer) so we can use that method on this argument (project) bc (project) is an instance of the Project Class:
    #project.add_backer(self) #need to change this argument to self bc backer (argument from other class is not defined here in this class/method bc its just a local var)
    #when you change to self it refers to the instance!
    #but this will create a long long loop! (project.add_backer(self)) so need to find different way...
    project.backers << self
  end
end

#side note: if this was a has many/belongs to we could use project.backer.self (in the back_project method)
