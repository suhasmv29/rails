class SalesController < ApplicationController
  # Top Games in 2006 genre is sports
  def query1
    @data1 = VideoGame.select(:name, :global_sales).joins(:sale).where("year='2006' and genre ='Sports' and platform = 'PS2'").order(global_sales: :desc).limit(10)
  end

  #   Top games sold by Sony Computer Entertainment
  def query2
    @data1 = VideoGame.select(:name, 'na_sales+eu_sales+jp_sales+other_sales+global_sales AS global').joins(:sale).where("publisher = 'Sony Computer Entertainment'").order(global: :desc).limit(10)
  end

  # Top 5 HIGHEST SOLD GAMES
  def query3
    @data1 = VideoGame.select(:name, 'na_sales+eu_sales+jp_sales+other_sales+global_sales AS global').joins(:sale).order(global: :desc).limit(5)
  end

  #   Top 10 games sold in japan
  def query4
    @data1 = VideoGame.select(:name, :jp_sales).joins(:sale).order(jp_sales: :desc).limit(10)
  end
end
