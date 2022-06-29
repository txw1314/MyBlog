G:
rmdir /s /q G:\Blog\Hexo\themes\volantis\source\Butterfly
rmdir /s /q G:\Blog\Hexo\themes\volantis\source\Shoka
rmdir /s /q G:\Blog\Hexo\themes\volantis\source\Fluid
rmdir /s /q G:\Blog\Hexo\themes\volantis\source\Matery
rmdir /s /q G:\Blog\Hexo\themes\volantis\source\Yun

rmdir /s /q G:\Blog\Hexo_Lite\Butterfly\source\_posts
rmdir /s /q G:\Blog\Hexo_Lite\Shoka\source\_posts
rmdir /s /q G:\Blog\Hexo_Lite\Fluid\source\_posts
rmdir /s /q G:\Blog\Hexo_Lite\Matery\source\_posts
rmdir /s /q G:\Blog\Hexo_Lite\Yun\source\_posts

md G:\Blog\Hexo_Lite\Butterfly\source\_posts
md G:\Blog\Hexo_Lite\Shoka\source\_posts
md G:\Blog\Hexo_Lite\Fluid\source\_posts
md G:\Blog\Hexo_Lite\Matery\source\_posts
md G:\Blog\Hexo_Lite\Yun\source\_posts

xcopy /s /q G:\Blog\Article\NoLabel G:\Blog\Hexo_Lite\Butterfly\source\_posts
xcopy /s /q G:\Blog\Article\NoLabel G:\Blog\Hexo_Lite\Fluid\source\_posts
xcopy /s /q G:\Blog\Article\NoLabel G:\Blog\Hexo_Lite\Shoka\source\_posts
xcopy /s /q G:\Blog\Article\NoLabel G:\Blog\Hexo_Lite\Matery\source\_posts
xcopy /s /q G:\Blog\Article\NoLabel G:\Blog\Hexo_Lite\Yun\source\_posts

pause