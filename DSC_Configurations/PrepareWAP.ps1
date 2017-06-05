Configuration PrepareWAP
{
   param
    (

        [Int]$RetryCount=20,
        [Int]$RetryIntervalSec=30,
        [string]$SystemTimeZone
    )
   Import-DscResource -ModuleName PSDesiredStateConfiguration, xTimeZone

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


    }

}