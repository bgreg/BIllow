# frozen_string_literal: true

module ApplicationHelper
  def locations_for_select(locations)
    locations.map { |l| [l.name, l.id] }
  end
end
