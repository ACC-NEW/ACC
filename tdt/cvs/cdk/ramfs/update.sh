echo "Обновляю" > /dev/vfd
#mountet die ziel Partition nach /update, dadurch können die Updates größer 95MB sein
#mount /dev/sda2 /update
# Kopiert das Update File auf die /dev/sda2 Partition um es Später zu installieren
echo "Копирую обновления в системный раздел"
echo "Копирую" > /dev/vfd
#cp /rootfs/service/*.tar.gz /rootfs
#echo "Готово"
#echo "Удаляю обновления из загрузочного раздела"
# Löscht das Update File von der Partition
#rm /rootfs/service/*.tar.gz
rm /rootfs/service/update
#echo "Загрузка"
# Entpackt das Update und löscht es anschliessend
cd /rootfs
tar -xf service/*.tar.gz
echo "Готово"
echo "Удаляю tar.gz из системного раздела"
rm /rootfs/service/*.tar.gz
echo "Обновление завершено..."
cd /
echo "Запускаю систему..."
#umount /dev/sda2
echo "Готово" > /dev/vfd

