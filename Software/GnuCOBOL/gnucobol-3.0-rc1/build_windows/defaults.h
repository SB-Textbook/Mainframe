// Use \ to escape things, for example \\ for using in paths
// Use \" for paths with spaces

// define MAKE_DIST for using C:\\GnuCOBOL_Version:
//#define MAKE_DIST 1

#define COB_CC           "cl.exe"
#ifdef MAKE_DIST
#define COB_MAIN_DIR     "C:\\" PACKAGE_NAME "_" PACKAGE_VERSION
#define COB_CFLAGS       "-I \"" COB_MAIN_DIR "\\include\""
#ifdef _WIN64
#define COB_LDFLAGS      "/incremental:no /LIBPATH:\"" COB_MAIN_DIR "\\lib_x64\""
#else
#define COB_LDFLAGS      "/incremental:no /LIBPATH:\"" COB_MAIN_DIR "\\lib\""
#endif

#else  // no MAKE_DIST

// specify the local path where the gnucobol sources reside in:
#define COB_MAIN_DIR     "C:\\GnuCOBOL"
#define COB_CFLAGS       "-I \"" COB_MAIN_DIR "\" -I \"" COB_MAIN_DIR "\\build_windows\""

#ifdef _WIN64
#define TARGET_PLATFORM "x64"
#else
#define TARGET_PLATFORM "win32"
#endif

#ifdef _DEBUG
#define TARGET_CONFIG "debug"
#else
#define TARGET_CONFIG "release"
#endif

#define COB_LDFLAGS      "/incremental:no /LIBPATH:\"" COB_MAIN_DIR "\\build_windows\\" TARGET_PLATFORM "\\" TARGET_CONFIG "\""

#endif // no MAKE_DIST
#define COB_LIBS         "libcob.lib"

// Do not put quotation marks here:
#define COB_CONFIG_DIR   COB_MAIN_DIR "\\config"
#define COB_COPY_DIR     COB_MAIN_DIR "\\copy"

#define COB_LIBRARY_PATH "."

// /* try to use compile defines for that:
#define COB_BLD_CC       "cl.exe"
#define COB_BLD_CPPFLAGS ""
#if defined (_MSC_VER)
#if _MSC_VER > 1910
#ifdef _DEBUG
#define COB_BLD_CFLAGS   "unknown MSC DEBUG generation"
#else
#define COB_BLD_CFLAGS   "unknown MSC RELEASE generation"
#endif
#elif _MSC_VER == 1900 || _MSC_VER == 1910
#ifdef _DEBUG
#define COB_BLD_CFLAGS	"/GS /analyze- /W3 /Zc:wchar_t /ZI /Gm /Od /Zc:inline /fp:precise /errorReport:prompt /WX- /Zc:forScope /RTC1 /Gd /Oy- /MDd /EHsc"
#else
#define COB_BLD_CFLAGS	"/GS /GL /analyze- /W4 /Zc:wchar_t /Gm- /O2 /Ob2 /Zc:inline /fp:precise /errorReport:prompt /WX- /Zc:forScope /Gd /Oy- /Oi /MD /EHsc /Ot"
#endif
#elif _MSC_VER == 1800
#ifdef _DEBUG
#define COB_BLD_CFLAGS	"/GS /analyze- /W3 /Zc:wchar_t /ZI /Gm /Od /fp:precise /errorReport:prompt /WX- /Zc:forScope /RTC1 /Gd /Oy- /MDd /EHsc"
#else
#define COB_BLD_CFLAGS	"/GS /GL /analyze- /W4 /Zc:wchar_t /Gm- /O2 /Ob2 /fp:precise /errorReport:prompt /WX- /Zc:forScope /Gd /Oy- /Oi /MD /EHsc"
#endif
#elif _MSC_VER == 1700
#ifdef _DEBUG
#define COB_BLD_CFLAGS   "/GS /GL /analyze- /W4 /Zc:wchar_t /Zi /Gm- /O2 /Ob2 /fp:precise /WX- /Zc:forScope /Gd /Oy- /Oi /MD /EHsc /Ot"
#else
#define COB_BLD_CFLAGS   "/Zi /nologo /W4 /WX- /O2 /Ob2 /Oi /Ot /Oy- /GL /Gm- /EHsc /MD /GS /fp:precise /Zc:wchar_t /Zc:forScope /Gd /analyze-"
#endif
#elif _MSC_VER == 1600
#ifdef _DEBUG
#define COB_BLD_CFLAGS   "/GS /GL /analyze- /W4 /Zc:wchar_t /Zi /Gm- /O2 /Ob2 /fp:precise /WX- /Zc:forScope /Gd /Oy- /Oi /MD /EHsc /Ot"
#else
#define COB_BLD_CFLAGS   "/Zi /nologo /W4 /WX- /O2 /Ob2 /Oi /Ot /Oy- /GL /Gm- /EHsc /MD /GS /fp:precise /Zc:wchar_t /Zc:forScope /Gd /analyze-"
#endif
#elif _MSC_VER == 1500
#ifdef _DEBUG
#define COB_BLD_CFLAGS   "/O2 /Ob2 /Oi /Ot /GL /FD /EHsc /MD /W4 /nologo /c /Zi /TP"
#else
#define COB_BLD_CFLAGS   "/Od /Gm /EHsc /RTC1 /MDd /W3 /nologo /c /Zi /TP"
#endif
#elif _MSC_VER == 1400
#ifdef _DEBUG
#define COB_BLD_CFLAGS   "/Od /Gm /EHsc /RTC1 /MDd /W3 /nologo /c /Zi /TP"
#else
#define COB_BLD_CFLAGS   "/O2 /Ob2 /Oi /Ot /GL /FD /EHsc /MD /c /Zi /TP"
#endif
#endif // _MSC_VER checks
#else
#ifdef _DEBUG
#define COB_BLD_CFLAGS   "unknown DEBUG generation"
#else
#define COB_BLD_CFLAGS   "unknown RELEASE generation"
#endif
#endif
#define COB_BLD_LD       "link.exe"
#define COB_BLD_LDFLAGS  ""
#define COB_BLD_BUILD    "i686-pc-windows"
// */

#define LOCALEDIR        "C:\\locale"
