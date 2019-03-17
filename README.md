# blightedbuildings

Title: Analysis of the Detroit Blight Occurrences using Neural Net Predictors
Overview
The analysis was primarily done using R-Caret library which provides re-useable components for predictive analysis. Data preparation was done using SQL fucntions in Mysql database
From the analysis that was done, it was found out that there are key features that can be used to predict occurrence of blight. This includes fines that were levelled to occupants of buildings which could determine the nature of violation that had occurred in the building.
I also proceeded to perform Geographic clustering of violations to determine which buildings were affected and there were Clusters and from this it seems key areas that stand out in terms of blight incidences occurrence include the areas of Dearborn Heights, Highland Park hence areas around this region were likely to have incidences of blight.
There were also outliers in the data as can be seen with the cases reported in area of Chicago in the below visual.


![alt text](https://github.com/rwaithaka/blightedbuildings/blob/master/detroitblight.png)


Building the Prediction Model:
The predictor class included the following variables:
 outcome,
 PaymentStatus,
 ViolationCategory,
 Disposition,
 AgencyName,
 Building Type Usage
Using the neural network library in Caret I was able to check and find out the relevance of the above
predictors.
The attached snapshot is a capture of the accuracy of the Neural Net model training results. I believe
the method is effective and efficient compared to two other algorithms tried out i.e. Gradient Boost
Method and Generalised Linear Model - which required more compute time to machine learn the
underlying patterns.

![alt text](https://github.com/rwaithaka/blightedbuildings/blob/master/accuracy-weightdecay.png)

