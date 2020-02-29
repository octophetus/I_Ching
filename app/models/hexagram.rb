class Hexagram < ApplicationRecord
  enum line1: [:yin, :yang], _prefix: :line1
  enum line2: [:yin, :yang], _prefix: :line2
  enum line3: [:yin, :yang], _prefix: :line3
  enum line4: [:yin, :yang], _prefix: :line4
  enum line5: [:yin, :yang], _prefix: :line5
  enum line6: [:yin, :yang], _prefix: :line6

  has_many :lines
end