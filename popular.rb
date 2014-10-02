# -*- coding: utf-8 -*-
require 'twitter'
require './configure'


class MyApp
  attr_reader :nombre, :n_amigos, :aux, :lista, :max
  MAX = 10
  
  def initialize(a,b)
    if a==nil
      @nombre = 'AaronSocas'
    else
      @nombre = a.to_s
    end
    if b==nil
      @n_amigos = 3
    else
      @n_amigos = b.to_i
    end
    @aux = @n_amigos
    @lista = []
    @max=0
#     @aux2=[]
  end

  def control_n (n)    #controlamos que los amigos esten entre 1 y 10
    if (n<1)
	@n_amigos = 1
    elsif (n > MAX)
	@n_amigos = MAX
    else
      @n_amigos = n
    end
    @aux = @n_amigos
  end

  def lista
    control_n (@n_amigos)
    client = my_twitter_client()
    if client.user? @nombre 
      ultimos_t = client.friends(@nombre,{})
      @lista = ultimos_t.map{|i| [i.name, i.followers_count]}
      @lista.sort_by!{|a,b| -b}
      @max = @lista.length
      @lista = @lista.take(@n_amigos)
#       @aux2= ultimos_t.map{|i| [i.name]}
#       @aux2.sort_by!{|a,b| b}.reverse!
#       @aux2= @aux2.take(@n_amigos)
    end
  end
  
  def mostrar()
    for i in (0..@n_amigos-1)
	c = i+1
	puts "#{c} #{@lista[i]}"
    end
  end
  
  def mostrar3()
    for i in (0..@n_amigos-1)
	c = i+1
	puts "#{c} #{@aux2[i]}"
    end
  end
  
  def mostrar2()
    @lista.each{|i,j| puts "#{i} #{j}"}
  end
  
end

obj = MyApp.new(ARGV[0],ARGV[1])
puts "NOMBRE= #{obj.nombre}"
puts "NAMIGOS= #{obj.n_amigos}"
obj.lista
if obj.n_amigos > obj.max
  puts "El usuario tiene menos de #{obj.n_amigos} amigos"
end
obj.mostrar

# obj.mostrar3
