# cleanup() {
#     echo "Cleaning up..."
# }
# trap cleanup exit # This will run the cleanup function when the script exits it is done by the trap command. The exit signal is sent when the script exits, either normally or due to an error.

# echo "Hi and welcome to the script!"
# echo "This is some code that will run before the script exits."
# echo "This is some code that will run before the script exits."
# echo "This is some code that will run before the script exits."

cleanup() {
    echo "Cleaning up..."
}
# trap cleanup SIGINT # ***
# This will run the cleanup function when the script receives a SIGINT signal, 
# which is sent when the user presses Ctrl+C and the SIGINT is trapped by the trap command.

echo "Hi and welcome to the script!"
echo "This is some code that will run before the script exits."
echo "This is some code that will run before the script exits."
echo "This is some code that will run before the script exits."

while true; 
do
    echo "This is an infinite loop. Press Ctrl+C to exit."
    sleep 1
done