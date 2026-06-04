# Event Planning Web Application

A Java Servlet & JSP web application for managing event contact messages, built with Apache Tomcat and MySQL.

---

## Features

- Submit contact messages through an event inquiry form
- View all submitted contact messages
- Edit existing contact messages
- Delete contact messages
- MySQL database integration

---

## Tech Stack

| Layer | Technology |
|---|---|
| Language | Java 21 |
| Backend | Java Servlets |
| Frontend | JSP, HTML, CSS |
| Database | MySQL |
| Server | Apache Tomcat 9.0 |
| IDE | Eclipse (Dynamic Web Project) |

---

## Project Structure

```
Event-Planning/
├── src/main/java/com/event/
│   ├── model/          # ContactMessage model
│   ├── service/        # Business logic (CRUD operations)
│   ├── servlet/        # Servlets (ContactMessageServlet, ManageContactCreateServlet)
│   └── util/           # DB connection & credentials
├── src/main/webapp/
│   ├── contact/        # JSP pages (Index, Create, Edit)
│   └── WEB-INF/
│       ├── lib/        # JAR dependencies
│       └── xml.xml     # Servlet mappings
└── build/classes/      # Compiled .class files
```

---

## Prerequisites

- Java JDK 21
- Apache Tomcat 9.0
- MySQL
- Eclipse IDE (Enterprise Java & Web Developer edition)

---

## Getting Started

### 1. Set Up the Database

Open MySQL and run:

```sql
CREATE DATABASE onlineevent;

USE onlineevent;

CREATE TABLE contact_messages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(100),
    lastname VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    message TEXT
);
```

### 2. Configure Database Credentials

Update `src/main/java/com/event/util/ConnectionData.java` if your MySQL credentials differ:

```java
public static final String DATABASE = "onlineevent";
public static final String USERNAME = "root";
public static final String PASSWORD = "your_password";
```

### 3. Import into Eclipse

1. Open Eclipse
2. Go to **File → Import → Existing Projects into Workspace**
3. Browse to the `Event-Planning` folder and click **Finish**

### 4. Add Tomcat Server

1. Go to **Window → Preferences → Server → Runtime Environments**
2. Click **Add → Apache → Tomcat v9.0**
3. Point to your Tomcat installation directory

### 5. Run the Project

1. Right-click the project → **Run As → Run on Server**
2. Select **Tomcat v9.0** and click **Finish**

### 6. Open in Browser

```
http://localhost:8080/Event-Planning/contact
```

---

## Dependencies (included in WEB-INF/lib)

- `javax.servlet-3.1.jar`
- `jstl-1.2.jar`
- `mysql-connector-java-5.1.48-bin.jar`
- `servlet-api.jar`

---

## License

This project was developed as a 2nd year academic project.
