Vtiger-CRM-5.4.0
================

My customization of Vtiger, updated and patched

Contains, already applyed:

- Performance & Security Patch


Extra files
-----------

Into -developer folder there is a collection of some useful file.

`htaccess.txt` to dinamically performs the required/suggested php.ini settings for Vtiger to function properly, must be placed into the root folder and renamed as .htaccess, also needs mod_rewrite to be available in Apache 

There is a patch file from the VTiger forum to achive PHP 5.4 compatibility, splitted into 3 parts:

`vtigercrm-5.4.0-PHPv54-v2.patch` are the applyable changes
`vtigercrm-5.4.0-PHPv54-v2.psp-missing.patch` are the not applyable ones due to mssing files 
`vtigercrm-5.4.0-PHPv54-v2.psp-conflict.patch` are the not applyable ones due to prior applicatio of Performances & Security Patch

An Italian Language pack

`vtiger540_italian_language_pack_02-08-2012.zip`

Links
-----

- [vtigercrm-5.4.0-PHPv54-v2.patch](http://trac.vtiger.com/cgi-bin/trac.cgi/attachment/ticket/7618/vtigercrm-5.4.0-PHPv54-v2.patch) 
- [SourceForge repository](http://sourceforge.net/projects/vtigercrm/files/vtiger%20CRM%205.4.0/Core%20Product/VtigerCRM540_Security_Patch.zip/download) - for the saource code the patch
- [Italian Language Pack](http://lucacricchio.it/blog/informatica/vtiger/download-modulo-lingua-italiana-per-vtiger-5-4)
