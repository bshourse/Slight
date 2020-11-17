p = Publisher.create(name: "Some Publisher 1")
s = Shop.create(name: "Amazon", publisher_id: p.id)
Book.create(title: "The Well Grounded Rubyist", publisher_id: p.id, copies_in_stock: 4)
Book.create(title: "The Ruby Programming Language", publisher_id: p.id, copies_in_stock: 2)
Book.create(title: "Open Gnu", publisher_id: p.id, copies_in_stock: 6)

s2 = Shop.create(name: "Ozon", publisher_id: p.id)
Book.create(title: "Test Book", publisher_id: p.id, copies_in_stock: 12)

p1 = Publisher.create(name: "Some Publisher 2")
s1 = Shop.create(name: "Ozon", publisher_id: p1.id)
Book.create(title: "Ruby for fun", publisher_id: p1.id, copies_in_stock: 3)

p2 = Publisher.create(name: "Some Publisher 3")
p3 = Publisher.create(name: "Some Publisher 4")

se = Selling.create(book_id: 1, shop_id: s.id, publisher_id: p.id)
se1 = Selling.create(book_id: 2, shop_id: s.id, publisher_id: p.id)
se2 = Selling.create(book_id: 3, shop_id: s.id, publisher_id: p.id)
se3 = Selling.create(book_id: 4, shop_id: s2.id, publisher_id: p.id)
se4 = Selling.create(book_id: 5, shop_id: s1.id, publisher_id: p1.id)