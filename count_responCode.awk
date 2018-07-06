BEGIN { 
        FS="," 
} 
{
 if($4 != "")
  { 
    a[$4]+=1;
  }
}
END {
  for(i in a)
    print i " " a[i];
}
