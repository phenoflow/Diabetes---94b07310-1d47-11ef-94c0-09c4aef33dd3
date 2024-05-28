# Ellie Paige, Jessica Barret, David Stevens, Ruth H Keogh, Michael J Sweeting, Irwin Nazareth, Irene Peterson, Angela M Wood, 2024.

import sys, csv, re

codes = [{"code":"2BBX.00","system":"readv2"},{"code":"66At100","system":"readv2"},{"code":"R054300","system":"readv2"},{"code":"13B1.00","system":"readv2"},{"code":"8IAs.00","system":"readv2"},{"code":"66AA.11","system":"readv2"},{"code":"SL23z00","system":"readv2"},{"code":"2BBW.00","system":"readv2"},{"code":"66A5.00","system":"readv2"},{"code":"C10EF00","system":"readv2"},{"code":"42c..00","system":"readv2"},{"code":"F420400","system":"readv2"},{"code":"66A4.00","system":"readv2"},{"code":"66AJ.00","system":"readv2"},{"code":"C109E11","system":"readv2"},{"code":"9N2i.00","system":"readv2"},{"code":"66AJz00","system":"readv2"},{"code":"66At000","system":"readv2"},{"code":"66AI.00","system":"readv2"},{"code":"C109E00","system":"readv2"},{"code":"66AH.00","system":"readv2"},{"code":"ZLA2500","system":"readv2"},{"code":"66AK.00","system":"readv2"},{"code":"66AV.00","system":"readv2"},{"code":"66At011","system":"readv2"},{"code":"F440700","system":"readv2"},{"code":"2G5G.00","system":"readv2"},{"code":"C109E12","system":"readv2"},{"code":"C108F12","system":"readv2"},{"code":"F464000","system":"readv2"},{"code":"C104.11","system":"readv2"},{"code":"8A13.00","system":"readv2"},{"code":"C10EF11","system":"readv2"},{"code":"66AO.00","system":"readv2"},{"code":"C10FE11","system":"readv2"},{"code":"R054200","system":"readv2"},{"code":"8H2J.00","system":"readv2"},{"code":"C108F11","system":"readv2"},{"code":"66A3.00","system":"readv2"},{"code":"2BBL.00","system":"readv2"},{"code":"42W..00","system":"readv2"},{"code":"9b92000","system":"readv2"},{"code":"8CA4100","system":"readv2"},{"code":"13AB.00","system":"readv2"},{"code":"66AG.00","system":"readv2"},{"code":"N030011","system":"readv2"},{"code":"2G5A.00","system":"readv2"},{"code":"2G5K.00","system":"readv2"},{"code":"C10FE00","system":"readv2"},{"code":"66At111","system":"readv2"},{"code":"2G5B.00","system":"readv2"},{"code":"42WZ.00","system":"readv2"},{"code":"F35z000","system":"readv2"},{"code":"66AN.00","system":"readv2"},{"code":"66At.00","system":"readv2"},{"code":"66As.00","system":"readv2"},{"code":"M037200","system":"readv2"},{"code":"13AC.00","system":"readv2"},{"code":"2BBM.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('diabetes-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antidiabetic-diabetes-diagnostic-code---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antidiabetic-diabetes-diagnostic-code---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antidiabetic-diabetes-diagnostic-code---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
