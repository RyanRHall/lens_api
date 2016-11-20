
Lens.create(
  name: 'The New York Times',
  image_url: 'https://i.imgsafe.org/200458dd99.png'
)

Lens.create(
  name: 'Politico',
  image_url: 'https://i.imgsafe.org/20046612dd.png'
)

Article.create(url: 'abcnews.com.co/obama-executive-order-bans-pledge-of-allegiance-in-schools/')
Article.create(url: 'www.thepoliticalinsider.com/wikileaks-confirms-hillary-sold-weapons-isis-drops-another-bombshell-breaking-news/')
Article.create(url: '70news.wordpress.com/2016/11/12/final-election-2016-numbers-trump-won-both-popular-62-9-m-62-7-m-and-electoral-college-vote-306-232-hey-change-org-scrap-your-loony-petition-now/')

Annotation.create(article_id: 1, lens_id: 1,
  comment: "This does not exist",
  ref_text: "Executive Order 13738",
  summary: false
)

Annotation.create(article_id: 1, lens_id: 1,
  comment: "This does not exist",
  ref_text: "Executive Order 13738",
  summary: false
)

Annotation.create(article_id: 1, lens_id: 1,
  comment: "Never said this",
  ref_text: 'The pledge excludes so many Americans who are vital to making this country what it is,',
  summary: false
)

Annotation.create(article_id: 1, lens_id: 2,
  comment: "No he didn't",
  ref_text: 'Obama told reporters',
  summary: false
)




Annotation.create(article_id: 1, lens_id: 1,
  comment: "General comment1",
  rating: 2,
  summary: true
)

Annotation.create(article_id: 1, lens_id: 1,
  comment: "general comment 2",
  rating: 1,
  summary: true
)

Annotation.create(article_id: 1, lens_id: 1,
  comment: "general comment 3",
  rating: 1,
  summary: true
)

Annotation.create(article_id: 1, lens_id: 2,
  comment: "gen co",
  rating: 2,
  summary: true
)

Annotation.create(article_id: 1, lens_id: 2,
  comment: "gen comment",
  rating: 1,
  summary: true
)
