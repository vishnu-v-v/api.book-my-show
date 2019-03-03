# frozen_string_literal: true

class SeatSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :reserved
end
