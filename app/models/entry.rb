class Entry < ActiveRecord::Base
   attr_accessible :name

   validates_presence_of :name

   after_create :set_status

   def set_status
     self.status = "incomplete"
     self.save
   end
end
