------------------------Complex example of bash-------------------------
#!/bin/bash

select=0

echo "1. Apple"
echo "2. Oragne"
echo "3. Lime"

echo -n "Please select [1,2 or 3] : "

# Loop while the variable 'select' is equal 0
# bash while loop

while [ $select -eq 0 ]; do

# read user input
read select

# bash nested if/else
if [ $select -eq 1 ] ; then

        echo "You have selected: Apple"

else

        if [ $select -eq 2 ] ; then
                 echo "You have selected: Orange"
        else

                if [ $select -eq 3 ] ; then
                        echo "You have selected: Lime"
                else
                        echo "Please select between 1-3 !"
                        echo "1. Apple"
                        echo "2. Ornage"
                        echo "3. Lime"
                        echo -n "Please select [1,2 or 3] : "
                        choice=0
                fi
        fi
fi
done

  head unirank.csv
  head -n 25 unirank.csv
  apt install python3-csvkit
  head  unirank.csv | csvlook
  head -n 25 unirank.csv | csvlook
  grep -i "college" unirank.csv | csvlook
  wc -l unirank.csv
  grep -i "college" unirank.csv | wc -l
  grep "CA" unirank.csv | csvlook



 cat unirank.csv | cut -f4,6 -d, > udata.csv
 sudo pip install bashplotlib
 cat udata.csv| tail -n +2 | scatter
 
 
 ------------------runevery-where.sh-----------------------
 #!/bin/bash

# A list of servers, one per line.
SERVER_LIST='/vagrant/servers'

# Options for the ssh command.
SSH_OPTIONS='-o ConnectTimeout=2'

usage() {
  # Display the usage and exit.
  echo "Usage: ${0} [-nsv] [-f FILE] COMMAND" >&2
  echo 'Executes COMMAND as a single command on every server.' >&2
  echo "  -f FILE  Use FILE for the list of servers. Default: ${SERVER_LIST}." >&2
  echo '  -n       Dry run mode. Display the COMMAND that would have been executed and exit.' >&2
  echo '  -s       Execute the COMMAND using sudo on the remote server.' >&2
  echo '  -v       Verbose mode. Displays the server name before executing COMMAND.' >&2
  exit 1
}

# Make sure the script is not being executed with superuser privileges.
if [[ "${UID}" -eq 0 ]]
then
  echo 'Do not execute this script as root. Use the -s option instead.' >&2
  usage
fi

# Parse the options.
while getopts f:nsv OPTION
do
  case ${OPTION} in
    f) SERVER_LIST="${OPTARG}" ;;
    n) DRY_RUN='true' ;;
    s) SUDO='sudo' ;;
    v) VERBOSE='true' ;;
    ?) usage ;;
  esac
done

# Remove the options while leaving the remaining arguments.
shift "$(( OPTIND - 1 ))"

# If the user doesn't supply at least one argument, give them help.
if [[ "${#}" -lt 1 ]]
then
  usage
fi

# Anything that remains on the command line is to be treated as a single command.
COMMAND="${@}"

# Make sure the SERVER_LIST file exists.
if [[ ! -e "${SERVER_LIST}" ]]
then
  echo "Cannot open server list file ${SERVER_LIST}." >&2
  exit 1
fi

# Expect the best, prepare for the worst.
EXIT_STATUS='0'

# Loop through the SERVER_LIST
for SERVER in $(cat ${SERVER_LIST})
do
  if [[ "${VERBOSE}" = 'true' ]]
  then
    echo "${SERVER}"
  fi

  SSH_COMMAND="ssh ${SSH_OPTIONS} ${SERVER} ${SUDO} ${COMMAND}"
 
  # If it's a dry run, don't execute anything, just echo it.
  if [[ "${DRY_RUN}" = 'true' ]]
  then
    echo "DRY RUN: ${SSH_COMMAND}"
  else
    ${SSH_COMMAND}
    SSH_EXIT_STATUS="${?}"

    # Capture any non-zero exit status from the SSH_COMMAND and report to the user.
    if [[ "${SSH_EXIT_STATUS}" -ne 0 ]]
    then
      EXIT_STATUS=${SSH_EXIT_STATUS}
      echo "Execution on ${SERVER} failed." >&2
    fi 
  fi
done

exit ${EXIT_STATUS}

 
 
