Configuration PrepareExch
{

   Import-DscResource -ModuleName PSDesiredStateConfiguration

    Node localhost
    {
        WindowsFeature ASHTTPActivate
        {
            Ensure = "Present"
            Name = "AS-HTTP-Activation"
        }

        WindowsFeature DeskExp
        {
            Ensure = "Present"
            Name = "Desktop-Experience"
        }

        WindowsFeature NetFrame45
        {
            Ensure = "Present"
            Name = "NET-Framework-45-Features"
        }

        WindowsFeature RPCproxy
        {
            Ensure = "Present"
            Name = "RPC-over-HTTP-proxy"
        }

        WindowsFeature RSATCluster1
        {
            Ensure = "Present"
            Name = "RSAT-Clustering"
            
        }
        WindowsFeature RSATCluster2
        {
            Ensure = "Present"
            Name = "RSAT-Clustering-CmdInterface"
            
        }
        WindowsFeature RSATCluster3
        {
            Ensure = "Present"
            Name = "RSAT-Clustering-Mgmt"
            
        }
        WindowsFeature RSATCluster4
        {
            Ensure = "Present"
            Name = "RSAT-Clustering-PowerShell"
            
        }

        WindowsFeature WebMgmtC
        {
            Ensure = "Present"
            Name = "Web-Mgmt-Console"
        }

        WindowsFeature WASPM
        {
            Ensure = "Present"
            Name = "WAS-Process-Model"
        }

        WindowsFeature ASPNet45
        {
            Ensure = "Present"
            Name = "Web-Asp-Net45"
            
        }
        WindowsFeature WebBasicAuth
        {
            Ensure = "Present"
            Name = "Web-Basic-Auth"
            
        }
        WindowsFeature WebClientAuth
        {
            Ensure = "Present"
            Name = "Web-Client-Auth"
            
        }
        WindowsFeature WebDigestAuth
        {
            Ensure = "Present"
            Name = "Web-Digest-Auth"
            
        }

        WindowsFeature WebDirB
        {
            Ensure = "Present"
            Name = "Web-Dir-Browsing"
        }
         WindowsFeature WebDynComp
        {
            Ensure = "Present"
            Name = "Web-Dyn-Compression"
            
        }

        WindowsFeature WebErrors
        {
            Ensure = "Present"
            Name = "Web-Http-Errors"
        }

        WindowsFeature WebLogging
        {
            Ensure = "Present"
            Name = "Web-Http-Logging"
        }

        WindowsFeature WebRedirect
        {
            Ensure = "Present"
            Name = "Web-Http-Redirect"
            
        }
        WindowsFeature WebTracing
        {
            Ensure = "Present"
            Name = "Web-Http-Tracing"
            
        }
        WindowsFeature WebISAPI
        {
            Ensure = "Present"
            Name = "Web-ISAPI-Ext"
            
        }

        WindowsFeature WebFilter
        {
            Ensure = "Present"
            Name = "Web-ISAPI-Filter"
        }

        WindowsFeature WebLgcyCon
        {
            Ensure = "Present"
            Name = "Web-Lgcy-Mgmt-Console"
        }

        WindowsFeature WebMeta
        {
            Ensure = "Present"
            Name = "Web-Metabase"
        }

        WindowsFeature WebMgmtCon
        {
            Ensure = "Present"
            Name = "Web-Mgmt-Console"
        }

        WindowsFeature WebMgmtServ
        {
            Ensure = "Present"
            Name = "Web-Mgmt-Service"
        }

        WindowsFeature WebNetext45
        {
            Ensure = "Present"
            Name = "Web-Net-Ext45"
            
        }
        WindowsFeature WebRequestMon
        {
            Ensure = "Present"
            Name = "Web-Request-Monitor"
            
        }
        WindowsFeature WebServer
        {
            Ensure = "Present"
            Name = "Web-Server"
            
        }
        WindowsFeature WebStatCompress
        {
            Ensure = "Present"
            Name = "Web-Stat-Compression"
            
        }
        WindowsFeature WebStaticCon
        {
            Ensure = "Present"
            Name = "Web-Static-Content"
            
        }
        WindowsFeature WebWinAuth
        {
            Ensure = "Present"
            Name = "Web-Windows-Auth"
            
        }
        WindowsFeature WebWMI
        {
            Ensure = "Present"
            Name = "Web-WMI"
            
        }
        WindowsFeature WIF
        {
            Ensure = "Present"
            Name = "Windows-Identity-Foundation"
            
        }

        WindowsFeature RSATADDS
        {
            Ensure = "Present"
            Name = "RSAT-ADDS"
            
        }


    }

}