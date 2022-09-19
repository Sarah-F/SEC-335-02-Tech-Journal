param ($network, $server)
$range = 1..254
foreach($r in $range)
{
  Resolve-DnsName -DnsOnly "$network.$r" -Server "$server" -ErrorAction Ignore | Select-Object -Property Name , NameHost
}

param ($network, $server)
for ($i = 0; $i -le 256; $i++) 
{
    $ip = ($network + "." + $i)
    $hostname = (Resolve-DnsName -DnsOnly $ip -Server $server -ErrorAction Ignore)
    if ($hostname -ne $null) 
    {
        Write-Host $ip $hostname.NameHost
    }
}
