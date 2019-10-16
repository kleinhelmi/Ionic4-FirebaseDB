	@echo off
	@mode con cols=125 lines=80
	color 0A

	
	REM = Konfigurationsdateien kopieren =================================================================================================
	REM INFOS zum Robocopy-Befehl: 
	REM Webseite: http://ss64.com/nt/robocopy.html

	REM Syntax
	REM      	ROBOCOPY Source_folder Destination_folder [files_to_copy] [options]
	REM z.B.	ROBOCOPY c:\source d:\dest /XF *.doc *.xls /XD c:\unwanted /S

REM	SYNTAX ROBOCOPY Source_folder Destination_folder [files_to_copy] [options]

		ROBOCOPY "c:\temp_creo\test\.Settings" "c:\temp_creo\test\.sync" /XO /PURGE
		
		
pause


REM configuration & Options
REM	Source options
REM					/S : Copy Subfolders.
REM					/E : Copy Subfolders, including Empty Subfolders.
REM	 /COPY:copyflag[s] : What to COPY (default is /COPY:DAT)
REM						  (copyflags : D=Data, A=Attributes, T=Timestamps
REM						   S=Security=NTFS ACLs, O=Owner info, U=aUditing info).
REM				  /SEC : Copy files with SECurity (equivalent to /COPY:DATS).
REM			  /DCOPY:T : Copy Directory Timestamps.
REM			  /COPYALL : Copy ALL file info (equivalent to /COPY:DATSOU).
REM			   /NOCOPY : Copy NO file info (useful with /PURGE).
REM
REM					/A : Copy only files with the Archive attribute set.
REM					/M : like /A, but remove Archive attribute from source files.
REM				/LEV:n : Only copy the top n LEVels of the source tree.
REM
REM			 /MAXAGE:n : MAXimum file AGE - exclude files older than n days/date.
REM			 /MINAGE:n : MINimum file AGE - exclude files newer than n days/date.
REM						 (If n < 1900 then n = no of days, else n = YYYYMMDD date).
REM
REM				  /FFT : Assume FAT File Times (2-second date/time granularity).
REM				  /256 : Turn off very long path (> 256 characters) support.
REM
REM	Copy options
REM					/L : List only - don’t copy, timestamp or delete any files.
REM				  /MOV : MOVe files (delete from source after copying).
REM				 /MOVE : Move files and dirs (delete from source after copying).
REM				   /sl : Copy symbolic links instead of the target.
REM					/Z : Copy files in restartable mode (survive network glitch).
REM					/B : Copy files in Backup mode.
REM					/J : Copy using unbuffered I/O (recommended for large files). ##
REM			/NOOFFLOAD : Copy files without using the Windows Copy Offload mechanism. ##
REM				   /ZB : Use restartable mode; if access denied use Backup mode.
REM				/IPG:n : Inter-Packet Gap (ms), to free bandwidth on slow lines.
REM
REM				  /R:n : Number of Retries on failed copies - default is 1 million.
REM				  /W:n : Wait time between retries - default is 30 seconds.
REM				  /REG : Save /R:n and /W:n in the Registry as default settings.
REM				  /TBD : Wait for sharenames To Be Defined (retry error 67).
REM
REM	Destination options
REM
REM		/A+:[RASHCNET] : Set file Attribute(s) on destination files + add.
REM		/A-:[RASHCNET] : UnSet file Attribute(s) on destination files - remove.
REM				  /FAT : Create destination files using 8.3 FAT file names only.
REM
REM			   /CREATE : CREATE directory tree structure + zero-length files only.
REM				  /DST : Compensate for one-hour DST time differences.
REM				/PURGE : Delete dest files/folders that no longer exist in source.
REM				  /MIR : MIRror a directory tree - equivalent to /PURGE plus all subfolders (/E)
REM
REM	   Logging options
REM					/L : List only - don’t copy, timestamp or delete any files.
REM				   /NP : No Progress - don’t display % copied.
REM			  /unicode : Display the status output as Unicode text.   #
REM			 /LOG:file : Output status to LOG file (overwrite existing log).
REM		  /UNILOG:file : Output status to Unicode Log file (overwrite)
REM			/LOG+:file : Output status to LOG file (append to existing log).
REM		 /UNILOG+:file : Output status to Unicode Log file (append)
REM				   /TS : Include Source file Time Stamps in the output.
REM				   /FP : Include Full Pathname of files in the output.
REM				   /NS : No Size - don’t log file sizes.
REM				   /NC : No Class - don’t log file classes.
REM				  /NFL : No File List - don’t log file names.
REM				  /NDL : No Directory List - don’t log directory names.
REM				  /TEE : Output to console window, as well as the log file.
REM				  /NJH : No Job Header.
REM				  /NJS : No Job Summary.
REM
REM	Repeated Copy Options
REM				/MON:n : MONitor source; run again when more than n changes seen.
REM				/MOT:m : MOnitor source; run again in m minutes Time, if changed.
REM
REM		 /RH:hhmm-hhmm : Run Hours - times when new copies can be started.
REM				   /PF : Check run hours on a Per File (not per pass) basis.
REM
REM	Job Options
REM		  /JOB:jobname : Take parameters from the named JOB file.
REM		 /SAVE:jobname : SAVE parameters to the named job file
REM				 /QUIT : QUIT after processing command line (to view parameters). 
REM				 /NOSD : NO Source Directory is specified.
REM				 /NODD : NO Destination Directory is specified.
REM				   /IF : Include the following Files.
REM
REM	Advanced options you'll probably never use
REM			   /EFSRAW : Copy any encrypted files using EFS RAW mode.
REM			   /MT[:n] : Multithreaded copying, n = no. of threads to use (1-128)  #
REM						 default = 8 threads, not compatible with /IPG and /EFSRAW
REM						 The use of /LOG is recommended for better performance.
REM
REM			   /SECFIX : FIX file SECurity on all files, even skipped files.
REM			   /TIMFIX : FIX file TIMes on all files, even skipped files.
REM
REM				   /XO : eXclude Older - if destination file exists and is the same date
REM						 or newer than the source - don’t bother to overwrite it.
REM				   /XC : eXclude Changed files
REM				   /XN : eXclude Newer files
REM				   /XL : eXclude "Lonely" files and dirs (present in source but not destination)
REM						 This will prevent any new files being added to the destination.
REM				   /XX : eXclude "eXtra" files and dirs (present in destination but not source)
REM						 This will prevent any deletions from the destination. (this is the default)
REM
REM	/XF file [file]... : eXclude Files matching given names/paths/wildcards.
REM	/XD dirs [dirs]... : eXclude Directories matching given names/paths.
REM						 XF and XD can be used in combination  e.g.
REM						 ROBOCOPY c:\source d:\dest /XF *.doc *.xls /XD c:\unwanted /S 
REM
REM	   /IA:[RASHCNETO] : Include files with any of the given Attributes
REM	   /XA:[RASHCNETO] : eXclude files with any of the given Attributes
REM				   /IS : Include Same, overwrite files even if they are already the same.
REM				   /IT : Include Tweaked files.
REM				   /XJ : eXclude Junction points. (normally included by default).
REM				  /XJD : Exclude junction points for directories. #
REM				  /XJF : Exclude junction points for files.      #
REM
REM				/MAX:n : MAXimum file size - exclude files bigger than n bytes.
REM				/MIN:n : MINimum file size - exclude files smaller than n bytes.
REM			 /MAXLAD:n : MAXimum Last Access Date - exclude files unused since n.
REM			 /MINLAD:n : MINimum Last Access Date - exclude files used since n.
REM						 (If n < 1900 then n = n days, else n = YYYYMMDD date).
REM
REM				/BYTES : Print sizes as bytes.
REM					/X : Report all eXtra files, not just those selected & copied.
REM					/V : Produce Verbose output log, showing skipped files.
REM				  /ETA : Show Estimated Time of Arrival of copied files.
REM            /DEBUG : Show debug volume information (undocumented)