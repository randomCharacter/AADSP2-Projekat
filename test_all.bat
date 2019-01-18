@echo off

SET CONFIGURATION=Debug
SET PROJECT_NAME1=model0
SET PROJECT_NAME2=model1
SET PROJECT_NAME3=model2

: Add additional command line args for your program 
SET ADDITIONAL_ARGS=1 -4 -4

SET COMPARE="tools\\PCMCompare.exe"
SET COMPARE_ARGS=-b16

: Delete log files first.

del /Q OutCmp\*
del /Q OutStreams\*


: For each Test stream
for %%f in (TestStreams\*.*) do ( 
	echo Running tests for stream: %%~nf%%~xf
	
	: Execute Model 0, Model 1 and Model 2
	echo     model 0
	"%PROJECT_NAME1%\%CONFIGURATION%\%PROJECT_NAME1%.exe" "%%f" OutStreams//%%~nf_model0.wav %ADDITIONAL_ARGS%"

	echo     model 1
	"%PROJECT_NAME2%\%CONFIGURATION%\%PROJECT_NAME2%.exe" "%%f" OutStreams//%%~nf_model1.wav %ADDITIONAL_ARGS%"
	
	echo     model 2
	"%PROJECT_NAME3%\%CONFIGURATION%\%PROJECT_NAME3%.exe" "%%f" OutStreams//%%~nf_model2.wav %ADDITIONAL_ARGS%"

	: Generate new logs
	%COMPARE% OutStreams//%%~nf_model0.wav OutStreams//%%~nf_model1.wav %COMPARE_ARGS% 2> OutCmp//%%~nf_Model0_vs_Model1.txt
	%COMPARE% OutStreams//%%~nf_model1.wav OutStreams//%%~nf_model2.wav %COMPARE_ARGS% 2> OutCmp//%%~nf_Model1_vs_Model2.txt
	%COMPARE% OutStreams//%%~nf_model1.wav OutStreams//%%~nf_model2.wav %COMPARE_ARGS% 2> OutCmp//%%~nf_Model1_vs_Model3.txt
)
cmd /k