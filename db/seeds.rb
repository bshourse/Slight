p = Publisher.create(name: "Some Publisher 1")
p1 = Publisher.create(name: "Some Publisher 2")
p2 = Publisher.create(name: "Some Publisher 3")
p3 = Publisher.create(name: "Some Publisher 4")

s = Shop.create(name: "Amazon")
s1 = Shop.create(name: "Ozone")

b = Book.create(title: "The Well Grounded Rubyist", shop_id: 1, publisher_id: 1)
b1 = Book.create(title: "The Ruby Programming Language", shop_id: 1, publisher_id: 1)
b1 = Book.create(title: "Ruby for fun", shop_id: 2, publisher_id: 2)