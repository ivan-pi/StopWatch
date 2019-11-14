subroutine cpu_second (cpu,user,sys)
implicit none
real, intent(out) :: cpu,user,sys

!  ------------------------------------------------
!  returns elapsed cpu time since start of job (sec)
!  ------------------------------------------------

! nil version; returns -1 for all clocks; can be used when there is no way
! to measure CPU time

cpu = -1.0
user = -1.0
sys = -1.0

return
end subroutine cpu_second
