
user = User.create!(email: "user@user.com", password: "abc123")

profile = Profile.create!(first_name: "Claudia", last_name:"Engelsman", street:"Singel 5", zipcode: "1234AB", city:"Amsterdam", user: user)

product1 = Product.create!(title: "The Catcher in the Rye", author: "J.D Salinger", description: "This book was read by many people that murdered suomebody after it...", price: 10.0, image:"http://res.cloudinary.com/dqmqi1nxq/image/upload/v1496135149/catcher-in-the-rye-2_jqdgsc.jpg")
product2 = Product.create!(title: "Harry Poter and the lost Rub Gem", author: "J.K Rowling", description: "This book is about Ruby magic", price: 12.0, image:"http://res.cloudinary.com/dqmqi1nxq/image/upload/v1496135339/sorcerers-stone_eyxqrg.jpg")
product3 = Product.create!(title: "The Hapiness Project", author: "Gretcian Rubin", description: "This book is about wizard hapiness...", price: 9.99, image:"http://res.cloudinary.com/dqmqi1nxq/image/upload/v1496135478/Happiness-Project_pvtmty.jpg")
product4 = Product.create!(title: "The shape of Water", author: "AndreaCamilleri", description: "It is the first novel in the...", price: 7.99, image:"http://res.cloudinary.com/adrianna1990/image/upload/v1496244482/TSoW_mbmtdf.jpg")
product5 = Product.create!(title: "The Wind-Up Bird Chronicle", author: "Haruki Murakami", description: "The first part begins with Toru Okada, a low-key unemployed man...", price: 15.99, image:"http://res.cloudinary.com/adrianna1990/image/upload/v1496244584/Wind-up_Bird_Chronicle_lqu73d.jpg")
product6 = Product.create!(title: "Nineteen Eighty-Four", author: "George Orwell", description: "Nineteen Eighty-Four is set in Oceania, one of three...", price: 12.99, image:"http://res.cloudinary.com/adrianna1990/image/upload/v1496244938/1984first_zf5d6m.jpg")
product7 = Product.create!(title: "Sailor Moon vol.1", author: "Naoko Takeuchi", description: "One of the most-beloved of all Japanese manga titles...", price: 5.70, image:"http://res.cloudinary.com/adrianna1990/image/upload/v1496245163/images_evipt4.jpg")
product8 = Product.create!(title: "Zorba the Greek", author: "Nikos Kazantzakis", description: "The book opens in a café in Piraeus, just before dawn on a...", price: 5.00, image:"http://res.cloudinary.com/adrianna1990/image/upload/v1496245532/71hYQpbv8nL_bg7xih.jpg")
product9 = Product.create!(title: "The Last Temptation of Christ", author: "Nikos Kazantzakis", description: "Hailed as a masterpiece by critics worldwide, The Last Temptation...", price: 20.00, image:"http://res.cloudinary.com/adrianna1990/image/upload/v1496245739/last-temptation-of-christ-9780684852560_hr_k94r4i.jpg")
product10 = Product.create!(title: "Skeleton Crew", author: "Stephen King", description: "From one of the greatest storytellers in modern times comes...", price: 9.99, image:"http://res.cloudinary.com/adrianna1990/image/upload/v1496246044/skeleton-crew-9781501156786_lg_z8ny6h.jpg")
product11 = Product.create!(title: "Bedtime Stories for Grown-ups", author: "Ben Holden", description: "There are few more precious routines than that of the bedtime story. So why...", price: 11.99, image:"http://res.cloudinary.com/adrianna1990/image/upload/v1496246642/bedtime-stories-for-grown-ups-9781471153785_lg_m21vif.jpg")
product12 = Product.create!(title: "Poems That Make Grown Men Cry", author: "Anthony and Ben Holden", description: "A life-enhancing tour through classic and contemporary poems that have...", price: 15.10, image:"http://res.cloudinary.com/adrianna1990/image/upload/v1496246802/poems-that-make-grown-men-cry-9781476712789_lg_ukjgsw.jpg")
product13 = Product.create!(title: "Doctor Socrates.Footballer, Philosopher, Legend", author: "Andrew Downie", description: "A stunning new biography of Socrates, the iconic captain of the greatest...", price: 15.99, image:"http://res.cloudinary.com/adrianna1990/image/upload/v1496247206/doctor-socrates-9781471154096_lg_zb1idg.jpg")
product14 = Product.create!(title: "Japanese Business Dictionary", author: "Boye Lafayette De Mente", description: "This is a handy and comprehensive Japanese dictionary intended for...", price: 30.00, image:"http://res.cloudinary.com/adrianna1990/image/upload/v1496247277/tuttle-japanese-business-dictionary-revised-edition-9780804845816_lg_tsldgi.jpg")
product15 = Product.create!(title: "The One True Barbecue", author: "Rien Fertel", description: "In the spirit of the oral historians who tracked down and told the stories of...", price: 15.10, image:"http://res.cloudinary.com/adrianna1990/image/upload/v1496247435/the-one-true-barbecue-9781476793986_lg_fck8kp.jpg")


cart = Cart.create!(product: product1, profile: profile)





