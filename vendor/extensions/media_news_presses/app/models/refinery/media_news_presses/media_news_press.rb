module Refinery
  module MediaNewsPresses
    class MediaNewsPress < Refinery::Core::BaseModel
      extend FriendlyId
      friendly_id :title, use: [:slugged]
      self.table_name = 'refinery_media_news_presses'


      validates :title, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'
      belongs_to :section

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]
      class << self
        def news_links
          self.joins(:section).where('name = ?', 'news')
        end

        def case_links
          self.joins(:section).where('name = ?', 'case')
        end

        def press_release
          self.joins(:section).where('name = ?', 'press')
        end
      end
    end
  end
end
