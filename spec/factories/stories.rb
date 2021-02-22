module Factories
  def create_story(params = {})
    build_story(params).tap(&:save!)
  end

  def build_story(params = {})
    Story.new(feed: build_feed, **params)
  end
end