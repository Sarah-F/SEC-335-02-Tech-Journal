param ($network, $server)
$range = 1..254
foreach($r in $range)
{
  Resolve-DnsName -DnsOnly "$network.$r" -Server "$server" -ErrorAction Ignore
}



param($network, $server)
for ($i = 0; $i -lt 255; $i++)
{
$ip = "$network" + "." +  "$i"
$result = Resolve-DnsName -DnsOnly $ip -Server $server -ErrorAction Ignore | Select-Object -Property NameHost
if ($result  -like "*")
{ 
    echo "IP: " $ip "namehost:" $result
    
}
}
