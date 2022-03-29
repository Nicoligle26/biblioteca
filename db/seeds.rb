# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

User.create!(name: 'juan', email: 'juan@example.com', password: 'Tacos123!', password_confirmation: 'Tacos123!',
             confirmed_at: Date.today, role: 'admin')

# Seed
editorials = [
  { name: 'Salamandra', city: 'España', pages: 'https://www.penguinlibros.com/es' },
  { name: 'Planeta', city: 'España',
    pages: 'https://www.planetadelibros.com/editorial/editorial-planeta/8' },
  { name: 'Sin fronteras', city: 'Venezuela', pages: 'https://www.gruposinfronteras.com/' }
]
genders = [
  { name: 'Juvenil', editorial_id: 1 },
  { name: 'Libros de literatura', editorial_id: 3 },
  { name: 'Literatura', editorial_id: 3 }
]

authors = [
  { name: 'J.K. Rowling', nationality: 'Reino unido' },
  { name: 'Blue Jeans', nationality: 'Sevilla, España' },
  { name: 'Nacarid Portal', nationality: 'Venezuela' }
]

books = [
  { name: 'Harry Potter y la Piedra Filosofal', price: '96.739',
    review: 'Harry Potter se ha quedado huérfano y vive en casa de sus abominables tíos y del insoportable primo Dudley.
    Harry se siente muy triste y solo, hasta que un buen día recibe una carta que cambiará su vida para siempre.
    En ella le comunican que ha sido aceptado como alumno en el colegio interno Hogwarts de magia y hechicería.
    A partir de ese momento, la suerte de Harry da un vuelco espectacular. En esa escuela tan especial aprenderá
    encantamientos, trucos fabulosos y tácticas de defensa contra las malas artes. Se convertirá en el campeón escolar
    de quidditch, especie de fútbol aéreo que se juega montado sobre escobas, y se hará un puñado de buenos amigos...
    aunque también algunos temibles enemigos. Pero sobre todo, conocerá los secretos que le permitirán cumplir con su
    destino. Pues, aunque no lo parezca a primera vista, Harry no es un chico común y corriente. ¡Es un verdadero mago!',
    languaje: 'Español', number_pages: '256', author_id: 1, gender_id: 1,
    image: 'https://images.cdn2.buscalibre.com/fit-in/360x360/e6/5f/e65f54742ad7bbc41903d17f75b77d78.jpg' },
  {  name: 'Buenos Dias, Princesa!', price: '29.000',
     review: 'Han pasado algo más de dos años en la vida de los chicos que forman “el club de los incomprendidos”.
    Las cosas han cambiado desde que uno tras otro se fueron encontrando en el camino. Nuevos problemas, secretos,
    amores, celos... Sin embargo, hasta el momento, su amistad ha podido con todo y con todos.Raúl, se ha convertido
    en un atractivo joven y en un líder nato; Valeria, derrocha simpatía por donde pisa, aunque no ha vencido del
    todo a su timidez; Eli, es la que más se ha transformado de todos y se los lleva de calle; María, vigila y sueña
    tras sus gafas de pasta de color azul; Bruno, no consigue olvidar lo que siente y en lo más profundo de su corazón
    espera ser correspondido; y Ester, es la nuera que toda madre querría tener aunque no es tan inocente como todos
    piensan. Son seis chicos que sienten, sufren, aman, creen, ríen, evolucionan... como otros chicos de su edad. Pero
    los seis son especiales. Al menos, para el resto del grupo.¿Conseguirán superar  todas las pruebas que se le van
    a presentar?Sólo puedes averiguarlo leyendo, ¡Buenos días, princesa!',
     languaje: 'Español', number_pages: '544', image: 'https://images.cdn1.buscalibre.com/fit-in/360x360/0b/09/0b09bdb6ed7b5dc29dd3d9a0a3402e83.jpg',
     author_id: 2, gender_id: 2 },
  {  name: 'La Vida Entre mis Dedos', price: '55.920',
     review: 'Un libro que te hará sentir mientras exploras dentro de ti. Un libro que tocará tus emociones mientras
        despiertas ante la vida. La vida de un ser humano que comprendió que el alma perdurará más allá de nuestros
        recorridos por este lugar. Te entrego mi equivocación y mi aprendizaje a través de mis dedos esperando poder
        rozarte a pesar de la distancia. ', languaje: 'Español',
     image: 'https://image.cdn0.buscalibre.com/5c0570f958e473bb458b4567.__RS360x360__.jpg', author_id: 3, gender_id: 1 }
]

editorials.each do |editorials_data|
  editorials = Editorial.create(editorials_data)
end

genders.each do |genders_data|
  genders = Gender.create(genders_data)
end

authors.each do |authors_data|
  authors = Author.create(authors_data)
end

books.each do |books_data|
  books = Book.create(books_data)
end
puts 'Las seed han sido creadas'
