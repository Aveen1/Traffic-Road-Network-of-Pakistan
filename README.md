# Traffic-Road-Network-of-Pakistan
Road Map analysis of Pakistan, it includes motorways and highways.

To travel over long distances and to reach destination faster, motorways are special build roads with several lanes and special places where traffic gets on and leaves.
Motorways of Pakistan are a network of multiple-lane, high-speed, controlled-access highways that links the three Arabian Sea Ports; Karachi Port, Gawadar Port and Port Bin Qasim. In this paper, the motorways network of Pakistan is analyzed by obtaining the data through web-scrapping methods from the National Highway Authority (NHA) Pakistan website. The graph for the road network is an undirected disconnected graph, in which the nodes represent the locations and the edges shows the motorway that is connecting the locations. Betweenness centrality is calculated to examine the most efficient routes for allocation of services like fuel stations, 
repair shops, tuck shops, hospitals. The paper further identify that which road will affect the traffic for other roads within the city.

## Data Extraction
There was no dataset available so we had to extract data from https://nha.gov.pk/
We keep it in new3, new4, new5.txt files and later convert them to .csv format

## Project
1. To run this project, you need the dataset files new3.csv, new4.csv and new5.csv.
2. Add their paths in file "project1.R" and run the script.
3. You can visualize the graphs easily.

Make sure you have installed all the libraries including igraph and ggplot to run this project

![GitHub Logo](/Motorways.png)

![GitHub Logo](/Rplot2.png)

![GitHub Logo](/Rplot3.png)
