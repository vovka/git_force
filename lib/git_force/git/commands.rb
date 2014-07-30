module GitForce
  module Git
    class Commands
      attr_reader :config, :p4
      private :config, :p4

      def initialize
        @config = GitForce::Config.new
        @p4 = GitForce::P4::Commands.new config
      end

      def fetch4
        __trace__
        FileUtils.cd config.remote_path
        __trace__
        GitForce::Git::Wrapper.import_changelists
        __trace__
        p4.sync
        __trace__
        if GitForce::Git::Wrapper.no_changes?
        __trace__
          GitForce::Git::Wrapper.rebase_in_dates_order
        __trace__
        end
        __trace__
        FileUtils.cd config.local_copy_path
        __trace__
        fetch
        __trace__
      end

      def fetch
        puts 'GitForce::Git::Commands.fetch'
        puts `git fetch #{remote}`
      end

      def __trace__
        Trace.perform
      end

      def remote
        config.remote
      end

      class Trace
        def self.perform
          puts "  in #{pwd!}" if pwd_changed?
        end

        def self.pwd!
          @pwd = pwd
        end

        def self.pwd
          `pwd`
        end

        def self.pwd_changed?
          @pwd != pwd
        end
      end
    end
  end
end
