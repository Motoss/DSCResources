Configuration PrepareWAP
{
   param
    (

        [Int]$RetryCount=20,
        [Int]$RetryIntervalSec=30,
        [string]$SystemTimeZone
    )
   Import-DscResource -ModuleName PSDesiredStateConfiguration
   Import-DscResource -ModuleName xTimeZone -ModuleVersion "1.6.0.0"
   Import-DscResource -ModuleName xWindowsUpdate -ModuleVersion "2.6.0.0"

    Node localhost
    {
        LocalConfigurationManager
        {
            RebootNodeIfNeeded = $true
        }

        WindowsFeature RemoteAccess1
        {
            Ensure = "Present"
            Name = "RemoteAccess"
            
        }
        WindowsFeature RemoteAccess2
        {
            Ensure = "Present"
            Name = "Web-Application-Proxy"
            
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