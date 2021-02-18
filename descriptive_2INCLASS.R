# Descriptive practice


#1. Write two sentences. Save each as a seperate object in R. 

require(quanteda)
txt <- c(sent1= "Hello, how are you?", sent2 = "It is a nice day out.")
           
#2. Combine them into a corpus
corpus_txt <- corpus(txt)
dfm_txt<-dfm(corpus_txt)
#3. Make this corpus into a dfm with all pre-processing options at their defaults.
dfm(corpus_txt)

#4. Now save a second dfm, this time with stopwords removed.
dfm(corpus_txt , remove(stopwords("TRUE"))

#5. Calculate the TTR for each of these dfms (use textstat_lexdiv). Which is higher?
textstat_lexdiv(dfm(corpus_txt))
textstat_lexdiv(dfm(corpus_txt , remove(stopwords("TRUE"))))
#6. Calculate the Manhattan distance between the two sentences you've constructed (by hand!
