# mvvm-r-template Installer

## Description
This repository provides a custom `Module MVVM.xctemplate` for Xcode, designed to simplify the creation of MVVM modules in your projects. It also includes an `install.swift` script to automate the installation process.

---

## Installation Guide

### **Step 1: Clone the Repository**
First, you need to clone the repository to your local machine. Open your terminal and run the following commands:
```bash
git clone https://github.com/vantien2905/mvvm-r-template.git
cd mvvm-r-template
```
### **Step 2: Install the Template**
Run the install.swift script included in the repository to copy the template into your Xcode templates folder:
```bash
swift install.swift
```
What the script does:

Creates the necessary directory in your Xcode folder for custom templates (if it doesn’t already exist).
Removes any existing version of the Module MVVM.xctemplate.
Copies the latest Module MVVM.xctemplate from this repository to the Xcode templates folder.
Script output: You’ll see messages in your terminal confirming each step, such as:

✅ Created destination folder...

♻️ Removed existing template...

🎉 Template installed successfully at...

### **Step 3: Verify the Installation**
After the script has finished running, verify that the template is available in Xcode:

Open Xcode.
Go to `File > New > File....`
In the dialog box, find the Custom Templates section.
Look for the `Module MVVM` template and select it.
Note: If you don’t see the template:

Double-check that steps 1 and 2 were completed correctly.
Restart Xcode if it was open during installation.
