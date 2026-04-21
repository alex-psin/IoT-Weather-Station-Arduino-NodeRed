# 🔌 Hardware Wiring

## 📌 Components
- Arduino
- DHT22 Sensor
- LED (for alerts)

## 🔗 Connections

### DHT22
- VCC → 5V
- GND → GND
- DATA → Digital Pin (e.g. D2)

### LED
- Anode → Digital Pin (e.g. D13)
- Cathode → GND (via resistor)

## ⚠️ Notes
- Use a pull-up resistor (10kΩ) for DHT22 data pin
- Ensure stable power supply
