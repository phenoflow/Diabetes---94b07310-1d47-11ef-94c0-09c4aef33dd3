# Ellie Paige, Jessica Barret, David Stevens, Ruth H Keogh, Michael J Sweeting, Irwin Nazareth, Irene Peterson, Angela M Wood, 2024.

import sys, csv, re

codes = [{"code":"F372.12","system":"readv2"},{"code":"C10EJ12","system":"readv2"},{"code":"C10FH00","system":"readv2"},{"code":"F372200","system":"readv2"},{"code":"C108200","system":"readv2"},{"code":"C106y00","system":"readv2"},{"code":"C108J00","system":"readv2"},{"code":"C10EJ00","system":"readv2"},{"code":"C109H12","system":"readv2"},{"code":"C10EJ11","system":"readv2"},{"code":"C108J12","system":"readv2"},{"code":"M271100","system":"readv2"},{"code":"C10FH11","system":"readv2"},{"code":"C108J11","system":"readv2"},{"code":"C10E212","system":"readv2"},{"code":"C106.12","system":"readv2"},{"code":"C109H11","system":"readv2"},{"code":"C109H00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('diabetes-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["diabetes-diagnostic-code-neuro---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["diabetes-diagnostic-code-neuro---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["diabetes-diagnostic-code-neuro---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
