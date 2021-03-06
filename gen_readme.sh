output=`./addrgen`
example=`./addrgen test 10 5|sed 's/^/  /'`
example2=`./addrgen -format "BASE PRIVKEY" test 10 5|sed 's/^/  /'`
example3=`./addrgen -random 5|sed 's/^/  /'`
cat <<EOT
Bitcoin Address Generator

Installation:
  go get github.com/jiangmiao/addrgen

Features:
  1. Generate bitcoin address in sequence.
  2. Generate bitcoin address in random.
  3. High performance by using multicore.

$output

Examples:
  $ addrgen test 10 5
$example

  $ addrgen -format "BASE PRIVKEY" test 10 5
$example2

  $ addrgen -random 5
$example3

Security Tips:
  The source and algorithm of addrgen is public. So the privkey could be enumerated.
  A long random prefix is highly recommanded for security reason.

  # generate 32 bytes random string
  $ addrgen -seed
  azGJNtWp1QSPBmxC5uz3kf273jCPhmy7

License:
  MIT
EOT
