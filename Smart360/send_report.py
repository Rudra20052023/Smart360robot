import yagmail

# Email credentials
SENDER_EMAIL = "prashant.adlinge95@gmail.com"  # Replace with your email address
SENDER_PASSWORD = "lmhp hpcu gxya padx"  # Replace with your email password or app-specific password
RECIPIENT_EMAIL = "prashant.adalinge@bynry.io"  # Replace with the manager's email address

# File paths
REPORT_FOLDER = "Reports"
REPORT_FILE = f"{REPORT_FOLDER}/report.html"  # Path to the report file

try:
    # Initialize the yagmail SMTP client
    yag = yagmail.SMTP(SENDER_EMAIL, SENDER_PASSWORD)

    # Email details
    subject = "Test Automation Report"
    body = "Please find attached the latest test automation report."

    # Send the email with the report as an attachment
    yag.send(
        to=RECIPIENT_EMAIL,
        subject=subject,
        contents=body,
        attachments=[REPORT_FILE]
    )
    print("Email sent successfully!")

except Exception as e:
    print(f"Failed to send email: {e}")
