       #!/bin/bash

      #total=${1}
       if [[ `id -u` -eq 0 ]]; then
         echo -e "the number is equal to 1 `id -u`"
       else
         echo "the number is NOT equal to 1"
       fi
