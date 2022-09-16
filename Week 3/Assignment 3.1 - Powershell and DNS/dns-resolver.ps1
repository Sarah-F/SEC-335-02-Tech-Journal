param ($network, $server)
$range = 1..254
  for each($r in $range)
  {
    Resolve-DnsName -DnsOnly "$network.$r" -Server "$server" -ErrorAction Ignore
  }
done
