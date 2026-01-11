import pandas as pd
import re
from googletrans import Translator

ports = pd.read_csv('ports_data.csv', delimiter=',')
translator = Translator()

with open('insert_ports.sql', 'w', encoding='utf-8') as sql_file:
    sql_file.write("INSERT INTO\n")
    sql_file.write("    port (port_name_ru, port_name_en, port_code, latitude, longitude)\n")
    sql_file.write("VALUES\n")
    
    ports_data = []
    for index, row in ports.iterrows():
        
        # 1. forming latitude and longitude
        latitude = float(row['Latitude'])
        longitude = float(row['Longitude'])

        # 2.1 forming the name of the region
        region_name = row['Region Name']
        if pd.isna(region_name):
            region_name = '-'
        else:
            region_name = str(region_name)
            if '--' in region_name:
                region_name = region_name.split('--')[0].strip()
            else:
                region_name = region_name.strip()
            region_name = region_name if region_name else "-"

        # 2.2 forming the name of the port (main or alternate name)
        main_port_name = row['Main Port Name']
        if not pd.isna(main_port_name):
            main_port_name = str(main_port_name).strip()
        else:
            alternate_port_name = row['Alternate Port Name']
            if not pd.isna(alternate_port_name):
                alternate_port_name = str(alternate_port_name).strip()

        # 2.3 forming a joint port name (region_name + main/alternate_port_name)
        if main_port_name:
            port_name_en = f"{region_name}, {main_port_name}"
        elif alternate_port_name:
            port_name_en = f"{region_name}, {alternate_port_name}"
        else: port_name_en = f"{region_name}, -"
        port_name_en = port_name_en.replace("'", "''")

        # 2.4 forming a joint ru port name (translation of port_name_en)
        if port_name_en and port_name_en != "-":
            try:
                translated = translator.translate(port_name_en, src='en', dest='ru').text
                port_name_ru = translated
            except Exception as e:
                print(f"Ошибка перевода для '{port_name_en}': {e}")
                port_name_ru = port_name_en
        else:
            port_name_ru = "-"
        port_name_ru = port_name_ru.replace("'", "''")

        # 3. forming port code
        port_code = row['UN/LOCODE']
        if pd.isna(port_code):
            port_code = '-'
        else:
            port_code = str(port_code).strip()
            port_code = re.sub(r'[^a-zA-Zа-яА-ЯёЁ]', '', port_code)
            port_code = port_code if port_code else '-'
        
        port = f"    ('{port_name_ru}','{port_name_en}','{port_code}',{latitude},{longitude})"
        ports_data.append(port)
    
    sql_file.write(",\n".join(ports_data))
    sql_file.write(";\n")