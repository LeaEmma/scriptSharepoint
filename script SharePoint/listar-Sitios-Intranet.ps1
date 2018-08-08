 #Add SharePoint PowerShell SnapIn if not already added
 if ((Get-PSSnapin "Microsoft.SharePoint.PowerShell" -ErrorAction SilentlyContinue) -eq $null) {
 Add-PSSnapin "Microsoft.SharePoint.PowerShell"
 } 
 
 Get-SPWeb -site http://gesadmdesa.trabajo.gob.ar -Limit All | Select Title, @{Name="Url";Expression={ $_.RootFolder.ServerRelativeUrl }}