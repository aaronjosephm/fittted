require "date"

Outfit.destroy_all if Rails.env.development?
Order.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?
OrderOutfit.destroy_all if Rails.env.development?
OutfitItem.destroy_all if Rails.env.development?
Item.destroy_all if Rails.env.development?

aaron = User.create(
  email: "aaron@gmail.com",
  password: "wagon_2018",
  address: "5333 Casgrain AveMontreal, QC H2T 1X3"
  )

caroline = User.create(
  email: "caroline@gmail.com",
  password: "wagon_2018",
  address: "5333 Casgrain AveMontreal, QC H2T 1X3"
  )

martin = User.create(
  email: "martine@gmail.com",
  password: "wagon_2018",
  address: "5334 Casgrain AveMontreal, QC H2T 1X3"
  )

####################################### Out fit 1 ##############################################

black_denim_jeans = Item.new(
  name: "black denim jeans",
  price: "$75.00",
  description: "Black Levis denim jeans - Fall design iteration 1.",
  photo: "https://images.esellerpro.com/2674/I/166/799/34.jpg"
  )

black_denim_jeans.save

denim_jacket = Item.new(
  name: "Light blue denim jacket",
  price: "$100.00",
  description: "Our company is one of the leading companies in offering Men's Denim Jacket to the client. This product is manufactured from top grade material and with the help of sophisticated technology as per the set industry standards and norms. Men's Denim Jacket is highly appreciated by the clients for good quality and attractive designs.",
  photo: "https://3.imimg.com/data3/SE/EX/MY-1895223/men-s-denim-jacket-500x500.jpg"
  )

denim_jacket.save

grey_sweater = Item.new(
  name: "pull over Grey sweater",
  price: "$50.00",
  description: "A soft, lightweight hoodie in jersey fabric, featuring an icon at left chest, pouch pocket and curved hem, Slim Fit, Imported.",
  photo: "http://ernestonunezclothin.weebly.com/uploads/6/1/0/7/61076955/1665709.jpg"
  )

grey_sweater.save

white_shoes = Item.new(
  name: "Addidas tennis shoes",
  price: "$100.00",
  description: "With a technical look from the revolutionary '90s Equipment series, these shoes mix modern materials with retro runner style. They feature a sock-like knit upper and supportive TPU wings that wrap the heel. Detailed with textile 3-Stripes that merge with the moulded 3-Stripes on the midsole.",
  photo: "https://www.adidas.ca/dis/dw/image/v2/aaqx_prd/on/demandware.static/-/Sites-adidas-products/default/dw0e516a99/zoom/CP9558_04_standard.jpg?sh=840&strip=false&sw=840.jpg"
  )

white_shoes.save

stone_island_beanie = Item.new(
  name: "grey beanie",
  price: "$20.00",
  description: "Beanie from Stone Island",
  photo: "https://cdn.shopify.com/s/files/1/0068/2162/products/tuque_e97d3d55-2b2d-4e69-ac97-c11ef251ff51.jpg?v=1532891212.jpg"
  )

stone_island_beanie.save

double_denim = Outfit.new(
  name: "double denim",
  price: "$345.00",
  theme: "casual outing",
  description: "Cool outfit for going out in relatively cold weather. Each clothing item for this outfit was made for comfort, and style. Wear it in the snow, rain, or just on a cloudy day. Feel warm with this one.",
  photo: "Casual.jpg"
  )

double_denim.save

shoes = OutfitItem.new(
  item: white_shoes,
  outfit: double_denim
  )

shoes.save

jeans = OutfitItem.new(
  item: black_denim_jeans,
  outfit: double_denim
  )

jeans.save

jacket = OutfitItem.new(
  item: denim_jacket,
  outfit: double_denim
  )

jacket.save

sweater = OutfitItem.new(
  item: grey_sweater,
  outfit: double_denim
  )

sweater.save

beanie = OutfitItem.new(
  item: stone_island_beanie,
  outfit: double_denim
  )

beanie.save

####################################### Out fit 2 ##############################################




