module GitForce
  module P4
    class Commands
      attr_reader :config
      private :config

      def initialize(config)
        @config = config
      end

      def sync
        puts 'GitForce::P4::Commands.sync'
        puts `p4 sync #{config.depot_files}`
      end
    end
  end
end
