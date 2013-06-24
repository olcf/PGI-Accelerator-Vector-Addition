      program main
 
     ! Size of vectors
      integer :: n = 100000
 
     ! Input vectors
     real,dimension(:),allocatable :: a
     real,dimension(:),allocatable :: b
     ! Output vector
     real,dimension(:),allocatable :: c
 
      integer :: i
     real :: sum
 
     ! Allocate memory for each vector
     allocate(a(n))
     allocate(b(n))
     allocate(c(n))
 
     ! Initialize content of input vectors, vector a[i] = sin(i)^2 vector b[i] = cos(i)^2
      do i=1,n
        a(i) = sin(i*1.0)*sin(i*1.0)
        b(i) = cos(i*1.0)*cos(i*1.0)
      enddo
 
     ! Sum component wise and save result into vector c
 
     !$acc region
      do i=1,n
        c(i) = a(i) + b(i)
      enddo
     !$acc end region
 
     ! Sum up vector c and print result divided by n, this should equal 1 within error
      do i=1,n
        sum = sum +  c(i)
      enddo
     sum = sum/n
     print *, 'final result: ', sum
 
     ! Release memory
     deallocate(a)
     deallocate(b)
     deallocate(c)
 
      end program
