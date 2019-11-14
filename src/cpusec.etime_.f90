subroutine cpu_second (cpu,user,sys)
implicit none
real, intent(out) :: cpu,user,sys

!  ------------------------------------------------
!  returns elapsed cpu time since start of job (sec)
!  ------------------------------------------------

! etime version; etime is common on many unix systems
! This variant has an underscore, for systems that extend function names

real, dimension(2) :: tarray
real :: etime_

cpu = etime_(tarray)
user = tarray(1)
sys = tarray(2)

return
end subroutine cpu_second
