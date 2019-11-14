subroutine cpu_second (cpu,user,sys)
implicit none
real, intent(out) :: cpu,user,sys
real :: second

!  ------------------------------------------------
!  returns elapsed cpu time since start of job (sec)
!  ------------------------------------------------

! Cray version

cpu = second()
user = -1.0
sys = -1.0

return
end subroutine cpu_second
