class Body

  attr_reader :name, :mass

  def initialize(name, mass)
    @name = name
    @mass = mass
  end

end


class Star < Body

  @@planets = []

  def initialize(type)
    @type = type
  end

  def new_planet(name, mass, day_in_hours, year_in_days)
    new_planet = Planet.new(name, mass, day_in_hours, year_in_days)
    @@planets << new_planet
    return new_planet
  end
end

class Planet < Body

  @@moons = []

  def initialize(name, mass, day_in_hours, year_in_days)
    super(name,mass)
    @day_in_hours = day_in_hours
    @year_in_days = year_in_days
  end

  def new_moon(name, mass, month_in_days, planet_to_orbit)
    new_moon = Moon.new(name, mass, month_in_days, planet_to_orbit)
    @@moons << new_moon
    return new_moon
  end
end


class Moon < Body

  def initialize(name, mass, month_in_days, planet_to_orbit)
    super(name,mass)
    @month           = month
    @planet_to_orbit = planet_to_orbit
  end
end
