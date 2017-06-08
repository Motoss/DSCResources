configuration PrepareDCs
{
   param
    (

        [Int]$RetryCount=20,
        [Int]$RetryIntervalSec=30,
        [string]$SystemTimeZone
    )

    Import-DscResource -ModuleName xStorage
    Import-DscResource -ModuleName xTimeZone -ModuleVersion "1.6.0.0"
    Import-DscResource -ModuleName xWindowsUpdate -ModuleVersion "2.6.0.0"

    Node localhost
    {
        LocalConfigurationManager
        {
            RebootNodeIfNeeded = $true
        }

        xWaitforDisk Disk2
        {
                DiskNumber = 2
                RetryIntervalSec =$RetryIntervalSec
                RetryCount = $RetryCount
        }

        xDisk ADDataDisk
        {
            DiskNumber = 2
            DriveLetter = "F"
            DependsOn = "[xWaitForDisk]Disk2"
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

        xTimeZone TimeZone
        {

            IsSingleInstance = 'Yes'
            TimeZone = $SystemTimeZone

        }

        xWindowsUpdateAgent MuSecurityImportant
        {
            IsSingleInstance = 'Yes'
            UpdateNow        = $true
            Category         = @('Security','Important')
            Source           = 'MicrosoftUpdate'
            Notifications    = 'Disabled'
        }

   }
}
