# -*- coding: utf-8 -*-
require 'twitter'
require 'sinatra'
require 'json'
require './configure'
  
class MyApp
  attr_reader :name, :number, :number_aux, :lista, :img, :aux
  
  def initialize(param1,param2)
    @name = param1 || ''
    @number = param2.to_i
    @aux = 0
    @img
    @lista = []
  end

  def control_n (n)    #controlamos que los amigos esten entre 1 y 10
    if (n<1)
	@number = 1
    elsif (n > 10)
	@number = 10
    else
      @number = n
    end
    @aux = @number
  end
  
  def list
    control_n (@number)
    client = my_twitter_client()
    if client.user? @name 
      ultimos_t = client.friends(@name,{})
      @img = client.user(@name).profile_image_url
      @lista = ultimos_t.map{|i| [i.name, i.followers_count]}
      @lista.sort_by!{|a,b| -b}
      @lista = @lista.take(@number)
    end
  end
  
end


get '/' do
  @name = ''
  @number = 0
  @amigos = []
  erb :twitter
end

post '/' do
  obj = MyApp.new(params[:firstname],params[:n])
  obj.list
  @amigos=obj.lista
  @number=obj.number
  @number_aux = obj.aux
  @name = obj.name
  @img=obj.img
  erb :twitter
end
