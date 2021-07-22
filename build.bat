rd output /s/q
call build-content.cmd
%JAVAEXE% -Xmx2G -jar ../publisher.jar -ig ig.ini %TX% %*
