set fn=%1
set fnne=%~n1
set ext=%~x1
set fnmkv="%fnne%.mkv"
set fspa="spa/%fnne%.srt"
set frus="rus/%fnne%.srt"
set feng="eng/%fnne%.srt"
D:\Portables\mkvtoolnix\mkvmerge.exe --ui-language ru --priority lower --output %fnmkv% --language 0:und --language 1:ru --default-track-flag 1:no --language 2:es ( %fn% ) --language 0:es ( %fspa% ) --language 0:ru --default-track-flag 0:no ( %frus% ) --language 0:en --default-track-flag 0:no ( %feng% ) --track-order 0:0,0:2,1:0,0:1,2:0,3:0
mkdir avi
move %fn% avi