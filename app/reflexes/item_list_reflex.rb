# frozen_string_literal: true

class ItemListReflex < ApplicationReflex
  def toggle
    # TODO: add session
    ItemList.find_by(id: element.dataset[:id])&.toggle! :completed
  end

  def create
    # TODO: add session
    item = Item.find_or_initialize_by(name: element[:value])
    list = List.find(element.dataset[:list_id])
    if item.save
      ItemList.create!(item: item, list: list)
    end
  end

  # Add Reflex methods in this file.
  #
  # All Reflex instances expose the following properties:
  #
  #   - connection - the ActionCable connection
  #   - channel - the ActionCable channel
  #   - request - an ActionDispatch::Request proxy for the socket connection
  #   - session - the ActionDispatch::Session store for the current visitor
  #   - url - the URL of the page that triggered the reflex
  #   - element - a Hash like object that represents the HTML element that triggered the reflex
  #   - params - parameters from the element's closest form (if any)
  #
  # Example:
  #
  #   def example(argument=true)
  #     # Your logic here...
  #     # Any declared instance variables will be made available to the Rails controller and view.
  #   end
  #
  # Learn more at: https://docs.stimulusreflex.com
end
