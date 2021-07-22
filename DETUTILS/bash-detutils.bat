rem
rem                            =============================
rem                              BATCH DEntisT's Utilities
rem                            =============================
rem
rem Legal:
rem    Version: MPL 1.1
rem    
rem    The contents of this file are subject to the Mozilla Public License Version 
rem    1.1 the "License"; you may not use this file except in compliance with 
rem    the License. You may obtain a copy of the License at 
rem    http://www.mozilla.org/MPL/
rem    
rem    Software distributed under the License is distributed on an "AS IS" basis,
rem    WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
rem    for the specific language governing rights and limitations under the
rem    License.
rem    
rem     The Original Code is Bash | DET Utils.
rem    
rem    The utilstial Developer of the original code is DEntisT 'Unity' Brace.
rem    Portions created by the utilstial Developer are Copyright C 2021
rem    the utilstial Developer. All Rights Reserved.
rem
rem Contributors:
rem    DEntisT

set null=echo.

set detutils_hash = (
	echo [bash-detutils]: (debug) - Hashing current value: %string%
	set hash=
	set strvar=%string%
	echo %strvar%> detutils_tempfile.c
	for %%? in (detutils_tempfile.c) do ( set /a strlength=%%~z? - 2 )
	set utils_length=%strlength%
	echo [bash-detutils]: (debug) - String value length: %utils_length%
	set pass=%string%
	for /f %%a in ('echo.^|md5.exe -d%pass% 2^>nul') do set "hash=%%a"
	set res_hash=%utils_length%%hash%%utils_length%%hash%%utils_length%
	echo [bash-detutils]: (debug) - Successfully hashed %string% into %res_hash%.
	del detutils_tempfile.c
	pause
)

set detutils_display_hash = (
	echo [bash-detutils]: (debug) - Hash result: %res_hash%
	pause
)