### APPEX ###
# Mixed Reality for Meta Quest Occulos
Get-AppXPackage *Microsoft.MixedReality.Portal* -AllUsers | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}
