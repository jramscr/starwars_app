class MainController < ApplicationController
  before_action :load_films, only: :films
  before_action :load_people, only: :people
  before_action :load_planets, only: :planets
  before_action :load_species, only: :species
  before_action :load_starships, only: :starships
  before_action :load_vehicles, only: :vehicles

  def films; end
  def people; end
  def planets; end
  def species; end
  def starships; end
  def vehicles; end

  private

  def load_films
    @films = []
    @films << Starwars::Film.fetch_all.results
    Starwars::Film.fetch_all.each do |page|
      @films << page.results
    end
    @films.flatten!
  end

  def load_people
    @people = []
    @people << Starwars::Person.fetch_all.results
    Starwars::Person.fetch_all.each do |page|
      @people << page.results
    end
    @people.flatten!
  end

  def load_planets
    @planets = []
    @planets << Starwars::Planet.fetch_all.results
    Starwars::Planet.fetch_all.each do |page|
      @planets << page.results
    end
    @planets.flatten!
  end

  def load_species
    @species = []
    @species << Starwars::Specie.fetch_all.results
    Starwars::Specie.fetch_all.each do |page|
      @species << page.results
    end
    @species.flatten!
  end

  def load_starships
    @starships = []
    @starships << Starwars::Starship.fetch_all.results
    Starwars::Starship.fetch_all.each do |page|
      @starships << page.results
    end
    @starships.flatten!
  end

  def load_vehicles
    @vehicles = []
    @vehicles << Starwars::Vehicle.fetch_all.results
    Starwars::Vehicle.fetch_all.each do |page|
      @vehicles << page.results
    end
    @vehicles.flatten!
  end
end
