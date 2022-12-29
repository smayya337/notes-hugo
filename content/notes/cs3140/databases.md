---
title: "Databases"
weight: 16
---

## SQL

Files like CSV, XML, and JSON are all forms of **data persistence**. When your program ends, all its memory is freed up, but what if you want to keep that information? Well, you'll have to put it somewhere. However, files by themselves are not the easiest things to work with. For example, if you want to find all the presidents who were born in February, you'd have to read the entire file and then filter out the ones that don't match. This is where **SQL** comes in. SQL stands for Structured Query Language, and it's a way of storing data in a **database**. It's a language that's used by many different database systems, including MySQL, PostgreSQL, and SQLite.

SQL is tabular, so it'll look the most like CSV. Here's an example of a table in SQL:

| id  | name              | date-of-birth | party      |
| --- | ----------------- | ------------- | ---------- |
| 1   | George Washington | 2/22/1732     | None       |
| 16  | Abraham Lincoln   | 2/12/1809     | Republican |
| 36  | Lyndon B. Johnson | 8/27/1908     | Democrat   |

Each row in the table is called a **record**, while each column is known as an **attribute**.

Some keywords in SQL:

* `SELECT` - Selects the columns you want to see.
* `FROM` - Selects the table you want to see.
* `WHERE` - Filters the records based on a condition.
* `ORDER BY` - Sorts the records based on a column.
* `GROUP BY` - Groups the records based on a column.
* `HAVING` - Filters the groups based on a condition.
* `LIMIT` - Limits the number of records you see.
* `INSERT INTO` - Inserts a new record into a table.
* `UPDATE` - Updates a record in a table.
* `PRIMARY KEY` - A column that uniquely identifies a record.
* `UNIQUE` - A column that must have a unique value for each record.
* `NOT NULL` - A column that must have a value for each record.
* `AUTO_INCREMENT` - A column that automatically increments for each new record.
* `FOREIGN KEY` - A column that references a column in another table.
* `JOIN` - Joins two tables together.
* `INNER JOIN` - Joins two tables together based on a condition.
* `LEFT JOIN` - Joins two tables together based on a condition, but includes all records from the left table.
* `RIGHT JOIN` - Joins two tables together based on a condition, but includes all records from the right table.
* `FULL JOIN` - Joins two tables together based on a condition, but includes all records from both tables.
* `ON` - Specifies the condition for a join.
* `CREATE TABLE` - Creates a new table.
* `DROP TABLE` - Deletes a table.
* `DELETE FROM` - Deletes records from a table.

Let's create our `Presidents` table:

```sql
CREATE TABLE Presidents (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    date_of_birth DATE,
    party VARCHAR(255)
);
```

* `INTEGER` - A number.
* `VARCHAR(255)` - A string with max length 255.
* `DATE` - A date.

Note that all statements end with a `;`.

Now, let's insert some data:

```sql
INSERT INTO Presidents (name, date_of_birth, party) VALUES
    ("George Washington", "2/22/1732", "None"),
    ("Abraham Lincoln", "2/12/1809", "Republican"),
    ("Lyndon B. Johnson", "8/27/1908", "Democrat");
```

We've told the database we'll provide the values for the `name`, `date_of_birth`, and `party` columns. The `id` column is automatically incremented.

OK, now let's see which presidents were born in February:

```sql
SELECT * FROM Presidents WHERE MONTH(date_of_birth) = 2;
```

OK, say we add a column for elections won by each president. Presidents have won anywhere from 0 (Gerald Ford) to 4 (FDR) elections, so we'll just put them all in a single column for now rather than break them up:

| id  | name              | date_of_birth | party      | elections_won |
| --- | ----------------- | ------------- | ---------- | ------------- |
| 1   | George Washington | 2/22/1732     | None       | 1788, 1792    |
| 16  | Abraham Lincoln   | 2/12/1809     | Republican | 1860, 1864    |
| 36  | Lyndon B. Johnson | 8/27/1908     | Democrat   | 1964          |

That's still icky, though. There is a variable number of elections won by each president. What if we want to see who won the 1864 election? We'd have to go down the list and see if 1864 is one of the items (not the only item!) in the `elections_won` column. That's slow. What if we made an extra record for each election win?

| id  | name              | date_of_birth | party      | election_year |
| --- | ----------------- | ------------- | ---------- | ------------- |
| 1   | George Washington | 2/22/1732     | None       | 1788          |
| 1   | George Washington | 2/22/1732     | None       | 1792          |
| 16  | Abraham Lincoln   | 2/12/1809     | Republican | 1860          |
| 16  | Abraham Lincoln   | 2/12/1809     | Republican | 1864          |
| 36  | Lyndon B. Johnson | 8/27/1908     | Democrat   | 1964          |

This is what's known as **First Normal Form**. Each cell has a single value, and there are no duplicate records. Now, we can easily see who won 1864. However, now we have duplicate values for `id`, which is supposed to be unique. If, say, we try to get George Washington's date of birth, we'll get duplicate values.

How do we fix this? We can create a new table called `Elections`:

| id  | election_year | winner_id |
| --- | ------------- | --------- |
| 1   | 1788          | 1         |
| 2   | 1792          | 1         |
| 19  | 1860          | 16        |
| 20  | 1864          | 16        |
| 45  | 1964          | 36        |

The `winner_id` column in `Elections` is a **foreign key** that references the `id` column in `Presidents`. Now that we have this table, we don't need election data in `Presidents`, so we can revert that table to just being a list of presidents:

| id  | name              | date_of_birth | party      |
| --- | ----------------- | ------------- | ---------- |
| 1   | George Washington | 2/22/1732     | None       |
| 16  | Abraham Lincoln   | 2/12/1809     | Republican |
| 36  | Lyndon B. Johnson | 8/27/1908     | Democrat   |

This is known as **Second Normal Form**. Each cell has a single value, there are no duplicate records, and there are no duplicate columns. Now, we can easily see who won the 1864 election, and we can easily get George Washington's date of birth.

```sql
/* Winner of 1864 election */
SELECT * FROM Presidents WHERE id = (SELECT winner_id from Elections WHERE election_year = 1864);

/* George Washington's date of birth */
SELECT date_of_birth FROM Presidents WHERE name = "George Washington";
```

Here's a fun one: which elections have Democrats won? We can use a **join** to figure this out. A join combines two tables by overlapping columns. In this case, we'll join `Elections` and `Presidents` on the `id` column in `Presidents` and the `winner_id` column in `Elections`.

```sql
SELECT * from Elections INNER JOIN Presidents ON Presidents.id = Elections.winner_id WHERE party = "Democrat";
```

When we have foreign keys in our tables, though, we need to be careful that we don't delete a record while leaving records in other tables that refer back to it. If we delete George Washington, the 1788 and 1792 election records are pointing back to a president who no longer exists! We can use a **cascade** to fix this. A cascade is a rule that says "if you delete this record, delete all records that refer to it." We can add a cascade to our `Elections` table:

```sql
CREATE TABLE Presidents (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    date_of_birth DATE,
    party VARCHAR(255),
);

CREATE TABLE Elections (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    election_year INTEGER UNIQUE NOT NULL,
    winner_id INTEGER NOT NULL,
    FOREIGN KEY (winner_id) REFERENCES Presidents(id) ON DELETE CASCADE
);
```

Oops, I meant to make Nixon (id `37`) the winner of the 1968 election (id `45`), not LBJ. Let's update that:

```sql
UPDATE Elections SET winner_id = 37 WHERE id = 46;
```

## JDBC

**JDBC** is the Java Database Connectivity API. It's a set of classes that allow us to connect to a database and execute SQL statements.

Here's how you get started:

```java
import java.sql.*;

// Your database URL
String url = "jdbc:sqlite:presidents.sqlite3";

// Make sure we have the database driver
Class.forName("org.sqlite.JDBC");
// Connect to the database
Connection conn = DriverManager.getConnection(url);
// Keep everything from auto-saving
conn.setAutoCommit(false);

// Execute a statement
String sql = "SELECT * FROM Presidents";
try {
    Statement stmt = conn.createStatement();
    // a ResultSet is like an iterator over the results of a Query
    ResultSet rs = stmt.executeQuery(sql);
    while (rs.next()) {
        System.out.println(rs.getString("name"));
    }
} catch (SQLException e) {
    throw new RuntimeException();
}

// Commit changes
conn.commit();
```

## Hibernate

JDBC is great and all, but writing all that code just to handle, say, adding objects of a certain class to a database and then retrieving them in object form later gets old fast. What if there were an easier way to handle these operations?

Enter **object-relational models**, which handle the dirty work of converting an object to a database record and vice versa. One popular ORM for Java is **Hibernate**. Hibernate uses the **Java Persistence API**, or JPA, behind the scenes.

Hibernate requires a `hibernate.cfg.xml` configuration file that looks like this:

```xml
<hibernate-configuration>
    <session-factory>
        <property name="show_sql">false</property>
        <property name="format_sql">false</property>
        <property name="dialect">org.sqlite.hibernate.dialect.SQLiteDialect</property>
        <property name="connection.driver_class">org.sqlite.JDBC</property>
        <property name="connection.url">jdbc:sqlite:presidents.sqlite3</property>
        <property name="hibernate.hbm2ddl.auto">update</property>
        <mapping class="me.smayya.President" />
        <mapping class="me.smayya.Election" />
    </session-factory>
</hibernate-configuration>
```

Now, we get to our Java object class.

```java
import javax.persistence.*;

@Entity
@Table(name = "Presidents")
public class President {
    @Id // marks as ID column
    @GeneratedValue(strategy = GenerationType.AUTO) // auto-increment
    @Column(name="id") // sets table column name
    private int id;

    @Column(name="name", nullable = false) // nullable = false prevents null values
    private String name;

    @OneToMany(mappedBy = "winner") // one-to-many relationship
    private List<Election> elections;

    /*
    For the Election class, you probably connect it to the President class like so:
    @ManyToOne
    @JoinColumn(name = "winner", referencedColumnName = "id")
    private President winner;
    */
    
    // ...you get the idea

    public President() {
        // you need a no-arg constructor
    }

    // getters and setters for all fields corresponding to columns
}
```

Alright, now our database manager:

```java
// First, start the session
Session session = HibernateUtil.getSessionFactory().openSession(); // HibernateUtil is a custom class that provides the session
session.beginTransaction();

// Create our objects
President presidentLBJ = new President("Lyndon B. Johnson", 36);
Election election1964 = new Election(1964, presidentLBJ);

// Add to database
session.persist(presidentLBJ);
session.persist(election1964); // you need to persist all the subordinate objects as well!

// Save changes
session.getTransaction().commit();

// Get object matching class and ID
President president36 = session.get(President.class, 36);

// Use HQL (SQL-like query language) to get items
String hql = "SELECT FROM Election where year = 1964";
Query<Election> q = session.createQuery(hql);
List<Election> el = q.list();

// Use JPA's CriteriaQuery interface to get items
CriteriaBuilder builder = session.getCriteriaBuilder();
CriteriaQuery<Account> criteria = builder.createQuery(President.class);
Root<Account> root = criteria.from(President.class);
// Predicate is the filter
Predicate washington = builder.equal(root.get("name"), "George Washington");
criteria.select(root).where(washington);
Query<President> q2 = session.createQuery(criteria);
List<President> el2 = q.getResultList();
```

The **Hibernate Query Language**, or HQL, is similar to SQL, but:

* It uses class names instead of table names.
* It uses field names instead of column names.
* `SELECT` is optional when the type of the `Query` (e.g. `Query<President>` is known)
* There's no `SELECT *`. You just write `FROM`.
