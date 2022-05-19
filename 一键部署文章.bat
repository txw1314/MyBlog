G:

cd G:\Blog\Hexo_Lite\Butterfly
hexo clean
hexo bangumi -u
hexo cinema -u
hexo g
md G:\Blog\Hexo\themes\volantis\source\Butterfly
xcopy /s /q G:\Blog\Hexo_Lite\Butterfly\public\ G:\Blog\Hexo\themes\volantis\source\Butterfly

cd G:\Blog\Hexo_Lite\Fluid
hexo clean
hexo bangumi -u
hexo cinema -u
hexo g
md G:\Blog\Hexo\themes\volantis\source\Fluid
xcopy /s /q G:\Blog\Hexo_Lite\Fluid\public\ G:\Blog\Hexo\themes\volantis\source\Fluid


cd G:\Blog\Hexo_Lite\Next
hexo clean
hexo bangumi -u
hexo cinema -u
hexo g
md G:\Blog\Hexo\themes\volantis\source\Next
xcopy /s /q G:\Blog\Hexo_Lite\Next\public\ G:\Blog\Hexo\themes\volantis\source\Next

cd G:\Blog\Hexo_Lite\Shoka
hexo clean
hexo bangumi -u
hexo cinema -u
hexo g
hexo algolia
md G:\Blog\Hexo\themes\volantis\source\Shoka
xcopy /s /q G:\Blog\Hexo_Lite\Shoka\public\ G:\Blog\Hexo\themes\volantis\source\Shoka

cd G:\Blog\Hexo_Lite\Yun
hexo clean
hexo bangumi -u
hexo cinema -u
hexo g
md G:\Blog\Hexo\themes\volantis\source\Yun
xcopy /s /q G:\Blog\Hexo_Lite\Yun\public\ G:\Blog\Hexo\themes\volantis\source\Yun

cd G:\Blog\Hexo_Lite\Matery
hexo clean
hexo bangumi -u
hexo cinema -u
hexo g
md G:\Blog\Hexo\themes\volantis\source\Matery
xcopy /s /q G:\Blog\Hexo_Lite\Matery\public\ G:\Blog\Hexo\themes\volantis\source\Matery

cd G:\Blog\Hexo
hexo clean
hexo bangumi -u
hexo cinema -u
hexo g
gulp

git add .
git commit -m "fix bugs"
git push -u origin master
pause