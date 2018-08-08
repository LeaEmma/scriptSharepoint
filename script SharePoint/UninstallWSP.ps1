# Cargo los comandos de SharePoint para PowerShell
 if ((Get-PSSnapin "Microsoft.SharePoint.PowerShell" -ErrorAction SilentlyContinue) -eq $null) {
 Add-PSSnapin "Microsoft.SharePoint.PowerShell"
 } 
 
 #Enumera los trabajos corriendo
 #stsadm -o enumdeployments
 
 #Cancela los trabajos 
 #stsadm -o canceldeployment -id 4eafde8d-36e6-4e7c-9fba-ac799edf968e

 #Desinstala la solution
 #Uninstall-SPSolution -Identity mteyss.impresionagenda.wsp -AllWebApplications
 
 #Remueve la solution
 Remove-SPSolution -Identity mteyss.impresionagenda.wsp -force 