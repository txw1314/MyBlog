G:

cd G:\Blog\Hexo_Lite\Butterfly
hexo clean
hexo g
md G:\Blog\Hexo\themes\volantis\source\Butterfly
xcopy /s /q G:\Blog\Hexo_Lite\Butterfly\public\ G:\Blog\Hexo\themes\volantis\source\Butterfly

cd G:\Blog\Hexo_Lite\Shoka
hexo clean
hexo g
md G:\Blog\Hexo\themes\volantis\source\Shoka
xcopy /s /q G:\Blog\Hexo_Lite\Shoka\public\ G:\Blog\Hexo\themes\volantis\source\Shoka

cd G:\Blog\Hexo
hexo clean
hexo g
gulp
pause