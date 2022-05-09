G:
rmdir /s /q G:\Blog\Hexo\themes\volantis\source\Butterfly
rmdir /s /q G:\Blog\Hexo\themes\volantis\source\Shoka
rmdir /s /q G:\Blog\Hexo\themes\volantis\source\Fluid

rmdir /s /q G:\Blog\Hexo_Lite\Butterfly\source\_posts
rmdir /s /q G:\Blog\Hexo_Lite\Shoka\source\_posts
rmdir /s /q G:\Blog\Hexo_Lite\Fluid\source\_posts

md G:\Blog\Hexo_Lite\Butterfly\source\_posts
md G:\Blog\Hexo_Lite\Shoka\source\_posts
md G:\Blog\Hexo_Lite\Fluid\source\_posts

xcopy /s /q G:\Blog\Hexo\source\_posts G:\Blog\Article\Normal

xcopy /s /q G:\Blog\Article\Normal G:\Blog\Hexo_Lite\Butterfly\source\_posts
xcopy /s /q G:\Blog\Article\Shoka G:\Blog\Hexo_Lite\Fluid\source\_posts
xcopy /s /q G:\Blog\Article\Shoka G:\Blog\Hexo_Lite\Shoka\source\_posts

pause