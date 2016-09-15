require "administrate/base_dashboard"

class SpentDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo.with_options(searchable: true),
    id: Field::Number.with_options(searchable: false),
    status: Field::Number.with_options(searchable: false),
    value: Field::Number.with_options(decimals: 2),
    date: Field::DateTime.with_options(searchable: false),
    description: Field::Text.with_options(searchable: false),
    type: Field::String.with_options(searchable: false),
    created_at: Field::DateTime.with_options(searchable: false),
    updated_at: Field::DateTime.with_options(searchable: false),
    status: Field::Text.with_options(searchable: true),
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :user,
    :status,
    :id,
    :value,
    :date,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :status,
    :id,
    :value,
    :date,
    :description,
    :type,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    
    :value,
    :date,
    :description,
    :type,
  ].freeze

  # Overwrite this method to customize how spents are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(spent)
  #   "Spent ##{spent.id}"
  # end
end
