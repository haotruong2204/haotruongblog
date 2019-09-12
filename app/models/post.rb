class Post < ApplicationRecord
  before_save :to_slug

  ATTRS = %i(title description content slug)

  def to_param
    "#{id}-#{to_slug}"
  end

  def to_slug
    if slug.blank?
      self.slug = self.title.to_s.parameterize
    else
      self.slug = self.slug.to_s.parameterize
    end
  end
end
