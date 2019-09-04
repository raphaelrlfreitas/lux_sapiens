class ProjectsController < InheritedResources::Base

  private

    def project_params
      params.require(:project).permit(:title, :description, :date, :client_id)
    end

end
