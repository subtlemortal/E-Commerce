# E-Commerce Website (OLX Clone)

## Overview
This project is an e-commerce platform, inspired by **OLX**, developed using **Java** and **JSP (Java Server Pages)**. The website enables users to post ads for products, browse available items, and manage transactions efficiently. It is a robust platform that demonstrates the implementation of core web development concepts using Java technologies.

---

## Features
- **User Authentication**:
  - Secure login and registration for users.
  - Password encryption for data security.
- **Product Listings**:
  - Users can add, edit, and delete product ads.
  - View detailed information about each product.
- **Search and Filters**:
  - Search functionality to find products easily.
  - Filter by categories and other attributes.
- **Admin Panel**:
  - Manage users and product listings.
  - View system statistics.
- **Responsive Design**:
  - Optimized for both desktop and mobile views.

---

## Technologies Used
- **Frontend**:
  - HTML, CSS, JavaScript
  - Bootstrap for responsive design
- **Backend**:
  - Java
  - JSP (Java Server Pages)
  - Servlets
- **Database**:
  - MySQL for data storage
- **Server**:
  - Apache Tomcat

---

## Prerequisites
- **Java Development Kit (JDK)**: Version 8 or above.
- **Apache Tomcat**: Version 9 or above.
- **MySQL**: Version 5.7 or above.
- **IDE**: IntelliJ IDEA, Eclipse, or any IDE supporting Java and JSP.

---

## Installation

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/subtlemortal/OLX_Website_JSP.git
   cd OLX_Website_JSP
   ```

2. **Set Up the Database:**
   - Create a new MySQL database (e.g., `olx_db`).
   - Import the database schema using the `olx_db.sql` file provided in the repository.
   ```sql
   mysql -u [username] -p [password] olx_db < olx_db.sql
   ```

3. **Configure Database Connection:**
   - Update the `dbConfig.java` file in the `src` directory with your MySQL credentials:
     ```java
     private static final String DB_URL = "jdbc:mysql://localhost:3306/olx_db";
     private static final String USER = "your_mysql_username";
     private static final String PASSWORD = "your_mysql_password";
     ```

4. **Deploy to Apache Tomcat:**
   - Copy the project folder to the `webapps` directory of your Tomcat installation.
   - Start the Tomcat server.

5. **Access the Application:**
   - Open a web browser and navigate to:
     ```
     http://localhost:8080/OLX_Website_JSP
     ```

---

## Project Structure
```
OLX_Website_JSP/
|└── src/
|   |└── com/           # Backend Java code
|   |└── dbConfig.java  # Database configuration
|└── web/
|   |└── WEB-INF/
|       |└── web.xml    # Deployment descriptor
|   |└── index.jsp      # Main landing page
|└── sql/
|   |└── olx_db.sql     # Database schema
```

---

## Usage

1. **User Registration:**
   - New users can register for an account via the sign-up page.
2. **Post an Ad:**
   - Registered users can post ads with details like product name, description, price, and category.
3. **Search and Browse:**
   - Use the search bar or filters to find desired products.
4. **Admin Panel:**
   - Accessible by admin accounts for managing users and products.

---

## Contributing
Contributions are welcome! If you have ideas for improvements or encounter any issues, please:
- Fork the repository
- Make your changes
- Submit a pull request

---

## License
This project is licensed under the MIT License. See the `LICENSE` file for more details.

---

## Contact
For questions or feedback:
- **GitHub**: [subtlemortal](https://github.com/subtlemortal)
- **Email**: shantanuundepatil@gmail.com

