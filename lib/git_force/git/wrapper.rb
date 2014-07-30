module GitForce
  module Git
    class Wrapper
      def self.import_changelists
        puts 'GitForce::Git::Wrapper.import_changelists'
      end

      def self.no_changes?
        puts 'GitForce::Git::Wrapper.no_changes?'
        true
      end

      def self.rebase_in_dates_order
        puts 'GitForce::Git::Wrapper.rebase_in_dates_order'
      end
    end
  end
end
