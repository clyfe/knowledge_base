require "knowledge_base/engine"
require "knowledge_base/configuration"
require "knowledge_base/concerns"
require "carrierwave"
require "enumerize"
require "embeddable"
require "ransack"

module KnowledgeBase
  class << self
    def configure
      yield config
    end

    def config
      @config ||= KnowledgeBase::Configuration.new
    end

    def reset
      @config = nil
    end
  end
end
