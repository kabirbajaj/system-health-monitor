import datetime

input_file = "system_health.log"
output_file = "final_health_report.txt"

with open(input_file, "r") as file:
    data = file.read()

with open(output_file, "w") as report:
    report.write("SYSTEM HEALTH SUMMARY REPORT\n")
    report.write("-----------------------------\n")
    report.write(f"Generated on: {datetime.datetime.now()}\n\n")

    report.write(data)

print("Final health report generated successfully.")


