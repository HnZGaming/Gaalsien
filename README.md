# TorchServer

Standard Torch server setup.

## Installing VSCode

This project uses VSCode to better navigate the mess of folders.

```powershell
winget install --id Microsoft.VisualStudioCode -e -h --accept-package-agreements
```

```powershell
code --install-extension ms-vscode.PowerShell
```

```powershell
code .
```

## Installing Torch

Open the terminal in VSCode.

```powershell
. './Scripts/DownloadTorch.ps1'
```

Press `F5` to launch Torch and start downloading the SE dedi server. This may take some minutes. 

Upon GUI startup, you'll see a warning in the log view:
> 03:36:14.1209 [WARN]   InstanceManager: No worlds found in the current instance C:\torch-server\Instance.

Close the app.

## Setting Up Game World

Under `Content/CustomWorlds`, find the world that you want to start with; let's say `Star System`.

```powershell
. ./Scripts/CopyWorld.ps1 "Star System"
```

`Star System` is now copied over to the instance folder.

```powershell
# Change the world name to whatever you want
. ./Scripts/RenameWorld.ps1 "Foo"
```

**TODO: Support multiple world saves.**

## Configure Torch

Open Torch by `F5` and apply your configuration.

## Auto Restart

To recover from silent crashes, edit `.vscode/launch.json` as follows:

```diff
- "script": "./Torch.Server.exe",
+ "script": "./Scripts/AutoRestart.ps1",
```

## Scripts

Open the terminal on VSCode.

```powershell
# Renames the world to "Foo"
# TODO Support multiple world saves
. ./Scripts/RenameWorld.ps1 "Foo"
```

```powershell
# Fix absolute path of the installation
. ./Scripts/FixPath.ps1
```