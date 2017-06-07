configuration PrepareADFS
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

     
        WindowsFeature ADFSInstall
        {
            Ensure = "Present"
            Name = "ADFS-Federation"

        }


   }
}
