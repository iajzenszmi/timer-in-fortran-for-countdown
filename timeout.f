program countdown_timer
    implicit none
    integer :: input_time, i

    ! Ask user for input time
    print *, 'Enter countdown time in seconds:'
    read(*, *) input_time

    ! Countdown loop
    do i = input_time, 1, -1
        print *, 'Time left: ', i, ' seconds'
        call sleep(1)  ! Sleep for 1 second
    end do

    ! Beeping after countdown ends
    print *, 'Time is up!'
    do i = 1, 3
        call system('echo -e "\a"')  ! Beep command
        call sleep(1)  ! Sleep for 1 second between beeps
    end do

    print *, 'Countdown and beeping complete.'
end program countdown_timer

