class PastaOrder < ApplicationRecord
  belongs_to :order
  belongs_to :pasta_type
end
