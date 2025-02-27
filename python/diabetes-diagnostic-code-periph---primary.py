# Ellie Paige, Jessica Barret, David Stevens, Ruth H Keogh, Michael J Sweeting, Irwin Nazareth, Irene Peterson, Angela M Wood, 2024.

import sys, csv, re

codes = [{"code":"C10FF11","system":"readv2"},{"code":"C107y00","system":"readv2"},{"code":"C107000","system":"readv2"},{"code":"C10EG11","system":"readv2"},{"code":"C107100","system":"readv2"},{"code":"C109F00","system":"readv2"},{"code":"C108G12","system":"readv2"},{"code":"C108G11","system":"readv2"},{"code":"C109F11","system":"readv2"},{"code":"G73y000","system":"readv2"},{"code":"C107.00","system":"readv2"},{"code":"C10EG00","system":"readv2"},{"code":"C109F12","system":"readv2"},{"code":"66Ac.00","system":"readv2"},{"code":"C10EG12","system":"readv2"},{"code":"C108G00","system":"readv2"},{"code":"C10FF00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('diabetes-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["diabetes-diagnostic-code-periph---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["diabetes-diagnostic-code-periph---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["diabetes-diagnostic-code-periph---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
