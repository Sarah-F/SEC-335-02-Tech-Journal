param ($network, $server)
$range = 1..254
  for each($r in $range)
  {
    Resolve-DnsName -DnsOnly "$network.$r" -Server "$server" -ErrorAction Ignore
  }

param ($net, $dnsserver)
$range = 1..254
foreach($r in $range)
{

Resolve-DnsName -DnsOnly "$net.$r" -Server "$dnsserver" -ErrorAction Ignore

}
