# Ellie Paige, Jessica Barret, David Stevens, Ruth H Keogh, Michael J Sweeting, Irwin Nazareth, Irene Peterson, Angela M Wood, 2024.

import sys, csv, re

codes = [{"code":"2BBK.00","system":"readv2"},{"code":"9m0A.00","system":"readv2"},{"code":"C10E711","system":"readv2"},{"code":"C109611","system":"readv2"},{"code":"9m05.00","system":"readv2"},{"code":"9m00.00","system":"readv2"},{"code":"C109600","system":"readv2"},{"code":"C10E712","system":"readv2"},{"code":"9m04.00","system":"readv2"},{"code":"F420z00","system":"readv2"},{"code":"8I3X.00","system":"readv2"},{"code":"2BBJ.00","system":"readv2"},{"code":"C108712","system":"readv2"},{"code":"68A7.00","system":"readv2"},{"code":"C10E700","system":"readv2"},{"code":"C109612","system":"readv2"},{"code":"F420.00","system":"readv2"},{"code":"2BBo.00","system":"readv2"},{"code":"9m01.00","system":"readv2"},{"code":"9m06.00","system":"readv2"},{"code":"C108711","system":"readv2"},{"code":"C108700","system":"readv2"},{"code":"C10F611","system":"readv2"},{"code":"C10F600","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('diabetes-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["diabetes-diagnostic-code-retinop---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["diabetes-diagnostic-code-retinop---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["diabetes-diagnostic-code-retinop---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
