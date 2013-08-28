module ProjectsHelper
 def project_visit (id)
    project = Project.find(id)
    counter = project.hit_counter + 1
    project.update(:hit_counter => counter)
  end
end

