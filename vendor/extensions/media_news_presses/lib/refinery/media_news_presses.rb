require 'refinerycms-core'

module Refinery
  autoload :MediaNewsPressesGenerator, 'generators/refinery/media_news_presses_generator'

  module MediaNewsPresses
    require 'refinery/media_news_presses/engine'

    class << self
      attr_writer :root

      def root
        @root ||= Pathname.new(File.expand_path('../../../', __FILE__))
      end

      def factory_paths
        @factory_paths ||= [ root.join('spec', 'factories').to_s ]
      end
    end
  end
end
