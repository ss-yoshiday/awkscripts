BEGIN { 
  FS="," 
} 
{
  if(min[$3]=="") {
    min[$3] = max[$3] = $2
  }
  if($2 > max[$3]) {
    max[$3] = $2;
  }
  if($2 < min[$3]) {
    min[$3] = $2;
  }
}
END {
  for(i in min) {
    print i "\nmin:" min[i] " max:"max[i];
  }
}
