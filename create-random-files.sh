for n in {1..25000}
do
  echo $n
  mkdir /cohesity/test/mfiles$n
  cd /cohesity/test/mfiles$n
  dd if=/dev/urandom of=masterfile bs=1 count=10000000
  split -b 10 -a 10 masterfile
done
