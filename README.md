Vtiger-CRM-5.4.0
================

My customization of Vtiger, updated to version 5.4 and patched where needed.

Contains, already applyed:

- Performance & Security Patch (rev 2)
- NuSOAP (rev. 0.9.5) 

Extra files
-----------

Into `-developer` folder there is a collection of some useful files.

`htaccess.txt` to dinamically performs the required/suggested `php.ini` settings for Vtiger to function properly: it must be placed into Vtiger's base folder and renamed as `.htaccess`, it also needs **mod_rewrite** available and enabled with Apache. 

A patch file from the VTiger forum to achive PHP 5.4 compatibility, splitted into 3 parts:

- `vtigercrm-5.4.0-PHPv54-v2.patch` are the applyable changes
- `vtigercrm-5.4.0-PHPv54-v2.psp-missing.patch` are the not applyable ones due to mssing files 
- `vtigercrm-5.4.0-PHPv54-v2.psp-conflict.patch` are the not applyable ones due to prior applicatio of Performances & Security Patch

An Italian Language pack

`vtiger540_italian_language_pack_02-08-2012.zip`

A bash script to change the owner of specified files and directory: by default the owner is root:root but this as to be changed into www-data:www-data to allowing Apache to write them.

- `make-writable.sh <base path>` apply the changes considering <base path> as Vtiger install folder, using `make-writable.conf` as default file list
- `make-writable.conf` the files and directories that need to be writable during the installation process, specified one per line (directories don't have trailng slashes)
- `make-writable-lang.conf` the files and directories that need to be writable in order to import a language pack
- `make-writable-pdfmaker` the files and directories that need to be writable in order to install PDF Maker Professional module

Notes 
Non existent files or directory cause the script to stop: they have to be created manually.
The script recongnizes the wildchar only in place of the filename.

Links
-----

- [vtigercrm-5.4.0-PHPv54-v2.patch](http://trac.vtiger.com/cgi-bin/trac.cgi/attachment/ticket/7618/vtigercrm-5.4.0-PHPv54-v2.patch) 
- [SourceForge repository](http://sourceforge.net/projects/vtigercrm/files/vtiger%20CRM%205.4.0/Core%20Product/VtigerCRM540_Security_Patch.zip/download) - for the source code the performance & security patch.
- [Italian Language Pack](http://lucacricchio.it/blog/informatica/vtiger/download-modulo-lingua-italiana-per-vtiger-5-4)
