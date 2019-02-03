       Dcl-f UNIX disk(1024) handler('UNIXCMD/UNIXCMDOA' :UnixCmd) usrOpn ;

       Dcl-s UnixCmd char(1024) ;
       Dcl-ds StdOut len(1024) End-ds ;

       Dcl-s Display char(52) ;

       //----------------------------------------------------------------------

       // path to Python3, this path works for the yum version of Python3
       // path to your Python script
       // input parameters, separated by spaces
       UnixCmd = '/QOpenSys/pkgs/bin/python3 src/Python3/misc/proper_case.py "GEORGE" "WASHINGTON"';

       // sysCmd() is a prototype for QCMDEXC.
       sysCmd('ADDLIBLE UNIXCMD *LAST');
       
       Open UNIX;
       Read UNIX StdOut;
       Dow not %eof(UNIX);
         Read UNIX StdOut;
       Enddo;
       Close UNIX;
       
       Display = StdOut;
       Dsply Display;      
       
       sysCmd('RMVLIBLE UNIXCMD');
       
       *inLR = *on;
       Return;   
