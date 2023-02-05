class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all
    render({:template => "actor_templates/index.html.erb"})
  end

  def actor_details
    actor_id = params.fetch("an_id")
    @the_actor = Actor.where({:id=>actor_id}).at(0)
    @actor_filmography = Character.where({:actor_id=>actor_id})
    render({:template => "actor_templates/actor_details.html.erb"})
  end


end
