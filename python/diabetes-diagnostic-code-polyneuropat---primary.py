# Ellie Paige, Jessica Barret, David Stevens, Ruth H Keogh, Michael J Sweeting, Irwin Nazareth, Irene Peterson, Angela M Wood, 2024.

import sys, csv, re

codes = [{"code":"C10FB11","system":"readv2"},{"code":"C10A400","system":"readv2"},{"code":"C108C11","system":"readv2"},{"code":"C109200","system":"readv2"},{"code":"C109B11","system":"readv2"},{"code":"F372.00","system":"readv2"},{"code":"C108C12","system":"readv2"},{"code":"C10EC11","system":"readv2"},{"code":"C106.13","system":"readv2"},{"code":"C10FB00","system":"readv2"},{"code":"C108C00","system":"readv2"},{"code":"C109B00","system":"readv2"},{"code":"C10EC00","system":"readv2"},{"code":"F372.11","system":"readv2"},{"code":"C10EC12","system":"readv2"},{"code":"C109B12","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('diabetes-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["diabetes-diagnostic-code-polyneuropat---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["diabetes-diagnostic-code-polyneuropat---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["diabetes-diagnostic-code-polyneuropat---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
