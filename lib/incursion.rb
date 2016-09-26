module EveCrest
  class Incursion
    attr_reader :aggressor_id, :staging_system_id, :influence, :type, :state, :has_boss, :infested_systems, :constellation_id
    def initialize(json)
      @aggressor_id = json['aggressorFactionID']['id']
      @staging_system_id = json['stagingSolarSystem']['id']
      @influence = json['influence']
      @type = json['incursionType']
      @state = json['state']
      @has_boss = json['hasBoss']
      @infested_systems = get_systems(json['infestedSolarSystems'])
      @constellation_id = json['constellation']['id']
    end

    private
    def get_systems(systems_raw)

    end
  end
end