


String txt = "t,c,n,b,a,t,n,d,t,c,n,s,e,d,t,n,b,a,n,d,t,n,b,c,d,a,t,n,b,d,a,t,n,b,a,t,c,n,b,a,t,n,d,t,c,n,s,e,d,t,n,b,a,n,d,t,n,b,c,d,a,t,n,b,d,a,t,n,b,a,t,c,n,b,a,t,n,d,t,c,n,s,e,d,t,n,b,a,n,d,t,n,b,c,d,a,t,n,b,d,a,t,n,b,a,t,c,n,b,a,t,n,d,t,c,n,s,e,d,t,n,b,a,n,d,t,n,b,c,d,a,t,n,b,d,a,t,n,b,a,t,c,n,b,a,t,n,d,t,c,n,s,e,d,t,n,b,a,n,d,t,n,b,c,d,a,t,n,b,d,a,t,n,b,a,t,c,n,b,a,t,n,d,t,c,n,s,e,d,t,n,b,a,n,d,t,n,b,c,d,a,t,n,b,d,a,t,n,b,a,t,c,n,b,a,t,n,d,t,c,n,s,e,d,t,n,b,a,n,d,t,n,b,c,d,a,t,n,b,d,a,t,n,b,a,t,c,n,b,a,t,n,d,t,c,n,s,e,d,t,n,b,a,n,d,t,n,b,c,d,a,t,n,b,d,a,t,n,b,a,t,c,n,b,a,t,n,d,t,c,n,s,e,d,t,n,b,a,n,d,t,n,b,c,d,a,t,n,b,d,a,t,n,b,a,t,c,n,b,a,t,n,d,t,c,n,s,e,d,t,n,b,a,n,d,t,n,b,c,d,a,t,n,b,d,a,t,n,b,a,";
int ohoh = 300; 
ArrayList<String> ngrams = new ArrayList<String>(); 

void sentenceStructure() {
  float randomGram= random(0, txt.length()-ohoh);
  int rg = int(randomGram);
  String currentGram = txt.substring(rg,rg+ohoh);
  
  String[] sentenceParts = currentGram.split(",");
  
  
  for (int kk = 0; kk < sentenceParts.length; kk++) {
 
  String[] m1 = match(sentenceParts[kk], "n");
  if (m1 != null) {  
  String xxx = n[int(random(0,n.length))];
  print(xxx+" ");
  } ;
  
  String[] m2 = match(sentenceParts[kk], "c");
  if (m2 != null) {  
  String xxx = c[int(random(0,c.length))];
  print(xxx+" ");
  } ;
  
  String[] m3 = match(sentenceParts[kk], "d");
  if (m3 != null) {  
  String xxx = d;
  print(xxx+" ");
  } ;
  
  String[] m4 = match(sentenceParts[kk], "a");
  if (m4 != null) {  
  String xxx = a[int(random(0,a.length))];
  print(xxx+" ");
  } ;
  
  String[] m5 = match(sentenceParts[kk], "t");
  if (m5 != null) {  
  String xxx = t[int(random(0,t.length))];
  print(xxx+" ");
  } ;
  
  String[] m6 = match(sentenceParts[kk], "b");
  if (m6 != null) {  
  String xxx = b[int(random(0,b.length))];
  print(xxx+" ");
  } ;
  
  String[] m7 = match(sentenceParts[kk], "e");
  if (m7 != null) {  
  String xxx = e[int(random(0,e.length))];
  print(xxx+" ");
  } ;
  }

  }
