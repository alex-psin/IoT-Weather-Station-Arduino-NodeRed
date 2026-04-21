# 🌦️ IoT Weather Station & Alert System
### Arduino | Node-RED | MQTT | SQLite

---

## 📝 Overview
This project is a comprehensive **Internet of Things (IoT)** solution designed for real-time climate monitoring and automated alerting. It features a **hybrid communication architecture**:
* **Local:** Serial (USB) for high-frequency data logging.
* **Remote:** MQTT for network-based control and real-time alerts.

The system monitors **Temperature**, **Humidity**, and **Heat Index**, stores data in an **SQLite** database, and triggers physical hardware alerts via a cloud broker.

---

## 🚀 Key Features
* **Real-Time Visualization:** Live charts and data tables via a custom Node-RED Dashboard.
* **Intelligent Logging:** * Saves measurements to SQLite every **60 seconds**.
    * Automated **Hourly Averages** calculation using SQL logic and Cron scheduling.
* **Hybrid Connectivity:** Dual-channel communication (Serial + Ethernet/MQTT).
* **Automated Response:** Smart monitoring that triggers a physical LED alert if the temperature exceeds **21°C**.

---

## 🛠️ Tech Stack

### Hardware
* **Microcontroller:** Arduino Uno / Mega
* **Network:** Ethernet Shield (W5100)
* **Sensor:** DHT22 (High-accuracy Temperature & Humidity)
* **Actuators:** LED (connected to Digital Pin 5)

### Software
* **Backend:** Node-RED (Flow-based programming)
* **Database:** SQLite3
* **Protocols:** MQTT (test.mosquitto.org) & Serial (9600 Baud)
* **Dashboard:** Node-RED Dashboard UI

---

## ⚙️ How It Works

1.  **Data Acquisition:** Arduino reads the DHT22 and sends a formatted string via Serial.
2.  **Parsing:** Node-RED uses **Regular Expressions (Regex)** to extract values from the raw Serial string.
3.  **Storage:** * Current data is saved in `measurements` table.
    * Every hour, a function calculates the mean and populates the `hourly_averages` table.
4.  **Alert Logic:**
    * **Temp > 21°C:** Node-RED publishes `alert` → Arduino turns **LED ON**.
    * **Temp ≤ 21°C:** Node-RED publishes `stopalert` → Arduino turns **LED OFF**.

---

## 📂 Project Structure
| File | Description |
| :--- | :--- |
| `arduino_iot_system.ino` | Arduino source code (C++) for sensors and MQTT. |
| `node_red_flow.json` | The complete Node-RED flow export. |
| `database_schema.sql` | SQL commands to initialize the SQLite tables. |

---

## 🔧 Installation & Setup

### 1. Arduino Configuration
* Install libraries: `DHT`, `Ethernet`, and `PubSubClient`.
* Upload `arduino_iot_system.ino` to your board.

### 2. Node-RED Setup
* Install the following nodes via "Manage Palette":
    * `node-red-node-serialport`
    * `node-red-dashboard`
    * `node-red-node-sqlite`
* Import the `node_red_flow.json` file.

### 3. Database
## 🚧 Ongoing Development
This project is actively being developed and improved to simulate a more production-ready IoT system.

---

## 📈 Future Improvements

### 🔌 Hardware & Embedded
- Replace Serial communication with WiFi (ESP32)
- Optimize firmware for real-time performance
- Add low-power mode for energy efficiency

### 📡 Communication
- Implement secure MQTT (TLS encryption)
- Improve topic structure for scalability
- Add device authentication

### 📊 Data & Visualization
- Add advanced analytics (trends, anomaly detection)
- Improve dashboard UI/UX

### 🛠️ System Design
- Containerize backend services (Docker)
- Add logging & monitoring


---
* Initialize your SQLite database using the provided schema.
* Update the SQLite node in Node-RED with your local `.db` file path.
