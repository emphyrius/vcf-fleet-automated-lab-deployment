# Physical vCenter Server environment
$VIServer = "vcf-vc01.tech-lab-vcf.eng.cdwbuilt.com"
$VIUsername = "administrator@vsphere.local"
$VIPassword = "VMw@rE123!VSEeF!"

# General Deployment Configuration
$VAppLabel = "MarkB-Nested-VCF9"
$VMDatacenter = "Datacenter"
$VMCluster = "MyCluster"
$VMNetwork = "MyNetwork"
$VMDatastore = "MyDatastore"
$VMNetmask = "255.255.0.0"
$VMGateway = "10.90.1.1"
$VMDNS = "10.90.1.253"
$VMNTP = "time1.google.com,time2.google.com"
$VMPassword = "2025vmwareNSX1!!"
$VMDomain = "vcf.lab"
$VMSyslog = "172.16.1.250"
$VMFolder = "markb-nested-vcf9"

# Enable Debugging
$Debug = $false

# Full Path to both the Nested ESXi & VCF Installer OVA
$NestedESXiApplianceOVA = "W:\VMware\Nested ESXi\Nested_ESXi9.0_Appliance_Template_v1.0.ova"
$VCFInstallerOVA = "W:\VMware\VCF 9\VCF-SDDC-Manager-Appliance-9.0.1.0.24962180.ova"

# VCF Version
$VCFInstallerProductVersion = "9.0.1.0"
$VCFInstallerProductSKU = "VCF"

# VCF Software Depot Configuration
$VCFInstallerSoftwareDepot = "online" #online or offline
$VCFInstallerDepotToken = "M6F92JtVhIQbqIfacKFGZRN57cFLeInA"

# Offline Depot Configurations (optional)
$VCFInstallerDepotUsername = "vcf"
$VCFInstallerDepotPassword = "vcf123!"
$VCFInstallerDepotHost = "172.16.1.54"
$VCFInstallerDepotPort = 8888
$VCFInstallerDepotHttps = $false

# VCF Fleet Deployment Configuration
$DeploymentInstanceName = "nest-vcf9"
$DeploymentId = "vcf-m01"
$CEIPEnabled = $true
$FIPSEnabled = $true

# VCF Installer Configurations
$VCFInstallerVMName = "inst01"
$VCFInstallerFQDN = "inst01.vcf.lab"
$VCFInstallerIP = "10.90.1.217"
$VCFInstallerAdminUsername = "admin@local"
$VCFInstallerAdminPassword = "2025vmwareNSX1!!"
$VCFInstallerRootPassword = "2025vmwareNSX1!!"

# SDDC Manager Configuration
$SddcManagerHostname = "sddcm01"
$SddcManagerIP = "10.90.1.210"
$SddcManagerRootPassword = "2025vmwareNSX1!!"
$SddcManagerVcfPassword = "2025vmwareNSX1!!"
$SddcManagerSSHPassword = "2025vmwareNSX1!!"
$SddcManagerLocalPassword = "2025vmwareNSX1!!"

# Nested ESXi VMs for Management Domain
$NestedESXiHostnameToIPsForManagementDomain = @{
    "esxi01.vcf.lab" = "10.90.1.201"
    "esxi02.vcf.lab" = "10.90.1.202"
    "esxi03.vcf.lab" = "10.90.1.203"
}

# Nested ESXi VMs for Workload Domain
$NestedESXiHostnameToIPsForWorkloadDomain = @{
    "esxi04.vcf.lab" = "10.90.1.204"
    "esxi05.vcf.lab" = "10.90.1.205"
    "esxi06.vcf.lab" = "10.90.1.206"
}

# Nested ESXi VM Resources for Management Domain
$NestedESXiMGMTvCPU = "32"
$NestedESXiMGMTvMEM = "112" #GB
$NestedESXiMGMTCachingvDisk = "32" #GB
$NestedESXiMGMTCapacityvDisk = "500" #GB
$NestedESXiMGMTBootDisk = "64" #GB

# Nested ESXi VM Resources for Workload Domain
$NestedESXiWLDvCPU = "16"
$NestedESXiWLDvMEM = "32" #GB
$NestedESXiWLDCachingvDisk = "32" #GB
$NestedESXiWLDCapacityvDisk = "250" #GB
$NestedESXiWLDBootDisk = "64" #GB

# ESXi Network Configuration
$NestedESXiManagementNetworkCidr = "10.90.1.0/24" # should match $VMNetwork configuration
$NestedESXivMotionNetworkCidr = "10.1.32.0/24"
$NestedESXivSANNetworkCidr = "10.1.33.0/24"
$NestedESXiNSXTepNetworkCidr = "10.1.34.0/24"

# vCenter Configuration
$VCSAName = "vc01"
$VCSAIP = "10.90.1.211"
$VCSARootPassword = "2025vmwareNSX1!!"
$VCSASSOPassword = "2025vmwareNSX1!!"
$VCSASize = "small"
$VCSAEnableVCLM = $true
$VCSADatacenterName = "vcf-mgmt-dc"
$VCSAClusterName = "vcf-mgmt-cl01"

#vSAN Configuration
$VSANFTT = 0
$VSANDedupe = $false
$VSANESAEnabled = $false
$VSANDatastoreName = "vsanDatastore"

# VCF Operations Configuration
$VCFOperationsSize = "small"
$VCFOperationsHostname = "vcf01.vcf.lab"
$VCFOperationsIP = "10.90.1.219"
$VCFOperationsRootPassword = "2025vmwareNSX1!!"
$VCFOperationsAdminPassword = "2025vmwareNSX1!!"

# NSX Configuration
$NSXManagerSize = "medium"
$NSXManagerVIPHostname = "nsxvip"
$NSXManagerVIPIP = "10.90.1.212"
$NSXManagerNodeHostname = "nsxmg01"
$NSXRootPassword = "2025vmwareNSX1!!"
$NSXAdminPassword = "2025vmwareNSX1!!"
$NSXAuditPassword = "2025vmwareNSX1!!"

# VCF Operations Collector
$VCFOperationsCollectorSize = "small"
$VCFOperationsCollectorHostname = "opsproxy01"
$VCFOperationsCollectorRootPassword = "2025vmwareNSX1!!"

# VCF Operations Fleet Manager
$VCFOperationsFleetManagerHostname = "opsfm01"
$VCFOperationsFleetManagerAdminPassword = "2025vmwareNSX1!!"
$VCFOperationsFleetManagerRootPassword = "2025vmwareNSX1!!"

# VCF Automation
$VCFAutomationHostname = "auto01"
$VCFAutomationAdminPassword = "2025vmwareNSX1!!"
$VCFAutomationIPPool = @("10.90.1.241","10.90.1.242")
$VCFAutomationNodePrefix = "vcf-markb-auto"
$VCFAutomationClusterCIDR = "198.18.0.0/15"

# VCF Workload Domain Configurations
$VCFWorkloadDomainName = "vcf-w01"
$VCFWorkloadDomainOrgName = "vcf-w01"
$VCFWorkloadDomainEnableVCLM = $true
$VCFWorkloadDomainEnableVSANESA = $false

# WLD vCenter Configuration
$VCFWorkloadDomainVCSAHostname = "vc02"
$VCFWorkloadDomainVCSAIP = "172.16.30.40"
$VCFWorkloadDomainVCSARootPassword = "VMware1!VMware1!"
$VCFWorkloadDomainVCSASSOPassword = "VMware1!VMware1!"
$VCFWorkloadDomainVCSADatacenterName = "vcf-wld-dc"
$VCFWorkloadDomainVCSAClusterName = "vcf-wld-cl01"

# WLD NSX Configuration
$VCFWorkloadDomainNSXManagerVIPHostname = "nsx02"
$VCFWorkloadDomainNSXManagerNode1Hostname = "nsx02a"
$VCFWorkloadDomainNSXManagerNode1IP = "172.16.30.42"
$VCFWorkloadDomainNSXAdminPassword = "VMware1!VMware1!"
$VCFWorkloadDomainSeparateNSXSwitch = $false
