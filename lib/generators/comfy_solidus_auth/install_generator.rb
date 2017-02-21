require 'rails/generators'
module ComfySolidusAuth
  class InstallGenerator < Rails::Generators::Base
    def insert_config
      inject_into_file "config/initializers/comfortable_mexican_sofa.rb",
                       after: "ComfortableMexicanSofa.configure do |config|\n" do
        "\n  # Use Solidus/Spree auth for Comfy\n"\
        "  config.admin_auth = 'ComfySolidusAuth::Authentication'\n"\
        "  config.admin_authorization = 'ComfySolidusAuth::Authorization'\n\n"
      end
    end
  end
end
