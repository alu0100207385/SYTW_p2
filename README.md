# Sistemas y Tecnologías Web: Ejemplo de OAuth, Twitter, Rest y Sinatra

**Autores: Aarón Socas Gaspar && Aarón José Vera Cerdeña**

##Descripción

Despliegue en Heroku la práctica Aplicación Web con Sinatra: Contar la Popularidad de Nuestros 
Amigos en Twitter, para más [detalle](https://github.com/alu0100207385/SYTW_p1).

Añada pruebas. Usar los issues de GitHub para documentar el histórico de desarrollo. 


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
2. rake s            # Arrancar y abrir la aplicación web
`

`
3. rake server       # Iniciar servidor
`

`
4. rake test            # Realizar tests (default)
`

###1. rake bin

Nos permite ejecutar el programa desde consola. Puede usarse sin argumentos, por defecto utiliza como 
nombre de usuario "AaronSocas" y como número amigos 3. Para usar argumentos:

`
$ bin[nombre_usuario, numero_seguidores]
`

###2. rake s

Arrancar y abre la aplicación web en el navegador por defecto (Linux).

###3. rake server

Iniciar servidor usando el puerto por defecto 4567. Accedemos a:`http://localhost:4567/`

Y rellenamos los campos. Una vez terminado Ctrl+C para detener el servidor.

###4. rake (=rake test) (default)

Ejecutar los tests.


##Recursos

- Campus virtual de la asignatura
- http://ruby-doc.org/
- https://www.heroku.com/

*Aarón Socas Gaspar && Aarón José Vera Cerdeña- Sistemas y Tecnologías Web (Curso 2014-2015)*

