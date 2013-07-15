@echo off

echo Complie from source

cd src
call .\msvc2008.bat

@echo off

nmake -f Make_mvc.mak clean
nmake -f Make_mvc.mak FEATURES=huge PYTHON=D:\Python27 PYTHON_VER=27 GUI=yes IME=yes


rd /s /q ..\vim73
md ..\vim73
xcopy ..\runtime\* ..\vim73 /e /q /y
copy *.exe ..\vim73 /y
copy GvimExt\gvimext.dll ..\vim73 /y
copy xxd\xxd.exe ..\vim73 /y

echo.
SET /P ST= Please input the vim root directory:  
echo.

xcopy ..\vim73\* "%ST%\vim73\"  /e /q /y

echo Making directory ...
md "%ST%\vimfiles\bundle"

echo Get config files ...
wget -O "%ST%\_vimrc" https://raw.github.com/henices/dot_vim/master/.vimrc
wget -O "%ST%\vimfiles\config.vim" https://raw.github.com/henices/dot_vim/master/config.vim
wget -O "%ST%\vimfiles\vundle.vim" https://raw.github.com/henices/dot_vim/master/vundle.vim
wget -O "%ST%\vimfiles\bindings.vim" https://raw.github.com/henices/dot_vim/master/bundings.vim
wget -O "%ST%\vimfiles\plugin_config.vim" https://raw.github.com/henices/dot_vim/master/plugin_config.vim

echo Install vundle
git clone https://github.com/gmarik/vundle.git "%ST%\vimfiles\bundle\vundle"

echo Done All, enjoy it!
pause>nul
