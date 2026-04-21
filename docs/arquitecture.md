# 🏗️ System Architecture

## 📌 Overview
This system implements an end-to-end IoT pipeline for environmental monitoring.

## 🔁 Data Flow
1. Arduino reads data from DHT22 sensor
2. Data is sent via Serial to Node-RED
3. Node-RED processes and stores data in SQLite
4. Dashboard visualizes real-time data
5. MQTT enables bidirectional communication

## 🧩 Components
- **Arduino** → data acquisition
- **Node-RED** → processing & orchestration
- **SQLite** → storage
- **Dashboard** → visualization
- **MQTT Broker** → messaging layer

## 📡 Communication
- Serial (Arduino → Node-RED)
- MQTT (Node-RED ↔ Arduino)

## 🎯 Design Goals
- Real-time processing
- Modular architecture
- Easy extensibility
