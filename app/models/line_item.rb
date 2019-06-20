class LineItem < ApplicationRecord
  belongs_to :quiz
  belongs_to :list
end
