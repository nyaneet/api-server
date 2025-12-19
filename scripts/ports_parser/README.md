# Ports Parser

A Python script for parsing ports from csv file.

## Getting Started

- Install Python in your IDE (instruction for vsCode https://code.visualstudio.com/docs/python/python-tutorial).
- Create a different directory and move there ports_parser and requirements.txt files.
- Create a virtual environment 
    python -m venv .venv
    source .venv/bin/activate  # Linux/MacOS
    or
    .venv\Scripts\activate     # Windows
- Install dependencies
    pip install -r requirements.txt
- Add ports_data.csv file to the same directory as a ports_parser.py. Link to the ports
csv file: https://msi.nga.mil/Publications/WPI or https://www.kaggle.com/datasets/mexwell/world-port-index
- Execute ports_parser.py 

## Description of the script operation

- Reads CSV file `ports_data.csv` containing port information
- Extracts and processes the following fields:
  - `Latitude` / `Longitude` - filtered to Eurasia and North Africa regions only
  - `Region Name` - splits on '--' if present, trims whitespace
  - `Main Port Name` / `Alternate Port Name` - appended to port name if available
  - `UN/LOCODE` - spaces and quotes removed, set to '-' if empty or 'nan'
- Default values used when data is missing:
  - Empty Russian names replaced with '-'
  - Empty English names replaced with '-'
  - Missing port codes replaced with '-'
- `port_name_en` and `port_name_ru` consist of `Region Name` and `Main Port Name` / `Alternate Port Name`
- Generates SQL `INSERT` statements into `insert_ports.sql` file
- All single quotes in text fields are escaped for SQL compatibility