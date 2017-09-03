module Refinery
  module MediaNewsPresses
    class MediaNewsPress < Refinery::Core::BaseModel
      self.table_name = 'refinery_media_news_presses'


      validates :title, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'
      belongs_to :section

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]

    end
  end
end