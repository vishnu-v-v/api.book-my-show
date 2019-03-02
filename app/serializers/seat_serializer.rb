class SeatSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :reserved
end
