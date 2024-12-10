# VulnHaven
Our sweet vulnerable baby.

Welcome to **VulnHaven**, an experimental and intentionally vulnerable project crafted to explore, test, and showcase vulnerability detection tools like the **VulnCheck GitHub Action** and **CLI**. VulnHaven is a fictional cyber fortress intentionally riddled with weaknesses, designed for researchers, developers, and hackers??? It is also entirely developed by AI. Sorry.

## ⚠️ Disclaimer

This repository is for **educational and testing purposes only**. The code within is deliberately insecure and must never be deployed in production environments. Use it exclusively in isolated testing setups. The creators bear no responsibility for any misuse or unintended consequences arising from the use of this project.

## 🌌 The Story of VulnHaven

VulnHaven was once a bustling digital metropolis, home to the brightest minds in cyber innovation. However, a catastrophic event—known as "The Breach"—exposed every weakness within its walls. Once thought impregnable, its infrastructure crumbled under the weight of outdated libraries, unsecured secrets, and poorly constructed defenses. Now, VulnHaven stands as a cautionary tale and a playground for those who dare to explore its vulnerabilities. 

Legend has it that anyone who masters the vulnerabilities of VulnHaven will gain the skills to protect even the most impenetrable systems. Will you rise to the challenge?

## 📋 Features

The project highlights several classes of vulnerabilities:

1. **SQL Injection**
2. **Cross-Site Scripting (XSS)**
3. **Command Injection**
4. **Insecure Dependencies**
5. **Hardcoded Secrets**
6. **Outdated Libraries**

These vulnerabilities mimic real-world scenarios, offering a realistic environment for testing and learning.

## 🛠️ Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/example/vulnhaven.git
   cd vulnhaven
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

3. Run the application:
   ```bash
   node app.js
   ```

4. Access the application at `http://localhost:3000`.

## 🚩 Known Vulnerabilities

### SQL Injection
- Vulnerable route: `/search`
- Description: Unsanitized user input is directly executed as part of an SQL query.

### Cross-Site Scripting (XSS)
- Vulnerable route: `/profile`
- Description: Allows malicious scripts due to unsanitized user-generated content.

### Command Injection
- Vulnerable route: `/execute`
- Description: Executes user input as shell commands without proper validation.

### Insecure Dependencies
- Dependency: `example-insecure-lib@1.0.0`
- Description: Contains known vulnerabilities from the CVE database.

### Hardcoded Secrets
- File: `config.js`
- Description: API keys and passwords are exposed in plain text.

### Outdated Libraries
- Library: `example-outdated-lib`
- Description: Relies on an outdated version with known vulnerabilities.

## 🔍 Testing with VulnCheck

Use the VulnCheck GitHub Action or CLI to scan this project for vulnerabilities:

### GitHub Action
Add the VulnCheck GitHub Action to your workflow file:
```yaml
name: Vulnerability Scan
on:
  push:
    branches:
      - main

jobs:
  scan:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v3
      - name: Run VulnCheck
        uses: VulnCheck/vulncheck-action@v1
        with:
          path: .
```

### CLI
Run the VulnCheck CLI tool locally:
```bash
vulncheck scan .
```

## 📜 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

**Reminder:** Proceed with caution in VulnHaven. May your journey through its broken code strengthen your cybersecurity skills!