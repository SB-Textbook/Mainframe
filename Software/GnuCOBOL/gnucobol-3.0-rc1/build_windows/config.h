
/* config.h, tested with x86/x64 VS2005-2017 */

#define NOISAM 0
#define BDB    1
#define VBISAM 2
#define CISAM  3
#define DISAM  4

#define NOCURSES 0
#define PDCURSES 1

#define MATHLIB_MPIR  1
#define MATHLIB_GMP   2

/* Use the following global define to switch from VBISAM to another
   ISAM configuration and/or from PDCURSES to "no curses", if needed */

#define CONFIGURED_ISAM   VBISAM        /* see possible values above */
#define CONFIGURED_CURSES PDCURSES      /* see possible values above */
#define USED_MATHLIB      MATHLIB_MPIR  /* see possible values above */

/* define if you want to use the fall-back to GetUserName
   for ACCEPT var FROM USER NAME
   note: only active if %USERNAME% is not set, needs an additional
   library for each invocation of libcob, even if not used...
#define HAVE_GETUSERNAME 1
*/

/* adjust the following linker pragmas if needed */


#ifdef WITHIN_LIBCOB
#ifdef HAVE_GETUSERNAME
#pragma comment(lib, "advapi32")
#endif

#if USED_MATHLIB == MATHLIB_MPIR 
#pragma comment(lib, "mpir")
#elif USED_MATHLIB == MATHLIB_GMP
#pragma comment(lib, "libgmp")
#endif

#if CONFIGURED_CURSES == PDCURSES 
#pragma comment(lib, "pdcurses")
#endif

#if CONFIGURED_ISAM == VBISAM 
#pragma comment(lib, "libvbisam")
#elif CONFIGURED_ISAM == DISAM
#pragma comment(lib, "libdisam72")
#elif CONFIGURED_ISAM == BDB
#if defined _DEBUG
#pragma comment(lib, "libdb48d")
//#pragma comment(lib, "libdb62d")
#else
#pragma comment(lib, "libdb48")
//#pragma comment(lib, "libdb62")
#endif
#endif /* CONFIGURED_ISAM */

#endif /* WITHIN_LIBCOB */

/* Define if building universal (internal helper macro) */
/* #undef AC_APPLE_UNIVERSAL_BUILD */

/* long int is 32 bits */
/* always true for MSC - even on x64 */
#define COB_32_BIT_LONG 1

/* Pointers are longer than 32 bits */
#ifdef _WIN64
#define COB_64_BIT_POINTER 1
#else
#undef COB_64_BIT_POINTER
#endif

/* Compilation of computed gotos works */
/* #undef COB_COMPUTED_GOTO */

/* Enable internal logging (Developers only!) */
/* #undef COB_DEBUG_LOG */

/* Executable extension */
#define COB_EXE_EXT ".exe"

/* Enable experimental code (Developers only!) */
/* #undef COB_EXPERIMENTAL */

/* Compile/link option for exporting symbols */
#define COB_EXPORT_DYN ""

/* Keyword for inline */
#define COB_KEYWORD_INLINE __inline

/* long int is long long */
/* #undef COB_LI_IS_LL */

/* Module extension */
#define COB_MODULE_EXT "dll"

/* Can not dlopen self */
#define COB_NO_SELFOPEN 1

/* Object extension */
#define COB_OBJECT_EXT "obj"

/* Enable minimum parameter check for system libraries */
/* #undef COB_PARAM_CHECK */

/* Compile/link option for PIC code */
#define COB_PIC_FLAGS ""

/* Compile/link option for shared code */
#define COB_SHARED_OPT ""

/* Strip command */
/* #undef COB_STRIP_CMD */

/* Enable extra checks within the compiler (Developers only!) */
/* #undef COB_TREE_DEBUG */

/* Define to 1 if translation of program messages to the user's native
   language is requested. */
/* #undef ENABLE_NLS */

/* Has __attribute__((aligned)) */
/* #undef HAVE_ATTRIBUTE_ALIGNED */

/* Define to 1 if you have the `canonicalize_file_name' function. */
/* #undef HAVE_CANONICALIZE_FILE_NAME */

/* Define to 1 if you have the Mac OS X function CFLocaleCopyCurrent in the
   CoreFoundation framework. */
/* #undef HAVE_CFLOCALECOPYCURRENT */

/* Define to 1 if you have the Mac OS X function CFPreferencesCopyAppValue in
   the CoreFoundation framework. */
/* #undef HAVE_CFPREFERENCESCOPYAPPVALUE */

/* Has clock_gettime function and CLOCK_REALTIME */
/* #undef HAVE_CLOCK_GETTIME */

/* curses has color_set function */
#if CONFIGURED_CURSES != NOCURSES
#define HAVE_COLOR_SET 1
#else
/* #undef HAVE_COLOR_SET */
#endif

/* curses has define_key function */
/* #undef HAVE_DEFINE_KEY */

/* ncurses has _nc_freeall function */
/* #undef HAVE_CURSES_FREEALL */

/* Define to 1 if you have the <curses.h> header file. */
#if CONFIGURED_CURSES != NOCURSES
#define HAVE_CURSES_H 1
#else
/* #undef HAVE_CURSES_H */
#endif

/* Define to 1 if you have the <db.h> header file. */
#if CONFIGURED_ISAM == BDB
#define HAVE_DB_H 1
#else
/* #undef HAVE_DB_H */
#endif

/* Define if the GNU dcgettext() function is already present or preinstalled.
   */
/* #undef HAVE_DCGETTEXT */

/* curses has define_key function */
/* #undef HAVE_DEFINE_KEY */

/* Has designated initializers */
/* #undef HAVE_DESIGNATED_INITS */
#if defined(_MSC_VER) && _MSC_VER >= 1800 /* = COB_USE_VC2013_OR_GREATER [which is defined later] */
#define HAVE_DESIGNATED_INITS 1
#endif

/* Define to 1 if you have the <disam.h> header file. */
#if CONFIGURED_ISAM == DISAM
#define HAVE_DISAM_H 1
#else
/* #undef HAVE_DISAM_H */
#endif

/* Has dladdr function */
/* #undef HAVE_DLADDR */

/* Define to 1 if you have the <dlfcn.h> header file. */
/* #undef HAVE_DLFCN_H */

/* Define to 1 if you don't have `vprintf' but do have `_doprnt.' */
/* #undef HAVE_DOPRNT */

/* Define to 1 if you have the `fcntl' function. */
/* #undef HAVE_FCNTL */

/* Define to 1 if you have the <fcntl.h> header file. */
#define HAVE_FCNTL_H 1

/* Define to 1 if you have the `fdatasync' function. */
/* #undef HAVE_FDATASYNC */

/* Declaration of finite function in ieeefp.h instead of math.h */
/* #undef HAVE_FINITE_IEEEFP_H */

/* Define to 1 if you have the `getexecname' function. */
/* #undef HAVE_GETEXECNAME */

/* Define if the GNU gettext() function is already present or preinstalled. */
/* #undef HAVE_GETTEXT */

/* Define to 1 if you have the `gettimeofday' function. */
/* #undef HAVE_GETTIMEOFDAY */

/* Define to 1 if you have the <gmp.h> header file. */
#define HAVE_GMP_H 1

/* Define if you have the iconv() function and it works. */
/* #undef HAVE_ICONV */

/* Define to 1 if you have the <inttypes.h> header file. */
#define HAVE_INTTYPES_H 1

/* Define to 1 if you have the <isam.h> header file. */
#if CONFIGURED_ISAM == CISAM
#define HAVE_ISAM_H 1
#else
/* #undef HAVE_ISAM_H */
#endif

/* Define if you have <langinfo.h> and nl_langinfo(CODESET). */
/* #undef HAVE_LANGINFO_CODESET */

/* Define to 1 if you have the `curses' library (-lcurses). */
/* #undef HAVE_LIBCURSES */

/* Define to 1 if you have the `ncurses' library (-lncurses). */
/* #undef HAVE_LIBNCURSES */

/* Define to 1 if you have the `ncursesw' library (-lncursesw). */
/* #undef HAVE_LIBNCURSESW */

/* Define to 1 if you have the `pdcurses' library (-lpdcurses). */
#if CONFIGURED_CURSES == PDCURSES
#define HAVE_LIBPDCURSES 1
#else
/* #undef HAVE_LIBPDCURSES */
#endif

/* Define to 1 if you have the `posix4' library (-lposix4). */
/* #undef HAVE_LIBPOSIX4 */

/* Define to 1 if you have the `rt' library (-lrt). */
/* #undef HAVE_LIBRT */

/* Define to 1 if you have the `localeconv' function. */
#define HAVE_LOCALECONV 1

/* Define to 1 if you have the <locale.h> header file. */
#define HAVE_LOCALE_H 1

/* Define to 1 if you have the <ltdl.h> header file. */
/* #undef HAVE_LTDL_H */

/* Define to 1 if you have the <malloc.h> header file. */
#define HAVE_MALLOC_H 1

/* Define to 1 if you have the `memmove' function. */
#define HAVE_MEMMOVE 1

/* Define to 1 if you have the <memory.h> header file. */
#define HAVE_MEMORY_H 1

/* Define to 1 if you have the `memset' function. */
#define HAVE_MEMSET 1

/* Do we have mp_get_memory_functions in gmp */
#define HAVE_MP_GET_MEMORY_FUNCTIONS 1

/* Has nanosleep function */
/* #undef HAVE_NANO_SLEEP */

/* Define to 1 if you have the <ncursesw/curses.h> header file. */
/* #undef HAVE_NCURSESW_CURSES_H */

/* Define to 1 if you have the <ncursesw/ncurses.h> header file. */
/* #undef HAVE_NCURSESW_NCURSES_H */

/* Define to 1 if you have the <ncurses.h> header file. */
/* #undef HAVE_NCURSES_H */

/* Define to 1 if you have the <ncurses/ncurses.h> header file. */
/* #undef HAVE_NCURSES_NCURSES_H */

/* Define to 1 if you have the <pdcurses.h> header file. */
/* #undef HAVE_PDCURSES_H */

/* Define to 1 if you have the `raise' function. */
#define HAVE_RAISE 1

/* Define to 1 if you have the `readlink' function. */
/* #undef HAVE_READLINK */

/* Define to 1 if you have the `realpath' function. */
/* #undef HAVE_REALPATH */

/* Define to 1 if you have the `setenv' function. */
/* _MSC does *NOT* has `setenv' (!)
   But as the handling of the fallback `putenv' is different in POSIX and _MSC
   (POSIX stores no duplicate of `putenv', where _MSC does), we pretend to
   have support for `setenv' and define it in common.c using _putenv_s,
   omitting the override parameter */
#define HAVE_SETENV 1

/* Define to 1 if you have the `setlocale' function. */
#define HAVE_SETLOCALE 1

/* Define to 1 if you have the `sigaction' function. */
/* #undef HAVE_SIGACTION */

/* Define to 1 if you have the <signal.h> header file. */
#define HAVE_SIGNAL_H 1

/* Define to 1 if the system has the type `sig_atomic_t'. */
#define HAVE_SIG_ATOMIC_T 1

/* Define to 1 if you have the <stddef.h> header file. */
#define HAVE_STDDEF_H 1

/* Define to 1 if you have the <stdint.h> header file. */
#define HAVE_STDINT_H 1

/* Define to 1 if you have the <stdlib.h> header file. */
#define HAVE_STDLIB_H 1

/* Define to 1 if you have the `strcasecmp' function. */
#define HAVE_STRCASECMP 1

/* Define to 1 if you have the `strchr' function. */
#define HAVE_STRCHR 1

/* Define to 1 if you have the `strcoll' function. */
#define HAVE_STRCOLL 1

/* Define to 1 if you have the `strdup' function. */
#define HAVE_STRDUP 1

/* Define to 1 if you have the `strerror' function. */
#define HAVE_STRERROR 1

/* Define to 1 if you have the <strings.h> header file. */
/* #undef HAVE_STRINGS_H */

/* Define to 1 if you have the <string.h> header file. */
#define HAVE_STRING_H 1

/* Define to 1 if you have the `strrchr' function. */
#define HAVE_STRRCHR 1

/* Define to 1 if you have the `strstr' function. */
#define HAVE_STRSTR 1

/* Define to 1 if you have the `strtol' function. */
#define HAVE_STRTOL 1

/* Define to 1 if you have the `strxfrm' function. */
#define HAVE_STRXFRM 1

/* Define to 1 if you have the <sys/stat.h> header file. */
#define HAVE_SYS_STAT_H 1

/* Define to 1 if you have the <sys/time.h> header file. */
/* #undef HAVE_SYS_TIME_H */

/* Define to 1 if you have the <sys/types.h> header file. */
#define HAVE_SYS_TYPES_H 1

/* Define to 1 if you have the <sys/wait.h> header file. */
/* #undef HAVE_SYS_WAIT_H */

/* Has timezone variable */
#define HAVE_TIMEZONE 1

/* Define to 1 if you have the <unistd.h> header file. */
/* #undef HAVE_UNISTD_H */

/* ncurses has use_legacy_coding function */
/* #undef HAVE_USE_LEGACY_CODING */

/* Define to 1 if you have the <vbisam.h> header file. */
#if CONFIGURED_ISAM == VBISAM
#define HAVE_VBISAM_H 1
#else
/* #undef HAVE_VBISAM_H */
#endif

/* Define to 1 if you have the `vprintf' function. */
#define HAVE_VPRINTF 1

/* Define to 1 if you have the <wchar.h> header file. */
#define HAVE_WCHAR_H 1

/* Define to the sub-directory where libtool stores uninstalled libraries. */
/* #undef LT_OBJDIR */

/* Define maximum parameters for CALL */
#define MAX_CALL_FIELD_PARAMS 192

/* Name of package */
#define PACKAGE "gnucobol"

/* Define to the address where bug reports for this package should be sent. */
#define PACKAGE_BUGREPORT "bug-gnucobol@gnu.org"

/* Define to the full name of this package. */
#define PACKAGE_NAME "GnuCOBOL"

/* Define to the full name and version of this package. */
#define PACKAGE_STRING "GnuCOBOL 3.0-dev"

/* Define to the one symbol short name of this package. */
#define PACKAGE_TARNAME "gnucobol"

/* Define to the home page for this package. */
#define PACKAGE_URL "https://www.gnu.org/software/gnucobol/"

/* Define to the version of this package. */
#define PACKAGE_VERSION "3.0-dev"

/* Define a patch level (numeric, max. 8 digits) */
#define PATCH_LEVEL COB_NUM_TAR_DATE

/* Define to 1 if you have the ANSI C header files. */
#define STDC_HEADERS 1

/* Define to 1 if your <sys/time.h> declares `struct tm'. */
/* #undef TM_IN_SYS_TIME */

/* Use system dynamic loader */
/* #undef USE_LIBDL */

/* Enable extensions on AIX 3, Interix.  */
#ifndef _ALL_SOURCE
# define _ALL_SOURCE 1
#endif
/* Enable GNU extensions on systems that have them.  */
#ifndef _GNU_SOURCE
# define _GNU_SOURCE 1
#endif
/* Enable threading extensions on Solaris.  */
#ifndef _POSIX_PTHREAD_SEMANTICS
# define _POSIX_PTHREAD_SEMANTICS 1
#endif
/* Enable extensions on HP NonStop.  */
#ifndef _TANDEM_SOURCE
# define _TANDEM_SOURCE 1
#endif
/* Enable general extensions on Solaris.  */
#ifndef __EXTENSIONS__
# define __EXTENSIONS__ 1
#endif


/* Version number of package */
#define VERSION "3.0-dev"

/* Use CISAM as ISAM handler */
#if CONFIGURED_ISAM == BDB
#define WITH_CISAM 1
#else
/* #undef WITH_CISAM */
#endif

/* curses library for extended SCREEN I/O */
#if CONFIGURED_CURSES == PDCURSES
#define WITH_CURSES "pdcurses"
#else
#define WITH_CURSES "disabled"
#endif

/* Use Berkeley DB library as emulation of ISAM handler */
#if CONFIGURED_ISAM == BDB
#define WITH_DB 1
#else
/* #undef WITH_DB */
#endif

/* Use DISAM as ISAM handler */
#if CONFIGURED_ISAM == DISAM
#define WITH_DISAM 1
#else
/* #undef WITH_DISAM */
#endif

/* Compile with an external ISAM handler */
/* #undef WITH_INDEX_EXTFH */

/* Compile with an external SEQ/RAN handler */
/* #undef WITH_SEQRA_EXTFH */

/* Define variable sequential file format */
#define WITH_VARSEQ 0

/* Use VBISAM as ISAM handler */
#if CONFIGURED_ISAM == VBISAM
#define WITH_VBISAM 1
#else
/* #undef WITH_VBISAM */
#endif

/* Define WORDS_BIGENDIAN to 1 if your processor stores words with the most
   significant byte first (like Motorola and SPARC, unlike Intel). */
#if defined AC_APPLE_UNIVERSAL_BUILD
# if defined __BIG_ENDIAN__
#  define WORDS_BIGENDIAN 1
# endif
#else
# ifndef WORDS_BIGENDIAN
/* #  undef WORDS_BIGENDIAN */
# endif
#endif

/* Define to 1 if `lex' declares `yytext' as a `char *' by default, not a
   `char[]'. */
#define YYTEXT_POINTER 1

/* Define to 1 if on MINIX. */
/* #undef _MINIX */

/* Define to 2 if the system does not provide POSIX.1 features except with
   this defined. */
/* #undef _POSIX_1_SOURCE */

/* Define to 1 if you need to in order for `stat' and other things to work. */
/* #undef _POSIX_SOURCE */

/* Define to 1 if on HPUX.  */
#ifndef _XOPEN_SOURCE_EXTENDED
/* # undef _XOPEN_SOURCE_EXTENDED */
#endif

/* Define to empty if `const' does not conform to ANSI C. */
/* #undef const */

/* Define to `unsigned int' if <sys/types.h> does not define. */
/* #undef size_t */

#undef NOISAM
#undef BDB
#undef VBISAM
#undef CISAM
#undef DISAM
#undef CONFIGURED_ISAM
#undef NOCURSES
#undef PDCURSES
#undef CONFIGURED_CURSES
#undef MATHLIB_MPIR
#undef MATHLIB_GMP
#undef USED_MATHLIB
