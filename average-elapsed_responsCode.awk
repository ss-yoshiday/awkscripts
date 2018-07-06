BEGIN { 
  FS="," 
} 
{
  if($4 != "") {
    count[$4] += 1;
    sum[$4] += $2;
  }
}
END {
  for(i in count) {
    print i " " sum[i]/count[i];
  }
}
