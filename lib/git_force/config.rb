require 'yaml'
require 'ostruct'

module GitForce
  class Config
    attr_reader :config
    private :config

    def initialize
      @config = OpenStruct.new YAML.load_file config_file
    end

    def remote_path
      config.remote_path
    end


    def local_copy_path
      config.local_copy_path
    end

    def remote
      config.remote
    end

    def depot_files
      config.depot_files
    end

  private

    def config_file
      '.git_force.yml'
    end
  end
end
