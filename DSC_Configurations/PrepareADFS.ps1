configuration PrepareADFS
{
   param
    (

        [Int]$RetryCount=20,
        [Int]$RetryIntervalSec=30,
        [string]$SystemTimeZone
    )

    Import-DscResource -ModuleName xStorage, xTimeZone


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

        WindowsFeature ADFSInstall
        {
            Ensure = "Present"
            Name = "AD-Federation"

        }

        xTimeZone TimeZone
        {

            IsSingleInstance = 'Yes'
            TimeZone = $SystemTimeZone

        }


   }
}
