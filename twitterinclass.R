##### R Task

library(rtweet)

get_token() 
## Pick your favorite celebrity who has a Twitter account. 
jtr <- get_favorites("JTRealmuto", n=1)

## find the most recent tweet the celebrited liked
jtr$text
jtr$screen_name
##Download their 500 most recent tweets. 
#Calculate which one got the most ``likes"
rt <- search_tweets(
  "JTRealmuto", n = 500, include_rts = FALSE
)
which.max(rt$favorite_count)
# tweet 378 has the most likes
### Create a DFM from the text of these tweets
library(quanteda)
dfm(rt$text)
### After removing stopwords, what word did the celebrity tweet most often?
topfeatures(dfm(rt$text))
# "Phillies" is the most tweeted word
                