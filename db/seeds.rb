####    Projects    ########################
Project.create(
  :name => "Hakuna matata",
  :user_id => "1",
  :description => "Una forma de ser",
  :content => "Lorem impsum #{SecureRandom.hex(200)}",
  :video =>  '//www.youtube.com/embed/weGMLlIAcHM',
  :goal => SecureRandom.random_number(9999),
  :period => SecureRandom.random_number(99)
)
Project.create(
  :name =>  "uqe ondis", 
  :description =>  "asdasdasdasd", 
  :content =>  "asdasdasdasdasdasdasdasdasdasdasdasdasdasd", 
  :video =>  "//www.youtube.com/embed/pSwy412nttI", 
  :goal =>  30000.0, 
  :period =>  34, 
  :coments =>  nil, 
  :category_id =>  "1", 
  :picture =>  "arduino.jpg"
)
Project.create(
  :name =>  "qweqweqwe", 
  :description =>  "qweqweqweq", 
  :content =>  "weqweqweqwe", 
  :video =>  "//www.youtube.com/embed/pSwy412nttI", 
  :goal =>  123123123.0, 
  :period =>  12, 
  :category_id =>  "2", 
  :picture =>  "Screenshot_from_2013-08-06_05_27_43.png"
)
Project.create(
  :name =>  "Uno",
  :description =>  "Este es el primer proyecto", 
  :content =>  "esta es la descripcion del prioyecto muajajajajjaja...",
  :video =>  "//www.youtube.com/embed/pSwy412nttI", 
  :goal =>  300000.0, 
  :period =>  30, 
  :category_id =>  "1", 
  :picture =>  "images.jpg"
)
Project.create(
  :name =>  "Hakunamatata", 
  :description =>  "Una forma de ser", 
  :content =>  "hakuna matata, una forma de ser&nbsp;<br>hakuna mat...", 
  :video =>  "//www.youtube.com/embed/weGMLlIAcHM", 
  :goal =>  30.0, 
  :period =>  32, 
  :category_id =>  "1", 
  :picture =>  "hakunamatata.jpeg"
)
Project.create(
  :name =>  "Perros feos de hannie", 
  :description =>  "qweqweqwe",
  :content =>  "qweqweqweqwe",
  :video =>  "//www.youtube.com/embed/rDAEi-6xzeA",
  :goal =>  30000.0,
  :period =>  40, 
  :category_id =>  "1", 
  :picture =>  "pastor.jpg"
)
####    Categories    ########################
Category.create(
  :name =>  "Science" 
)
Category.create(
  :name =>  "Sports" 
)
Category.create(
  :name =>  "TV" 
)
Category.create(
  :name =>  "Art" 
)
Category.create(
  :name =>  "Music" 
)
Category.create(
  :name =>  "Anime" 
)
####    Subcategories    ########################
Subcategory.create(
  :name =>  "Chemistry",
  :category_id => "1"
)
Subcategory.create(
  :name =>  "Physics",
  :category_id => "1"
)
Subcategory.create(
  :name =>  "Soccer",
  :category_id => "2"
)
Subcategory.create(
  :name =>  "Tennis",
  :category_id => "2"
)
Subcategory.create(
  :name =>  "Movies",
  :category_id => "3"
)
Subcategory.create(
  :name =>  "Cartoons",
  :category_id => "3"
)
Subcategory.create(
  :name =>  "Music",
  :category_id => "4"
)
Subcategory.create(
  :name =>  "Dance",
  :category_id => "4"
)
Subcategory.create(
  :name =>  "Manga",
  :category_id => "5"
)
Subcategory.create(
  :name =>  "Cosplay",
  :category_id => "5"
)
