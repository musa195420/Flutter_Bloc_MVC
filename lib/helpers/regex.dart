class RegexChecker{

 static  bool passwordRegex(String value)
  {
    if(RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~`)\%\-(_+=;:,.<>/?"[{\]}\|^]).{8,}$').hasMatch(value))
    {
      return true;
    }
    return false;
  }
static  bool emailRegex(String value)
  {
    if(RegExp(r'^[\w-\.]+@([\w-]+.)+[\w-]{2,4}$').hasMatch(value))
    {
      return true;
    }
    return false;
  }

  
}