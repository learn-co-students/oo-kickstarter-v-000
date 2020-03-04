# - When a `Backer` instance is initialized, it should be initialized with a
#   `@backed_projects` variable set to an empty array. Instances of the `Backer`
#   class should have an `attr_reader` for backed projects. This way, a backer can
#   report on the projects they back.
#
# - When a `Project` instance is initialized, it should be initialized with a
#   `@backers` variable set to an empty array. Instances of the `Project` class
#   should have an `attr_reader` for backers. This way, a project can report on
#   who its backers are.
#
# - Once both classes have their attributes and readers set up, write a method on the Backer class called `back_project()`
#   that takes in a Project instance and adds the project to its `@backed_projects` attribute.
#
# - Similarly, write a method on the Project class called `add_backer()` that
#   takes in a Backer instance and adds the backer to its `@backers` attribute.
#
# - Whenever `back_project()` is called to update `@backed_projects`, the project _should alsoupdate its `@backers` list_.
#
# - Similarly, whenever `add_backer()` is called to update `@backers`, the backer _should also update its `@backed_projects` list_.
class Backer
  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    project.backers << self
  end

end
