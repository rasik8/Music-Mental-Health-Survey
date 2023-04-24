# Music Mental Health Survey

Tools: Excel | SQL | Tableau

## The Data

This was my first personal data analysis project. With the vast amount of data sets available covering just about any topic, I wanted to keep it simple and insightful. With that in mind I came across this music survey data set that looked very interesting. I am passionate about music and the data had some fascinating facts regarding personal music taste that I could analyse, therefore it made perfect sense to create an analysis of this data.  

The data set that I used for this analysis was downloaded from Kaggle, it comprises of a survey result from 763 Respondents. Each individual was asked various questions regarding their music listening habits and their self-reported mental health states. The survey used to collect data was posted in various forums, discord servers and social media platforms. Posters and "business cards" were also used to advertise the form in libraries, parks, and other public locations.

## Data Cleaning

The data came in a csv file. After studying the data, I replaced all Null values to 0. Many questions were left blank by respondents. In order to sustain data accuracy, I replaced these blanks with ‘No Comment’. I also removed irrelevant columns that were not necessary in the analysis. The cleaning process was completed in excel.

## Data Investigation

After analysing survey data, I explored what insights I could derive. Here are my questions to answer:

**1. What is the most popular streaming service?**

**2. What is the most popular music genre?**

**3. What is the most popular listening Time?**

**4. Investigate which streaming services is used according to age of respondent?**

**5. What effect music has on individuals Mental Health condition?**

**6. What effect music has on individuals Mental Health condition, according to age of respondent?**

**7. What are the average mental health ratings filtered by favourite music genre?**

## Data Exploration into PostgreSQL

In order to import data to PostgreSQL I created a table and then imported the data from the csv file into that table.

<p align="left" width="100%">
    <img width="55%" src="https://user-images.githubusercontent.com/127439365/233997237-7641e87d-a2d8-4571-80dc-fdccee49175a.png">
</p>

## SQL Analysis and Tableau Visualisation

**1. What is the most popular streaming service?**

<p align="left" width="100%">
    <img width="60%" src="https://user-images.githubusercontent.com/127439365/233998941-d3025be6-6802-47bb-8c0d-b0d2e446c0e2.png">
</p>

![Screenshot 1](https://user-images.githubusercontent.com/127439365/233998999-3ad98ffd-ff07-424e-b38b-c89f60768972.png)

![viz1](https://user-images.githubusercontent.com/127439365/233999045-bbcdfe22-80dc-4b9f-a543-288ac7667a6c.png)

Spotify is ranked as the most popular streaming service accounting for 458 (62%) of all respondents. This was followed by you tube music streaming.

**2. What is the most popular music genre?**

<p align="left" width="100%">
    <img width="60%" src="https://user-images.githubusercontent.com/127439365/234002230-7241cfb6-6512-45e8-b653-162671bc975a.png">
</p>

<p align="left" width="100%">
    <img width="25%" src="https://user-images.githubusercontent.com/127439365/234002796-286ba33e-8dc7-4c93-b8d6-0d4210b1c984.png">
</p>

![viz2](https://user-images.githubusercontent.com/127439365/234004951-17e8fbe7-11b9-446b-adeb-20fc942ba864.png)

Everyone has their own tastes when it comes to music. In this survey rock music is ranked as the most popular genre selected and has the most diverse range of respondents. This is followed by pop and metal music listeners.

**3. What is the most popular listening Time?**

![Q3](https://user-images.githubusercontent.com/127439365/234012203-299fbeef-28bb-4a2f-9b3a-504d2bffd317.png)

<p align="left" width="100%">
    <img width="35%" src="https://user-images.githubusercontent.com/127439365/234013679-f40ca205-44f4-4b6c-8f0f-b4dbce9f6f41.png">
</p>

![viz3](https://user-images.githubusercontent.com/127439365/234014052-d1a9461e-83f2-4b3e-8f9e-8b919f9f55c5.png)

This bar graph above represents music listening period for all respondents which is further filtered based on usage type. Between 1-6 hours is the most popular listening time, which also equates to while working. After this threshold, the number of respondents that listen to music 5+ hours a day decreases almost exponentially. There were 3 respondents that claim to listen to music 24 hours a day. The above SQL result is just an extract from the original output of the query.

**4. Investigate which streaming services is used according to age of respondent?**

![Q4](https://user-images.githubusercontent.com/127439365/234015125-57c771d2-d7a3-4f9c-8a32-84579e22f1dc.png)

<p align="left" width="100%">
    <img width="45%" src="https://user-images.githubusercontent.com/127439365/234016207-3f4c13b9-afc5-4347-8b2c-b8629a4cb954.png">
</p>

After running the above SQL query, I visualised the same data result in tableau. I was able to establish that spotify, you tube music and apple music are popular streaming service for age group 15 – 40. Pandora streaming is popular among the older age group.

**5. What effect music has on individuals Mental Health condition?**

![Q5](https://user-images.githubusercontent.com/127439365/234044943-8cae0aa3-6d3c-43f8-b336-a933e0478a3d.png)













Please download my Artical to read full project analysis 

Click Here for: [Tableau dasboard](https://public.tableau.com/app/profile/rasiklal.limbani/viz/MentalHealth_16765777903250/Dashboard1)
