from dotenv import load_dotenv
import os

load_dotenv()

JIRA_USERNAME = os.getenv("JIRA_USERNAME")
JIRA_FULL_NAME = os.getenv("JIRA_FULL_NAME")
JIRA_PASSWORD = os.getenv("JIRA_PASSWORD")
SITE_URL = os.getenv("SITE_URL")

print(JIRA_PASSWORD)
print(JIRA_USERNAME)
print(SITE_URL)