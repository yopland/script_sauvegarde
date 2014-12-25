EPERTOIRE_SOURCE="/mnt/photographies/"
REPERTOIRE_DESTINATION="/run/media/laurent/yop/personnel/Photographies/"
 
# Détecter la présence du volume source et interrompre l'opération si nécessaire
if [ `ls $REPERTOIRE_SOURCE | wc -l` == 0 ]
then
echo "Attention, le disque source n'est pas présent ($REPERTOIRE_SOURCE)"
exit
fi
 
# Détecter la présence du volume de destination et interrompre l'opération si nécessaire
if [ ! -e "$REPERTOIRE_DESTINATION" ]
then
echo "Attention, le disque de sauvegarde n'est pas présent ($REPERTOIRE_DESTINATION)"
exit
fi
 
# Ajouter "--dry-run" pour faire la synchro à blanc  
rsync -av --del --stats --progress --filter "- .thumbnails/" --filter "- .Trash/" --filter "- Thumbs.db" --filter "- .directory" --filter "- batch.log" --filter "- .picasa.ini" --filter "- .thumbnails/" --filter "- .directory/" --filter "- dead.letter/" --filter "- .recycle/" $REPERTOIRE_SOURCE "$REPERTOIRE_DESTINATION"
 
echo "La commande de sauvegarde a terminé son travail..."
echo "Vérifiez dans le terminal s'il n'y a pas eu d'erreur !"irectory" --filter "- batch.log" --filter "- .picasa.ini" --filter "- .thumbnails/" --filter "- .directory/" --filter "- dead.letter/" --filter "- .recycle/" $REPERTOIRE_SOURCE "$REPERTOIRE_DESTINATION"
