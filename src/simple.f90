! This program illustrates the simplest use of StopWatch

program simple
use stopwatch           ! You must have the "use" statement in each program unit
implicit none

type (watchtype) :: w   ! This declares w to be a watch

call create_watch(w)    ! Watches must be created before they are used
call start_watch(w)     ! This starts the watch

! code to be timed would be located here

call stop_watch(w)      ! This stops the watch
call print_watch(w)     ! This prints the measured time
call destroy_watch(w)   ! Always destroy the watches to free up memory

stop
end program simple
