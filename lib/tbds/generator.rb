require "fileutils"
require "pathname"
require "tbds/version"
require "thor"

module Tbds
  class Generator < Thor
    DEFAULT_ROOT_DIR_NAME = "tbds".freeze
    DEFAULT_INSTALL_PATH = "./#{DEFAULT_ROOT_DIR_NAME}".freeze

    map ["-v", "--version"] => :version

    desc "install", "Install TBDS into your project"
    method_options path: :string, force: :boolean
    def install
      if tbds_files_already_exist? && !options[:force]
        puts "TBDS already installed. Doing nothing!"
      else
        install_files
        puts "Successfully installed TBDS to #{install_path}/"
      end
    end

    private

    def tbds_files_already_exist?
      install_path.exist?
    end

    def install_path
      @install_path ||=
        if options[:path]
          Pathname.new(File.join(options[:path], DEFAULT_INSTALL_PATH))
        else
          Pathname.new(DEFAULT_INSTALL_PATH)
        end
    end

    def install_files
      make_install_directory
      copy_in_scss_files
    end

    def make_install_directory
      FileUtils.mkdir_p(install_path)
    end

    def copy_in_scss_files
      FileUtils.cp_r(all_stylesheets, install_path)
    end

    def all_stylesheets
      Dir["#{stylesheets_directory}/*"]
    end

    def stylesheets_directory
      File.join(top_level_directory, "src")
    end

    def top_level_directory
      File.dirname(File.dirname(File.dirname(__FILE__)))
    end
  end
end
