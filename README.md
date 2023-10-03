# Attune2Diva

Attune2Diva is a specialized tool crafted to streamline the conversion of FCS files from the **ThermoFisher Attune NxT format** to a format that is compatible with **BD FACSDiva software**.

## Features :sparkles:

- **File Upload**: Easily upload FCS files from your local machine.
- **Automated Conversion**: Once uploaded, the tool efficiently processes and converts the files.
- **Download Converted Files**: After conversion, download the files directly to your machine.
- **Activity Log**: Review a detailed log of actions taken during your session.

## Getting Started :rocket:

### Using Docker

To quickly set up and run Attune2Diva, you can use our Docker container:

```bash
docker pull georgealehandro/attune2diva:latest
docker run -p 8080:8080 georgealehandro/attune2diva:latest
```
This will pull the latest version of Attune2Diva and run it on port 8080. Navigate to http://localhost:8080 in your browser to start using the tool.
