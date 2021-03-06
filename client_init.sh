#!/bin/sh
#
# This is part 2 of the ppp-on script. It will perform the connection
# protocol for the desired connection.
#
#/usr/sbin/chat -v  '' ATZ OK 'ATQ0 V1 E1 S0=0 S2=128 &C1 &D2 +FCLASS=0' OK ATD8899 CONNECT '' ogin: dream\r assword: dreamcast\r

#!/bin/sh
#
# This is part 2 of the ppp-on script. It will perform the connection
# protocol for the desired connection.
#
/usr/sbin/chat -v                                       \
        TIMEOUT         3                               \
        ABORT           '\nBUSY\r'                      \
        ABORT           '\nNO ANSWER\r'                 \
        ABORT           '\nRINGING\r\n\r\nRINGING\r'    \
        ABORT           '\nNO CARRIER\r'                \
        ''              "\rATQ0 V1 E1 S0=0 S2=128 &C1 &D2 +FCLASS=0" \
        TIMEOUT         180                             \
        OK              ATD8899                         \
        ogin: dream                                \
        ssword: dreamcast                    
       # 'Ubuntu comes with ABSOLUTELY NO WARRANTY, to the extent permitted by' ''