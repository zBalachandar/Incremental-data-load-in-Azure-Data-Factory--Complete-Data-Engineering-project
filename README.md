# Incremental-data-load-in-Azure-Data-Factory--Complete-Data-Engineering-project
In this project we are going to do one end to end azure data engineer project and understand how to perform incremental data load in azure data factory . 


<div align="center">
  <a href="#">
    <img src="https://github.com/zBalachandar/Incremental-data-load-in-Azure-Data-Factory--Complete-Data-Engineering-project/blob/da8998de415364b5918c51a26a09e675e5ddaf53/Assets/Sql%20Db%20table1data%20loaded%2B1.png" alt="Banner" width="720">
  </a>

  <div id="user-content-toc">
   
  </div>
  
  <p>Incremental data load in azure data factory</p>
</div>
<br>


<a name="introduction"></a>
## 🔬 Project Overview
In this project we are going to do one end to end azure data engineer project and understand how to perform incremental data load in azure data factory.
I will go through the process for the incremental load of data from an on-premises SQL Server to Azure SQL database. Once the full data set is loaded from a source to a sink, there may be some addition or modification of the source data. In that case, it is not always possible, or recommended, to refresh all data again from source to sink. Incremental load methods help to reflect the changes in the source to the sink every time a data modification is made on the source.


### 💾 Dataset
Dataset script: 

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

![Incremental-data-load](https://github.com/zBalachandar/Incremental-data-load-in-Azure-Data-Factory--Complete-Data-Engineering-project/blob/da8998de415364b5918c51a26a09e675e5ddaf53/Assets/IMG_20240725_122406.jpg)


CREATE TABLE orders_final
(
    order_id INT ,
    Name NVARCHAR(128) ,
 inserttime datetime default getdate()
)
 


### Business Requirement.
![image](https://github.com/zBalachandar/Incremental-data-load-in-Azure-Data-Factory--Complete-Data-Engineering-project/blob/da8998de415364b5918c51a26a09e675e5ddaf53/Assets/4.jpg)
![image](https://github.com/zBalachandar/Incremental-data-load-in-Azure-Data-Factory--Complete-Data-Engineering-project/blob/da8998de415364b5918c51a26a09e675e5ddaf53/Assets/3.jpg)


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
 1.Prepare the source data store.
![image](https://github.com/zBalachandar/Incremental-data-load-in-Azure-Data-Factory--Complete-Data-Engineering-project/blob/cbcdcca7ac58e83f580aafdbc9497694f2eed551/Assets/Sql%20Db%20source%20created.png)
![image](https://github.com/zBalachandar/Incremental-data-load-in-Azure-Data-Factory--Complete-Data-Engineering-project/blob/cbcdcca7ac58e83f580aafdbc9497694f2eed551/Assets/Sql%20Db%20query%20created1.png)
![image](https://github.com/zBalachandar/Incremental-data-load-in-Azure-Data-Factory--Complete-Data-Engineering-project/blob/cbcdcca7ac58e83f580aafdbc9497694f2eed551/Assets/Sql%20Db%20table1data%20loaded.png)
2.Create a data factory.
![image](https://github.com/zBalachandar/Incremental-data-load-in-Azure-Data-Factory--Complete-Data-Engineering-project/blob/3c3c015908c43c0ef068c9d8c3b864c0f1634aa9/Assets/Data%20pipeline%20creation1.png)
![image](https://github.com/zBalachandar/Incremental-data-load-in-Azure-Data-Factory--Complete-Data-Engineering-project/blob/3c3c015908c43c0ef068c9d8c3b864c0f1634aa9/Assets/pipeline%20phase%202.png)
![image](https://github.com/zBalachandar/Incremental-data-load-in-Azure-Data-Factory--Complete-Data-Engineering-project/blob/3c3c015908c43c0ef068c9d8c3b864c0f1634aa9/Assets/pipeline%20phase%202.png)
![image](https://github.com/zBalachandar/Incremental-data-load-in-Azure-Data-Factory--Complete-Data-Engineering-project/blob/3c3c015908c43c0ef068c9d8c3b864c0f1634aa9/Assets/pipeline%20phase%203e.png)
![image](https://github.com/zBalachandar/Incremental-data-load-in-Azure-Data-Factory--Complete-Data-Engineering-project/blob/3c3c015908c43c0ef068c9d8c3b864c0f1634aa9/Assets/Pipeline%20run%20successfully.png)
3.Create linked services.
![image](https://github.com/zBalachandar/Incremental-data-load-in-Azure-Data-Factory--Complete-Data-Engineering-project/blob/3c3c015908c43c0ef068c9d8c3b864c0f1634aa9/Assets/df_ss.png)
![image](![image](https://github.com/zBalachandar/Incremental-data-load-in-Azure-Data-Factory--Complete-Data-Engineering-project/blob/3c3c015908c43c0ef068c9d8c3b864c0f1634aa9/Assets/Sql%20Db%20source%20created.png))
4.Create source, sink, and change tracking datasets.
![image](https://github.com/zBalachandar/Incremental-data-load-in-Azure-Data-Factory--Complete-Data-Engineering-project/blob/3c3c015908c43c0ef068c9d8c3b864c0f1634aa9/Assets/pipeline%20run%202nd%20time.png)
![image](https://github.com/zBalachandar/Incremental-data-load-in-Azure-Data-Factory--Complete-Data-Engineering-project/blob/3c3c015908c43c0ef068c9d8c3b864c0f1634aa9/Assets/df_ss.png)
5.Create, run, and monitor the full copy pipeline.
![image](https://github.com/zBalachandar/Incremental-data-load-in-Azure-Data-Factory--Complete-Data-Engineering-project/blob/3c3c015908c43c0ef068c9d8c3b864c0f1634aa9/Assets/pipeline%20run%202nd%20success%20.png)
![image](https://github.com/zBalachandar/Incremental-data-load-in-Azure-Data-Factory--Complete-Data-Engineering-project/blob/3c3c015908c43c0ef068c9d8c3b864c0f1634aa9/Assets/pipeline%20success%200.png)

6.Add or update data in the source table.
![image](https://github.com/zBalachandar/Incremental-data-load-in-Azure-Data-Factory--Complete-Data-Engineering-project/blob/3c3c015908c43c0ef068c9d8c3b864c0f1634aa9/Assets/Sql%20Db%20query%20created1.png)
![image](https://github.com/zBalachandar/Incremental-data-load-in-Azure-Data-Factory--Complete-Data-Engineering-project/blob/3c3c015908c43c0ef068c9d8c3b864c0f1634aa9/Assets/df_query%202.png)
![image](https://github.com/zBalachandar/Incremental-data-load-in-Azure-Data-Factory--Complete-Data-Engineering-project/blob/3c3c015908c43c0ef068c9d8c3b864c0f1634aa9/Assets/Sql%20Db%20table2data%20loaded.png)
![image](https://github.com/zBalachandar/Incremental-data-load-in-Azure-Data-Factory--Complete-Data-Engineering-project/blob/3c3c015908c43c0ef068c9d8c3b864c0f1634aa9/Assets/Sql%20Db%20table1data%20loaded.png)
![image](https://github.com/zBalachandar/Incremental-data-load-in-Azure-Data-Factory--Complete-Data-Engineering-project/blob/3c3c015908c43c0ef068c9d8c3b864c0f1634aa9/Assets/Sql%20Db%20table1data%20loaded.png)
![image]()
7.Create, run, and monitor the incremental copy pipeline.
![image](https://github.com/zBalachandar/Incremental-data-load-in-Azure-Data-Factory--Complete-Data-Engineering-project/blob/3c3c015908c43c0ef068c9d8c3b864c0f1634aa9/Assets/Overall%20PIPELINE%20data%20success4.png)
![image](https://github.com/zBalachandar/Incremental-data-load-in-Azure-Data-Factory--Complete-Data-Engineering-project/blob/3c3c015908c43c0ef068c9d8c3b864c0f1634aa9/Assets/Preview%20data%20max.png)
![image](https://github.com/zBalachandar/Incremental-data-load-in-Azure-Data-Factory--Complete-Data-Engineering-project/blob/3c3c015908c43c0ef068c9d8c3b864c0f1634aa9/Assets/SQL%20addon%20record%20last.png)
![image](https://github.com/zBalachandar/Incremental-data-load-in-Azure-Data-Factory--Complete-Data-Engineering-project/blob/3c3c015908c43c0ef068c9d8c3b864c0f1634aa9/Assets/Overall%20data%20in%20sql%20server%20success.png)
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

