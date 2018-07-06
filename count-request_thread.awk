BEGIN { 
  FS="," 
} 
{
  if($6 != "") {
    count[$6] += 1;
  }
}
END {
  for(i in count) {
    print i " " count[i];
  }
}
