subroutine cpu_second (cpu,user,sys)
implicit none
real, intent(out) :: cpu,user,sys

!  ------------------------------------------------
!  returns elapsed cpu time since start of job (sec)
!  ------------------------------------------------

! f95 version; uses the standard intrinsic subroutine from fortran 95.
! user and sys are set to -1. because these are not provided by cpu_time.

user = -1.0
sys = -1.0
call cpu_time(cpu)

return
end subroutine cpu_second
