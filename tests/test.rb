# -*- coding: utf-8 -*-
ENV['RACK_ENV'] = 'test'
require 'minitest/autorun'
require 'rack/test'
require_relative '../twitter.rb'
 
include Rack::Test::Methods

def app
  Sinatra::Application
end

describe "Amigos Twitter App" do
  
  before :all do
    @nombre='AaronSocas'
    @n=3
    get '/' do
      @client = my_twitter_client()
      @ultimos_t = @client.friends(@nombre,{})
      @lista = @ultimos_t.map{|i| [i.name, i.followers_count]}
      @lista = (@lista.sort_by!{|a,b| -b}).take(@n)
    end
  end
  
  describe "Datos de entrada" do
    it "Compruebo que existe" do
      assert @client.user? @nombre
    end
    
    it "Compruebo que no existe" do
      nombre2= "asofnaigvbsnldva***fg,waer\@#~"
      refute @client.user? nombre2
    end
  end

  describe "Control de errores" do
    it "Numero < 1" do
      n=-3
      obj = MyApp.new(@nombre,n)
      obj.control_n(n)
      obj.number.must_equal 1
    end
    
    it "Numero > 10" do
      n=12
      obj = MyApp.new(@nombre,n)
      obj.control_n(n)
      obj.number.must_equal 10
    end
  end
  
  describe "Resultados" do
    it "Longitud de la lista" do
	@lista.length.must_equal 3
    end
    
    it "Listado obtenido" do
	lista_aux = @ultimos_t.map{|i| [i.name]}
	lista_aux = lista_aux.take(@n)
        lista_aux.must_equal [["Jazer Abreu"], ["ULL"], ["FundaciónGeneral ULL"]]
    end
  end
  
  describe "Pruebas en la web" do
    it "Acceso a la pagina" do
      get '/'
      assert last_response.ok?
    end
    
    it "Campo NOMBRE" do
      get '/'
      assert last_response.body.include?("Introduzca el nombre de Twitter:")
    end
    
    it "Campo N_AMIGOS" do
      get '/'
      assert last_response.body.include?("¿Cuántos amigos desea mostrar?")
    end
  end

end
