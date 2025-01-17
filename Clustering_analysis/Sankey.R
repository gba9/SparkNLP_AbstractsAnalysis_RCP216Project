library(dplyr)
library(tidyr)
library(networkD3)

data=read.csv("merged_results_renamed.csv", sep=",", header=TRUE)


data <- data %>%
  mutate(
    LDA = paste0(LDA, "_LDA"),
    instructor = paste0(instructor, "_instructor"),
    doc2vec = paste0(doc2vec, "_doc2vec")
  )

# Count occurrences of each source-target pair
result1 <- data %>%
  count(LDA, instructor, name = "value")
colnames(result1)<-c("source", "target", "value")

result2<- data %>%
  count(instructor, doc2vec, name = "value")
colnames(result2)<-c("source", "target", "value")

result3<- data %>%
  count(instructor, LDA, name = "value")
colnames(result3)<-c("source", "target", "value")


links<- rbind(result1, result2)


names <- data.frame(
  name=c(as.character(links$source), 
         as.character(links$target)) %>% unique()
)

# With networkD3, connection must be provided using id, not using real name like in the links dataframe...
links$IDtarget <- match(links$target, names$name)-1


# Make the Network
p <- sankeyNetwork(Links = links, Nodes = names,
                   Source = "IDsource", Target = "IDtarget",
                   Value = "value", NodeID = "name", 
                   sinksRight=FALSE, fontSize = 10, nodeWidth = 10)
p
