class Entry < ActiveRecord::Base
   attr_accessible :name, :status

   validates_presence_of :name
   validates_presence_of :status
end
