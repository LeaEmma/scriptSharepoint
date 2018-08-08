Add-PsSnapin "Microsoft.SharePoint.PowerShell"

 $site = Get-SPSite "http://dev-sp-2010:1000/sites/sharepointfix/"
 $termStoreName = "Managed Metadata Service"
 $termStoreGroupName = "SharePointFixPortal"

 set-variable -option constant -name out -value "C:\PrintAllManagedMetaDataTermSets.csv"

 $session = new-object Microsoft.SharePoint.Taxonomy.TaxonomySession($site)
 $termStore = $session.TermStores[$termStoreName]
 $termStoreGroup = $termStore.Groups[$termStoreGroupName]

 # Prints all Managed Metadata Termsets in the .csv file at the configured location
 foreach($termsets in $termStoreGroup.TermSets)
 {
 "Termset Name: " + $termsets.Name + ", Description: " + $termsets.Description + ", Group: " + $termsets.Group + ", ID: " +$termsets.Id + ", Available for Tagging: " + $termsets.IsAvailableForTagging + ", Is Open for Term Creation : " + $termsets.IsOpenForTermCreation | Out-File $out -append;

 foreach($terms in $termsets.GetAllTerms())
 {
 "Term Name:" + $terms.Name | Out-File $out -append
 }
 }

 $site.Dispose()

 Echo "Finished!"
 Echo "Managed metadata termsets printed at:" $out

 Remove-PsSnapin "Microsoft.SharePoint.Powershell"