# RPG-calling-Python

This project demonstrates a method to call Python from IBM’s ILE-RPG, including parameters and return values.  The heavy lifting is done with Scott Klement’s UNIXCMD library (https://www.scottklement.com/unixcmd/).  The input parameters are in the form of command line arguments.  The return values are via stdout.  Multiple return rows are supported, and they can take the form of raw text, JSON, comma-separated, etc.
