@ECHO OFF

ECHO WORK PATH: %CD%
ECHO --------------------------------------------------

PAUSE

ECHO DELETE OLD FILES
RD      .\ref                                   /S /Q
RD      .\src                                   /S /Q
RD      .\tests                                 /S /Q
DEL     .\System.Linq.sln                       /F /S /Q
ECHO --------------------------------------------------

PAUSE

ECHO UPDATE FILES
XCOPY   /E  ..\runtime\src\libraries\System.Linq\ref                                                           .\ref\
XCOPY   /E  ..\runtime\src\libraries\System.Linq\src                                                           .\src\
XCOPY   /E  ..\runtime\src\libraries\System.Linq\tests                                                         .\tests\
XCOPY   /E  ..\runtime\src\libraries\System.Linq\System.Linq.sln                                               .\
XCOPY   /E  ..\runtime\src\libraries\Common\src\System\Collections\Generic\ArrayBuilder.cs                     .\src\System\Collections\Generic\
XCOPY   /E  ..\runtime\src\libraries\Common\src\System\Collections\Generic\EnumerableHelpers.cs                .\src\System\Collections\Generic\
XCOPY   /E  ..\runtime\src\libraries\Common\src\System\Collections\Generic\EnumerableHelpers.Linq.cs           .\src\System\Collections\Generic\
XCOPY   /E  ..\runtime\src\libraries\Common\src\System\Collections\Generic\LargeArrayBuilder.cs                .\src\System\Collections\Generic\
XCOPY   /E  ..\runtime\src\libraries\Common\src\System\Collections\Generic\LargeArrayBuilder.SpeedOpt.cs       .\src\System\Collections\Generic\
XCOPY   /E  ..\runtime\src\libraries\Common\src\System\Collections\Generic\SparseArrayBuilder.cs               .\src\System\Collections\Generic\
ECHO DONE
ECHO --------------------------------------------------

PAUSE
