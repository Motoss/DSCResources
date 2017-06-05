Configuration PrepareWAP
{

   Import-DscResource -ModuleName PSDesiredStateConfiguration

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



    }

}