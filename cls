#!/bin/bash

# Run "p4 changes --me -L" and format the output
p4 changes --me -L | awk '
    /^[Change]/ {
        if (cl && desc != "") print cl " " desc;  # Print the previous changelist with its first non-empty description line
        cl = $2 " " $4;  # Capture CL number and date
        desc = "";
        next;
    }
    NF && desc == "" {  # Capture only the first non-empty description line
        desc = $0;
    }
    # Check for lines starting with "JIRA:" or "BUG:" (after stripping leading whitespace)
    /^[[:space:]]*(JIRA:|BUG:)/ {
        desc = desc " " $0;  # Append the JIRA/BUG line to the description
    }
    END {
        if (cl && desc != "") print cl " " desc;  # Print the last changelist entry
    }
'

