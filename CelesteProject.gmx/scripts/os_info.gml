//os_info();
//returns a string.

//TODO: Add Mac, Android, iOS, Ubuntu, and everything else to this

_typeID = os_version;
_osVersion = "Unknown";

switch (os_type)
{
    case os_windows: switch (_typeID) {
         case 393216: _osVersion = "Vista"; break;
         case 393217: _osVersion = "7"; break;
         case 393218: _osVersion = "8"; break;
         default: {
                  if (_typeID < 393216)
                     _osVersion = "Unsupported";
                  else
                      _osVersion = "8.1 or 10 or something else newer";
                  } break;
         } break;
    
    
}

return os_type + ' ' + _osVersion;
