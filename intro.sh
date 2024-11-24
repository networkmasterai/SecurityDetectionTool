#!/bin/bash

echo "=============================================="
echo "         VULNERABILITY-SCANNING-TOOL          "
echo "=============================================="
echo "OVERVIEW:"
echo "This project is a Python-based vulnerability scanner with a Tkinter GUI."
echo "It allows users to scan a specified IP address or domain for open ports,"
echo "detect services and their versions, and check for common misconfigurations."
echo "The tool utilizes multi-threading for efficient port scanning and integrates"
echo "with the nmap library for service detection."
echo
echo "=============================================="
echo "FEATURES:"
echo "1. Port Scanning: Uses multi-threading to scan a range of ports on the target IP/domain efficiently."
echo "2. Service Detection: Uses nmap to identify services running on open ports and their versions."
echo "3. Configuration Analysis: Checks for common misconfigurations such as weak SSH configurations."
echo "4. Tkinter GUI: Provides a user-friendly graphical interface for input and output."
echo
echo "=============================================="
echo "KEY COMPONENTS:"
echo "1. Port Scanning: Scans ports using Python's socket library with multi-threading to enhance performance."
echo "2. Service Detection: Uses the nmap library to detect services and versions on open ports."
echo "3. Configuration Checks: Runs checks for SSH configuration vulnerabilities and placeholders for SSL/TLS checks."
echo "4. GUI: Built with Tkinter, the application features fields for entering the target and port range, and a button to start the scan."
echo
echo "=============================================="
echo "End of Project Overview"
echo "=============================================="
