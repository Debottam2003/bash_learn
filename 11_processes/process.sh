ps -a
ps -aux

kill pid # Default signal is SIGTERM (15) (Graceful termination)
kill -9 pid # SIGKILL (9) forcefully kills the process
kill -2 pid # SIGINT (2) interrupts the process (like pressing Ctrl+C)

bg process_id # Resume a stopped process in the background
fg process_id # Resume a stopped process in the foreground