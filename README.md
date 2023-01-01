# EK125 FinalProject
December 11, 2019

**The Problem**

&emsp; Food insecurity is a significant problem in the United States. 1 in 9 Americans were food insecure in 2018. The U.S. Department of Agriculture defines food insecurity as "a lack of consistent access to enough food for an active, healthy life. One cause of food insecurity is a lack of accessible grocery stores. The grocery stores might not be accessible because the person does not have a car to access it or the grocery store is too hard or far to get to. Food insecurity does not affect just one community in the United States. Food insecurity is seen through different races and different ages. It occurs in every state and affects a multitude of different people. When people do not have enough money or cannot easily access grocery stores, they turn to cheap, unhealthy food. As a result, people may become obese and their health may suffer. Their suffering health may affect their ability to find and keep a job. A cycle of future food insecurity is created.
&emsp; It is easy to see that many counties across the United States suffer from food security. However, a dwindling budget makes it currently impossible to help all of the communities affected by food insecurity. To address the problem of food insecurity, I plan to use machine learning. I will create a model that can predict how many grocery stores will be needed based on the growing population. The data set I have chosen collected data from every county in each state. The solution I have offered will be useful to the counties as it will help them to lower the number of people who have low access to grocery stores. My solution could also help grocery companies. Identifying where and how many grocery stores are needed will help grocery store brands decide the area where the grocery store is most needed. The main goal of this project is to create a model that can predict how many grocery stores are needed per 1,000 people. Doing this will allow the number of people with low access to grocery stores decrease and help the overall issue of food insecurity in the United States.

Sources:
https://hungerandhealth.feedingamerica.org/understand-food-insecurity/
Link to data set: https://www.ers.usda.gov/data-products/food-environment-atlas/data-access-and-documentation-downloads/

**Article on Biases**

&emsp; This article talks about the biases in machine learning in health care. Machine learning can be used in health care to suggest diagnosis and treatment based on predictions made using electronic health records. The goal of machine learning in health care is to eliminate biases caused by people and to analyze data faster. However, machine learning in health care has its own biases. These biases include missing data, incorrectly identifying patients, and underestimation. Missing data is a result of incomplete records. The sample size can also be a bias in machine learning. If certain ages or races are underrepresented in the data, this could lead to an incorrect prediction model. There is concern that these biases can lead to socioeconomic disparities in healthcare. Possible solutions to these biases are not to over-rely on automation and not using algorithms from biased data. The article also suggests that when using machine learning, make sure to use appropriate questions and settings. The article also mentions that particular machine earning models are easier to read than others and, therefore, easier to interpret. The article's main takeaway is that machine learning can be useful but, an overreliance and over trust of it can lead to biases.

Article: https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6347576/

**Process**

1. The source I got the data from had divided the data I wanted to analyze into two separate spreadsheets. I determined that the information I wanted to analyze was the population from 2010-2016, the number of people who had low access to stores, and the number of grocery stores per 1,000 people. I combined all of the information into one spreadsheet and saved it.

<img src="https://user-images.githubusercontent.com/75282197/210181874-d9226198-a911-428c-9a6c-f05ec2a3cb7b.png" alt="pic1" width="600"/>
This picture shows the first 20 rows of data I used

2. Next, I imported the data into Matlab. I wanted the see what the data looked like before I decided to remove any values. After looking at how the Regression Learner worked, I realized I had too many variables. I decided to use the changing population size to predict the number of grocery stores per 1,000 people. I used the Regression Learner and set the population from 2010-2016 as the predictor and the number of grocery stores per 1,000 people in 2014 as the response variable.

<img src="https://user-images.githubusercontent.com/75282197/210181964-174d32d3-70ce-41f5-bb2c-97c9c189233b.png" alt="image" width="600"/>

3. Looking at the above model, I noticed that many values were outliers. I decided to remove outliers. I used the code:

<img src="https://user-images.githubusercontent.com/75282197/210181932-e431751c-3b56-47dd-95ac-606d8ca126fd.png" alt="image" width="600"/>

After removing the outliers, I put the new data into the Regression Learner.

<img src="https://user-images.githubusercontent.com/75282197/210181936-d60655b7-cbbd-4227-b3f9-16c95cd22d21.png" alt="image" width="800"/>


4. I then decided to remove any values that were 0 and any values they were blank. I used the code:

<img src="https://user-images.githubusercontent.com/75282197/210181940-1b6e689d-a1b8-4f1b-8d70-dc3221437bec.png" alt="image" width="600"/>

After removing any zeros or blank values, I put the new data into the Regression Learner.

<img src="https://user-images.githubusercontent.com/75282197/210181945-d3ecd2cd-c1e8-47cb-8288-3b71134800ac.png" alt="image" width="600"/>


**Conclusion**

&emsp; At this point, I concluded that the population might not be the most reliable indicator of the number of grocery stores needed per 1,000 people. While the model can be used to predict the number of grocery stores based on a changing population, it may not be useful to combat food insecurity. I think that my model would be a better predictor and more useful if the county sampled had a small number of people who were food insecure. Using my model now will tell you how many grocery stores there will be based on the population. However, the number of people with low access to grocery stores will not change; it should stay the same. Once an area has established enough grocery stores, my model would be useful to predict how many grocery stores will need to be added in the coming years. The model I have established now can only predict the number of grocery stores per 1,000 people. In the future, this model would have more impact if a county already had a small number of people with low access to grocery stores. My idea for the model only works when you want to keep the number of people with low access the same. The model would not be an accurate prediction to use in order to lower the number of people with low access to grocery stores.
