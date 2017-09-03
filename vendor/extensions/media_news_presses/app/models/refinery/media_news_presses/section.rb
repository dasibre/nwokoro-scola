module Refinery
  module MediaNewsPresses
    class Section < Refinery::Core::BaseModel


      validates :name, :presence => true, :uniqueness => true
      has_many :media_news_presses

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]

    end
  end
end
