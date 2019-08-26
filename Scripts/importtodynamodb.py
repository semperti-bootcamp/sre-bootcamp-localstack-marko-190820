from __future__ import print_function
import boto3
import json
import decimal
import os 
 
dynamodb = boto3.resource('dynamodb', region_name='us-east-1, endpoint=localhost:4569')
 
table = dynamodb.Table('talks')
 
rootdir = "/home/localstack//localstack//"
for subdir, dirs, files in os.walk(rootdir):
  for file in files:
    selected = subdir + "\\" + file
    try:
      with open(selected, encoding="UTF-8") as json_file:
        row = json.load(json_file, parse_float = decimal.Decimal)
        row['id_i'] = str(row['id_i'])
 
        #print(row)
 
        table.put_item(
          Item=row
        )
    except:
      print("error: " + selected)
