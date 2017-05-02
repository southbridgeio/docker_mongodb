db.runCommand({fsync:1,lock:1}); // sync and lock
runProgram("rsync", "-avz", "--delete", "/data/db/", "/var/backups/mongodb/hot/");
db.$cmd.sys.unlock.findOne(); //unlock

