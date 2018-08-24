class Project
    attr_accessor :backers, :title

    def initialize(title)
        @title = title
        @backers = []
    end

    def add_backer(backer)
        backers << backer   # Stores backer in backers array
        backer.backed_projects << self  # Adds project to backer's backed_projects array
    end

end