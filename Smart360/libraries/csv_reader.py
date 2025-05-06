import csv

def read_csv(file_path="TestData/testdata.csv"):
    """Reads a CSV file and returns a list of dictionaries."""
    with open(file_path, mode='r') as file:
        reader = csv.DictReader(file)
        return [row for row in reader]
