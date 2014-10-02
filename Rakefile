# -*- coding: utf-8 -*-
task :default => :test

desc "Realizar tests (default)"
task :test do
  sh "ruby tests/test.rb"
end

desc "Iniciar servidor"
task :server do
 sh "ruby twitter.rb"
end

desc "Arrancar y abrir la aplicación web"
task :s do
  sh "gnome-open http://localhost:4567/ &"
  sh "ruby twitter.rb"
end

desc "Ejecutar la aplicación desde consola: bin[nombre_usuario, numero_seguidores]"
task :bin, [:arg1, :arg2] do |t, args|
    sh "ruby popular.rb #{args.arg1} #{args.arg2}"
end

desc "Generar documentación en html"
task :html do
  sh "kramdown Readme.md > Readme.html"
  sh "sed -i '1i <meta charset='utf-8'>' documentation.html"
end

desc "Abrir la App en Heroku"
task :heroku do
  sh "heroku open"
end