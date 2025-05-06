# import subprocess
#
# # List of test suites to run in sequence
# test_suites = [
#     "TestCases/01_test_logintest.robot",
#     "TestCases/02_test_addpaymenttypetest.robot",
#     "TestCases/03_test_addpaymentsubtypetest.robot"
# ]
#
# for suite in test_suites:
#     print(f"Running test suite: {suite}")
#     subprocess.run(["robot", suite])
#     print(f"Completed test suite: {suite}")

import subprocess
import os

# List of test suites to run in sequence
test_suites = [
    "TestCases/01_test_logintest.robot",
    "TestCases/02_test_addpaymenttypetest.robot",
    "TestCases/03_test_addpaymentsubtypetest.robot"
]

# Directory to store individual outputs
output_dir = "results"
os.makedirs(output_dir, exist_ok=True)

# List to collect individual output files
output_files = []

for idx, suite in enumerate(test_suites, start=1):
    output_file = os.path.join(output_dir, f"output_{idx}.xml")
    print(f"Running test suite: {suite}")
    subprocess.run(["robot", "--output", output_file, suite])
    output_files.append(output_file)
    print(f"Completed test suite: {suite}")

# Merge all outputs into a single report
merged_output = os.path.join(output_dir, "output.xml")
merged_report = os.path.join(output_dir, "report.html")
merged_log = os.path.join(output_dir, "log.html")

subprocess.run(["rebot", "--output", merged_output, "--report", merged_report, "--log", merged_log] + output_files)

print(f"Consolidated report generated at: {merged_report}")
