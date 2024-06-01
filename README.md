# AWAI - AspectOS Winget App Installer

AWAI (AspectOS Winget App Installer) is a convenient tool designed to simplify the installation of applications on your system using the Windows Package Manager (Winget). With AWAI, you can automate the installation process by creating simple configuration files containing the names of the desired applications, and AWAI will take care of the rest.

## How It Works

AWAI operates by parsing configuration files (referred to as AWAI files) that contain the names of the applications you wish to install. Each line in the AWAI file represents a separate application. For instance, if you want to install Discord and Steam using Winget, you would create an AWAI file with the following content:

```
Discord Discord
Valve Steam
```

Upon executing AWAI with this file, it will automatically download and install Discord using Winget, saving you the hassle of manually searching for and installing the application.

## Features

- **Automated Installation**: AWAI simplifies the installation process by automating the download and installation of applications using Winget.
- **Multiple Packages**: AWAI supports installing multiple packages at once by specifying them on separate lines within the AWAI file.
- **Single Package Installation**: In addition to installing applications from AWAI files, you can also install single packages directly from the app interface.

## Compatibility

AWAI is compatible with Windows systems that support the Windows Package Manager (Winget) (Windows 10 1709 or above). Ensure that you have Winget installed and properly configured on your system before using AWAI.

## Contributing

If you encounter any issues or have suggestions for improving AWAI, feel free to contribute by submitting a pull request or opening an issue on the [GitHub repository](https://github.com/example/awai).

## License

All rights reserved.

---

Enjoy the seamless installation experience with AWAI! If you have any questions or need assistance, don't hesitate to reach out.
