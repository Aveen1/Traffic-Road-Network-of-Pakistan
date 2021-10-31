#Loading files

a <- read.csv(file = "C:/Users/muham/Downloads/new3.csv", sep=",", head=TRUE)
b <- read.csv(file = "C:/Users/muham/Downloads/new4.csv", sep=",", head=TRUE)
c <- read.csv(file = "C:/Users/muham/Downloads/new5.csv", sep=",", head=TRUE)

#Heads of tables

head(a)
head(b)
head(c)

#Features of tables
names(a)
names(b)
names(c)

#Dataframes out of csv files

nodes <- data.frame(b$Route.from, b$Route.to, b$Name, b$Length..KM., b$Status)
print(nodes)

edges <-data.frame(a$Project.from.1, a$Project.to.1, a$Length.KM., a$Province)
print(edges)

edges1 <-data.frame(c$Project.from.2, c$Project.to.2, c$Length.KM., c$Province)
print(edges1)


# Graphs for each table using igraph
#install.packages("igraph")
library(igraph)

#######################################DATA OF MOTORWAYS
#nodes
nodes.g <- graph.data.frame(d = nodes, directed = FALSE)

plot(nodes.g,vertex.color="yellow", edge.color="red", edge.label=b$Name, vertex.size=8)


#Betweness
betweenness(nodes.g)
#Degree Centrality 
degree(nodes.g)

#Can't find Closeness because it's a disconnected graph
closeness(nodes.g)

#EigenVector Centrality
evcent(nodes.g)
#################################################################
####################################Major Completed Road Projects 
#edges
edges.g <- graph.data.frame(d = edges, directed = FALSE)

plot(edges.g,vertex.color="red", edge.color="green", edge.label=a$Length.KM., vertex.size=8)

#Betweness
betweenness(edges.g)
#Degree Centrality 
degree(edges.g)

#Can't find Closeness because it's a disconnected graph
closeness(edges.g)

#EigenVector Centrality
evcent(edges.g)

##############################################################
#################################Major On Going Road Projects
#edges1
edges1.g <- graph.data.frame(d = edges1, directed = FALSE)

plot(edges1.g,vertex.color="blue", edge.color="green", edge.label=c$Length.KM., vertex.size=8)

#Betweness
betweenness(edges1.g)
#Degree Centrality 
degree(edges1.g)

#Can't find Closeness because it's a disconnected graph
closeness(edges1.g)

#EigenVector Centrality
evcent(edges1.g)


