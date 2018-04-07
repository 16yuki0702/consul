class Budget
  class Investment
    class Milestone < ApplicationRecord
      include Imageable
      include Documentable
      documentable max_documents_allowed: 3,
                   max_file_size: 3.megabytes,
                   accepted_content_types: [ "application/pdf" ]

      belongs_to :investment

      validates :title, presence: true
      validates :investment, presence: true

      def self.title_max_length
        80
      end
    end
  end
end
