# VULNERABILITY-SCANNING-TOOL

# Overview
This project is a Python-based vulnerability scanner with a Tkinter GUI. It allows users to scan a specified IP address or domain for open ports, detect services and their versions, and check for common misconfigurations. The tool utilizes multi-threading for efficient port scanning and integrates with the nmap library for service detection.

# Features
1. Port Scanning: Uses multi-threading to scan a range of ports on the target IP/domain efficiently.

2. Service Detection: Uses nmap to identify services running on open ports and their versions.

3. Configuration Analysis: Checks for common misconfigurations such as weak SSH configurations.

4. Tkinter GUI: Provides a user-friendly graphical interface for input and output.

# Key Components
1. Port Scanning: Scans ports using Python's socket library with multi-threading to enhance performance.

2. Service Detection: Uses the nmap library to detect services and versions on open ports.

3. Configuration Checks: Runs checks for SSH configuration vulnerabilities and placeholders for SSL/TLS checks.

4. GUI: Built with Tkinter, the application features fields for entering the target and port range, and a button to start the scan.

# usage
1. Install Dependencies:

      Ensure you have Python installed.

      Install required libraries.

         pip install python-nmap


          

2. Run the Application:
      Navigate to the project directory and run the script:

         python scanner.py

      The Tkinter GUI will appear, allowing you to input the target IP/domain and port range. Click "Start Scan" to initiate the scan.

4. Check Results:
 
      1. Results of the scan, including open ports, service information, and misconfigurations, will be displayed in the console.
   
      2. A message box will confirm the completion of the scan.

# Code Details

1.  scan_port(target, port, open_ports): Scans a single port on the target.
2. threader(target, open_ports): Handles multi-threaded scanning.
3. scan_ports(target, port_range): Manages the scanning of a range of ports.
4. detect_services(target, open_ports): Uses nmap to detect services and versions.
5. check_common_misconfigurations(target): Checks for common misconfigurations like weak SSH configurations.
6. vulnerability_scan(target, port_range): Orchestrates the scanning process and outputs results.
7. start_scan(): Triggered by the GUI to start the scan and display results using message boxes.

# Contributions
Contributions to improve or extend the functionality of this scanner are welcome. Please feel free to open issues or submit pull requests with enhancements or bug fixes.

#  Output Image

1. ![Screenshot 2024-08-27 100936](https://github.com/user-attachments/assets/4f0018b0-8148-429d-aa75-ad98eb026a52)

2. ![Screenshot 2024-08-27 101227](https://github.com/user-attachments/assets/e6375064-b4ab-4424-a882-44dd3f459170)





<!-- Proudly created with GPRM ( https://gprm.itsvg.in ) -->







