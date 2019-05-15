
set confirm on
set verbose on
# set logging on
set breakpoint auto-hw off
set breakpoint always-inserted off
# set auto-solib-add 0
set breakpoint pending off
# set sysroot /Users/a567/mywork/gdb_system
# set solib-search-path /Users/a567/mywork/gdb_system
set follow-fork-mode parent
set detach-on-fork on
set step-mode on

# set target-async on

# set confirm off
set history save on
set history filename ~/.gdb_history

set pagination off
# set non-stop on

# handle all pass
# handle all nostop
handle all print

handle SIGSEGV stop
# handle SIGTRAP nopass
# handle SIGINT nopass
# handle SIGINT stop
# handle SIGCONT nostop
# handle SIGCONT nopass

# set observer on
set may-interrupt on
set may-insert-fast-tracepoints off
set may-insert-tracepoints off
set may-write-registers off
set may-write-memory off

set print thread-events on
# set print symbol-loading brief
set print inferior-events on

source /opt/gef/gef.py
gef config context.show_registers_raw True
gef config context.layout "regs code"


