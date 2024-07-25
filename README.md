# Incremental-data-load-in-Azure-Data-Factory--Complete-Data-Engineering-project
In this project we are going to do one end to end azure data engineer project and understand how to perform incremental data load in azure data factory . 


<div align="center">
  <a href="#">
    <img src="https://github.com/zBalachandar/Sales-Analysis-End-to-End-Pyspark-Real-Time-prod-project2./blob/2f3b674f3e74025cfb6873a19398a684ca4e7340/ASSETS/Sales%20Analysis%20Data%20bricks%2001.png" alt="Banner" width="720">
  </a>

  <div id="user-content-toc">
   
  </div>
  
  <p>Incremental data load in azure data factory</p>
</div>
<br>


<a name="introduction"></a>
## 🔬 Project Overview
 I will go through the process for the incremental load of data from an on-premises SQL Server to Azure SQL database. Once the full data set is loaded from a source to a sink, there may be some addition or modification of the source data. In that case, it is not always possible, or recommended, to refresh all data again from source to sink. Incremental load methods help to reflect the changes in the source to the sink every time a data modification is made on the source.


### 💾 Dataset
Dataset script: script

CREATE TABLE orders
(
    order_id INT ,
    Name NVARCHAR(128) ,
    LastName NVARCHAR(128) NOT NULL,
 inserttime datetime default getdate()
)

insert into orders(order_id,FirstName,LastName) values(1,'manish','tiwari')
insert into orders(order_id,FirstName,LastName) values(2,'rani','sharma')
insert into orders(order_id,FirstName,LastName) values(3,'yuvraj','verma')


CREATE TABLE orders_final
(
    order_id INT ,
    Name NVARCHAR(128) ,
 inserttime datetime default getdate()
)
 
![image](https://github.com/zBalachandar/Sales-Analysis-End-to-End-Pyspark-Real-Time-prod-project2./blob/2f3b674f3e74025cfb6873a19398a684ca4e7340/ASSETS/Datasets.jpg)

### Business Requirement.
![image](https://github.com/zBalachandar/Sales-Analysis-End-to-End-Pyspark-Real-Time-prod-project2./blob/01b38e806b101e00ece9f05c324fbdb40c388c78/ASSETS/Business%20Requirements.jpg)

### Project steps to follow: 

There are different methods for incremental data loading. I will discuss the step-by-step process for incremental loading, or delta loading

1.Prepare the source data store.
2.Create a data factory.
3.Create linked services.
4.Create source, sink, and change tracking datasets.
5.Create, run, and monitor the full copy pipeline.
6.Add or update data in the source table.
7.Create, run, and monitor the incremental copy pipeline.



In this project we are going to do one end to end azure data engineer project and understand how to perform incremental data load in azure data factory



### ⚙️ Data Loading
 Data processing and Loading using DataFactory and Azure SQL Server Environment.
### DataBricks Notebook.

![image]()
![image]()
![image]()

<a name="data-reporting"></a>
### 📊 Data Reporting KPI's
I created a presentation dashboard and insightful data visualizations.
[Data Visualization presentation Live-link](https://community.cloud.databricks.com/?o=4339393889004771#notebook/2305521296724873/dashboard/102889012920708/present)
![image](https://github.com/zBalachandar/Sales-Analysis-End-to-End-Pyspark-Real-Time-prod-project2./blob/2f3b674f3e74025cfb6873a19398a684ca4e7340/ASSETS/Sales%20Analysis%20Data%20bricks%2001.png)
![image](https://github.com/zBalachandar/Sales-Analysis-End-to-End-Pyspark-Real-Time-prod-project2./blob/2f3b674f3e74025cfb6873a19398a684ca4e7340/ASSETS/Sales%20Analysis%20Data%20bricks%2002.png)
![image](https://github.com/zBalachandar/Sales-Analysis-End-to-End-Pyspark-Real-Time-prod-project2./blob/2f3b674f3e74025cfb6873a19398a684ca4e7340/ASSETS/Sales%20Analysis%20Data%20bricks%2003%20dashboard.png)
![image](https://github.com/zBalachandar/Sales-Analysis-End-to-End-Pyspark-Real-Time-prod-project2./blob/2f3b674f3e74025cfb6873a19398a684ca4e7340/ASSETS/Sales%20Analysis%20Data%20bricks%2004%20dashboard.png)

### 🛠️ Technologies Used

- **Data processing**: Azure Data Factory
- **Data loading**: Azure SQL Server

<a name="credits"></a>
## 📋 Credits

- This Project is inspired by the video of the [YouTube Channel "Learn by doing it"](https://www.youtube.com/watch?v=pMqnvXgPKlI&list=PLOlK8ytA0MghGmAAT8W2u7VYmICdzeU5t&index=1&t=96s)  

<a name="contact"></a>
## 📨 Contact Me

[LinkedIn](https://www.linkedin.com/in/balachandars2022/) •
[Gmail](balachandar2014elu@gmail.com)  •

