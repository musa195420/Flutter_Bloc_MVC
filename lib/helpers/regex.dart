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

  static bool containsupperCase(String value)
  {
    if(RegExp(r'[A-Z]').hasMatch(value))
    {
      return true;
    }
    return false;
  }


  static bool containslowerCase(String value)
  {
    if(RegExp(r'[a-z]').hasMatch(value))
    {
      return true;
    }
    return false;
  }


   static bool containsNumber(String value)
  {
    if(RegExp(r'[0-9]').hasMatch(value))
    {
      return true;
    }
    return false;
  }


  static bool containsSpecialChar(String value)
  {
    if(RegExp(r'^(?=.*?[!@#$&*~`)\%\-(_+=;:,.<>/?"[{\]}\|^])').hasMatch(value))
    {
      return true;
    }
    return false;
  }



  
}