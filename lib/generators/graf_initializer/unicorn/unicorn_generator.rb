module GrafInitializer
    class UnicornGenerator < Rails::Generators::Base
      desc "Copy the --theme stylesheets to your rails application assets path, so you can customize them"
      source_root File.expand_path('../',__FILE__)
      class_option :port,        :type => :string,   :default => "9999",   :desc => 'Use port number to unicorn'

      def copy_config
        template "config/unicorn.rb"      , "config/unicorn.rb"
      end

      def copy_script
        copy_file "script/unicorn"      , "script/unicorn"
      end

    end
  end
