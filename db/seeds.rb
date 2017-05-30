
user = User.create!(email: "user@user.com", password: "abc123")

profile = Profile.create!(first_name: "Claudia", last_name:"Engelsman", street:"Singel 5", zipcode: "1234AB", city:"Amsterdam", user: user)

product1 = Product.create!(title: "The Catcher in the Rye", author: "J.D Salinger", description: "This book was read by many people that murdered suomebody after it...", price: 10.0, image:"http://res.cloudinary.com/dqmqi1nxq/image/upload/v1496135149/catcher-in-the-rye-2_jqdgsc.jpg")
product2 = Product.create!(title: "Harry Poter and the lost Rub Gem", author: "J.K Rowling", description: "This book is about Ruby magic", price: 12.0, image:"http://res.cloudinary.com/dqmqi1nxq/image/upload/v1496135339/sorcerers-stone_eyxqrg.jpg")
product3 = Product.create!(title: "The Hapiness Project", author: "Gretcian Rubin", description: "This book is about wizard hapiness...", price: 9.99, image:"http://res.cloudinary.com/dqmqi1nxq/image/upload/v1496135478/Happiness-Project_pvtmty.jpg")


cart = Cart.create!(product: product1, profile: profile)
