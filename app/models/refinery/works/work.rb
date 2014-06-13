module Refinery
  module Works
    class Work < Refinery::Core::BaseModel
      self.table_name = 'refinery_works'

      attr_accessible :title, :work_id, :cover_photo_id, :client_name, :work_type, :work_description, :work_photo_1_id, :work_photo_2_id, :work_photo_3_id, :work_photo_4_id, :work_photo_5_id, :work_photo_6_id, :work_photo_7_id, :work_photo_8_id, :work_photo_9_id, :work_photo_10_id, :position

      validates :title, :presence => true, :uniqueness => true

      belongs_to :cover_photo, :class_name => '::Refinery::Image'

      belongs_to :work_photo_1, :class_name => '::Refinery::Image'

      belongs_to :work_photo_2, :class_name => '::Refinery::Image'

      belongs_to :work_photo_3, :class_name => '::Refinery::Image'

      belongs_to :work_photo_4, :class_name => '::Refinery::Image'

      belongs_to :work_photo_5, :class_name => '::Refinery::Image'

      belongs_to :work_photo_6, :class_name => '::Refinery::Image'

      belongs_to :work_photo_7, :class_name => '::Refinery::Image'

      belongs_to :work_photo_8, :class_name => '::Refinery::Image'

      belongs_to :work_photo_9, :class_name => '::Refinery::Image'

      belongs_to :work_photo_10, :class_name => '::Refinery::Image'
    end
  end
end
