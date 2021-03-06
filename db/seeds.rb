# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

parteUno = Parte.create(numero:1, titulo:"DE LAS DECLARACIONES FUNDAMENTALES, DE LOS DERECHOS, DE LOS DEBERES Y DE LAS GARANTÍAS")
parteDos = Parte.create(numero:2, titulo:"DEL ORDENAMIENTO POLÍTICO DE LA REPÚBLICA")

tituloUno = Titulo.create(numero:1, titulo:"DE LAS DECLARACIONES FUNDAMENTALES", parte_id: parteUno.id)
tituloDos = Titulo.create(numero:2, titulo:"DE LOS DERECHOS, DE LOS DEBERES Y DE LAS GARANTÍAS", parte_id: parteDos.id)
