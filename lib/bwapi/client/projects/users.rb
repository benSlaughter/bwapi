module BWAPI
  class Client
    module Projects
      # Users module for projects/users endpoint
      module Users

        # Get all users shared with project
        #
        # @param id [Integer] Id of project
        # @return [Hashie::Mash] All users shared to project
        def project_users id
          get "projects/#{id}/users"
        end

      end
    end
  end
end