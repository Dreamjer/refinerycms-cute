module Refinery
  module Cutes
    class Cute < Refinery::Core::BaseModel
      self.table_name = 'refinery_cutes'


      validates :name, :presence => true, :uniqueness => true
      validates :project, :presence => true, :uniqueness => true

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      acts_as_indexed :fields => [:name]

    end
  end
end
