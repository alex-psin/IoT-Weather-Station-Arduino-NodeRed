# 🔄 Node-RED Flow

## 📌 Overview
This Node-RED flow is responsible for processing, storing, and visualizing IoT sensor data received from an Arduino device.

It acts as the central logic layer of the system.

---

## ⚙️ Responsibilities
- Receive sensor data via Serial (Arduino)
- Parse incoming data (temperature, humidity, heat index)
- Store data in SQLite database
- Compute hourly averages
- Provide real-time dashboard visualization
- Communicate with MQTT broker for alerts and device control

---

## 🔌 Flow Components

### 1. Serial Input
Reads raw data from the Arduino via serial port.

### 2. Data Processing
- Parses incoming messages
- Extracts sensor values
- Formats data for storage

### 3. Database (SQLite)
- Inserts measurements every minute
- Stores hourly averages

### 4. Dashboard
- Displays real-time values
- Shows historical data

### 5. MQTT Communication
- Publishes alerts when thresholds are exceeded
- Sends control commands to Arduino (e.g. LED)

---

## 📥 Import Instructions
1. Open Node-RED
2. Go to Menu → Import
3. Select `/node-red/flow.json`

---

## 🧩 Required Nodes
Make sure the following Node-RED packages are installed:
- node-red-dashboard
- node-red-node-serialport
- node-red-node-sqlite

---

## ⚠️ Notes
- Configure the correct serial port (e.g. `/dev/ttyUSB0` or `COM3`)
- Ensure MQTT broker is reachable
- Database file is created automatically if not present

---

## 🛠️ Customization
- Modify thresholds for alerts in function nodes
- Adjust sampling rate from Arduino
- Extend dashboard with additional charts

---

## 📡 MQTT Topics (example)
- `iot/sensor/data`
- `iot/device/control`
- `iot/alerts`

---

## 🎯 Purpose
This flow demonstrates real-time data processing and integration between embedded devices, databases, and messaging systems in an IoT environment.
