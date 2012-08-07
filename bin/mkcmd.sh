#!/usr/bin/env sh

echo '#!/usr/bin/env sh' "\n"  > $1
cat >> $1
chmod +x $1
