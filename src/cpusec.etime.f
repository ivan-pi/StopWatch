      subroutine cpu_second (cpu,user,sys)
      real cpu,user,sys
c
c  ------------------------------------------------
c  returns elapsed cpu time since start of job (sec)
c  ------------------------------------------------
c
c etime version in f77 format; etime is common on many unix systems
c
      real tarray(2)
      real etime
c
      cpu = etime(tarray)
      user = tarray(1)
      sys = tarray(2)
c
      return
      end
