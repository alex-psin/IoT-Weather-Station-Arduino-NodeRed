-- Create the main measurements table
CREATE TABLE IF NOT EXISTS measurements (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    timestamp TEXT,
    temperature REAL,
    humidity REAL,
    heatindex REAL
);

-- Create the hourly averages table
CREATE TABLE IF NOT EXISTS hourly_averages (
    hour_start TEXT PRIMARY KEY,
    avg_temperature REAL,
    avg_humidity REAL,
    avg_heatindex REAL
);
