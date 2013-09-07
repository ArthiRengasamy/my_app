class StaticPagesController < ApplicationController
  def home

  end
  def products

  end
  def contact

  end
  def help

  end
  def story

        @stories = Story.order('created_at desc')



  end
end
