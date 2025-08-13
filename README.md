README – IPL JSON to MySQL Database Project

Project Name: IPL Cricket Data Loader
Author: Anton Sam
Date: August 2025

Overview:
This project reads IPL cricket match data from a JSON file (merged_ipl.json) and stores it into a MySQL database in a structured relational format.
It uses Python with the mysql.connector module to create the database, generate all necessary tables, and insert match, team, player, and ball-by-ball delivery details.

Project Structure:
1. CricketIplDB Class
   - Creates the MySQL database (Cricket_Ipl).
   - Connects to the database.
   - Creates the following tables:
     - match_info – Stores general match details.
     - teams – Stores team names for each match.
     - players – Stores players for each team.
     - officials – Stores match officials.
     - innings – Stores innings details for each match.
     - overs – Stores over details for each inning.
     - deliveries – Stores ball-by-ball delivery data.

2. CricketIplDataInserter Class
   - Reads JSON data from the given file path.
   - Inserts match info, team data, player details, officials, innings, overs, and deliveries into respective tables.
   - Handles optional or missing data gracefully.

Prerequisites:
- Python 3.x
- MySQL Server / TiDB Cloud (compatible with MySQL syntax)
- Required Python library:
  pip install mysql-connector-python
- Valid IPL JSON data file (merged_ipl.json)

Database Details:
Database Name: Cricket_Ipl
Tables:
- match_info – Match-level details (city, venue, date, etc.)
- teams – Team names linked to match_id
- players – Player names linked to match_id and team
- officials – Umpires and referees
- innings – Each inning's details
- overs – Overs in each inning
- deliveries – Ball-by-ball delivery details

How to Run:
1. Update the constants in the script with your MySQL/TiDB credentials and file path:
   HOST = "your_host"
   USER = "your_user"
   PASSWORD = "your_password"
   PORT = 4000  # or your MySQL port
   DATABASE = "Cricket_Ipl"
   JSON_PATH = r"path_to_your_merged_ipl.json"

2. Run the script:
   python your_script_name.py

3. The script will:
   - Create the database (if not already exists).
   - Create all required tables.
   - Insert data from the JSON file into the database.

Error Handling:
- Skips malformed innings, overs, or deliveries with a warning message.
- Rolls back transaction on any error for a match.

Output:
- ✅ Messages for successful match data insertion.
- ❌ Error messages for problematic matches.
- Final success message:
  🎯 All tables created and data inserted successfully!

Example JSON Input Structure:
{
  "info": {
    "city": "Mumbai",
    "venue": "Wankhede Stadium",
    "dates": ["2022-05-10"],
    "teams": ["Mumbai Indians", "Chennai Super Kings"],
    "players": {
      "Mumbai Indians": ["Player1", "Player2"],
      "Chennai Super Kings": ["PlayerA", "PlayerB"]
    }
  },
  "innings": [
    {
      "team": "Mumbai Indians",
      "overs": [
        {
          "over": 1,
          "deliveries": [
            {"batter": "Player1", "bowler": "PlayerA", "runs": {"batter": 4, "total": 4}}
          ]
        }
      ]
    }
  ]
}
