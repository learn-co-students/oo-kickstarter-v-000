
[1mFrom:[0m /home/aaronrtrevino12-37497/code/labs/oo-kickstarter-v-000/lib/backer_project.rb @ line 32 Backer#back_project:

    [1;34m11[0m: [32mdef[0m [1;34mback_project[0m(project)
    [1;34m12[0m:   @backed_projects << project
    [1;34m13[0m:   [1;34m# @backed_projects array contains the following two(2) projects:[0m
    [1;34m14[0m:   [1;34m# [#<Project:0x00000002e8e4d0[0m
    [1;34m15[0m:   [1;34m# @backers=[#<Backer:0x00000002e8e5c0 @backed_projects=[...], @name="Mike">],[0m
    [1;34m16[0m:   [1;34m# @title="Rake Leaves">,[0m
    [1;34m17[0m:   [1;34m# #<Project:0x00000002e8e430[0m
    [1;34m18[0m:   [1;34m# @backers=[#<Backer:0x00000002e8e5c0 @backed_projects=[...], @name="Mike">],[0m
    [1;34m19[0m:   [1;34m# @title="Mow Grass">][0m
    [1;34m20[0m: 
    [1;34m21[0m:   project.backers << [1;36mself[0m
    [1;34m22[0m:   [1;34m# self contains the following:[0m
    [1;34m23[0m:   [1;34m# #<Backer:0x00000002e8e5c0[0m
    [1;34m24[0m:   [1;34m# @backed_projects=[0m
    [1;34m25[0m:   [1;34m# [#<Project:0x00000002e8e4d0[0m
    [1;34m26[0m:   [1;34m# @backers=[#<Backer:0x00000002e8e5c0 ...>],[0m
    [1;34m27[0m:   [1;34m# @title="Rake Leaves">,[0m
    [1;34m28[0m:   [1;34m# #<Project:0x00000002e8e430[0m
    [1;34m29[0m:   [1;34m# @backers=[#<Backer:0x00000002e8e5c0 ...>],[0m
    [1;34m30[0m:   [1;34m# @title="Mow Grass">],[0m
    [1;34m31[0m:   [1;34m# @name="Mike">[0m
 => [1;34m32[0m:   binding.pry
    [1;34m33[0m: [32mend[0m

