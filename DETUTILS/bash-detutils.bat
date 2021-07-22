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

rem function.for.md5.hash

set detutils_hash_md5 = (
	rem debug
	echo [bash-detutils]: (debug) - Hashing current value: %string%
	rem vars
	set hash=
	set strvar=%string%
	rem write.tempfile
	echo %strvar%> detutils_tempfile.c
	rem get.filecontent.length
	for %%? in (detutils_tempfile.c) do ( set /a strlength=%%~z? - 2 )
	set utils_length=%strlength%
	rem debug
	echo [bash-detutils]: (debug) - String value length: %utils_length%
	set pass=%string%
	rem call.md5.hash
	for /f %%a in ('echo.^|md5.exe -d%pass% 2^>nul') do set "hash=%%a"
	rem res_hash.var
	set res_hash=%utils_length%%hash%%utils_length%%hash%%utils_length%
	rem debug
	echo [bash-detutils]: (debug) - Successfully hashed %string% into %res_hash%.
	rem remove.tempfile
	del detutils_tempfile.c
	rem pause
	pause
)

set detutils_display_hash = (
	rem debug
	echo [bash-detutils]: (debug) - Hash result: %res_hash%
	rem pause
	pause
)