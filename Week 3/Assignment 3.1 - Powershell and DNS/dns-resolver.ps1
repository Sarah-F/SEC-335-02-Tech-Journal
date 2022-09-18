param ($network, $server)
$range = 1..254
foreach($r in $range)
{
  Resolve-DnsName -DnsOnly "$network.$r" -Server "$server" -ErrorAction Ignore | Select-Object -Property Name , NameHost
}
