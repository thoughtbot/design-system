require "spec_helper"
require "pathname"

RSpec.describe Tbds::Generator do
  after(:each) { remove_project_directory }

  describe "#install" do
    it "creates new directory" do
      expect { subject.install }.
        to change { root_path.children.count }.
        by(1)
    end

    it "copies source files into the new directory" do
      expect { subject.install }.
        to change { install_path_exists? }.
        from(false).
        to(true)
    end

    context "when --path flag is provided" do
      it "copies sources files into specified directory" do
        custom_path = Pathname.new("./my/path")
        expect { subject.install }.
          to change { dir_exists?(custom_path) }.
          from(false).
          to(true)
      end
    end
  end

  private

  def dir_exists?(dir)
    File.directory?(dir)
  end

  def install_path_exists?
    dir_exists?(install_path)
  end

  def remove_project_directory
    FileUtils.rm_rf(install_path)
  end

  def install_path
    Pathname.new("#{root_path}#{dir_name}")
  end

  def dir_name
    Tbds::Generator::DEFAULT_ROOT_DIR_NAME
  end

  def root_path
    Pathname.new("./")
  end
end
