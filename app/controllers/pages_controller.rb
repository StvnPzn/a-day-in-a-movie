class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home

    @prop1 = Prop.where(name: "Radeau de Rose et un peu de Jack")[0]
    @prop2 = Prop.where(name: "Overboard de Marty McFly")[0]
    @prop3 = Prop.where(name: "Vif d'or d'Harry Potter")[0]
  end
end
