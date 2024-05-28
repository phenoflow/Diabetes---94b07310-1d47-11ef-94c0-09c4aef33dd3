# Ellie Paige, Jessica Barret, David Stevens, Ruth H Keogh, Michael J Sweeting, Irwin Nazareth, Irene Peterson, Angela M Wood, 2024.

import sys, csv, re

codes = [{"code":"C108B11","system":"readv2"},{"code":"C10EB11","system":"readv2"},{"code":"C108B00","system":"readv2"},{"code":"C10EB12","system":"readv2"},{"code":"C109A00","system":"readv2"},{"code":"C108B12","system":"readv2"},{"code":"F3y0.00","system":"readv2"},{"code":"C10EB00","system":"readv2"},{"code":"C10FA00","system":"readv2"},{"code":"C10FA11","system":"readv2"},{"code":"C109A12","system":"readv2"},{"code":"C109A11","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('diabetes-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["diabetes-diagnostic-code-mononeuropat---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["diabetes-diagnostic-code-mononeuropat---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["diabetes-diagnostic-code-mononeuropat---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
