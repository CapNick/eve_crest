module EveCrest
  class Bloodline
    attr_reader :description, :name, :id, :icon
    def initialize(json)
      @description = json['description']
      @name = json['name']
      @id = json['id']
      @icon = json['icon']['href']
    end
  end
end