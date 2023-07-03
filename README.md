# ctimer
C timer library (shared object) - it allows us to create multiple timers - periodic or single shot - on Linux platorm.

# Make
Run 'make' command from the home directory. A shared object (libctimer.so) will be created in the 'Bin' directory. It can be linked with your application.

# Interface and Usage
The programming interface is defined in 'ctimer.h'.

It has the following functions:
1. initialize(): It needs to be called once and before any other function call of this library. It creates the internal data structures.
2. start_timer(): Creates and starts a new timer. Id of the created timer is returned which can be used in 'stop_timer()'. It has the following inputs.
   a. interval: time interval in milli seconds.
   b. handler: Callback function that will be called in every timer expiry.
   c. type: Periodic (TIMER_PERIODIC ) or single shot (TIMER_SINGLE_SHOT).
   d. user_data: Any data that will be passed onto the callback function.
4. stop_time(): Stops the timer specified by the timer id.
5. finalize(): It needs to be called when the timer module is no loger required in the program to clean up the internal data structures.

# Example
An example program is availble in the 'test' directory. For to the 'test' directory and run 'make' command to create the 'timertest' executable in the 'test' directory.
