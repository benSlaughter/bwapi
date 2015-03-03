module BWAPI
  class Client
    module Brandwatch
      # HostLocationOverrides module for brandwatch/hostLocationOverrides endpoints
      module HostLocationOverrides
        # Fetch all host location overrides
        #
        # TODO: Add parameters documentation
        def host_location_overrides
          get 'brandwatch/hostLocationOverrides'
        end

        # Fetch a host location override
        #
        # TODO: Add parameters documentation
        def host_location_override(opts = {})
          get 'brandwatch/hostLocationOverride', opts
        end
      end
    end
  end
end
