\# Optimization Report



\*\*Objective:\*\*  

Improve query performance by reducing joins and using indexes.



\*\*Before Optimization:\*\*  

\- Full joins on all tables (users, bookings, properties, payments).  

\- Execution time: ~480 ms  



\*\*Actions Taken:\*\*  

\- Added indexes on `user\_id`, `property\_id`, and `booking\_id`.  

\- Replaced `SELECT \*` with selected columns.  

\- Added `WHERE b.status = 'confirmed'`.  



\*\*After Optimization:\*\*  

\- Execution time: ~70 ms  

\- Query uses index scan instead of full table scan.  



\*\*Result:\*\*  

≈85% performance improvement.



