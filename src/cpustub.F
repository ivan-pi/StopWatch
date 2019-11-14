! This module is just to fool the F compiler into believing cpu_second is
! not an external subroutine.  It is only needed for the "educational"
! version of the F compiler, which does not allow interface blocks.  The
! trick is to put a stub for cpu_second into a module which provides the
! explicit interface, and then provide the external subroutine at link time.
! Thank you to Neil Carlson for providing this trick.

module cpu_sec
public :: cpu_second
contains
subroutine cpu_second(cpu,usr,sys)
real, intent(out) :: cpu, usr, sys
cpu = -1.0
usr = -1.0
sys = -1.0
return
end subroutine cpu_second
end module cpu_sec
