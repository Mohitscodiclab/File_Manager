@echo off
echo Organizing files by type...

REM Create folders if they don't exist
mkdir Images 2>nul
mkdir PDFs 2>nul
mkdir Documents 2>nul
mkdir Videos 2>nul
mkdir Music 2>nul
mkdir Others 2>nul

REM Move image files
move *.jpg Images 2>nul
move *.jpeg Images 2>nul
move *.png Images 2>nul
move *.gif Images 2>nul

REM Move PDF files
move *.pdf PDFs 2>nul

REM Move document files
move *.doc Documents 2>nul
move *.docx Documents 2>nul
move *.txt Documents 2>nul
move *.xlsx Documents 2>nul
move *.pptx Documents 2>nul

REM Move video files
move *.mp4 Videos 2>nul
move *.mkv Videos 2>nul
move *.avi Videos 2>nul

REM Move music files
move *.mp3 Music 2>nul
move *.wav Music 2>nul

REM Move remaining files
for %%f in (*) do (
    if not "%%~nxf"=="%~nx0" (
        move "%%f" Others 2>nul
    )
)

echo Done organizing!
pause