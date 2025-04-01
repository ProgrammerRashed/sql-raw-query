
### 1. What is PostgreSQL? 
Ans: PostgreSQL হলো একটি powerful open-source ডেটাবেস। 

### 2. What is the purpose of a database schema in PostgreSQL?
Ans: Schema হলো ব্লু-প্রিন্ট বা ড্রইং এর মতো, একটি বিল্ডিং তৈরি করার আগে যেমন আমরা ব্লু-প্রিন্ট বা ড্রইং দেখে বুঝতে পারি বিল্ডিংটি কেমন হবে, তেমনি Schema define করে ডাটাবেস কেমন হবে।  

### 3. Explain the Primary Key and Foreign Key concepts in PostgreSQL.
Ans:
-  Primary Key হচ্ছে ডাটাবেসের একটি value এর unique identifier যেটা দিয়ে আমরা ঐ value কে identify করতে পারি। 
-  যখন Primary Key ভিন্ন একটা টেবিলে ব্যাবহার করা হয় তখন তাকে  Foreign Key হিসাবে identify করা হয়।  

### 4. What is the difference between VARCHAR and CHAR data types?
CHAR ডেটাবেসে fixed-length  এর strings স্টোর করে কিন্তু VARCHAR flexible length strings স্টোর করে। 
 

### 5. Explain the purpose of the WHERE clause in a SELECT statement.
Ans: WHERE কোন একটা condition এর উপর একটা টেবিলের ডাটা ফিল্টার করতে হেল্প করে। 

### 6. What are the LIMIT and OFFSET clauses used for?
- LIMIT দিয়ে define করা হয় আমরা একটি টেবিল থেকে কত ডাটা return করতে চাচ্ছি। 
- OFFSET দিয়ে define করা হয় আমরা একটি টেবিল থেকে কত ডাটা skip বা বাদ দিতে চাচ্ছি। 

### 7. How can you modify data using UPDATE statements?
Ans: UPDATE দিয়ে আমারা existing একটি টেবিল এর ডাটা কে Modify করতে পারি। 

### 8. What is the significance of the JOIN operation, and how does it work in PostgreSQL?
- JOIN PostgreSQL-এ দুই বা একাধিক টেবিলকে জয়েন করতে ব্যবহৃত হয়।
- JOIN সাধারণত একটি Condition এর উপর ভিত্তি করে দুইটি টেবিলের মধ্যে সম্পর্ক স্থাপন করে। সাধারণত একটি foreign key এবং একটি primary key সম্পর্কের মাধ্যমে এটি কাজ করে।

### 9. Explain the GROUP BY clause and its role in aggregation operations.
GROUP BY একই value এর ডাটা গুলোকে গ্রুপ করার জন্য ব্যাবহার করা হয়। এর ফলে আমরা SUM, COUNT এর মতো aggregate functions ব্যাবহার করতে পারি। 

### 10. How can you calculate aggregate functions like COUNT(), SUM(), and AVG() in PostgreSQL?
Postgress এ এই function গুলো pre-built আছে আমার এই function গুলো ব্যাবহার করে directly COUNT(), SUM(), and AVG() calculate করতে পারবো!