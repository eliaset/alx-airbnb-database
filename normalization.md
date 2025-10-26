# Database Normalization – Airbnb Database

## 1NF
Each table contains atomic values. No repeating groups or arrays are used.

## 2NF
All non-key attributes depend on the entire primary key. 
Since each table uses a single-column primary key, no partial dependencies exist.

## 3NF
No transitive dependencies are present. 
All attributes depend only on their table's primary key.

Our database satisfy all these.
