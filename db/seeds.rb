[ 
  Feed,
  User,
  Profile,
  Friendship,
  Bookmark,
  Category,
  Comment,
  Article
].each(&:delete_all)
 
 
 
f1 = Feed.create(url: "http://www.wired.com/rss/index.xml", title: "Wired Top Stories", description: "Top Stories")
f2 = Feed.create(url: "http://feeds.bbci.co.uk/news/rss.xml", title: "BBC News", description: "The latest stories from the Home section of the BBC News web site.")
f3 = Feed.create(url: "http://sports-ak.espn.go.com/espn/rss/news", title: "ESPN", description: "Latest news from ESPN.com")
f4 = Feed.create(url: "http://www.ft.com/rss/home/uk", title: "FT", description: "UK Homepage")
f5 = Feed.create(url: "http://www.theregister.co.uk/headlines.atom", title: "The register", description: "The register all sections feed")
 
u1 = User.create(first_name: "Matt", last_name: "Studdert", email: "matt@matt.com", password: "matt").skip_confirmation!
u2 = User.create(first_name: "Caroline", last_name: "Soalhat", email: "caro@caro.com", password: "caro").skip_confirmation!
u3 = User.create(first_name: "Jon", last_name: "Chambers", email: "jon@jon.com", password: "jon").skip_confirmation!
u4 = User.create(first_name: "Gerry", last_name: "Mathe", email: "gerry@gerry.com", password: "gerry").skip_confirmation!

 
p1 = Profile.create(bio: "Hey my name is Matt", city: "London", image: "https://fbcdn-sphotos-g-a.akamaihd.net/hphotos-ak-xaf1/v/t1.0-9/10367177_10100198061487738_7986433332731443081_n.jpg?oh=78996c7331981a9d8e45f85f5938d3cc&oe=53FA62D8&__gda__=1408962412_453ea50ef7250b94989b4f9f6f50f907", user_id: 1) 
p2 = Profile.create(bio: "Hey my name is Caroline", city: "Caseneuve", image: "https://scontent-b-lhr.xx.fbcdn.net/hphotos-xpa1/t1.0-9/10300298_10100653947271617_425079544950735696_n.jpg", user_id: 2) 
p3 = Profile.create(bio: "Hey my name is Jon", city: "London", user_id: 3) 
p4 = Profile.create(bio: "Hey my name is Gerry", city: "Paris", user_id: 4) 
 
# b1 = Bookmark.create(user_id: 1, article_id: 1, thought: "this is a really cool article")
# b2 = Bookmark.create(user_id: 1, article_id: 2, thought: "I really want to share that")
# b3 = Bookmark.create(user_id: 2, article_id: 1, thought: "I want to share that too")
# b4 = Bookmark.create(user_id: 3, article_id: 3, thought: "Hello world")
# b5 = Bookmark.create(user_id: 3, article_id: 4, thought: "So cool!")
 
c1 = Category.create(name: "Newspapers")
c2 = Category.create(name: "Sports")
c3 = Category.create(name: "Science")
c4 = Category.create(name: "Technology")
c5 = Category.create(name: "Finance")
 
# com1 = Comment.create(user_id: 1, bookmarks_id: 2, body: "this is comment from user 1")
# com2 = Comment.create(user_id: 4, bookmarks_id: 1, body: "this is comment from user 4")
# com3 = Comment.create(user_id: 2, bookmarks_id: 1, body: "this is comment from user 2")