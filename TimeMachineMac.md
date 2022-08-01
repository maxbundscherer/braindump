(List Backups)
tmutil listbackups

(onDevice Remove old backups)
sudo tmutil delete -p /Volumes/Time\ Machine-Backups/Backups.backupdb/Maximilians\ MacBook\ Pro/2020-*

(clean file)
sudo hdiutil compact /Volumes/TimeMachineFestplatte/DeinBackupName.sparsebundle

