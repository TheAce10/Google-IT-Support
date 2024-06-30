$VLC_URL = "https://get.videolan.org/vlc/last/win64/"
$GET_HTML = Invoke-WebRequest $VLC_URL
$FILE = $GET_HTML.Links | Select-Object @{Label='href';Expression={@{$true=$_.href}[$_.href.EndsWith('win64.exe')]}} | Select-Object -ExpandProperty href
$URL = ($VLC_URL+$FILE)
$DOWNLOAD_DIR = "C:\users\qwiklabs\Downloads\"
$DOWNLOAD_DIR = "C:\users\Ace\Downloads\"
$OUTPUT_FILE = ($DOWNLOAD_DIR+$FILE)
(new-object System.Net.WebClient).DownloadFile($URL, $OUTPUT_FILE)
cmd.exe /c $OUTPUT_FILE /S
Get-Package -Name *vlc*