from dotenv import load_dotenv
import os

load_dotenv()

SITE_URL = os.getenv("SITE_URL")
JIRA_USERNAME = os.getenv("JIRA_USERNAME")
JIRA_FULL_NAME = os.getenv("JIRA_FULL_NAME")
JIRA_PASSWORD = os.getenv("JIRA_PASSWORD")
