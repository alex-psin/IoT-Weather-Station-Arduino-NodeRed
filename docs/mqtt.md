# 📡 MQTT Communication

## 📌 Overview
MQTT is used for lightweight communication between devices.

## 🧵 Topics

### Sensor Data
- `iot/sensor/data`

### Device Control
- `iot/device/control`

### Alerts
- `iot/alerts`

## 🔁 Communication Pattern
- Arduino publishes sensor data
- Node-RED subscribes and processes
- Node-RED publishes alerts
- Arduino receives commands (e.g. LED)

## 🎯 Benefits
- Low bandwidth usage
- Real-time communication
- Scalable architecture
