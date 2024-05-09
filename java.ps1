# Download Java installer
#$javaInstallerUrl = "https://javadl.oracle.com/webapps/download/AutoDL?BundleId=249833_43d62d619be4e416215729597d70b8ac"
$javaInstallerPath = "C:\Temp\JavaSetup8u411.exe"
#Invoke-WebRequest -Uri $javaInstallerUrl -OutFile $javaInstallerPath

# Install Java silently
Start-Process -FilePath $javaInstallerPath -ArgumentList "/s" -Wait

# Set Java environment variables
$javaInstallDir = "C:\Program Files\Java\jdk"
$env:JAVA_HOME = "$javaInstallDir"
$env:PATH = "$($env:PATH);$javaInstallDir\bin"

# Verify Java installation
java -version
