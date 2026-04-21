# IoT-Weather-Station-Arduino-NodeRed
Hybrid IoT Environmental Monitoring & Alert System
Arduino | Node-RED | MQTT | SQLite
📝 Overview
This project is a comprehensive Internet of Things (IoT) solution designed for real-time climate monitoring and automated alerting. It features a hybrid communication architecture using Serial (USB) for local data logging and MQTT for remote network-based control.

The system monitors Temperature, Humidity, and Heat Index, stores data in a local database with automated averaging, and triggers physical alerts via a cloud broker when specific thresholds are exceeded.

🚀 Key Features
Real-Time Visualization: Live charts and data tables via Node-RED Dashboard.

Intelligent Data Logging: * Saves measurements to an SQLite database every 60 seconds.

Automated Hourly Averages calculation using SQL triggers and Cron scheduling.

Hybrid Connectivity:

Local: Serial data transfer from Arduino to Node-RED.

Remote: MQTT protocol (Pub/Sub) via test.mosquitto.org for remote alerting.

Automated Response: The system monitors temperature and sends an alert command to the Arduino to light up a physical LED if the temperature exceeds 21°C.

🛠️ Hardware Stack
Microcontroller: Arduino Uno / Mega

Network: Ethernet Shield (W5100)

Sensor: DHT22 (High-accuracy Temperature & Humidity)

Actuators: LED (connected to Pin 5)

💻 Software Stack
Backend: Node-RED

Database: SQLite3

Protocol: MQTT & Serial (Baud rate: 9600)

Dashboard: Node-RED Dashboard (UI)

📂 Project Structure
arduino_iot_system.ino: The C++ source code for the Arduino, handling sensor reading and MQTT callbacks.

node_red_flow.json: The complete exported flow including parsing logic (Regex), database queries, and UI components.

database_schema.sql: (Optional) SQL commands used to initialize the measurements and hourly_averages tables.

⚙️ How it Works
Data Parsing: Node-RED receives raw strings from the Serial port and uses Regular Expressions (Regex) to extract numerical values.

State Management: The latest values are stored in the Flow Context to ensure data availability across different parts of the flow.

Analytics: Every hour, the system queries the database to calculate the mean temperature/humidity of the previous hour and updates a dedicated statistics table.

MQTT Alert Logic:

If Temperature > 21°C → Publish alert to real_unique_topic_1.

Arduino receives the message → Sets Pin 5 HIGH → Publishes LED_ON to real_unique_topic_2 for confirmation.

If Temperature <= 21°C → Publish stopalert → Sets Pin 5 LOW.

🔧 Installation
Arduino: Install DHT, Ethernet, and PubSubClient libraries. Upload the .ino file.

Node-RED: * Install nodes: node-red-node-serialport, node-red-dashboard, node-red-node-sqlite.

Import the iot_flow.json file.

Database: Ensure the SQLite path in the SQLite node is correctly configured on your machine.
