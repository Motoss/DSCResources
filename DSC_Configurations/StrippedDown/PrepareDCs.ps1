configuration PrepareDCs
{
   param
    (

        [Int]$RetryCount=20,
        [Int]$RetryIntervalSec=30
    )



    Node localhost
    {
        LocalConfigurationManager
        {
            RebootNodeIfNeeded = $true
        }


        WindowsFeature ADDSInstall
        {
            Ensure = "Present"
            Name = "AD-Domain-Services"
        }

        WindowsFeature ADDSTools
        {
            Ensure = "Present"
            Name = "RSAT-ADDS-Tools"
            DependsOn = "[WindowsFeature]ADDSInstall"
        }

        WindowsFeature ADAdminCenter
        {
            Ensure = "Present"
            Name = "RSAT-AD-AdminCenter"
            DependsOn = "[WindowsFeature]ADDSTools"
        }

   }
}
