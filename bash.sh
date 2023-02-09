#!/bin/bash

# Download the Dynatrace Agent
curl -O https://files.dynatrace.com/downloads/OnPrem/dynaTrace/7.5/7.5.0.11029/dynatrace-agent-7.5.0.11029-linux-x86-64.sh

# Make the script executable
chmod +x dynatrace-agent-7.5.0.11029-linux-x86-64.sh

# Install the Dynatrace Agent
./dynatrace-agent-7.5.0.11029-linux-x86-64.sh ADOPT_SETTINGS="-dtenv=<your_dynatrace_environment_id> -dtserver=<your_dynatrace_server_hostname> -apiToken=<your_dynatrace_api_token>"

# Start the Dynatrace Agent
systemctl start dynatrace-agent


# You can use the AWS CLI or the AWS Systems Manager console to run this script on your EC2 instance. 
# Simply replace <your_dynatrace_environment_id>, <your_dynatrace_server_hostname>, and 
# <your_dynatrace_api_token> with the appropriate values for your Dynatrace environment.

# This script downloads the Dynatrace Agent installer, makes it executable, and runs the installation script. 
# It then configures the Dynatrace Agent to connect to your Dynatrace environment using the specified environment ID, 
# API token, and hostname. Finally, it starts the Dynatrace Agent service.

# Note: The specific steps to deploy the Dynatrace Agent using SSM may vary depending on the version of Dynatrace and 
# AWS that you are using. Please refer to the Dynatrace documentation for the most up-to-date information on deploying agents using SSM.



