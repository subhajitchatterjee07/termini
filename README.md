# AI Query Script

This is a simple Bash script to interact with the Gemini API using a terminal command. It sends your question to the API and displays the response.

## Features
- Send natural language queries to the Gemini API.
- Outputs the API response in a readable format.
- Minimal dependencies (`curl` and optionally `jq` for better JSON parsing).

---

## Prerequisites

1. **API Key**: You need a Gemini API key. Replace `YOUR_API_KEY` in the script with your actual API key.
2. **Linux Terminal**: Ensure you're using a Linux terminal.
3. **Dependencies**:
   - `curl`: Pre-installed on most Linux systems.
   - `jq`: Optional but recommended for JSON parsing.

---

## Installation

1. **Clone or Download** the script to your system.
2. Open a terminal and navigate to your home directory:
   `cd ~`
3. Create the Script: Save the script in a file called ai.sh:
   `nano ai.sh`
4. Paste the script into the editor and save it.
5. Make the Script Executable:
   `chmod +x ai.sh`
6. Move the Script to Your PATH (Optional for easier usage):
  `sudo mv ai.sh /usr/local/bin/ai`
7. Get hacky in your terminal with:
   `ai "your_prompt_here"`

