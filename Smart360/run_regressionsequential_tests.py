import subprocess
import os

# Directories and setup
output_dir = "results"
os.makedirs(output_dir, exist_ok=True)

# Define test suites and tagging options
all_tests_output = os.path.join(output_dir, "all_tests_output.xml")
regression_output = os.path.join(output_dir, "regression_output.xml")

# Run all tests
print("Running all test cases...")
subprocess.run(["robot", "--output", all_tests_output, "TestCases/"])
print("All test cases execution completed.")

# Run only regression tests
print("Running regression test cases...")
subprocess.run(["robot", "--output", regression_output, "--include", "Regression", "TestCases/"])
print("Regression test cases execution completed.")

# Generate reports
consolidated_output = os.path.join(output_dir, "consolidated_output.xml")
consolidated_report = os.path.join(output_dir, "report.html")
consolidated_log = os.path.join(output_dir, "log.html")

print("Generating consolidated report...")
subprocess.run([
    "rebot",
    "--output", consolidated_output,
    "--report", consolidated_report,
    "--log", consolidated_log,
    all_tests_output, regression_output
])
print(f"Consolidated report generated: {consolidated_report}")
