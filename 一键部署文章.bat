G:

cd G:\Blog\Hexo_Lite\Butterfly
hexo clean
hexo g
md G:\Blog\Hexo\themes\volantis\source\Butterfly
xcopy /s /q G:\Blog\Hexo_Lite\Butterfly\public\ G:\Blog\Hexo\themes\volantis\source\Butterfly

cd G:\Blog\Hexo
hexo clean
hexo g
gulp
pause