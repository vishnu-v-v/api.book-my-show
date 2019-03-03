# frozen_string_literal: true

class ShowSerializer
  include FastJsonapi::ObjectSerializer
  set_id :id
  set_type :show
  set_key_transform :camel
  attributes :number, :running_in
  has_many :seats
end
