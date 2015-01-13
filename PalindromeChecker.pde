//Feng Cai  Mod 19-20  Palindrome 

void setup()
{
  String lines[] = loadStrings("palindrome.txt");
  println("There are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++)
  {
    if (palindrome(lines[i])==true)
    {
      println(lines[i] + " is a palidrome.");
    }
    else

    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}

//Signs 
String stripNonAlpha(String word)
{
  String Alpha = "";

  for (int i = 0; i < word.length(); i++)

  {
    if (word.charAt(i)!=' ' && word.charAt(i)!='.' && word.charAt(i)!='\'' && word.charAt(i)!='?' && word.charAt(i)!=',' && word.charAt(i)!=';' && word.charAt(i)!='!')
    {

      Alpha = Alpha + word.charAt(i);
    }
  }
  return Alpha.toLowerCase();
}



boolean palindrome(String word)

{

  word = stripNonAlpha(word);

  int frontIndex = 0;

  int backIndex = word.length()-1;

  for (int i = 0; i < word.length(); i++)

  {
    if (word.charAt(frontIndex)==word.charAt(backIndex))
    {
      frontIndex++;
      backIndex--;
      return true;
    }
  }

  return false;
}


