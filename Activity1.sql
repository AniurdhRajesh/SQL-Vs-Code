var sqlite3 = require('sqlite3').verbose();

var db = new sqlite3.Database('mydatabase.db', (err) => {
  if (err) {
    console.error(err.message);
  } else {
    console.log('Connected to the SQLite database! 🎉');
  }
});

function createCoursesTable(callback) {
  db.run(`CREATE TABLE IF NOT EXISTS courses (
      id INTEGER PRIMARY KEY AUTOINCREMENT,  
      name TEXT NOT NULL,                
      duration INTEGER                    
    )`, (err) => {
    if (err) {
      console.error("Error creating the courses table:", err.message);
    } else {
      console.log("Courses table created successfully! 🏫");
      callback();
    }
  });
}

function insertCourses() {
  db.run(`INSERT INTO courses (name, duration) VALUES
      ('JavaScript Basics', 20),
      ('Python for Beginners', 15),
      ('Web Development', 40)`, (err) => {
    if (err) {
      console.error("Error inserting into the courses table:", err.message);
    } else {
      console.log("Inserted 3 courses into the courses table! 📝");
    }
    selectCourses();
  });
}

function selectCourses() {
  db.all(`SELECT * FROM courses`, (err, rows) => {
    if (err) {
      console.error("Error selecting from the courses table:", err.message);
    } else {
      console.log("Retrieved data from courses table: 📋");
      rows.forEach((row) => {
        console.log(`ID: ${row.id}, Name: ${row.name}, Duration: ${row.duration} hours`);
      });
    }
    closeDatabase();
  });
}

function alterCoursesTable() {
  db.run(`ALTER TABLE courses ADD COLUMN teacher TEXT`, (err) => {
    if (err) {
      console.error("Error altering the courses table:", err.message);
    } else {
      console.log("Added the 'teacher' column to the courses table!");
    }
  });
}

function dropCoursesTable() {
  db.run(`DROP TABLE IF EXISTS courses`, (err) => {
    if (err) {
      console.error("Error dropping the courses table:", err.message);
    } else {
      console.log("Courses table dropped successfully!");
    }
  });
}

function closeDatabase() {
  db.close((err) => {
    if (err) {
      console.error(err.message);
    } else {
      console.log('Closed the database connection! ✅');
    }
  });
}

createCoursesTable(insertCourses);
