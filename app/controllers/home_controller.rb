class HomeController < ApplicationController
  def index
    if Manager.count == 0
      redirect_to new_manager_path
      return
    end

    if Project.count == 0
      redirect_to new_project_path
      return
    end
    
    if Defaultproject.count == 0
      if Project.count == 1
        # Go to list of tasks of the only project in the database. Pass in project id (which is probably 1)
        # return
      else
        # Go to the page showing the various projects as links to their tasks
        # Also on that page, show a dropdown to choose a new default project, if desired
        # return
      end
    end
  end
end
