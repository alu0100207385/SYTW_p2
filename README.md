# Sistemas y Tecnologías Web: Ejemplo de OAuth, Twitter, Rest y Sinatra

**Autores: Aarón Socas Gaspar && Aarón José Vera Cerdeña**

##Descripción

Despliegue en Heroku la práctica Aplicación Web con Sinatra: Contar la Popularidad de Nuestros 
Amigos en Twitter, para más [detalle](https://github.com/alu0100207385/SYTW_p1).

Añada pruebas. Usar los issues de GitHub para documentar el histórico de desarrollo. 


##Despligue en Heroku

Acceda a nuestra [aplicacion](http://sytw2.herokuapp.com/) .


##Travis

Podemos realizar los test de forma local o ver los resultados en [travis](https://travis-ci.org/alu0100207385/SYTW_p2/builds/36971131) .

##Instalación

Como en la práctica anterior...

1. Instalaremos las gemas necesarias: `bundle install`
2. Podemos usar el archivo `configure.rb` que se proporciona o configuraremos nuestro propio fichero `configure.rb` siguiendo las directrices del fichero `configure.rb.example`
Para más detalle [consultar](http://nereida.deioc.ull.es/~lpp/perlexamples/node39.html) .



##Ejecución

Mantenemos algunas opciones del programa anterior a las que hemos incluido los tests. Con el comando `$ rake -T` podemos ver las opciones posibles.
Las opciones posibles son:

`
1. rake bin[arg1,arg2]  # Ejecutar la aplicación desde consola
`

`
2. rake heroku       # Abrir la App en Heroku 
`

`
3. rake html         # Generar documentación en html
`

`
4. rake s            # Arrancar y abrir la aplicación web
`

`
5. rake server       # Iniciar servidor
`

`
6. rake test         # Realizar tests (default)
`

`
7. rake doc          # Ver documentacion
`


###1. rake bin

Nos permite ejecutar el programa desde consola. Puede usarse sin argumentos, por defecto utiliza como 
nombre de usuario "AaronSocas" y como número amigos 3. Para usar argumentos:

`
$ bin[nombre_usuario, numero_seguidores]
`

###2. rake heroku

Lanza la aplicacion en Heroku.

###3. rake html

Genera documentacion en html.

###4. rake s

Arrancar y abre la aplicación web en el navegador por defecto (Linux).

###5. rake server

Iniciar servidor usando el puerto por defecto 4567. Accedemos a:`http://localhost:4567/`

Y rellenamos los campos. Una vez terminado Ctrl+C para detener el servidor.

###6. rake (=rake test) (default)

Ejecutar los tests.

###7. rake doc

Accede a la documentación html.



##Recursos

- Campus virtual de la asignatura
- http://ruby-doc.org/
- https://www.heroku.com/

*Aarón Socas Gaspar && Aarón José Vera Cerdeña- Sistemas y Tecnologías Web (Curso 2014-2015)*

