import pandas as pd

ports = pd.read_csv('ports_data.csv', delimiter=',')

with open('insert_ports.sql', 'w', encoding='utf-8') as sql_file:
    sql_file.write("INSERT INTO\n")
    sql_file.write("    port (port_name_ru, port_name_en, port_code, latitude, longitude)\n")
    sql_file.write("VALUES\n")
    
    ports_data = []
    for index, row in ports.iterrows():

        latitude = float(row['Latitude'])
        longitude = float(row['Longitude'])
        is_eurasia = (10 <= latitude <= 80) and (-20 <= longitude <= 180)
        is_north_africa = (20 <= latitude <= 35) and (20 <= longitude <= 40)
        if not (is_eurasia or is_north_africa):
            continue

        port_name_ru = "-" 
        port_name_en_raw = str(row['Region Name'])
        if '--' in port_name_en_raw:
            port_name_en = port_name_en_raw.split('--')[0].strip()
        else:
            port_name_en = port_name_en_raw.strip()
        port_name_en = port_name_en if port_name_en else "-"

        main_port_name = str(row['Main Port Name']).strip()
        alternate_port_name = str(row['Alternate Port Name']).strip()
        if main_port_name:
            port_name_en = f"{port_name_en}, {main_port_name}"
        elif alternate_port_name:
            port_name_en = f"{port_name_en}, {alternate_port_name}"
        else: port_name_en = f"{port_name_en}, -"
        port_name_en = port_name_en.replace("'", "''") 

        port_code = str(row['UN/LOCODE']).strip()
        if not port_code or port_code == 'nan':
            port_code = '-'
        else:
            port_code = port_code.replace(' ', '').replace('"', '')
        
        port = f"    ('{port_name_ru}','{port_name_en}','{port_code}',{latitude},{longitude})"
        ports_data.append(port)
    
    sql_file.write(",\n".join(ports_data))
    sql_file.write(";\n")