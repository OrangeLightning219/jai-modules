//
// This file was auto-generated using the following command:
//
// generate_bindings.exe
//



FADF_AUTO :: 0x1;

FADF_STATIC :: 0x2;

FADF_EMBEDDED :: 0x4;

FADF_FIXEDSIZE :: 0x10;

FADF_RECORD :: 0x20;

FADF_HAVEIID :: 0x40;

FADF_HAVEVARTYPE :: 0x80;

FADF_BSTR :: 0x100;

FADF_UNKNOWN :: 0x200;

FADF_DISPATCH :: 0x400;

FADF_VARIANT :: 0x800;

FADF_RESERVED :: 0xf008;

PARAMFLAG_NONE :: 0;

PARAMFLAG_FIN :: 0x1;

PARAMFLAG_FOUT :: 0x2;

PARAMFLAG_FLCID :: 0x4;

PARAMFLAG_FRETVAL :: 0x8;

PARAMFLAG_FOPT :: 0x10;

PARAMFLAG_FHASDEFAULT :: 0x20;

PARAMFLAG_FHASCUSTDATA :: 0x40;

IDLFLAG_NONE :: PARAMFLAG_NONE;

IDLFLAG_FIN :: PARAMFLAG_FIN;

IDLFLAG_FOUT :: PARAMFLAG_FOUT;

IDLFLAG_FLCID :: PARAMFLAG_FLCID;

IDLFLAG_FRETVAL :: PARAMFLAG_FRETVAL;

IMPLTYPEFLAG_FDEFAULT :: 0x1;

IMPLTYPEFLAG_FSOURCE :: 0x2;

IMPLTYPEFLAG_FRESTRICTED :: 0x4;

IMPLTYPEFLAG_FDEFAULTVTABLE :: 0x8;

DISPID_UNKNOWN :: -1;

DISPID_VALUE :: 0;

DISPID_PROPERTYPUT :: -3;

DISPID_NEWENUM :: -4;

DISPID_EVALUATE :: -5;

DISPID_CONSTRUCTOR :: -6;

DISPID_DESTRUCTOR :: -7;

DISPID_COLLECT :: -8;

PIDLIST_ABSOLUTE :: LPITEMIDLIST;
PCIDLIST_ABSOLUTE :: LPCITEMIDLIST;
PCUIDLIST_ABSOLUTE :: LPCITEMIDLIST;
PIDLIST_RELATIVE :: LPITEMIDLIST;
PCIDLIST_RELATIVE :: LPCITEMIDLIST;
PUIDLIST_RELATIVE :: LPITEMIDLIST;
PCUIDLIST_RELATIVE :: LPCITEMIDLIST;
PITEMID_CHILD :: LPITEMIDLIST;
PCITEMID_CHILD :: LPCITEMIDLIST;
PUITEMID_CHILD :: LPITEMIDLIST;
PCUITEMID_CHILD :: LPCITEMIDLIST;
PCUITEMID_CHILD_ARRAY :: LPCITEMIDLIST *;
PCUIDLIST_RELATIVE_ARRAY :: LPCITEMIDLIST *;
PCIDLIST_ABSOLUTE_ARRAY :: LPCITEMIDLIST *;
PCUIDLIST_ABSOLUTE_ARRAY :: LPCITEMIDLIST *;

PERCEIVEDFLAG_UNDEFINED :: 0x0000;
PERCEIVEDFLAG_SOFTCODED :: 0x0001;
PERCEIVEDFLAG_HARDCODED :: 0x0002;
PERCEIVEDFLAG_NATIVESUPPORT :: 0x0004;
PERCEIVEDFLAG_GDIPLUS :: 0x0010;
PERCEIVEDFLAG_WMSDK :: 0x0020;
PERCEIVEDFLAG_ZIPFOLDER :: 0x0040;

CMF_NORMAL :: 0x00000000;
CMF_DEFAULTONLY :: 0x00000001;
CMF_VERBSONLY :: 0x00000002;
CMF_EXPLORE :: 0x00000004;
CMF_NOVERBS :: 0x00000008;
CMF_CANRENAME :: 0x00000010;
CMF_NODEFAULT :: 0x00000020;

CMF_ITEMMENU :: 0x00000080;

CMF_EXTENDEDVERBS :: 0x00000100;

CMF_DISABLEDVERBS :: 0x00000200;

CMF_ASYNCVERBSTATE :: 0x00000400;
CMF_OPTIMIZEFORINVOKE :: 0x00000800;
CMF_SYNCCASCADEMENU :: 0x00001000;
CMF_DONOTPICKDEFAULT :: 0x00002000;
CMF_RESERVED :: 0xffff0000;

GCS_VERBA :: 0x00000000;
GCS_HELPTEXTA :: 0x00000001;
GCS_VALIDATEA :: 0x00000002;
GCS_VERBW :: 0x00000004;
GCS_HELPTEXTW :: 0x00000005;
GCS_VALIDATEW :: 0x00000006;
GCS_VERBICONW :: 0x00000014;
GCS_UNICODE :: 0x00000004;

GCS_VERB :: GCS_VERBA;
GCS_HELPTEXT :: GCS_HELPTEXTA;
GCS_VALIDATE :: GCS_VALIDATEA;

CMDSTR_NEWFOLDERA :: "NewFolder";
CMDSTR_VIEWLISTA :: "ViewList";
CMDSTR_VIEWDETAILSA :: "ViewDetails";

CMDSTR_NEWFOLDER :: CMDSTR_NEWFOLDERA;
CMDSTR_VIEWLIST :: CMDSTR_VIEWLISTA;
CMDSTR_VIEWDETAILS :: CMDSTR_VIEWDETAILSA;

CMIC_MASK_SHIFT_DOWN :: 0x10000000;
CMIC_MASK_CONTROL_DOWN :: 0x40000000;

CMIC_MASK_PTINVOKE :: 0x20000000;

IRTIR_TASK_NOT_RUNNING :: 0;
IRTIR_TASK_RUNNING :: 1;
IRTIR_TASK_SUSPENDED :: 2;
IRTIR_TASK_PENDING :: 3;
IRTIR_TASK_FINISHED :: 4;

ITSAT_DEFAULT_LPARAM :: cast,trunc(u64)-1;
ITSAT_DEFAULT_PRIORITY :: 0x10000000;
ITSAT_MAX_PRIORITY :: 0x7fffffff;
ITSAT_MIN_PRIORITY :: 0x00000000;
ITSSFLAG_COMPLETE_ON_DESTROY :: 0x0000;
ITSSFLAG_KILL_ON_DESTROY :: 0x0001;
ITSSFLAG_FLAGS_MASK :: 0x0003;
ITSS_THREAD_DESTROY_DEFAULT_TIMEOUT :: 10*1000;

SID_ShellTaskScheduler :: IID_IShellTaskScheduler;

SHCIDS_ALLFIELDS :: 0x80000000;
SHCIDS_CANONICALONLY :: 0x10000000;
SHCIDS_BITMASK :: 0xFFFF0000;
SHCIDS_COLUMNMASK :: 0x0000FFFF;

SFGAO_STORAGE :: 0x00000008;
SFGAO_CANRENAME :: 0x00000010;
SFGAO_CANDELETE :: 0x00000020;
SFGAO_HASPROPSHEET :: 0x00000040;
SFGAO_DROPTARGET :: 0x00000100;
SFGAO_CAPABILITYMASK :: 0x00000177;
SFGAO_PLACEHOLDER :: 0x00000800;
SFGAO_SYSTEM :: 0x00001000;
SFGAO_ENCRYPTED :: 0x00002000;
SFGAO_ISSLOW :: 0x00004000;
SFGAO_GHOSTED :: 0x00008000;
SFGAO_LINK :: 0x00010000;
SFGAO_SHARE :: 0x00020000;
SFGAO_READONLY :: 0x00040000;
SFGAO_HIDDEN :: 0x00080000;
SFGAO_DISPLAYATTRMASK :: 0x000FC000;
SFGAO_FILESYSANCESTOR :: 0x10000000;
SFGAO_FOLDER :: 0x20000000;
SFGAO_FILESYSTEM :: 0x40000000;
SFGAO_HASSUBFOLDER :: 0x80000000;
SFGAO_CONTENTSMASK :: 0x80000000;
SFGAO_VALIDATE :: 0x01000000;
SFGAO_REMOVABLE :: 0x02000000;
SFGAO_COMPRESSED :: 0x04000000;
SFGAO_BROWSABLE :: 0x08000000;
SFGAO_NONENUMERATED :: 0x00100000;
SFGAO_NEWCONTENT :: 0x00200000;
SFGAO_CANMONIKER :: 0x00400000;
SFGAO_HASSTORAGE :: 0x00400000;
SFGAO_STREAM :: 0x00400000;
SFGAO_STORAGEANCESTOR :: 0x00800000;
SFGAO_STORAGECAPMASK :: 0x70C50008;
SFGAO_PKEYSFGAOMASK :: 0x81044000;

BIND_INTERRUPTABLE :: 0xFFFFFFFF;

SVSI_NOSTATECHANGE :: cast(u32)0x80000000;

SV2GV_CURRENTVIEW :: cast,trunc(u32)-1;
SV2GV_DEFAULTVIEW :: cast,trunc(u32)-2;

SID_SFolderView :: IID_IFolderView;

CDBOSC_SETFOCUS :: 0x00000000;
CDBOSC_KILLFOCUS :: 0x00000001;
CDBOSC_SELCHANGE :: 0x00000002;
CDBOSC_RENAME :: 0x00000003;
CDBOSC_STATECHANGE :: 0x00000004;

SID_SExplorerBrowserFrame :: IID_ICommDlgBrowser;

CDB2N_CONTEXTMENU_DONE :: 0x00000001;
CDB2N_CONTEXTMENU_START :: 0x00000002;
CDB2GVF_SHOWALLFILES :: 0x00000001;

CDB2GVF_ISFILESAVE :: 0x00000002;
CDB2GVF_ALLOWPREVIEWPANE :: 0x00000004;
CDB2GVF_NOSELECTVERB :: 0x00000008;
CDB2GVF_NOINCLUDEITEM :: 0x00000010;
CDB2GVF_ISFOLDERPICKER :: 0x00000020;
CDB2GVF_ADDSHIELD :: 0x00000040;

SBSP_DEFBROWSER :: 0x0000;
SBSP_SAMEBROWSER :: 0x0001;
SBSP_NEWBROWSER :: 0x0002;
SBSP_DEFMODE :: 0x0000;
SBSP_OPENMODE :: 0x0010;
SBSP_EXPLOREMODE :: 0x0020;
SBSP_HELPMODE :: 0x0040;
SBSP_NOTRANSFERHIST :: 0x0080;
SBSP_ABSOLUTE :: 0x0000;
SBSP_RELATIVE :: 0x1000;
SBSP_PARENT :: 0x2000;
SBSP_NAVIGATEBACK :: 0x4000;
SBSP_NAVIGATEFORWARD :: 0x8000;
SBSP_ALLOW_AUTONAVIGATE :: 0x00010000;

SBSP_KEEPSAMETEMPLATE :: 0x00020000;
SBSP_KEEPWORDWHEELTEXT :: 0x00040000;
SBSP_ACTIVATE_NOFOCUS :: 0x00080000;
SBSP_CREATENOHISTORY :: 0x00100000;
SBSP_PLAYNOSOUND :: 0x00200000;

SBSP_CALLERUNTRUSTED :: 0x00800000;
SBSP_TRUSTFIRSTDOWNLOAD :: 0x01000000;
SBSP_UNTRUSTEDFORDOWNLOAD :: 0x02000000;

SBSP_NOAUTOSELECT :: 0x04000000;
SBSP_WRITENOHISTORY :: 0x08000000;

SBSP_TRUSTEDFORACTIVEX :: 0x10000000;

SBSP_FEEDNAVIGATION :: 0x20000000;

SBSP_REDIRECT :: 0x40000000;
SBSP_INITIATEDBYHLINKFRAME :: 0x80000000;
FCW_STATUS :: 0x0001;
FCW_TOOLBAR :: 0x0002;
FCW_TREE :: 0x0003;
FCW_INTERNETBAR :: 0x0006;
FCW_PROGRESS :: 0x0008;

FCT_MERGE :: 0x0001;
FCT_CONFIGABLE :: 0x0002;
FCT_ADDTOEND :: 0x0004;

SID_SProfferService :: IID_IProfferService;

IShellLink :: IShellLinkA;

ARCONTENT_AUTORUNINF :: 0x00000002;
ARCONTENT_AUDIOCD :: 0x00000004;
ARCONTENT_DVDMOVIE :: 0x00000008;
ARCONTENT_BLANKCD :: 0x00000010;
ARCONTENT_BLANKDVD :: 0x00000020;
ARCONTENT_UNKNOWNCONTENT :: 0x00000040;
ARCONTENT_AUTOPLAYPIX :: 0x00000080;
ARCONTENT_AUTOPLAYMUSIC :: 0x00000100;
ARCONTENT_AUTOPLAYVIDEO :: 0x00000200;

ARCONTENT_VCD :: 0x00000400;
ARCONTENT_SVCD :: 0x00000800;
ARCONTENT_DVDAUDIO :: 0x00001000;
ARCONTENT_BLANKBD :: 0x00002000;
ARCONTENT_BLURAY :: 0x00004000;
ARCONTENT_CAMERASTORAGE :: 0x00008000;
ARCONTENT_CUSTOMEVENT :: 0x00010000;
ARCONTENT_NONE :: 0x00000000;
ARCONTENT_MASK :: 0x0001FFFE;
ARCONTENT_PHASE_UNKNOWN :: 0x00000000;
ARCONTENT_PHASE_PRESNIFF :: 0x10000000;
ARCONTENT_PHASE_SNIFFING :: 0x20000000;
ARCONTENT_PHASE_FINAL :: 0x40000000;
ARCONTENT_PHASE_MASK :: 0x70000000;

IEI_PRIORITY_MAX :: ITSAT_MAX_PRIORITY;
IEI_PRIORITY_MIN :: ITSAT_MIN_PRIORITY;
IEIT_PRIORITY_NORMAL :: ITSAT_DEFAULT_PRIORITY;
IEIFLAG_ASYNC :: 0x0001;
IEIFLAG_CACHE :: 0x0002;
IEIFLAG_ASPECT :: 0x0004;
IEIFLAG_OFFLINE :: 0x0008;
IEIFLAG_GLEAM :: 0x0010;
IEIFLAG_SCREEN :: 0x0020;
IEIFLAG_ORIGSIZE :: 0x0040;
IEIFLAG_NOSTAMP :: 0x0080;
IEIFLAG_NOBORDER :: 0x0100;
IEIFLAG_QUALITY :: 0x0200;
IEIFLAG_REFRESH :: 0x0400;

DBIM_MINSIZE :: 0x0001;
DBIM_MAXSIZE :: 0x0002;
DBIM_INTEGRAL :: 0x0004;
DBIM_ACTUAL :: 0x0008;
DBIM_TITLE :: 0x0010;
DBIM_MODEFLAGS :: 0x0020;
DBIM_BKCOLOR :: 0x0040;

DBIMF_NORMAL :: 0x0000;
DBIMF_FIXED :: 0x0001;
DBIMF_FIXEDBMP :: 0x0004;
DBIMF_VARIABLEHEIGHT :: 0x0008;
DBIMF_UNDELETEABLE :: 0x0010;
DBIMF_DEBOSSED :: 0x0020;
DBIMF_BKCOLOR :: 0x0040;
DBIMF_USECHEVRON :: 0x0080;
DBIMF_BREAK :: 0x0100;
DBIMF_ADDTOFRONT :: 0x0200;
DBIMF_TOPALIGN :: 0x0400;

DBIMF_NOGRIPPER :: 0x0800;
DBIMF_ALWAYSGRIPPER :: 0x1000;
DBIMF_NOMARGINS :: 0x2000;

DBIF_VIEWMODE_NORMAL :: 0x0000;
DBIF_VIEWMODE_VERTICAL :: 0x0001;
DBIF_VIEWMODE_FLOATING :: 0x0002;
DBIF_VIEWMODE_TRANSPARENT :: 0x0004;

DBPC_SELECTFIRST :: cast,trunc(u32)-1;
DBPC_SELECTLAST :: cast,trunc(u32)-2;
CGID_DeskBand :: IID_IDeskBand;

THBN_CLICKED :: 0x1800;

FOFX_NOSKIPJUNCTIONS :: 0x00010000;
FOFX_PREFERHARDLINK :: 0x00020000;
FOFX_SHOWELEVATIONPROMPT :: 0x00040000;
FOFX_RECYCLEONDELETE :: 0x00080000;
FOFX_EARLYFAILURE :: 0x00100000;
FOFX_PRESERVEFILEEXTENSIONS :: 0x00200000;
FOFX_KEEPNEWERFILE :: 0x00400000;
FOFX_NOCOPYHOOKS :: 0x00800000;
FOFX_NOMINIMIZEBOX :: 0x01000000;
FOFX_MOVEACLSACROSSVOLUMES :: 0x02000000;
FOFX_DONTDISPLAYSOURCEPATH :: 0x04000000;
FOFX_DONTDISPLAYDESTPATH :: 0x08000000;
FOFX_REQUIREELEVATION :: 0x10000000;
FOFX_ADDUNDORECORD :: 0x20000000;
FOFX_COPYASDOWNLOAD :: 0x40000000;
FOFX_DONTDISPLAYLOCATIONS :: 0x80000000;

BSIM_STATE :: 0x00000001;
BSIM_STYLE :: 0x00000002;
BSSF_VISIBLE :: 0x00000001;
BSSF_NOTITLE :: 0x00000002;
BSSF_UNDELETEABLE :: 0x00001000;
BSIS_AUTOGRIPPER :: 0x00000000;
BSIS_NOGRIPPER :: 0x00000001;
BSIS_ALWAYSGRIPPER :: 0x00000002;
BSIS_LEFTALIGN :: 0x00000004;
BSIS_SINGLECLICK :: 0x00000008;
BSIS_NOCONTEXTMENU :: 0x00000010;
BSIS_NODROPTARGET :: 0x00000020;
BSIS_NOCAPTION :: 0x00000040;
BSIS_PREFERNOLINEBREAK :: 0x00000080;
BSIS_LOCKED :: 0x00000100;

BSIS_PRESERVEORDERDURINGLAYOUT :: 0x00000200;
BSIS_FIXEDORDER :: 0x00000400;

SID_SBandSite :: IID_IBandSite;
CGID_BandSite :: IID_IBandSite;

OF_CAP_CANSWITCHTO :: 0x0001;
OF_CAP_CANCLOSE :: 0x0002;

SID_SNewWindowManager :: IID_INewWindowManager;

SMDM_SHELLFOLDER :: 0x00000001;
SMDM_HMENU :: 0x00000002;
SMDM_TOOLBAR :: 0x00000004;

SMC_INITMENU :: 0x00000001;
SMC_CREATE :: 0x00000002;
SMC_EXITMENU :: 0x00000003;
SMC_GETINFO :: 0x00000005;
SMC_GETSFINFO :: 0x00000006;
SMC_GETOBJECT :: 0x00000007;
SMC_GETSFOBJECT :: 0x00000008;
SMC_SFEXEC :: 0x00000009;
SMC_SFSELECTITEM :: 0x0000000A;
SMC_REFRESH :: 0x00000010;
SMC_DEMOTE :: 0x00000011;
SMC_PROMOTE :: 0x00000012;
SMC_DEFAULTICON :: 0x00000016;
SMC_NEWITEM :: 0x00000017;
SMC_CHEVRONEXPAND :: 0x00000019;
SMC_DISPLAYCHEVRONTIP :: 0x0000002A;
SMC_SETSFOBJECT :: 0x0000002D;
SMC_SHCHANGENOTIFY :: 0x0000002E;
SMC_CHEVRONGETTIP :: 0x0000002F;
SMC_SFDDRESTRICTED :: 0x00000030;

SMC_SFEXEC_MIDDLE :: 0x00000031;
SMC_GETAUTOEXPANDSTATE :: 0x00000041;
SMC_AUTOEXPANDCHANGE :: 0x00000042;
SMC_GETCONTEXTMENUMODIFIER :: 0x00000043;
SMC_GETBKCONTEXTMENU :: 0x00000044;
SMC_OPEN :: 0x00000045;

SMAE_EXPANDED :: 0x00000001;
SMAE_CONTRACTED :: 0x00000002;

SMAE_USER :: 0x00000004;

SMAE_VALID :: 0x00000007;

SMINIT_DEFAULT :: 0x00000000;
SMINIT_RESTRICT_DRAGDROP :: 0x00000002;
SMINIT_TOPLEVEL :: 0x00000004;
SMINIT_CACHED :: 0x00000010;

SMINIT_AUTOEXPAND :: 0x00000100;
SMINIT_AUTOTOOLTIP :: 0x00000200;
SMINIT_DROPONCONTAINER :: 0x00000400;

SMINIT_VERTICAL :: 0x10000000;
SMINIT_HORIZONTAL :: 0x20000000;
ANCESTORDEFAULT :: cast,trunc(u32)-1;
SMSET_TOP :: 0x10000000;
SMSET_BOTTOM :: 0x20000000;
SMSET_DONTOWN :: 0x00000001;
SMINV_REFRESH :: 0x00000001;
SMINV_ID :: 0x00000008;

SID_SNewMenuClient :: IID_INewMenuClient;

SID_SNavigationPane :: IID_INameSpaceTreeControl;

SID_ExplorerPaneVisibility :: IID_IExplorerPaneVisibility;

SID_ExecuteCommandHost :: IID_IExecuteCommandHost;

SID_HandlerInfo :: IID_IHandlerInfo;

SID_SHandlerActivationHost :: IID_IHandlerActivationHost;

SID_AppActivationUIInfo :: IID_IAppActivationUIInfo;

ISIOI_ICONFILE :: 0x00000001;
ISIOI_ICONINDEX :: 0x00000002;

IDD_WIZEXTN_FIRST :: 0x5000;
IDD_WIZEXTN_LAST :: 0x5100;

SID_WizardSite :: IID_IWizardSite;

SID_WebWizardHost :: IID_IWebWizardExtension;
SHPWHF_NORECOMPRESS :: 0x00000001;
SHPWHF_NONETPLACECREATE :: 0x00000002;
SHPWHF_NOFILESELECTOR :: 0x00000004;
SHPWHF_USEMRU :: 0x00000008;

SHPWHF_ANYLOCATION :: 0x00000100;

SHPWHF_VALIDATEVIAWEBFOLDERS :: 0x00010000;

ACDD_VISIBLE :: 0x0001;

SID_CDWizardHost :: IID_ICDBurnExt;

SID_EnumerableView :: IID_IEnumerableView;

NSTCDHPOS_ONTOP :: -1;

SID_SBandHost :: IID_IBandHost;

SID_PublishingWizard :: CLSID_PublishingWizard;

SID_SkipHung :: IID_IEnumVARIANT;

PCWSTR :: *s16;

CLSID :: GUID;

byte :: u8;

CURRENCY :: CY;

tagSAFEARRAYBOUND :: struct {
    cElements: u32;
    lLbound:   s32;
}

SAFEARRAYBOUND :: tagSAFEARRAYBOUND;

wireVARIANT :: *wireVARIANT;

wireBRECORD :: *wireBRECORD;

wireSAFEARR_BSTR :: struct {
    Size:  u32;
    aBstr: *wireBSTR;
}

SAFEARR_BSTR :: wireSAFEARR_BSTR;

wireSAFEARR_UNKNOWN :: struct {
    Size:      u32;
    apUnknown: **IUnknown;
}

SAFEARR_UNKNOWN :: wireSAFEARR_UNKNOWN;

wireSAFEARR_DISPATCH :: struct {
    Size:       u32;
    apDispatch: **IDispatch;
}

SAFEARR_DISPATCH :: wireSAFEARR_DISPATCH;

wireSAFEARR_VARIANT :: struct {
    Size:     u32;
    aVariant: *wireVARIANT;
}

SAFEARR_VARIANT :: wireSAFEARR_VARIANT;

wireSAFEARR_BRECORD :: struct {
    Size:    u32;
    aRecord: *wireBRECORD;
}

SAFEARR_BRECORD :: wireSAFEARR_BRECORD;

wireSAFEARR_HAVEIID :: struct {
    Size:      u32;
    apUnknown: **IUnknown;
    iid:       IID;
}

SAFEARR_HAVEIID :: wireSAFEARR_HAVEIID;

tagSF_TYPE :: enum s32 {
    ERROR    :: 10;
    I1       :: 16;
    I2       :: 2;
    I4       :: 3;
    I8       :: 20;
    BSTR     :: 8;
    UNKNOWN  :: 13;
    DISPATCH :: 9;
    VARIANT  :: 12;
    RECORD   :: 36;
    HAVEIID  :: 32781;

    SF_ERROR    :: ERROR;
    SF_I1       :: I1;
    SF_I2       :: I2;
    SF_I4       :: I4;
    SF_I8       :: I8;
    SF_BSTR     :: BSTR;
    SF_UNKNOWN  :: UNKNOWN;
    SF_DISPATCH :: DISPATCH;
    SF_VARIANT  :: VARIANT;
    SF_RECORD   :: RECORD;
    SF_HAVEIID  :: HAVEIID;
}

SF_TYPE :: tagSF_TYPE;

wireSAFEARRAY_UNION :: struct {
    sfType: u32;
    __MIDL_IOleAutomationTypes_0001 :: union {
        BstrStr:     SAFEARR_BSTR;
        UnknownStr:  SAFEARR_UNKNOWN;
        DispatchStr: SAFEARR_DISPATCH;
        VariantStr:  SAFEARR_VARIANT;
        RecordStr:   SAFEARR_BRECORD;
        HaveIidStr:  SAFEARR_HAVEIID;
        ByteStr:     BYTE_SIZEDARR;
        WordStr:     WORD_SIZEDARR;
        LongStr:     DWORD_SIZEDARR;
        HyperStr:    HYPER_SIZEDARR;
    }

    u:      __MIDL_IOleAutomationTypes_0001;
}

SAFEARRAYUNION :: wireSAFEARRAY_UNION;

wireSAFEARRAY :: struct {
    cDims:         u16;
    fFeatures:     u16;
    cbElements:    u32;
    cLocks:        u32;
    uArrayStructs: SAFEARRAYUNION;
    rgsabound:     [1] SAFEARRAYBOUND;
}

wireSAFEARRAY :: *wireSAFEARRAY;

wirePSAFEARRAY :: *wireSAFEARRAY;

tagSAFEARRAY :: struct {
    cDims:      u16;
    fFeatures:  u16;
    cbElements: u32;
    cLocks:     u32;
    pvData:     PVOID;
    rgsabound:  [1] SAFEARRAYBOUND;
}

SAFEARRAY :: tagSAFEARRAY;

VARIANT :: tagVARIANT;

tagVARIANT :: struct {
    union {
        struct {
            vt:         VARTYPE;
            wReserved1: u16;
            wReserved2: u16;
            wReserved3: u16;
            union {
                llVal:                     s64;
                lVal:                      s32;
                bVal:                      u8;
                iVal:                      s16;
                fltVal:                    float;
                dblVal:                    float64;
                boolVal:                   VARIANT_BOOL;
                __OBSOLETE__VARIANT_BOOL:  VARIANT_BOOL;
                scode:                     SCODE;
                cyVal:                     CY;
                date:                      DATE;
                bstrVal:                   BSTR;
                punkVal:                   *IUnknown;
                pdispVal:                  *IDispatch;
                parray:                    *SAFEARRAY;
                pbVal:                     *u8;
                piVal:                     *s16;
                plVal:                     *s32;
                pllVal:                    *s64;
                pfltVal:                   *float;
                pdblVal:                   *float64;
                pboolVal:                  *VARIANT_BOOL;
                __OBSOLETE__VARIANT_PBOOL: *VARIANT_BOOL;
                pscode:                    *SCODE;
                pcyVal:                    *CY;
                pdate:                     *DATE;
                pbstrVal:                  *BSTR;
                ppunkVal:                  **IUnknown;
                ppdispVal:                 **IDispatch;
                pparray:                   **SAFEARRAY;
                pvarVal:                   *VARIANT;
                byref:                     PVOID;
                cVal:                      u8;
                uiVal:                     u16;
                ulVal:                     u32;
                ullVal:                    u64;
                intVal:                    s32;
                uintVal:                   u32;
                pdecVal:                   *DECIMAL;
                pcVal:                     *u8;
                puiVal:                    *u16;
                pulVal:                    *u32;
                pullVal:                   *u64;
                pintVal:                   *s32;
                puintVal:                  *u32;
                struct {
                    pvRecord: PVOID;
                    pRecInfo: *IRecordInfo;
                }
            }
        }

        decVal: DECIMAL;
    }
}

VARIANTARG :: VARIANT;

wireBRECORD :: struct {
    fFlags:   u32;
    clSize:   u32;
    pRecInfo: *IRecordInfo;
    pRecord:  *byte;
}

wireVARIANT :: struct {
    clSize:      u32;
    rpcReserved: u32;
    vt:          u16;
    wReserved1:  u16;
    wReserved2:  u16;
    wReserved3:  u16;
    union {
        llVal:     s64;
        lVal:      s32;
        bVal:      u8;
        iVal:      s16;
        fltVal:    float;
        dblVal:    float64;
        boolVal:   VARIANT_BOOL;
        scode:     SCODE;
        cyVal:     CY;
        date:      DATE;
        bstrVal:   wireBSTR;
        punkVal:   *IUnknown;
        pdispVal:  *IDispatch;
        parray:    wirePSAFEARRAY;
        brecVal:   wireBRECORD;
        pbVal:     *u8;
        piVal:     *s16;
        plVal:     *s32;
        pllVal:    *s64;
        pfltVal:   *float;
        pdblVal:   *float64;
        pboolVal:  *VARIANT_BOOL;
        pscode:    *SCODE;
        pcyVal:    *CY;
        pdate:     *DATE;
        pbstrVal:  *wireBSTR;
        ppunkVal:  **IUnknown;
        ppdispVal: **IDispatch;
        pparray:   *wirePSAFEARRAY;
        pvarVal:   *wireVARIANT;
        cVal:      u8;
        uiVal:     u16;
        ulVal:     u32;
        ullVal:    u64;
        intVal:    s32;
        uintVal:   u32;
        decVal:    DECIMAL;
        pdecVal:   *DECIMAL;
        pcVal:     *u8;
        puiVal:    *u16;
        pulVal:    *u32;
        pullVal:   *u64;
        pintVal:   *s32;
        puintVal:  *u32;
    }
}

HREFTYPE :: u32;

tagTYPEKIND :: enum s32 {
    ENUM      :: 0;
    RECORD    :: 1;
    MODULE    :: 2;
    INTERFACE :: 3;
    DISPATCH  :: 4;
    COCLASS   :: 5;
    ALIAS     :: 6;
    UNION     :: 7;
    MAX       :: 8;

    TKIND_ENUM      :: ENUM;
    TKIND_RECORD    :: RECORD;
    TKIND_MODULE    :: MODULE;
    TKIND_INTERFACE :: INTERFACE;
    TKIND_DISPATCH  :: DISPATCH;
    TKIND_COCLASS   :: COCLASS;
    TKIND_ALIAS     :: ALIAS;
    TKIND_UNION     :: UNION;
    TKIND_MAX       :: MAX;
}

TYPEKIND :: tagTYPEKIND;

tagTYPEDESC :: struct {
    union {
        lptdesc:  *tagTYPEDESC;
        lpadesc:  *tagARRAYDESC;
        hreftype: HREFTYPE;
    }

    vt: VARTYPE;
}

TYPEDESC :: tagTYPEDESC;

tagARRAYDESC :: struct {
    tdescElem: TYPEDESC;
    cDims:     u16;
    rgbounds:  [1] SAFEARRAYBOUND;
}

ARRAYDESC :: tagARRAYDESC;

tagPARAMDESCEX :: struct {
    cBytes:          u32;
    varDefaultValue: VARIANTARG #align 4;
}

PARAMDESCEX :: tagPARAMDESCEX;

tagPARAMDESC :: struct {
    pparamdescex: LPPARAMDESCEX;
    wParamFlags:  u16;
}

PARAMDESC :: tagPARAMDESC;

tagIDLDESC :: struct {
    dwReserved: u64;
    wIDLFlags:  u16;
}

IDLDESC :: tagIDLDESC;

tagELEMDESC :: struct {
    tdesc: TYPEDESC;
    union {
        idldesc:   IDLDESC;
        paramdesc: PARAMDESC;
    }
}

ELEMDESC :: tagELEMDESC;

tagTYPEATTR :: struct {
    guid:             GUID;
    lcid:             LCID;
    dwReserved:       u32;
    memidConstructor: MEMBERID;
    memidDestructor:  MEMBERID;
    lpstrSchema:      LPOLESTR;
    cbSizeInstance:   u32;
    typekind:         TYPEKIND;
    cFuncs:           u16;
    cVars:            u16;
    cImplTypes:       u16;
    cbSizeVft:        u16;
    cbAlignment:      u16;
    wTypeFlags:       u16;
    wMajorVerNum:     u16;
    wMinorVerNum:     u16;
    tdescAlias:       TYPEDESC;
    idldescType:      IDLDESC;
}

TYPEATTR :: tagTYPEATTR;

tagDISPPARAMS :: struct {
    rgvarg:            *VARIANTARG;
    rgdispidNamedArgs: *DISPID;
    cArgs:             u32;
    cNamedArgs:        u32;
}

DISPPARAMS :: tagDISPPARAMS;

tagEXCEPINFO :: struct {
    wCode:             u16;
    wReserved:         u16;
    bstrSource:        BSTR;
    bstrDescription:   BSTR;
    bstrHelpFile:      BSTR;
    dwHelpContext:     u32;
    pvReserved:        PVOID;
    pfnDeferredFillIn: #type (unknown0: *tagEXCEPINFO) -> HRESULT #c_call;
    scode:             SCODE;
}

EXCEPINFO :: tagEXCEPINFO;

tagCALLCONV :: enum s32 {
    FASTCALL   :: 0;
    CDECL      :: 1;
    MSCPASCAL  :: 2;
    PASCAL     :: 2;
    MACPASCAL  :: 3;
    STDCALL    :: 4;
    FPFASTCALL :: 5;
    SYSCALL    :: 6;
    MPWCDECL   :: 7;
    MPWPASCAL  :: 8;
    MAX        :: 9;

    CC_FASTCALL   :: FASTCALL;
    CC_CDECL      :: CDECL;
    CC_MSCPASCAL  :: MSCPASCAL;
    CC_PASCAL     :: PASCAL;
    CC_MACPASCAL  :: MACPASCAL;
    CC_STDCALL    :: STDCALL;
    CC_FPFASTCALL :: FPFASTCALL;
    CC_SYSCALL    :: SYSCALL;
    CC_MPWCDECL   :: MPWCDECL;
    CC_MPWPASCAL  :: MPWPASCAL;
    CC_MAX        :: MAX;
}

CALLCONV :: tagCALLCONV;

tagFUNCKIND :: enum s32 {
    VIRTUAL     :: 0;
    PUREVIRTUAL :: 1;
    NONVIRTUAL  :: 2;
    STATIC      :: 3;
    DISPATCH    :: 4;

    FUNC_VIRTUAL     :: VIRTUAL;
    FUNC_PUREVIRTUAL :: PUREVIRTUAL;
    FUNC_NONVIRTUAL  :: NONVIRTUAL;
    FUNC_STATIC      :: STATIC;
    FUNC_DISPATCH    :: DISPATCH;
}

FUNCKIND :: tagFUNCKIND;

tagINVOKEKIND :: enum s32 {
    FUNC           :: 1;
    PROPERTYGET    :: 2;
    PROPERTYPUT    :: 4;
    PROPERTYPUTREF :: 8;

    INVOKE_FUNC           :: FUNC;
    INVOKE_PROPERTYGET    :: PROPERTYGET;
    INVOKE_PROPERTYPUT    :: PROPERTYPUT;
    INVOKE_PROPERTYPUTREF :: PROPERTYPUTREF;
}

INVOKEKIND :: tagINVOKEKIND;

tagFUNCDESC :: struct {
    memid:             MEMBERID;
    lprgscode:         *SCODE;
    lprgelemdescParam: *ELEMDESC;
    funckind:          FUNCKIND;
    invkind:           INVOKEKIND;
    callconv:          CALLCONV;
    cParams:           s16;
    cParamsOpt:        s16;
    oVft:              s16;
    cScodes:           s16;
    elemdescFunc:      ELEMDESC #align 6;
    wFuncFlags:        u16;
}

FUNCDESC :: tagFUNCDESC;

tagVARKIND :: enum s32 {
    PERINSTANCE :: 0;
    STATIC      :: 1;
    CONST       :: 2;
    DISPATCH    :: 3;

    VAR_PERINSTANCE :: PERINSTANCE;
    VAR_STATIC      :: STATIC;
    VAR_CONST       :: CONST;
    VAR_DISPATCH    :: DISPATCH;
}

VARKIND :: tagVARKIND;

tagVARDESC :: struct {
    memid:       MEMBERID;
    lpstrSchema: LPOLESTR;
    union {
        oInst:      u32;
        lpvarValue: *VARIANT;
    }

    elemdescVar: ELEMDESC;
    wVarFlags:   u16;
    varkind:     VARKIND;
}

VARDESC :: tagVARDESC;

tagTYPEFLAGS :: enum s32 {
    FAPPOBJECT     :: 1;
    FCANCREATE     :: 2;
    FLICENSED      :: 4;
    FPREDECLID     :: 8;
    FHIDDEN        :: 16;
    FCONTROL       :: 32;
    FDUAL          :: 64;
    FNONEXTENSIBLE :: 128;
    FOLEAUTOMATION :: 256;
    FRESTRICTED    :: 512;
    FAGGREGATABLE  :: 1024;
    FREPLACEABLE   :: 2048;
    FDISPATCHABLE  :: 4096;
    FREVERSEBIND   :: 8192;
    FPROXY         :: 16384;

    TYPEFLAG_FAPPOBJECT     :: FAPPOBJECT;
    TYPEFLAG_FCANCREATE     :: FCANCREATE;
    TYPEFLAG_FLICENSED      :: FLICENSED;
    TYPEFLAG_FPREDECLID     :: FPREDECLID;
    TYPEFLAG_FHIDDEN        :: FHIDDEN;
    TYPEFLAG_FCONTROL       :: FCONTROL;
    TYPEFLAG_FDUAL          :: FDUAL;
    TYPEFLAG_FNONEXTENSIBLE :: FNONEXTENSIBLE;
    TYPEFLAG_FOLEAUTOMATION :: FOLEAUTOMATION;
    TYPEFLAG_FRESTRICTED    :: FRESTRICTED;
    TYPEFLAG_FAGGREGATABLE  :: FAGGREGATABLE;
    TYPEFLAG_FREPLACEABLE   :: FREPLACEABLE;
    TYPEFLAG_FDISPATCHABLE  :: FDISPATCHABLE;
    TYPEFLAG_FREVERSEBIND   :: FREVERSEBIND;
    TYPEFLAG_FPROXY         :: FPROXY;
}

TYPEFLAGS :: tagTYPEFLAGS;

tagFUNCFLAGS :: enum s32 {
    FRESTRICTED       :: 1;
    FSOURCE           :: 2;
    FBINDABLE         :: 4;
    FREQUESTEDIT      :: 8;
    FDISPLAYBIND      :: 16;
    FDEFAULTBIND      :: 32;
    FHIDDEN           :: 64;
    FUSESGETLASTERROR :: 128;
    FDEFAULTCOLLELEM  :: 256;
    FUIDEFAULT        :: 512;
    FNONBROWSABLE     :: 1024;
    FREPLACEABLE      :: 2048;
    FIMMEDIATEBIND    :: 4096;

    FUNCFLAG_FRESTRICTED       :: FRESTRICTED;
    FUNCFLAG_FSOURCE           :: FSOURCE;
    FUNCFLAG_FBINDABLE         :: FBINDABLE;
    FUNCFLAG_FREQUESTEDIT      :: FREQUESTEDIT;
    FUNCFLAG_FDISPLAYBIND      :: FDISPLAYBIND;
    FUNCFLAG_FDEFAULTBIND      :: FDEFAULTBIND;
    FUNCFLAG_FHIDDEN           :: FHIDDEN;
    FUNCFLAG_FUSESGETLASTERROR :: FUSESGETLASTERROR;
    FUNCFLAG_FDEFAULTCOLLELEM  :: FDEFAULTCOLLELEM;
    FUNCFLAG_FUIDEFAULT        :: FUIDEFAULT;
    FUNCFLAG_FNONBROWSABLE     :: FNONBROWSABLE;
    FUNCFLAG_FREPLACEABLE      :: FREPLACEABLE;
    FUNCFLAG_FIMMEDIATEBIND    :: FIMMEDIATEBIND;
}

FUNCFLAGS :: tagFUNCFLAGS;

tagVARFLAGS :: enum s32 {
    FREADONLY        :: 1;
    FSOURCE          :: 2;
    FBINDABLE        :: 4;
    FREQUESTEDIT     :: 8;
    FDISPLAYBIND     :: 16;
    FDEFAULTBIND     :: 32;
    FHIDDEN          :: 64;
    FRESTRICTED      :: 128;
    FDEFAULTCOLLELEM :: 256;
    FUIDEFAULT       :: 512;
    FNONBROWSABLE    :: 1024;
    FREPLACEABLE     :: 2048;
    FIMMEDIATEBIND   :: 4096;

    VARFLAG_FREADONLY        :: FREADONLY;
    VARFLAG_FSOURCE          :: FSOURCE;
    VARFLAG_FBINDABLE        :: FBINDABLE;
    VARFLAG_FREQUESTEDIT     :: FREQUESTEDIT;
    VARFLAG_FDISPLAYBIND     :: FDISPLAYBIND;
    VARFLAG_FDEFAULTBIND     :: FDEFAULTBIND;
    VARFLAG_FHIDDEN          :: FHIDDEN;
    VARFLAG_FRESTRICTED      :: FRESTRICTED;
    VARFLAG_FDEFAULTCOLLELEM :: FDEFAULTCOLLELEM;
    VARFLAG_FUIDEFAULT       :: FUIDEFAULT;
    VARFLAG_FNONBROWSABLE    :: FNONBROWSABLE;
    VARFLAG_FREPLACEABLE     :: FREPLACEABLE;
    VARFLAG_FIMMEDIATEBIND   :: FIMMEDIATEBIND;
}

VARFLAGS :: tagVARFLAGS;

tagCLEANLOCALSTORAGE :: struct {
    pInterface: *IUnknown;
    pStorage:   PVOID;
    flags:      u32;
}

CLEANLOCALSTORAGE :: tagCLEANLOCALSTORAGE;

tagCUSTDATAITEM :: struct {
    guid:     GUID;
    varValue: VARIANTARG;
}

CUSTDATAITEM :: tagCUSTDATAITEM;

tagCUSTDATA :: struct {
    cCustData:   u32;
    prgCustData: LPCUSTDATAITEM;
}

CUSTDATA :: tagCUSTDATA;

IOleAutomationTypes_v1_0_c_ifspec: RPC_IF_HANDLE;
IOleAutomationTypes_v1_0_s_ifspec: RPC_IF_HANDLE;


ICreateTypeInfo_UUID :: "00020405-0000-0000-C000-000000000046";
ICreateTypeInfo :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; icreatetypeinfo_vtable: *ICreateTypeInfo_VTable;
}
ICreateTypeInfo_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SetGuid: (this: *ICreateTypeInfo, guid: *GUID) -> HRESULT #cpp_method;

    SetTypeFlags: (this: *ICreateTypeInfo, uTypeFlags: u32) -> HRESULT #cpp_method;

    SetDocString: (this: *ICreateTypeInfo, pStrDoc: LPOLESTR) -> HRESULT #cpp_method;

    SetHelpContext: (this: *ICreateTypeInfo, dwHelpContext: u32) -> HRESULT #cpp_method;

    SetVersion: (this: *ICreateTypeInfo, wMajorVerNum: u16, wMinorVerNum: u16) -> HRESULT #cpp_method;

    AddRefTypeInfo: (this: *ICreateTypeInfo, pTInfo: *ITypeInfo, phRefType: *HREFTYPE) -> HRESULT #cpp_method;

    AddFuncDesc: (this: *ICreateTypeInfo, index: u32, pFuncDesc: *FUNCDESC) -> HRESULT #cpp_method;

    AddImplType: (this: *ICreateTypeInfo, index: u32, hRefType: HREFTYPE) -> HRESULT #cpp_method;

    SetImplTypeFlags: (this: *ICreateTypeInfo, index: u32, implTypeFlags: s32) -> HRESULT #cpp_method;

    SetAlignment: (this: *ICreateTypeInfo, cbAlignment: u16) -> HRESULT #cpp_method;

    SetSchema: (this: *ICreateTypeInfo, pStrSchema: LPOLESTR) -> HRESULT #cpp_method;

    AddVarDesc: (this: *ICreateTypeInfo, index: u32, pVarDesc: *VARDESC) -> HRESULT #cpp_method;

    SetFuncAndParamNames: (this: *ICreateTypeInfo, index: u32, rgszNames: *LPOLESTR, cNames: u32) -> HRESULT #cpp_method;

    SetVarName: (this: *ICreateTypeInfo, index: u32, szName: LPOLESTR) -> HRESULT #cpp_method;

    SetTypeDescAlias: (this: *ICreateTypeInfo, pTDescAlias: *TYPEDESC) -> HRESULT #cpp_method;

    DefineFuncAsDllEntry: (this: *ICreateTypeInfo, index: u32, szDllName: LPOLESTR, szProcName: LPOLESTR) -> HRESULT #cpp_method;

    SetFuncDocString: (this: *ICreateTypeInfo, index: u32, szDocString: LPOLESTR) -> HRESULT #cpp_method;

    SetVarDocString: (this: *ICreateTypeInfo, index: u32, szDocString: LPOLESTR) -> HRESULT #cpp_method;

    SetFuncHelpContext: (this: *ICreateTypeInfo, index: u32, dwHelpContext: u32) -> HRESULT #cpp_method;

    SetVarHelpContext: (this: *ICreateTypeInfo, index: u32, dwHelpContext: u32) -> HRESULT #cpp_method;

    SetMops: (this: *ICreateTypeInfo, index: u32, bstrMops: BSTR) -> HRESULT #cpp_method;

    SetTypeIdldesc: (this: *ICreateTypeInfo, pIdlDesc: *IDLDESC) -> HRESULT #cpp_method;

    LayOut: (this: *ICreateTypeInfo) -> HRESULT #cpp_method;
}

ICreateTypeInfo_SetGuid :: inline (this: *ICreateTypeInfo, guid: *GUID) -> HRESULT { return this.icreatetypeinfo_vtable.SetGuid(this, guid); }

ICreateTypeInfo_SetTypeFlags :: inline (this: *ICreateTypeInfo, uTypeFlags: u32) -> HRESULT { return this.icreatetypeinfo_vtable.SetTypeFlags(this, uTypeFlags); }

ICreateTypeInfo_SetDocString :: inline (this: *ICreateTypeInfo, pStrDoc: LPOLESTR) -> HRESULT { return this.icreatetypeinfo_vtable.SetDocString(this, pStrDoc); }

ICreateTypeInfo_SetHelpContext :: inline (this: *ICreateTypeInfo, dwHelpContext: u32) -> HRESULT { return this.icreatetypeinfo_vtable.SetHelpContext(this, dwHelpContext); }

ICreateTypeInfo_SetVersion :: inline (this: *ICreateTypeInfo, wMajorVerNum: u16, wMinorVerNum: u16) -> HRESULT { return this.icreatetypeinfo_vtable.SetVersion(this, wMajorVerNum, wMinorVerNum); }

ICreateTypeInfo_AddRefTypeInfo :: inline (this: *ICreateTypeInfo, pTInfo: *ITypeInfo, phRefType: *HREFTYPE) -> HRESULT { return this.icreatetypeinfo_vtable.AddRefTypeInfo(this, pTInfo, phRefType); }

ICreateTypeInfo_AddFuncDesc :: inline (this: *ICreateTypeInfo, index: u32, pFuncDesc: *FUNCDESC) -> HRESULT { return this.icreatetypeinfo_vtable.AddFuncDesc(this, index, pFuncDesc); }

ICreateTypeInfo_AddImplType :: inline (this: *ICreateTypeInfo, index: u32, hRefType: HREFTYPE) -> HRESULT { return this.icreatetypeinfo_vtable.AddImplType(this, index, hRefType); }

ICreateTypeInfo_SetImplTypeFlags :: inline (this: *ICreateTypeInfo, index: u32, implTypeFlags: s32) -> HRESULT { return this.icreatetypeinfo_vtable.SetImplTypeFlags(this, index, implTypeFlags); }

ICreateTypeInfo_SetAlignment :: inline (this: *ICreateTypeInfo, cbAlignment: u16) -> HRESULT { return this.icreatetypeinfo_vtable.SetAlignment(this, cbAlignment); }

ICreateTypeInfo_SetSchema :: inline (this: *ICreateTypeInfo, pStrSchema: LPOLESTR) -> HRESULT { return this.icreatetypeinfo_vtable.SetSchema(this, pStrSchema); }

ICreateTypeInfo_AddVarDesc :: inline (this: *ICreateTypeInfo, index: u32, pVarDesc: *VARDESC) -> HRESULT { return this.icreatetypeinfo_vtable.AddVarDesc(this, index, pVarDesc); }

ICreateTypeInfo_SetFuncAndParamNames :: inline (this: *ICreateTypeInfo, index: u32, rgszNames: *LPOLESTR, cNames: u32) -> HRESULT { return this.icreatetypeinfo_vtable.SetFuncAndParamNames(this, index, rgszNames, cNames); }

ICreateTypeInfo_SetVarName :: inline (this: *ICreateTypeInfo, index: u32, szName: LPOLESTR) -> HRESULT { return this.icreatetypeinfo_vtable.SetVarName(this, index, szName); }

ICreateTypeInfo_SetTypeDescAlias :: inline (this: *ICreateTypeInfo, pTDescAlias: *TYPEDESC) -> HRESULT { return this.icreatetypeinfo_vtable.SetTypeDescAlias(this, pTDescAlias); }

ICreateTypeInfo_DefineFuncAsDllEntry :: inline (this: *ICreateTypeInfo, index: u32, szDllName: LPOLESTR, szProcName: LPOLESTR) -> HRESULT { return this.icreatetypeinfo_vtable.DefineFuncAsDllEntry(this, index, szDllName, szProcName); }

ICreateTypeInfo_SetFuncDocString :: inline (this: *ICreateTypeInfo, index: u32, szDocString: LPOLESTR) -> HRESULT { return this.icreatetypeinfo_vtable.SetFuncDocString(this, index, szDocString); }

ICreateTypeInfo_SetVarDocString :: inline (this: *ICreateTypeInfo, index: u32, szDocString: LPOLESTR) -> HRESULT { return this.icreatetypeinfo_vtable.SetVarDocString(this, index, szDocString); }

ICreateTypeInfo_SetFuncHelpContext :: inline (this: *ICreateTypeInfo, index: u32, dwHelpContext: u32) -> HRESULT { return this.icreatetypeinfo_vtable.SetFuncHelpContext(this, index, dwHelpContext); }

ICreateTypeInfo_SetVarHelpContext :: inline (this: *ICreateTypeInfo, index: u32, dwHelpContext: u32) -> HRESULT { return this.icreatetypeinfo_vtable.SetVarHelpContext(this, index, dwHelpContext); }

ICreateTypeInfo_SetMops :: inline (this: *ICreateTypeInfo, index: u32, bstrMops: BSTR) -> HRESULT { return this.icreatetypeinfo_vtable.SetMops(this, index, bstrMops); }

ICreateTypeInfo_SetTypeIdldesc :: inline (this: *ICreateTypeInfo, pIdlDesc: *IDLDESC) -> HRESULT { return this.icreatetypeinfo_vtable.SetTypeIdldesc(this, pIdlDesc); }

ICreateTypeInfo_LayOut :: inline (this: *ICreateTypeInfo) -> HRESULT { return this.icreatetypeinfo_vtable.LayOut(this); }

vtable :: (obj: *ICreateTypeInfo) -> *ICreateTypeInfo_VTable { return obj.icreatetypeinfo_vtable; }



ICreateTypeInfo2_UUID :: "0002040E-0000-0000-C000-000000000046";
ICreateTypeInfo2 :: struct {
    #as using icreatetypeinfo: ICreateTypeInfo;
    #place icreatetypeinfo; icreatetypeinfo2_vtable: *ICreateTypeInfo2_VTable;
}
ICreateTypeInfo2_VTable :: struct #type_info_none {
    using icreatetypeinfo: ICreateTypeInfo_VTable;
    DeleteFuncDesc: (this: *ICreateTypeInfo2, index: u32) -> HRESULT #cpp_method;

    DeleteFuncDescByMemId: (this: *ICreateTypeInfo2, memid: MEMBERID, invKind: INVOKEKIND) -> HRESULT #cpp_method;

    DeleteVarDesc: (this: *ICreateTypeInfo2, index: u32) -> HRESULT #cpp_method;

    DeleteVarDescByMemId: (this: *ICreateTypeInfo2, memid: MEMBERID) -> HRESULT #cpp_method;

    DeleteImplType: (this: *ICreateTypeInfo2, index: u32) -> HRESULT #cpp_method;

    SetCustData: (this: *ICreateTypeInfo2, guid: *GUID, pVarVal: *VARIANT) -> HRESULT #cpp_method;

    SetFuncCustData: (this: *ICreateTypeInfo2, index: u32, guid: *GUID, pVarVal: *VARIANT) -> HRESULT #cpp_method;

    SetParamCustData: (this: *ICreateTypeInfo2, indexFunc: u32, indexParam: u32, guid: *GUID, pVarVal: *VARIANT) -> HRESULT #cpp_method;

    SetVarCustData: (this: *ICreateTypeInfo2, index: u32, guid: *GUID, pVarVal: *VARIANT) -> HRESULT #cpp_method;

    SetImplTypeCustData: (this: *ICreateTypeInfo2, index: u32, guid: *GUID, pVarVal: *VARIANT) -> HRESULT #cpp_method;

    SetHelpStringContext: (this: *ICreateTypeInfo2, dwHelpStringContext: u32) -> HRESULT #cpp_method;

    SetFuncHelpStringContext: (this: *ICreateTypeInfo2, index: u32, dwHelpStringContext: u32) -> HRESULT #cpp_method;

    SetVarHelpStringContext: (this: *ICreateTypeInfo2, index: u32, dwHelpStringContext: u32) -> HRESULT #cpp_method;

    Invalidate: (this: *ICreateTypeInfo2) -> HRESULT #cpp_method;

    SetName: (this: *ICreateTypeInfo2, szName: LPOLESTR) -> HRESULT #cpp_method;
}

ICreateTypeInfo2_DeleteFuncDesc :: inline (this: *ICreateTypeInfo2, index: u32) -> HRESULT { return this.icreatetypeinfo2_vtable.DeleteFuncDesc(this, index); }

ICreateTypeInfo2_DeleteFuncDescByMemId :: inline (this: *ICreateTypeInfo2, memid: MEMBERID, invKind: INVOKEKIND) -> HRESULT { return this.icreatetypeinfo2_vtable.DeleteFuncDescByMemId(this, memid, invKind); }

ICreateTypeInfo2_DeleteVarDesc :: inline (this: *ICreateTypeInfo2, index: u32) -> HRESULT { return this.icreatetypeinfo2_vtable.DeleteVarDesc(this, index); }

ICreateTypeInfo2_DeleteVarDescByMemId :: inline (this: *ICreateTypeInfo2, memid: MEMBERID) -> HRESULT { return this.icreatetypeinfo2_vtable.DeleteVarDescByMemId(this, memid); }

ICreateTypeInfo2_DeleteImplType :: inline (this: *ICreateTypeInfo2, index: u32) -> HRESULT { return this.icreatetypeinfo2_vtable.DeleteImplType(this, index); }

ICreateTypeInfo2_SetCustData :: inline (this: *ICreateTypeInfo2, guid: *GUID, pVarVal: *VARIANT) -> HRESULT { return this.icreatetypeinfo2_vtable.SetCustData(this, guid, pVarVal); }

ICreateTypeInfo2_SetFuncCustData :: inline (this: *ICreateTypeInfo2, index: u32, guid: *GUID, pVarVal: *VARIANT) -> HRESULT { return this.icreatetypeinfo2_vtable.SetFuncCustData(this, index, guid, pVarVal); }

ICreateTypeInfo2_SetParamCustData :: inline (this: *ICreateTypeInfo2, indexFunc: u32, indexParam: u32, guid: *GUID, pVarVal: *VARIANT) -> HRESULT { return this.icreatetypeinfo2_vtable.SetParamCustData(this, indexFunc, indexParam, guid, pVarVal); }

ICreateTypeInfo2_SetVarCustData :: inline (this: *ICreateTypeInfo2, index: u32, guid: *GUID, pVarVal: *VARIANT) -> HRESULT { return this.icreatetypeinfo2_vtable.SetVarCustData(this, index, guid, pVarVal); }

ICreateTypeInfo2_SetImplTypeCustData :: inline (this: *ICreateTypeInfo2, index: u32, guid: *GUID, pVarVal: *VARIANT) -> HRESULT { return this.icreatetypeinfo2_vtable.SetImplTypeCustData(this, index, guid, pVarVal); }

ICreateTypeInfo2_SetHelpStringContext :: inline (this: *ICreateTypeInfo2, dwHelpStringContext: u32) -> HRESULT { return this.icreatetypeinfo2_vtable.SetHelpStringContext(this, dwHelpStringContext); }

ICreateTypeInfo2_SetFuncHelpStringContext :: inline (this: *ICreateTypeInfo2, index: u32, dwHelpStringContext: u32) -> HRESULT { return this.icreatetypeinfo2_vtable.SetFuncHelpStringContext(this, index, dwHelpStringContext); }

ICreateTypeInfo2_SetVarHelpStringContext :: inline (this: *ICreateTypeInfo2, index: u32, dwHelpStringContext: u32) -> HRESULT { return this.icreatetypeinfo2_vtable.SetVarHelpStringContext(this, index, dwHelpStringContext); }

ICreateTypeInfo2_Invalidate :: inline (this: *ICreateTypeInfo2) -> HRESULT { return this.icreatetypeinfo2_vtable.Invalidate(this); }

ICreateTypeInfo2_SetName :: inline (this: *ICreateTypeInfo2, szName: LPOLESTR) -> HRESULT { return this.icreatetypeinfo2_vtable.SetName(this, szName); }

vtable :: (obj: *ICreateTypeInfo2) -> *ICreateTypeInfo2_VTable { return obj.icreatetypeinfo2_vtable; }



ICreateTypeLib_UUID :: "00020406-0000-0000-C000-000000000046";
ICreateTypeLib :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; icreatetypelib_vtable: *ICreateTypeLib_VTable;
}
ICreateTypeLib_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    CreateTypeInfo: (this: *ICreateTypeLib, szName: LPOLESTR, tkind: TYPEKIND, ppCTInfo: **ICreateTypeInfo) -> HRESULT #cpp_method;

    SetName: (this: *ICreateTypeLib, szName: LPOLESTR) -> HRESULT #cpp_method;

    SetVersion: (this: *ICreateTypeLib, wMajorVerNum: u16, wMinorVerNum: u16) -> HRESULT #cpp_method;

    SetGuid: (this: *ICreateTypeLib, guid: *GUID) -> HRESULT #cpp_method;

    SetDocString: (this: *ICreateTypeLib, szDoc: LPOLESTR) -> HRESULT #cpp_method;

    SetHelpFileName: (this: *ICreateTypeLib, szHelpFileName: LPOLESTR) -> HRESULT #cpp_method;

    SetHelpContext: (this: *ICreateTypeLib, dwHelpContext: u32) -> HRESULT #cpp_method;

    SetLcid: (this: *ICreateTypeLib, lcid: LCID) -> HRESULT #cpp_method;

    SetLibFlags: (this: *ICreateTypeLib, uLibFlags: u32) -> HRESULT #cpp_method;

    SaveAllChanges: (this: *ICreateTypeLib) -> HRESULT #cpp_method;
}

ICreateTypeLib_CreateTypeInfo :: inline (this: *ICreateTypeLib, szName: LPOLESTR, tkind: TYPEKIND, ppCTInfo: **ICreateTypeInfo) -> HRESULT { return this.icreatetypelib_vtable.CreateTypeInfo(this, szName, tkind, ppCTInfo); }

ICreateTypeLib_SetName :: inline (this: *ICreateTypeLib, szName: LPOLESTR) -> HRESULT { return this.icreatetypelib_vtable.SetName(this, szName); }

ICreateTypeLib_SetVersion :: inline (this: *ICreateTypeLib, wMajorVerNum: u16, wMinorVerNum: u16) -> HRESULT { return this.icreatetypelib_vtable.SetVersion(this, wMajorVerNum, wMinorVerNum); }

ICreateTypeLib_SetGuid :: inline (this: *ICreateTypeLib, guid: *GUID) -> HRESULT { return this.icreatetypelib_vtable.SetGuid(this, guid); }

ICreateTypeLib_SetDocString :: inline (this: *ICreateTypeLib, szDoc: LPOLESTR) -> HRESULT { return this.icreatetypelib_vtable.SetDocString(this, szDoc); }

ICreateTypeLib_SetHelpFileName :: inline (this: *ICreateTypeLib, szHelpFileName: LPOLESTR) -> HRESULT { return this.icreatetypelib_vtable.SetHelpFileName(this, szHelpFileName); }

ICreateTypeLib_SetHelpContext :: inline (this: *ICreateTypeLib, dwHelpContext: u32) -> HRESULT { return this.icreatetypelib_vtable.SetHelpContext(this, dwHelpContext); }

ICreateTypeLib_SetLcid :: inline (this: *ICreateTypeLib, lcid: LCID) -> HRESULT { return this.icreatetypelib_vtable.SetLcid(this, lcid); }

ICreateTypeLib_SetLibFlags :: inline (this: *ICreateTypeLib, uLibFlags: u32) -> HRESULT { return this.icreatetypelib_vtable.SetLibFlags(this, uLibFlags); }

ICreateTypeLib_SaveAllChanges :: inline (this: *ICreateTypeLib) -> HRESULT { return this.icreatetypelib_vtable.SaveAllChanges(this); }

vtable :: (obj: *ICreateTypeLib) -> *ICreateTypeLib_VTable { return obj.icreatetypelib_vtable; }



ICreateTypeLib2_UUID :: "0002040F-0000-0000-C000-000000000046";
ICreateTypeLib2 :: struct {
    #as using icreatetypelib: ICreateTypeLib;
    #place icreatetypelib; icreatetypelib2_vtable: *ICreateTypeLib2_VTable;
}
ICreateTypeLib2_VTable :: struct #type_info_none {
    using icreatetypelib: ICreateTypeLib_VTable;
    DeleteTypeInfo: (this: *ICreateTypeLib2, szName: LPOLESTR) -> HRESULT #cpp_method;

    SetCustData: (this: *ICreateTypeLib2, guid: *GUID, pVarVal: *VARIANT) -> HRESULT #cpp_method;

    SetHelpStringContext: (this: *ICreateTypeLib2, dwHelpStringContext: u32) -> HRESULT #cpp_method;

    SetHelpStringDll: (this: *ICreateTypeLib2, szFileName: LPOLESTR) -> HRESULT #cpp_method;
}

ICreateTypeLib2_DeleteTypeInfo :: inline (this: *ICreateTypeLib2, szName: LPOLESTR) -> HRESULT { return this.icreatetypelib2_vtable.DeleteTypeInfo(this, szName); }

ICreateTypeLib2_SetCustData :: inline (this: *ICreateTypeLib2, guid: *GUID, pVarVal: *VARIANT) -> HRESULT { return this.icreatetypelib2_vtable.SetCustData(this, guid, pVarVal); }

ICreateTypeLib2_SetHelpStringContext :: inline (this: *ICreateTypeLib2, dwHelpStringContext: u32) -> HRESULT { return this.icreatetypelib2_vtable.SetHelpStringContext(this, dwHelpStringContext); }

ICreateTypeLib2_SetHelpStringDll :: inline (this: *ICreateTypeLib2, szFileName: LPOLESTR) -> HRESULT { return this.icreatetypelib2_vtable.SetHelpStringDll(this, szFileName); }

vtable :: (obj: *ICreateTypeLib2) -> *ICreateTypeLib2_VTable { return obj.icreatetypelib2_vtable; }



IDispatch_UUID :: "00020400-0000-0000-C000-000000000046";
IDispatch :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; idispatch_vtable: *IDispatch_VTable;
}
IDispatch_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetTypeInfoCount: (this: *IDispatch, pctinfo: *u32) -> HRESULT #cpp_method;

    GetTypeInfo: (this: *IDispatch, iTInfo: u32, lcid: LCID, ppTInfo: **ITypeInfo) -> HRESULT #cpp_method;

    GetIDsOfNames: (this: *IDispatch, riid: *IID, rgszNames: *LPOLESTR, cNames: u32, lcid: LCID, rgDispId: *DISPID) -> HRESULT #cpp_method;

    Invoke: (this: *IDispatch, dispIdMember: DISPID, riid: *IID, lcid: LCID, wFlags: u16, pDispParams: *DISPPARAMS, pVarResult: *VARIANT, pExcepInfo: *EXCEPINFO, puArgErr: *u32) -> HRESULT #cpp_method;
}

IDispatch_GetTypeInfoCount :: inline (this: *IDispatch, pctinfo: *u32) -> HRESULT { return this.idispatch_vtable.GetTypeInfoCount(this, pctinfo); }

IDispatch_GetTypeInfo :: inline (this: *IDispatch, iTInfo: u32, lcid: LCID, ppTInfo: **ITypeInfo) -> HRESULT { return this.idispatch_vtable.GetTypeInfo(this, iTInfo, lcid, ppTInfo); }

IDispatch_GetIDsOfNames :: inline (this: *IDispatch, riid: *IID, rgszNames: *LPOLESTR, cNames: u32, lcid: LCID, rgDispId: *DISPID) -> HRESULT { return this.idispatch_vtable.GetIDsOfNames(this, riid, rgszNames, cNames, lcid, rgDispId); }

IDispatch_Invoke :: inline (this: *IDispatch, dispIdMember: DISPID, riid: *IID, lcid: LCID, wFlags: u16, pDispParams: *DISPPARAMS, pVarResult: *VARIANT, pExcepInfo: *EXCEPINFO, puArgErr: *u32) -> HRESULT { return this.idispatch_vtable.Invoke(this, dispIdMember, riid, lcid, wFlags, pDispParams, pVarResult, pExcepInfo, puArgErr); }

vtable :: (obj: *IDispatch) -> *IDispatch_VTable { return obj.idispatch_vtable; }



IEnumVARIANT_UUID :: "00020404-0000-0000-C000-000000000046";
IEnumVARIANT :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ienumvariant_vtable: *IEnumVARIANT_VTable;
}
IEnumVARIANT_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Next: (this: *IEnumVARIANT, celt: u32, rgVar: *VARIANT, pCeltFetched: *u32) -> HRESULT #cpp_method;

    Skip: (this: *IEnumVARIANT, celt: u32) -> HRESULT #cpp_method;

    Reset: (this: *IEnumVARIANT) -> HRESULT #cpp_method;

    Clone: (this: *IEnumVARIANT, ppEnum: **IEnumVARIANT) -> HRESULT #cpp_method;
}

IEnumVARIANT_Next :: inline (this: *IEnumVARIANT, celt: u32, rgVar: *VARIANT, pCeltFetched: *u32) -> HRESULT { return this.ienumvariant_vtable.Next(this, celt, rgVar, pCeltFetched); }

IEnumVARIANT_Skip :: inline (this: *IEnumVARIANT, celt: u32) -> HRESULT { return this.ienumvariant_vtable.Skip(this, celt); }

IEnumVARIANT_Reset :: inline (this: *IEnumVARIANT) -> HRESULT { return this.ienumvariant_vtable.Reset(this); }

IEnumVARIANT_Clone :: inline (this: *IEnumVARIANT, ppEnum: **IEnumVARIANT) -> HRESULT { return this.ienumvariant_vtable.Clone(this, ppEnum); }

vtable :: (obj: *IEnumVARIANT) -> *IEnumVARIANT_VTable { return obj.ienumvariant_vtable; }


tagDESCKIND :: enum s32 {
    NONE           :: 0;
    FUNCDESC       :: 1;
    VARDESC        :: 2;
    TYPECOMP       :: 3;
    IMPLICITAPPOBJ :: 4;
    MAX            :: 5;

    DESCKIND_NONE           :: NONE;
    DESCKIND_FUNCDESC       :: FUNCDESC;
    DESCKIND_VARDESC        :: VARDESC;
    DESCKIND_TYPECOMP       :: TYPECOMP;
    DESCKIND_IMPLICITAPPOBJ :: IMPLICITAPPOBJ;
    DESCKIND_MAX            :: MAX;
}

DESCKIND :: tagDESCKIND;

tagBINDPTR :: union {
    lpfuncdesc: *FUNCDESC;
    lpvardesc:  *VARDESC;
    lptcomp:    *ITypeComp;
}

BINDPTR :: tagBINDPTR;


ITypeComp_UUID :: "00020403-0000-0000-C000-000000000046";
ITypeComp :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; itypecomp_vtable: *ITypeComp_VTable;
}
ITypeComp_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Bind: (this: *ITypeComp, szName: LPOLESTR, lHashVal: u32, wFlags: u16, ppTInfo: **ITypeInfo, pDescKind: *DESCKIND, pBindPtr: *BINDPTR) -> HRESULT #cpp_method;

    BindType: (this: *ITypeComp, szName: LPOLESTR, lHashVal: u32, ppTInfo: **ITypeInfo, ppTComp: **ITypeComp) -> HRESULT #cpp_method;
}

ITypeComp_Bind :: inline (this: *ITypeComp, szName: LPOLESTR, lHashVal: u32, wFlags: u16, ppTInfo: **ITypeInfo, pDescKind: *DESCKIND, pBindPtr: *BINDPTR) -> HRESULT { return this.itypecomp_vtable.Bind(this, szName, lHashVal, wFlags, ppTInfo, pDescKind, pBindPtr); }

ITypeComp_BindType :: inline (this: *ITypeComp, szName: LPOLESTR, lHashVal: u32, ppTInfo: **ITypeInfo, ppTComp: **ITypeComp) -> HRESULT { return this.itypecomp_vtable.BindType(this, szName, lHashVal, ppTInfo, ppTComp); }

vtable :: (obj: *ITypeComp) -> *ITypeComp_VTable { return obj.itypecomp_vtable; }



ITypeInfo_UUID :: "00020401-0000-0000-C000-000000000046";
ITypeInfo :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; itypeinfo_vtable: *ITypeInfo_VTable;
}
ITypeInfo_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetTypeAttr: (this: *ITypeInfo, ppTypeAttr: **TYPEATTR) -> HRESULT #cpp_method;

    GetTypeComp: (this: *ITypeInfo, ppTComp: **ITypeComp) -> HRESULT #cpp_method;

    GetFuncDesc: (this: *ITypeInfo, index: u32, ppFuncDesc: **FUNCDESC) -> HRESULT #cpp_method;

    GetVarDesc: (this: *ITypeInfo, index: u32, ppVarDesc: **VARDESC) -> HRESULT #cpp_method;

    GetNames: (this: *ITypeInfo, memid: MEMBERID, rgBstrNames: *BSTR, cMaxNames: u32, pcNames: *u32) -> HRESULT #cpp_method;

    GetRefTypeOfImplType: (this: *ITypeInfo, index: u32, pRefType: *HREFTYPE) -> HRESULT #cpp_method;

    GetImplTypeFlags: (this: *ITypeInfo, index: u32, pImplTypeFlags: *s32) -> HRESULT #cpp_method;

    GetIDsOfNames: (this: *ITypeInfo, rgszNames: *LPOLESTR, cNames: u32, pMemId: *MEMBERID) -> HRESULT #cpp_method;

    Invoke: (this: *ITypeInfo, pvInstance: PVOID, memid: MEMBERID, wFlags: u16, pDispParams: *DISPPARAMS, pVarResult: *VARIANT, pExcepInfo: *EXCEPINFO, puArgErr: *u32) -> HRESULT #cpp_method;

    GetDocumentation: (this: *ITypeInfo, memid: MEMBERID, pBstrName: *BSTR, pBstrDocString: *BSTR, pdwHelpContext: *u32, pBstrHelpFile: *BSTR) -> HRESULT #cpp_method;

    GetDllEntry: (this: *ITypeInfo, memid: MEMBERID, invKind: INVOKEKIND, pBstrDllName: *BSTR, pBstrName: *BSTR, pwOrdinal: *u16) -> HRESULT #cpp_method;

    GetRefTypeInfo: (this: *ITypeInfo, hRefType: HREFTYPE, ppTInfo: **ITypeInfo) -> HRESULT #cpp_method;

    AddressOfMember: (this: *ITypeInfo, memid: MEMBERID, invKind: INVOKEKIND, ppv: *PVOID) -> HRESULT #cpp_method;

    CreateInstance: (this: *ITypeInfo, pUnkOuter: *IUnknown, riid: *IID, ppvObj: *PVOID) -> HRESULT #cpp_method;

    GetMops: (this: *ITypeInfo, memid: MEMBERID, pBstrMops: *BSTR) -> HRESULT #cpp_method;

    GetContainingTypeLib: (this: *ITypeInfo, ppTLib: **ITypeLib, pIndex: *u32) -> HRESULT #cpp_method;

    ReleaseTypeAttr: (this: *ITypeInfo, pTypeAttr: *TYPEATTR) -> void #cpp_method;

    ReleaseFuncDesc: (this: *ITypeInfo, pFuncDesc: *FUNCDESC) -> void #cpp_method;

    ReleaseVarDesc: (this: *ITypeInfo, pVarDesc: *VARDESC) -> void #cpp_method;
}

ITypeInfo_GetTypeAttr :: inline (this: *ITypeInfo, ppTypeAttr: **TYPEATTR) -> HRESULT { return this.itypeinfo_vtable.GetTypeAttr(this, ppTypeAttr); }

ITypeInfo_GetTypeComp :: inline (this: *ITypeInfo, ppTComp: **ITypeComp) -> HRESULT { return this.itypeinfo_vtable.GetTypeComp(this, ppTComp); }

ITypeInfo_GetFuncDesc :: inline (this: *ITypeInfo, index: u32, ppFuncDesc: **FUNCDESC) -> HRESULT { return this.itypeinfo_vtable.GetFuncDesc(this, index, ppFuncDesc); }

ITypeInfo_GetVarDesc :: inline (this: *ITypeInfo, index: u32, ppVarDesc: **VARDESC) -> HRESULT { return this.itypeinfo_vtable.GetVarDesc(this, index, ppVarDesc); }

ITypeInfo_GetNames :: inline (this: *ITypeInfo, memid: MEMBERID, rgBstrNames: *BSTR, cMaxNames: u32, pcNames: *u32) -> HRESULT { return this.itypeinfo_vtable.GetNames(this, memid, rgBstrNames, cMaxNames, pcNames); }

ITypeInfo_GetRefTypeOfImplType :: inline (this: *ITypeInfo, index: u32, pRefType: *HREFTYPE) -> HRESULT { return this.itypeinfo_vtable.GetRefTypeOfImplType(this, index, pRefType); }

ITypeInfo_GetImplTypeFlags :: inline (this: *ITypeInfo, index: u32, pImplTypeFlags: *s32) -> HRESULT { return this.itypeinfo_vtable.GetImplTypeFlags(this, index, pImplTypeFlags); }

ITypeInfo_GetIDsOfNames :: inline (this: *ITypeInfo, rgszNames: *LPOLESTR, cNames: u32, pMemId: *MEMBERID) -> HRESULT { return this.itypeinfo_vtable.GetIDsOfNames(this, rgszNames, cNames, pMemId); }

ITypeInfo_Invoke :: inline (this: *ITypeInfo, pvInstance: PVOID, memid: MEMBERID, wFlags: u16, pDispParams: *DISPPARAMS, pVarResult: *VARIANT, pExcepInfo: *EXCEPINFO, puArgErr: *u32) -> HRESULT { return this.itypeinfo_vtable.Invoke(this, pvInstance, memid, wFlags, pDispParams, pVarResult, pExcepInfo, puArgErr); }

ITypeInfo_GetDocumentation :: inline (this: *ITypeInfo, memid: MEMBERID, pBstrName: *BSTR, pBstrDocString: *BSTR, pdwHelpContext: *u32, pBstrHelpFile: *BSTR) -> HRESULT { return this.itypeinfo_vtable.GetDocumentation(this, memid, pBstrName, pBstrDocString, pdwHelpContext, pBstrHelpFile); }

ITypeInfo_GetDllEntry :: inline (this: *ITypeInfo, memid: MEMBERID, invKind: INVOKEKIND, pBstrDllName: *BSTR, pBstrName: *BSTR, pwOrdinal: *u16) -> HRESULT { return this.itypeinfo_vtable.GetDllEntry(this, memid, invKind, pBstrDllName, pBstrName, pwOrdinal); }

ITypeInfo_GetRefTypeInfo :: inline (this: *ITypeInfo, hRefType: HREFTYPE, ppTInfo: **ITypeInfo) -> HRESULT { return this.itypeinfo_vtable.GetRefTypeInfo(this, hRefType, ppTInfo); }

ITypeInfo_AddressOfMember :: inline (this: *ITypeInfo, memid: MEMBERID, invKind: INVOKEKIND, ppv: *PVOID) -> HRESULT { return this.itypeinfo_vtable.AddressOfMember(this, memid, invKind, ppv); }

ITypeInfo_CreateInstance :: inline (this: *ITypeInfo, pUnkOuter: *IUnknown, riid: *IID, ppvObj: *PVOID) -> HRESULT { return this.itypeinfo_vtable.CreateInstance(this, pUnkOuter, riid, ppvObj); }

ITypeInfo_GetMops :: inline (this: *ITypeInfo, memid: MEMBERID, pBstrMops: *BSTR) -> HRESULT { return this.itypeinfo_vtable.GetMops(this, memid, pBstrMops); }

ITypeInfo_GetContainingTypeLib :: inline (this: *ITypeInfo, ppTLib: **ITypeLib, pIndex: *u32) -> HRESULT { return this.itypeinfo_vtable.GetContainingTypeLib(this, ppTLib, pIndex); }

ITypeInfo_ReleaseTypeAttr :: inline (this: *ITypeInfo, pTypeAttr: *TYPEATTR) { this.itypeinfo_vtable.ReleaseTypeAttr(this, pTypeAttr); }

ITypeInfo_ReleaseFuncDesc :: inline (this: *ITypeInfo, pFuncDesc: *FUNCDESC) { this.itypeinfo_vtable.ReleaseFuncDesc(this, pFuncDesc); }

ITypeInfo_ReleaseVarDesc :: inline (this: *ITypeInfo, pVarDesc: *VARDESC) { this.itypeinfo_vtable.ReleaseVarDesc(this, pVarDesc); }

vtable :: (obj: *ITypeInfo) -> *ITypeInfo_VTable { return obj.itypeinfo_vtable; }



ITypeInfo2_UUID :: "00020412-0000-0000-C000-000000000046";
ITypeInfo2 :: struct {
    #as using itypeinfo: ITypeInfo;
    #place itypeinfo; itypeinfo2_vtable: *ITypeInfo2_VTable;
}
ITypeInfo2_VTable :: struct #type_info_none {
    using itypeinfo: ITypeInfo_VTable;
    GetTypeKind: (this: *ITypeInfo2, pTypeKind: *TYPEKIND) -> HRESULT #cpp_method;

    GetTypeFlags: (this: *ITypeInfo2, pTypeFlags: *u32) -> HRESULT #cpp_method;

    GetFuncIndexOfMemId: (this: *ITypeInfo2, memid: MEMBERID, invKind: INVOKEKIND, pFuncIndex: *u32) -> HRESULT #cpp_method;

    GetVarIndexOfMemId: (this: *ITypeInfo2, memid: MEMBERID, pVarIndex: *u32) -> HRESULT #cpp_method;

    GetCustData: (this: *ITypeInfo2, guid: *GUID, pVarVal: *VARIANT) -> HRESULT #cpp_method;

    GetFuncCustData: (this: *ITypeInfo2, index: u32, guid: *GUID, pVarVal: *VARIANT) -> HRESULT #cpp_method;

    GetParamCustData: (this: *ITypeInfo2, indexFunc: u32, indexParam: u32, guid: *GUID, pVarVal: *VARIANT) -> HRESULT #cpp_method;

    GetVarCustData: (this: *ITypeInfo2, index: u32, guid: *GUID, pVarVal: *VARIANT) -> HRESULT #cpp_method;

    GetImplTypeCustData: (this: *ITypeInfo2, index: u32, guid: *GUID, pVarVal: *VARIANT) -> HRESULT #cpp_method;

    GetDocumentation2: (this: *ITypeInfo2, memid: MEMBERID, lcid: LCID, pbstrHelpString: *BSTR, pdwHelpStringContext: *u32, pbstrHelpStringDll: *BSTR) -> HRESULT #cpp_method;

    GetAllCustData: (this: *ITypeInfo2, pCustData: *CUSTDATA) -> HRESULT #cpp_method;

    GetAllFuncCustData: (this: *ITypeInfo2, index: u32, pCustData: *CUSTDATA) -> HRESULT #cpp_method;

    GetAllParamCustData: (this: *ITypeInfo2, indexFunc: u32, indexParam: u32, pCustData: *CUSTDATA) -> HRESULT #cpp_method;

    GetAllVarCustData: (this: *ITypeInfo2, index: u32, pCustData: *CUSTDATA) -> HRESULT #cpp_method;

    GetAllImplTypeCustData: (this: *ITypeInfo2, index: u32, pCustData: *CUSTDATA) -> HRESULT #cpp_method;
}

ITypeInfo2_GetTypeKind :: inline (this: *ITypeInfo2, pTypeKind: *TYPEKIND) -> HRESULT { return this.itypeinfo2_vtable.GetTypeKind(this, pTypeKind); }

ITypeInfo2_GetTypeFlags :: inline (this: *ITypeInfo2, pTypeFlags: *u32) -> HRESULT { return this.itypeinfo2_vtable.GetTypeFlags(this, pTypeFlags); }

ITypeInfo2_GetFuncIndexOfMemId :: inline (this: *ITypeInfo2, memid: MEMBERID, invKind: INVOKEKIND, pFuncIndex: *u32) -> HRESULT { return this.itypeinfo2_vtable.GetFuncIndexOfMemId(this, memid, invKind, pFuncIndex); }

ITypeInfo2_GetVarIndexOfMemId :: inline (this: *ITypeInfo2, memid: MEMBERID, pVarIndex: *u32) -> HRESULT { return this.itypeinfo2_vtable.GetVarIndexOfMemId(this, memid, pVarIndex); }

ITypeInfo2_GetCustData :: inline (this: *ITypeInfo2, guid: *GUID, pVarVal: *VARIANT) -> HRESULT { return this.itypeinfo2_vtable.GetCustData(this, guid, pVarVal); }

ITypeInfo2_GetFuncCustData :: inline (this: *ITypeInfo2, index: u32, guid: *GUID, pVarVal: *VARIANT) -> HRESULT { return this.itypeinfo2_vtable.GetFuncCustData(this, index, guid, pVarVal); }

ITypeInfo2_GetParamCustData :: inline (this: *ITypeInfo2, indexFunc: u32, indexParam: u32, guid: *GUID, pVarVal: *VARIANT) -> HRESULT { return this.itypeinfo2_vtable.GetParamCustData(this, indexFunc, indexParam, guid, pVarVal); }

ITypeInfo2_GetVarCustData :: inline (this: *ITypeInfo2, index: u32, guid: *GUID, pVarVal: *VARIANT) -> HRESULT { return this.itypeinfo2_vtable.GetVarCustData(this, index, guid, pVarVal); }

ITypeInfo2_GetImplTypeCustData :: inline (this: *ITypeInfo2, index: u32, guid: *GUID, pVarVal: *VARIANT) -> HRESULT { return this.itypeinfo2_vtable.GetImplTypeCustData(this, index, guid, pVarVal); }

ITypeInfo2_GetDocumentation2 :: inline (this: *ITypeInfo2, memid: MEMBERID, lcid: LCID, pbstrHelpString: *BSTR, pdwHelpStringContext: *u32, pbstrHelpStringDll: *BSTR) -> HRESULT { return this.itypeinfo2_vtable.GetDocumentation2(this, memid, lcid, pbstrHelpString, pdwHelpStringContext, pbstrHelpStringDll); }

ITypeInfo2_GetAllCustData :: inline (this: *ITypeInfo2, pCustData: *CUSTDATA) -> HRESULT { return this.itypeinfo2_vtable.GetAllCustData(this, pCustData); }

ITypeInfo2_GetAllFuncCustData :: inline (this: *ITypeInfo2, index: u32, pCustData: *CUSTDATA) -> HRESULT { return this.itypeinfo2_vtable.GetAllFuncCustData(this, index, pCustData); }

ITypeInfo2_GetAllParamCustData :: inline (this: *ITypeInfo2, indexFunc: u32, indexParam: u32, pCustData: *CUSTDATA) -> HRESULT { return this.itypeinfo2_vtable.GetAllParamCustData(this, indexFunc, indexParam, pCustData); }

ITypeInfo2_GetAllVarCustData :: inline (this: *ITypeInfo2, index: u32, pCustData: *CUSTDATA) -> HRESULT { return this.itypeinfo2_vtable.GetAllVarCustData(this, index, pCustData); }

ITypeInfo2_GetAllImplTypeCustData :: inline (this: *ITypeInfo2, index: u32, pCustData: *CUSTDATA) -> HRESULT { return this.itypeinfo2_vtable.GetAllImplTypeCustData(this, index, pCustData); }

vtable :: (obj: *ITypeInfo2) -> *ITypeInfo2_VTable { return obj.itypeinfo2_vtable; }


tagSYSKIND :: enum s32 {
    WIN16 :: 0;
    WIN32 :: 1;
    MAC   :: 2;
    WIN64 :: 3;

    SYS_WIN16 :: WIN16;
    SYS_WIN32 :: WIN32;
    SYS_MAC   :: MAC;
    SYS_WIN64 :: WIN64;
}

SYSKIND :: tagSYSKIND;

tagLIBFLAGS :: enum s32 {
    FRESTRICTED   :: 1;
    FCONTROL      :: 2;
    FHIDDEN       :: 4;
    FHASDISKIMAGE :: 8;

    LIBFLAG_FRESTRICTED   :: FRESTRICTED;
    LIBFLAG_FCONTROL      :: FCONTROL;
    LIBFLAG_FHIDDEN       :: FHIDDEN;
    LIBFLAG_FHASDISKIMAGE :: FHASDISKIMAGE;
}

LIBFLAGS :: tagLIBFLAGS;

tagTLIBATTR :: struct {
    guid:         GUID;
    lcid:         LCID;
    syskind:      SYSKIND;
    wMajorVerNum: u16;
    wMinorVerNum: u16;
    wLibFlags:    u16;
}

TLIBATTR :: tagTLIBATTR;


ITypeLib_UUID :: "00020402-0000-0000-C000-000000000046";
ITypeLib :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; itypelib_vtable: *ITypeLib_VTable;
}
ITypeLib_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetTypeInfoCount: (this: *ITypeLib) -> u32 #cpp_method;

    GetTypeInfo: (this: *ITypeLib, index: u32, ppTInfo: **ITypeInfo) -> HRESULT #cpp_method;

    GetTypeInfoType: (this: *ITypeLib, index: u32, pTKind: *TYPEKIND) -> HRESULT #cpp_method;

    GetTypeInfoOfGuid: (this: *ITypeLib, guid: *GUID, ppTinfo: **ITypeInfo) -> HRESULT #cpp_method;

    GetLibAttr: (this: *ITypeLib, ppTLibAttr: **TLIBATTR) -> HRESULT #cpp_method;

    GetTypeComp: (this: *ITypeLib, ppTComp: **ITypeComp) -> HRESULT #cpp_method;

    GetDocumentation: (this: *ITypeLib, index: s32, pBstrName: *BSTR, pBstrDocString: *BSTR, pdwHelpContext: *u32, pBstrHelpFile: *BSTR) -> HRESULT #cpp_method;

    IsName: (this: *ITypeLib, szNameBuf: LPOLESTR, lHashVal: u32, pfName: *BOOL) -> HRESULT #cpp_method;

    FindName: (this: *ITypeLib, szNameBuf: LPOLESTR, lHashVal: u32, ppTInfo: **ITypeInfo, rgMemId: *MEMBERID, pcFound: *u16) -> HRESULT #cpp_method;

    ReleaseTLibAttr: (this: *ITypeLib, pTLibAttr: *TLIBATTR) -> void #cpp_method;
}

ITypeLib_GetTypeInfoCount :: inline (this: *ITypeLib) -> u32 { return this.itypelib_vtable.GetTypeInfoCount(this); }

ITypeLib_GetTypeInfo :: inline (this: *ITypeLib, index: u32, ppTInfo: **ITypeInfo) -> HRESULT { return this.itypelib_vtable.GetTypeInfo(this, index, ppTInfo); }

ITypeLib_GetTypeInfoType :: inline (this: *ITypeLib, index: u32, pTKind: *TYPEKIND) -> HRESULT { return this.itypelib_vtable.GetTypeInfoType(this, index, pTKind); }

ITypeLib_GetTypeInfoOfGuid :: inline (this: *ITypeLib, guid: *GUID, ppTinfo: **ITypeInfo) -> HRESULT { return this.itypelib_vtable.GetTypeInfoOfGuid(this, guid, ppTinfo); }

ITypeLib_GetLibAttr :: inline (this: *ITypeLib, ppTLibAttr: **TLIBATTR) -> HRESULT { return this.itypelib_vtable.GetLibAttr(this, ppTLibAttr); }

ITypeLib_GetTypeComp :: inline (this: *ITypeLib, ppTComp: **ITypeComp) -> HRESULT { return this.itypelib_vtable.GetTypeComp(this, ppTComp); }

ITypeLib_GetDocumentation :: inline (this: *ITypeLib, index: s32, pBstrName: *BSTR, pBstrDocString: *BSTR, pdwHelpContext: *u32, pBstrHelpFile: *BSTR) -> HRESULT { return this.itypelib_vtable.GetDocumentation(this, index, pBstrName, pBstrDocString, pdwHelpContext, pBstrHelpFile); }

ITypeLib_IsName :: inline (this: *ITypeLib, szNameBuf: LPOLESTR, lHashVal: u32, pfName: *BOOL) -> HRESULT { return this.itypelib_vtable.IsName(this, szNameBuf, lHashVal, pfName); }

ITypeLib_FindName :: inline (this: *ITypeLib, szNameBuf: LPOLESTR, lHashVal: u32, ppTInfo: **ITypeInfo, rgMemId: *MEMBERID, pcFound: *u16) -> HRESULT { return this.itypelib_vtable.FindName(this, szNameBuf, lHashVal, ppTInfo, rgMemId, pcFound); }

ITypeLib_ReleaseTLibAttr :: inline (this: *ITypeLib, pTLibAttr: *TLIBATTR) { this.itypelib_vtable.ReleaseTLibAttr(this, pTLibAttr); }

vtable :: (obj: *ITypeLib) -> *ITypeLib_VTable { return obj.itypelib_vtable; }



ITypeLib2_UUID :: "00020411-0000-0000-C000-000000000046";
ITypeLib2 :: struct {
    #as using itypelib: ITypeLib;
    #place itypelib; itypelib2_vtable: *ITypeLib2_VTable;
}
ITypeLib2_VTable :: struct #type_info_none {
    using itypelib: ITypeLib_VTable;
    GetCustData: (this: *ITypeLib2, guid: *GUID, pVarVal: *VARIANT) -> HRESULT #cpp_method;

    GetLibStatistics: (this: *ITypeLib2, pcUniqueNames: *u32, pcchUniqueNames: *u32) -> HRESULT #cpp_method;

    GetDocumentation2: (this: *ITypeLib2, index: s32, lcid: LCID, pbstrHelpString: *BSTR, pdwHelpStringContext: *u32, pbstrHelpStringDll: *BSTR) -> HRESULT #cpp_method;

    GetAllCustData: (this: *ITypeLib2, pCustData: *CUSTDATA) -> HRESULT #cpp_method;
}

ITypeLib2_GetCustData :: inline (this: *ITypeLib2, guid: *GUID, pVarVal: *VARIANT) -> HRESULT { return this.itypelib2_vtable.GetCustData(this, guid, pVarVal); }

ITypeLib2_GetLibStatistics :: inline (this: *ITypeLib2, pcUniqueNames: *u32, pcchUniqueNames: *u32) -> HRESULT { return this.itypelib2_vtable.GetLibStatistics(this, pcUniqueNames, pcchUniqueNames); }

ITypeLib2_GetDocumentation2 :: inline (this: *ITypeLib2, index: s32, lcid: LCID, pbstrHelpString: *BSTR, pdwHelpStringContext: *u32, pbstrHelpStringDll: *BSTR) -> HRESULT { return this.itypelib2_vtable.GetDocumentation2(this, index, lcid, pbstrHelpString, pdwHelpStringContext, pbstrHelpStringDll); }

ITypeLib2_GetAllCustData :: inline (this: *ITypeLib2, pCustData: *CUSTDATA) -> HRESULT { return this.itypelib2_vtable.GetAllCustData(this, pCustData); }

vtable :: (obj: *ITypeLib2) -> *ITypeLib2_VTable { return obj.itypelib2_vtable; }


tagCHANGEKIND :: enum s32 {
    ADDMEMBER        :: 0;
    DELETEMEMBER     :: 1;
    SETNAMES         :: 2;
    SETDOCUMENTATION :: 3;
    GENERAL          :: 4;
    INVALIDATE       :: 5;
    CHANGEFAILED     :: 6;
    MAX              :: 7;

    CHANGEKIND_ADDMEMBER        :: ADDMEMBER;
    CHANGEKIND_DELETEMEMBER     :: DELETEMEMBER;
    CHANGEKIND_SETNAMES         :: SETNAMES;
    CHANGEKIND_SETDOCUMENTATION :: SETDOCUMENTATION;
    CHANGEKIND_GENERAL          :: GENERAL;
    CHANGEKIND_INVALIDATE       :: INVALIDATE;
    CHANGEKIND_CHANGEFAILED     :: CHANGEFAILED;
    CHANGEKIND_MAX              :: MAX;
}

CHANGEKIND :: tagCHANGEKIND;


ITypeChangeEvents_UUID :: "00020410-0000-0000-C000-000000000046";
ITypeChangeEvents :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; itypechangeevents_vtable: *ITypeChangeEvents_VTable;
}
ITypeChangeEvents_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    RequestTypeChange: (this: *ITypeChangeEvents, changeKind: CHANGEKIND, pTInfoBefore: *ITypeInfo, pStrName: LPOLESTR, pfCancel: *s32) -> HRESULT #cpp_method;

    AfterTypeChange: (this: *ITypeChangeEvents, changeKind: CHANGEKIND, pTInfoAfter: *ITypeInfo, pStrName: LPOLESTR) -> HRESULT #cpp_method;
}

ITypeChangeEvents_RequestTypeChange :: inline (this: *ITypeChangeEvents, changeKind: CHANGEKIND, pTInfoBefore: *ITypeInfo, pStrName: LPOLESTR, pfCancel: *s32) -> HRESULT { return this.itypechangeevents_vtable.RequestTypeChange(this, changeKind, pTInfoBefore, pStrName, pfCancel); }

ITypeChangeEvents_AfterTypeChange :: inline (this: *ITypeChangeEvents, changeKind: CHANGEKIND, pTInfoAfter: *ITypeInfo, pStrName: LPOLESTR) -> HRESULT { return this.itypechangeevents_vtable.AfterTypeChange(this, changeKind, pTInfoAfter, pStrName); }

vtable :: (obj: *ITypeChangeEvents) -> *ITypeChangeEvents_VTable { return obj.itypechangeevents_vtable; }



IErrorInfo_UUID :: "1CF2B120-547D-101B-8E65-08002B2BD119";
IErrorInfo :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ierrorinfo_vtable: *IErrorInfo_VTable;
}
IErrorInfo_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetGUID: (this: *IErrorInfo, pGUID: *GUID) -> HRESULT #cpp_method;

    GetSource: (this: *IErrorInfo, pBstrSource: *BSTR) -> HRESULT #cpp_method;

    GetDescription: (this: *IErrorInfo, pBstrDescription: *BSTR) -> HRESULT #cpp_method;

    GetHelpFile: (this: *IErrorInfo, pBstrHelpFile: *BSTR) -> HRESULT #cpp_method;

    GetHelpContext: (this: *IErrorInfo, pdwHelpContext: *u32) -> HRESULT #cpp_method;
}

IErrorInfo_GetGUID :: inline (this: *IErrorInfo, pGUID: *GUID) -> HRESULT { return this.ierrorinfo_vtable.GetGUID(this, pGUID); }

IErrorInfo_GetSource :: inline (this: *IErrorInfo, pBstrSource: *BSTR) -> HRESULT { return this.ierrorinfo_vtable.GetSource(this, pBstrSource); }

IErrorInfo_GetDescription :: inline (this: *IErrorInfo, pBstrDescription: *BSTR) -> HRESULT { return this.ierrorinfo_vtable.GetDescription(this, pBstrDescription); }

IErrorInfo_GetHelpFile :: inline (this: *IErrorInfo, pBstrHelpFile: *BSTR) -> HRESULT { return this.ierrorinfo_vtable.GetHelpFile(this, pBstrHelpFile); }

IErrorInfo_GetHelpContext :: inline (this: *IErrorInfo, pdwHelpContext: *u32) -> HRESULT { return this.ierrorinfo_vtable.GetHelpContext(this, pdwHelpContext); }

vtable :: (obj: *IErrorInfo) -> *IErrorInfo_VTable { return obj.ierrorinfo_vtable; }



ICreateErrorInfo_UUID :: "22F03340-547D-101B-8E65-08002B2BD119";
ICreateErrorInfo :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; icreateerrorinfo_vtable: *ICreateErrorInfo_VTable;
}
ICreateErrorInfo_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SetGUID: (this: *ICreateErrorInfo, rguid: *GUID) -> HRESULT #cpp_method;

    SetSource: (this: *ICreateErrorInfo, szSource: LPOLESTR) -> HRESULT #cpp_method;

    SetDescription: (this: *ICreateErrorInfo, szDescription: LPOLESTR) -> HRESULT #cpp_method;

    SetHelpFile: (this: *ICreateErrorInfo, szHelpFile: LPOLESTR) -> HRESULT #cpp_method;

    SetHelpContext: (this: *ICreateErrorInfo, dwHelpContext: u32) -> HRESULT #cpp_method;
}

ICreateErrorInfo_SetGUID :: inline (this: *ICreateErrorInfo, rguid: *GUID) -> HRESULT { return this.icreateerrorinfo_vtable.SetGUID(this, rguid); }

ICreateErrorInfo_SetSource :: inline (this: *ICreateErrorInfo, szSource: LPOLESTR) -> HRESULT { return this.icreateerrorinfo_vtable.SetSource(this, szSource); }

ICreateErrorInfo_SetDescription :: inline (this: *ICreateErrorInfo, szDescription: LPOLESTR) -> HRESULT { return this.icreateerrorinfo_vtable.SetDescription(this, szDescription); }

ICreateErrorInfo_SetHelpFile :: inline (this: *ICreateErrorInfo, szHelpFile: LPOLESTR) -> HRESULT { return this.icreateerrorinfo_vtable.SetHelpFile(this, szHelpFile); }

ICreateErrorInfo_SetHelpContext :: inline (this: *ICreateErrorInfo, dwHelpContext: u32) -> HRESULT { return this.icreateerrorinfo_vtable.SetHelpContext(this, dwHelpContext); }

vtable :: (obj: *ICreateErrorInfo) -> *ICreateErrorInfo_VTable { return obj.icreateerrorinfo_vtable; }



ISupportErrorInfo_UUID :: "DF0B3D60-548F-101B-8E65-08002B2BD119";
ISupportErrorInfo :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; isupporterrorinfo_vtable: *ISupportErrorInfo_VTable;
}
ISupportErrorInfo_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    InterfaceSupportsErrorInfo: (this: *ISupportErrorInfo, riid: *IID) -> HRESULT #cpp_method;
}
ISupportErrorInfo_InterfaceSupportsErrorInfo :: inline (this: *ISupportErrorInfo, riid: *IID) -> HRESULT { return this.isupporterrorinfo_vtable.InterfaceSupportsErrorInfo(this, riid); }

vtable :: (obj: *ISupportErrorInfo) -> *ISupportErrorInfo_VTable { return obj.isupporterrorinfo_vtable; }



ITypeFactory_UUID :: "0000002E-0000-0000-C000-000000000046";
ITypeFactory :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; itypefactory_vtable: *ITypeFactory_VTable;
}
ITypeFactory_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    CreateFromTypeInfo: (this: *ITypeFactory, pTypeInfo: *ITypeInfo, riid: *IID, ppv: **IUnknown) -> HRESULT #cpp_method;
}
ITypeFactory_CreateFromTypeInfo :: inline (this: *ITypeFactory, pTypeInfo: *ITypeInfo, riid: *IID, ppv: **IUnknown) -> HRESULT { return this.itypefactory_vtable.CreateFromTypeInfo(this, pTypeInfo, riid, ppv); }

vtable :: (obj: *ITypeFactory) -> *ITypeFactory_VTable { return obj.itypefactory_vtable; }



ITypeMarshal_UUID :: "0000002D-0000-0000-C000-000000000046";
ITypeMarshal :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; itypemarshal_vtable: *ITypeMarshal_VTable;
}
ITypeMarshal_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Size: (this: *ITypeMarshal, pvType: PVOID, dwDestContext: u32, pvDestContext: PVOID, pSize: *u32) -> HRESULT #cpp_method;

    Marshal: (this: *ITypeMarshal, pvType: PVOID, dwDestContext: u32, pvDestContext: PVOID, cbBufferLength: u32, pBuffer: *u8, pcbWritten: *u32) -> HRESULT #cpp_method;

    Unmarshal: (this: *ITypeMarshal, pvType: PVOID, dwFlags: u32, cbBufferLength: u32, pBuffer: *u8, pcbRead: *u32) -> HRESULT #cpp_method;

    Free: (this: *ITypeMarshal, pvType: PVOID) -> HRESULT #cpp_method;
}

ITypeMarshal_Size :: inline (this: *ITypeMarshal, pvType: PVOID, dwDestContext: u32, pvDestContext: PVOID, pSize: *u32) -> HRESULT { return this.itypemarshal_vtable.Size(this, pvType, dwDestContext, pvDestContext, pSize); }

ITypeMarshal_Marshal :: inline (this: *ITypeMarshal, pvType: PVOID, dwDestContext: u32, pvDestContext: PVOID, cbBufferLength: u32, pBuffer: *u8, pcbWritten: *u32) -> HRESULT { return this.itypemarshal_vtable.Marshal(this, pvType, dwDestContext, pvDestContext, cbBufferLength, pBuffer, pcbWritten); }

ITypeMarshal_Unmarshal :: inline (this: *ITypeMarshal, pvType: PVOID, dwFlags: u32, cbBufferLength: u32, pBuffer: *u8, pcbRead: *u32) -> HRESULT { return this.itypemarshal_vtable.Unmarshal(this, pvType, dwFlags, cbBufferLength, pBuffer, pcbRead); }

ITypeMarshal_Free :: inline (this: *ITypeMarshal, pvType: PVOID) -> HRESULT { return this.itypemarshal_vtable.Free(this, pvType); }

vtable :: (obj: *ITypeMarshal) -> *ITypeMarshal_VTable { return obj.itypemarshal_vtable; }



IRecordInfo_UUID :: "0000002F-0000-0000-C000-000000000046";
IRecordInfo :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; irecordinfo_vtable: *IRecordInfo_VTable;
}
IRecordInfo_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    RecordInit: (this: *IRecordInfo, pvNew: PVOID) -> HRESULT #cpp_method;

    RecordClear: (this: *IRecordInfo, pvExisting: PVOID) -> HRESULT #cpp_method;

    RecordCopy: (this: *IRecordInfo, pvExisting: PVOID, pvNew: PVOID) -> HRESULT #cpp_method;

    GetGuid: (this: *IRecordInfo, pguid: *GUID) -> HRESULT #cpp_method;

    GetName: (this: *IRecordInfo, pbstrName: *BSTR) -> HRESULT #cpp_method;

    GetSize: (this: *IRecordInfo, pcbSize: *u32) -> HRESULT #cpp_method;

    GetTypeInfo: (this: *IRecordInfo, ppTypeInfo: **ITypeInfo) -> HRESULT #cpp_method;

    GetField: (this: *IRecordInfo, pvData: PVOID, szFieldName: LPCOLESTR, pvarField: *VARIANT) -> HRESULT #cpp_method;

    GetFieldNoCopy: (this: *IRecordInfo, pvData: PVOID, szFieldName: LPCOLESTR, pvarField: *VARIANT, ppvDataCArray: *PVOID) -> HRESULT #cpp_method;

    PutField: (this: *IRecordInfo, wFlags: u32, pvData: PVOID, szFieldName: LPCOLESTR, pvarField: *VARIANT) -> HRESULT #cpp_method;

    PutFieldNoCopy: (this: *IRecordInfo, wFlags: u32, pvData: PVOID, szFieldName: LPCOLESTR, pvarField: *VARIANT) -> HRESULT #cpp_method;

    GetFieldNames: (this: *IRecordInfo, pcNames: *u32, rgBstrNames: *BSTR) -> HRESULT #cpp_method;

    IsMatchingType: (this: *IRecordInfo, pRecordInfo: *IRecordInfo) -> BOOL #cpp_method;

    RecordCreate: (this: *IRecordInfo) -> PVOID #cpp_method;

    RecordCreateCopy: (this: *IRecordInfo, pvSource: PVOID, ppvDest: *PVOID) -> HRESULT #cpp_method;

    RecordDestroy: (this: *IRecordInfo, pvRecord: PVOID) -> HRESULT #cpp_method;
}

IRecordInfo_RecordInit :: inline (this: *IRecordInfo, pvNew: PVOID) -> HRESULT { return this.irecordinfo_vtable.RecordInit(this, pvNew); }

IRecordInfo_RecordClear :: inline (this: *IRecordInfo, pvExisting: PVOID) -> HRESULT { return this.irecordinfo_vtable.RecordClear(this, pvExisting); }

IRecordInfo_RecordCopy :: inline (this: *IRecordInfo, pvExisting: PVOID, pvNew: PVOID) -> HRESULT { return this.irecordinfo_vtable.RecordCopy(this, pvExisting, pvNew); }

IRecordInfo_GetGuid :: inline (this: *IRecordInfo, pguid: *GUID) -> HRESULT { return this.irecordinfo_vtable.GetGuid(this, pguid); }

IRecordInfo_GetName :: inline (this: *IRecordInfo, pbstrName: *BSTR) -> HRESULT { return this.irecordinfo_vtable.GetName(this, pbstrName); }

IRecordInfo_GetSize :: inline (this: *IRecordInfo, pcbSize: *u32) -> HRESULT { return this.irecordinfo_vtable.GetSize(this, pcbSize); }

IRecordInfo_GetTypeInfo :: inline (this: *IRecordInfo, ppTypeInfo: **ITypeInfo) -> HRESULT { return this.irecordinfo_vtable.GetTypeInfo(this, ppTypeInfo); }

IRecordInfo_GetField :: inline (this: *IRecordInfo, pvData: PVOID, szFieldName: LPCOLESTR, pvarField: *VARIANT) -> HRESULT { return this.irecordinfo_vtable.GetField(this, pvData, szFieldName, pvarField); }

IRecordInfo_GetFieldNoCopy :: inline (this: *IRecordInfo, pvData: PVOID, szFieldName: LPCOLESTR, pvarField: *VARIANT, ppvDataCArray: *PVOID) -> HRESULT { return this.irecordinfo_vtable.GetFieldNoCopy(this, pvData, szFieldName, pvarField, ppvDataCArray); }

IRecordInfo_PutField :: inline (this: *IRecordInfo, wFlags: u32, pvData: PVOID, szFieldName: LPCOLESTR, pvarField: *VARIANT) -> HRESULT { return this.irecordinfo_vtable.PutField(this, wFlags, pvData, szFieldName, pvarField); }

IRecordInfo_PutFieldNoCopy :: inline (this: *IRecordInfo, wFlags: u32, pvData: PVOID, szFieldName: LPCOLESTR, pvarField: *VARIANT) -> HRESULT { return this.irecordinfo_vtable.PutFieldNoCopy(this, wFlags, pvData, szFieldName, pvarField); }

IRecordInfo_GetFieldNames :: inline (this: *IRecordInfo, pcNames: *u32, rgBstrNames: *BSTR) -> HRESULT { return this.irecordinfo_vtable.GetFieldNames(this, pcNames, rgBstrNames); }

IRecordInfo_IsMatchingType :: inline (this: *IRecordInfo, pRecordInfo: *IRecordInfo) -> BOOL { return this.irecordinfo_vtable.IsMatchingType(this, pRecordInfo); }

IRecordInfo_RecordCreate :: inline (this: *IRecordInfo) -> PVOID { return this.irecordinfo_vtable.RecordCreate(this); }

IRecordInfo_RecordCreateCopy :: inline (this: *IRecordInfo, pvSource: PVOID, ppvDest: *PVOID) -> HRESULT { return this.irecordinfo_vtable.RecordCreateCopy(this, pvSource, ppvDest); }

IRecordInfo_RecordDestroy :: inline (this: *IRecordInfo, pvRecord: PVOID) -> HRESULT { return this.irecordinfo_vtable.RecordDestroy(this, pvRecord); }

vtable :: (obj: *IRecordInfo) -> *IRecordInfo_VTable { return obj.irecordinfo_vtable; }



IErrorLog_UUID :: "3127CA40-446E-11CE-8135-00AA004BB851";
IErrorLog :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ierrorlog_vtable: *IErrorLog_VTable;
}
IErrorLog_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    AddError: (this: *IErrorLog, pszPropName: LPCOLESTR, pExcepInfo: *EXCEPINFO) -> HRESULT #cpp_method;
}
IErrorLog_AddError :: inline (this: *IErrorLog, pszPropName: LPCOLESTR, pExcepInfo: *EXCEPINFO) -> HRESULT { return this.ierrorlog_vtable.AddError(this, pszPropName, pExcepInfo); }

vtable :: (obj: *IErrorLog) -> *IErrorLog_VTable { return obj.ierrorlog_vtable; }



IPropertyBag_UUID :: "55272A00-42CB-11CE-8135-00AA004BB851";
IPropertyBag :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ipropertybag_vtable: *IPropertyBag_VTable;
}
IPropertyBag_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Read: (this: *IPropertyBag, pszPropName: LPCOLESTR, pVar: *VARIANT, pErrorLog: *IErrorLog) -> HRESULT #cpp_method;

    Write: (this: *IPropertyBag, pszPropName: LPCOLESTR, pVar: *VARIANT) -> HRESULT #cpp_method;
}

IPropertyBag_Read :: inline (this: *IPropertyBag, pszPropName: LPCOLESTR, pVar: *VARIANT, pErrorLog: *IErrorLog) -> HRESULT { return this.ipropertybag_vtable.Read(this, pszPropName, pVar, pErrorLog); }

IPropertyBag_Write :: inline (this: *IPropertyBag, pszPropName: LPCOLESTR, pVar: *VARIANT) -> HRESULT { return this.ipropertybag_vtable.Write(this, pszPropName, pVar); }

vtable :: (obj: *IPropertyBag) -> *IPropertyBag_VTable { return obj.ipropertybag_vtable; }



ITypeLibRegistrationReader_UUID :: "ED6A8A2A-B160-4E77-8F73-AA7435CD5C27";
ITypeLibRegistrationReader :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; itypelibregistrationreader_vtable: *ITypeLibRegistrationReader_VTable;
}
ITypeLibRegistrationReader_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    EnumTypeLibRegistrations: (this: *ITypeLibRegistrationReader, ppEnumUnknown: **IEnumUnknown) -> HRESULT #cpp_method;
}
ITypeLibRegistrationReader_EnumTypeLibRegistrations :: inline (this: *ITypeLibRegistrationReader, ppEnumUnknown: **IEnumUnknown) -> HRESULT { return this.itypelibregistrationreader_vtable.EnumTypeLibRegistrations(this, ppEnumUnknown); }

vtable :: (obj: *ITypeLibRegistrationReader) -> *ITypeLibRegistrationReader_VTable { return obj.itypelibregistrationreader_vtable; }



ITypeLibRegistration_UUID :: "76A3E735-02DF-4A12-98EB-043AD3600AF3";
ITypeLibRegistration :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; itypelibregistration_vtable: *ITypeLibRegistration_VTable;
}
ITypeLibRegistration_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetGuid: (this: *ITypeLibRegistration, pGuid: *GUID) -> HRESULT #cpp_method;

    GetVersion: (this: *ITypeLibRegistration, pVersion: *BSTR) -> HRESULT #cpp_method;

    GetLcid: (this: *ITypeLibRegistration, pLcid: *LCID) -> HRESULT #cpp_method;

    GetWin32Path: (this: *ITypeLibRegistration, pWin32Path: *BSTR) -> HRESULT #cpp_method;

    GetWin64Path: (this: *ITypeLibRegistration, pWin64Path: *BSTR) -> HRESULT #cpp_method;

    GetDisplayName: (this: *ITypeLibRegistration, pDisplayName: *BSTR) -> HRESULT #cpp_method;

    GetFlags: (this: *ITypeLibRegistration, pFlags: *u32) -> HRESULT #cpp_method;

    GetHelpDir: (this: *ITypeLibRegistration, pHelpDir: *BSTR) -> HRESULT #cpp_method;
}

ITypeLibRegistration_GetGuid :: inline (this: *ITypeLibRegistration, pGuid: *GUID) -> HRESULT { return this.itypelibregistration_vtable.GetGuid(this, pGuid); }

ITypeLibRegistration_GetVersion :: inline (this: *ITypeLibRegistration, pVersion: *BSTR) -> HRESULT { return this.itypelibregistration_vtable.GetVersion(this, pVersion); }

ITypeLibRegistration_GetLcid :: inline (this: *ITypeLibRegistration, pLcid: *LCID) -> HRESULT { return this.itypelibregistration_vtable.GetLcid(this, pLcid); }

ITypeLibRegistration_GetWin32Path :: inline (this: *ITypeLibRegistration, pWin32Path: *BSTR) -> HRESULT { return this.itypelibregistration_vtable.GetWin32Path(this, pWin32Path); }

ITypeLibRegistration_GetWin64Path :: inline (this: *ITypeLibRegistration, pWin64Path: *BSTR) -> HRESULT { return this.itypelibregistration_vtable.GetWin64Path(this, pWin64Path); }

ITypeLibRegistration_GetDisplayName :: inline (this: *ITypeLibRegistration, pDisplayName: *BSTR) -> HRESULT { return this.itypelibregistration_vtable.GetDisplayName(this, pDisplayName); }

ITypeLibRegistration_GetFlags :: inline (this: *ITypeLibRegistration, pFlags: *u32) -> HRESULT { return this.itypelibregistration_vtable.GetFlags(this, pFlags); }

ITypeLibRegistration_GetHelpDir :: inline (this: *ITypeLibRegistration, pHelpDir: *BSTR) -> HRESULT { return this.itypelibregistration_vtable.GetHelpDir(this, pHelpDir); }

vtable :: (obj: *ITypeLibRegistration) -> *ITypeLibRegistration_VTable { return obj.itypelibregistration_vtable; }


CLSID_TypeLibRegistrationReader: CLSID;

IMarkupCallback :: struct {}

IControlMarkup :: struct {}

QueryCancelAutoPlay :: struct {}

TimeCategorizer :: struct {}

AlphabeticalCategorizer :: struct {}

MergedCategorizer :: struct {}

ImageProperties :: struct {}

CDBurn :: struct {}

StartMenuPin :: struct {}

WebWizardHost :: struct {}

PublishDropTarget :: struct {}

PublishingWizard :: struct {}

InternetPrintOrdering :: struct {}

FolderViewHost :: struct {}

ExplorerBrowser :: struct {}

ImageRecompress :: struct {}

TrayBandSiteService :: struct {}

TrayDeskBand :: struct {}

AttachmentServices :: struct {}

DocPropShellExtension :: struct {}

FSCopyHandler :: struct {}

PreviousVersions :: struct {}

NamespaceTreeControl :: struct {}

IENamespaceTreeControl :: struct {}

ApplicationAssociationRegistrationUI :: struct {}

DesktopGadget :: struct {}

AccessibilityDockingService :: struct {}

ExecuteFolder :: struct {}

VirtualDesktopManager :: struct {}

StorageProviderBanners :: struct {}

SHITEMID :: struct {
    cb:   u16;
    abID: [1] u8;
}

ITEMIDLIST :: struct {
    mkid: SHITEMID;
}

ITEMIDLIST_RELATIVE :: ITEMIDLIST;

ITEMID_CHILD :: ITEMIDLIST;

ITEMIDLIST_ABSOLUTE :: ITEMIDLIST;

wirePIDL :: *BYTE_BLOB;

tagSTRRET_TYPE :: enum s32 {
    WSTR   :: 0;
    OFFSET :: 1;
    CSTR   :: 2;

    STRRET_WSTR   :: WSTR;
    STRRET_OFFSET :: OFFSET;
    STRRET_CSTR   :: CSTR;
}

STRRET_TYPE :: tagSTRRET_TYPE;

STRRET :: struct {
    uType: u32;
    union {
        pOleStr: *s16;
        uOffset: u32;
        cStr:    [260] u8;
    }
}

SHELLDETAILS :: struct {
    fmt:    s32;
    cxChar: s32;
    str:    STRRET;
}

tagPERCEIVED :: enum s32 {
    FIRST       :: -3;
    CUSTOM      :: -3;
    UNSPECIFIED :: -2;
    FOLDER      :: -1;
    UNKNOWN     :: 0;
    TEXT        :: 1;
    IMAGE       :: 2;
    AUDIO       :: 3;
    VIDEO       :: 4;
    COMPRESSED  :: 5;
    DOCUMENT    :: 6;
    SYSTEM      :: 7;
    APPLICATION :: 8;
    GAMEMEDIA   :: 9;
    CONTACTS    :: 10;
    LAST        :: 10;

    PERCEIVED_TYPE_FIRST       :: FIRST;
    PERCEIVED_TYPE_CUSTOM      :: CUSTOM;
    PERCEIVED_TYPE_UNSPECIFIED :: UNSPECIFIED;
    PERCEIVED_TYPE_FOLDER      :: FOLDER;
    PERCEIVED_TYPE_UNKNOWN     :: UNKNOWN;
    PERCEIVED_TYPE_TEXT        :: TEXT;
    PERCEIVED_TYPE_IMAGE       :: IMAGE;
    PERCEIVED_TYPE_AUDIO       :: AUDIO;
    PERCEIVED_TYPE_VIDEO       :: VIDEO;
    PERCEIVED_TYPE_COMPRESSED  :: COMPRESSED;
    PERCEIVED_TYPE_DOCUMENT    :: DOCUMENT;
    PERCEIVED_TYPE_SYSTEM      :: SYSTEM;
    PERCEIVED_TYPE_APPLICATION :: APPLICATION;
    PERCEIVED_TYPE_GAMEMEDIA   :: GAMEMEDIA;
    PERCEIVED_TYPE_CONTACTS    :: CONTACTS;
    PERCEIVED_TYPE_LAST        :: LAST;
}

PERCEIVED :: tagPERCEIVED;

PERCEIVEDFLAG :: u32;

COMDLG_FILTERSPEC :: struct {
    pszName: *s16;
    pszSpec: *s16;
}

KNOWNFOLDERID :: GUID;

KF_REDIRECT_FLAGS :: u32;
FOLDERTYPEID :: GUID;

TASKOWNERID :: GUID;

ELEMENTID :: GUID;

tagSHCOLSTATE :: enum s32 {
    DEFAULT            :: 0;
    TYPE_STR           :: 1;
    TYPE_INT           :: 2;
    TYPE_DATE          :: 3;
    TYPEMASK           :: 15;
    ONBYDEFAULT        :: 16;
    SLOW               :: 32;
    EXTENDED           :: 64;
    SECONDARYUI        :: 128;
    HIDDEN             :: 256;
    PREFER_VARCMP      :: 512;
    PREFER_FMTCMP      :: 1024;
    NOSORTBYFOLDERNESS :: 2048;
    VIEWONLY           :: 65536;
    BATCHREAD          :: 131072;
    NO_GROUPBY         :: 262144;
    FIXED_WIDTH        :: 4096;
    NODPISCALE         :: 8192;
    FIXED_RATIO        :: 16384;
    DISPLAYMASK        :: 61440;

    SHCOLSTATE_DEFAULT            :: DEFAULT;
    SHCOLSTATE_TYPE_STR           :: TYPE_STR;
    SHCOLSTATE_TYPE_INT           :: TYPE_INT;
    SHCOLSTATE_TYPE_DATE          :: TYPE_DATE;
    SHCOLSTATE_TYPEMASK           :: TYPEMASK;
    SHCOLSTATE_ONBYDEFAULT        :: ONBYDEFAULT;
    SHCOLSTATE_SLOW               :: SLOW;
    SHCOLSTATE_EXTENDED           :: EXTENDED;
    SHCOLSTATE_SECONDARYUI        :: SECONDARYUI;
    SHCOLSTATE_HIDDEN             :: HIDDEN;
    SHCOLSTATE_PREFER_VARCMP      :: PREFER_VARCMP;
    SHCOLSTATE_PREFER_FMTCMP      :: PREFER_FMTCMP;
    SHCOLSTATE_NOSORTBYFOLDERNESS :: NOSORTBYFOLDERNESS;
    SHCOLSTATE_VIEWONLY           :: VIEWONLY;
    SHCOLSTATE_BATCHREAD          :: BATCHREAD;
    SHCOLSTATE_NO_GROUPBY         :: NO_GROUPBY;
    SHCOLSTATE_FIXED_WIDTH        :: FIXED_WIDTH;
    SHCOLSTATE_NODPISCALE         :: NODPISCALE;
    SHCOLSTATE_FIXED_RATIO        :: FIXED_RATIO;
    SHCOLSTATE_DISPLAYMASK        :: DISPLAYMASK;
}

SHCOLSTATE :: tagSHCOLSTATE;

SHCOLSTATEF :: u32;

SHCOLUMNID :: PROPERTYKEY;

DEVICE_SCALE_FACTOR :: enum s32 {
    INVALID           :: 0;
    SCALE_100_PERCENT :: 100;
    SCALE_120_PERCENT :: 120;
    SCALE_125_PERCENT :: 125;
    SCALE_140_PERCENT :: 140;
    SCALE_150_PERCENT :: 150;
    SCALE_160_PERCENT :: 160;
    SCALE_175_PERCENT :: 175;
    SCALE_180_PERCENT :: 180;
    SCALE_200_PERCENT :: 200;
    SCALE_225_PERCENT :: 225;
    SCALE_250_PERCENT :: 250;
    SCALE_300_PERCENT :: 300;
    SCALE_350_PERCENT :: 350;
    SCALE_400_PERCENT :: 400;
    SCALE_450_PERCENT :: 450;
    SCALE_500_PERCENT :: 500;

    DEVICE_SCALE_FACTOR_INVALID :: INVALID;
}

DesktopWallpaper :: struct {}

ShellDesktop :: struct {}

ShellFSFolder :: struct {}

NetworkPlaces :: struct {}

ShellLink :: struct {}

DriveSizeCategorizer :: struct {}

DriveTypeCategorizer :: struct {}

FreeSpaceCategorizer :: struct {}

SizeCategorizer :: struct {}

PropertiesUI :: struct {}

UserNotification :: struct {}

TaskbarList :: struct {}

ShellItem :: struct {}

NamespaceWalker :: struct {}

FileOperation :: struct {}

FileOpenDialog :: struct {}

FileSaveDialog :: struct {}

KnownFolderManager :: struct {}

SharingConfigurationManager :: struct {}

NetworkConnections :: struct {}

ScheduledTasks :: struct {}

ApplicationAssociationRegistration :: struct {}

SearchFolderItemFactory :: struct {}

OpenControlPanel :: struct {}

MailRecipient :: struct {}

NetworkExplorerFolder :: struct {}

DestinationList :: struct {}

ApplicationDestinations :: struct {}

ApplicationDocumentLists :: struct {}

HomeGroup :: struct {}

ShellLibrary :: struct {}

AppStartupLink :: struct {}

EnumerableObjectCollection :: struct {}

FrameworkInputPane :: struct {}

DefFolderMenu :: struct {}

AppVisibility :: struct {}

AppShellVerbHandler :: struct {}

ExecuteUnknown :: struct {}

PackageDebugSettings :: struct {}

SuspensionDependencyManager :: struct {}

ApplicationActivationManager :: struct {}

ApplicationDesignModeSettings :: struct {}

CMINVOKECOMMANDINFO :: struct {
    cbSize:       u32;
    fMask:        u32;
    hwnd:         HWND;
    lpVerb:       *u8;
    lpParameters: *u8;
    lpDirectory:  *u8;
    nShow:        s32;
    dwHotKey:     u32;
    hIcon:        HANDLE;
}

PCCMINVOKECOMMANDINFO :: *CMINVOKECOMMANDINFO;

CMINVOKECOMMANDINFOEX :: struct {
    cbSize:        u32;
    fMask:         u32;
    hwnd:          HWND;
    lpVerb:        *u8;
    lpParameters:  *u8;
    lpDirectory:   *u8;
    nShow:         s32;
    dwHotKey:      u32;
    hIcon:         HANDLE;
    lpTitle:       *u8;
    lpVerbW:       *s16;
    lpParametersW: *s16;
    lpDirectoryW:  *s16;
    lpTitleW:      *s16;
    ptInvoke:      POINT;
}

PCCMINVOKECOMMANDINFOEX :: *CMINVOKECOMMANDINFOEX;

CMINVOKECOMMANDINFOEX_REMOTE :: struct {
    cbSize:        u32;
    fMask:         u32;
    hwnd:          HWND;
    lpVerbString:  *u8;
    lpParameters:  *u8;
    lpDirectory:   *u8;
    nShow:         s32;
    dwHotKey:      u32;
    lpTitle:       *u8;
    lpVerbWString: *s16;
    lpParametersW: *s16;
    lpDirectoryW:  *s16;
    lpTitleW:      *s16;
    ptInvoke:      POINT;
    lpVerbInt:     u32;
    lpVerbWInt:    u32;
}


IContextMenu_UUID :: "000214e4-0000-0000-c000-000000000046";
IContextMenu :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; icontextmenu_vtable: *IContextMenu_VTable;
}
IContextMenu_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    QueryContextMenu: (this: *IContextMenu, hmenu: HMENU, indexMenu: u32, idCmdFirst: u32, idCmdLast: u32, uFlags: u32) -> HRESULT #cpp_method;

    InvokeCommand: (this: *IContextMenu, pici: *CMINVOKECOMMANDINFO) -> HRESULT #cpp_method;

    GetCommandString: (this: *IContextMenu, idCmd: u64, uType: u32, pReserved: *u32, pszName: *u8, cchMax: u32) -> HRESULT #cpp_method;
}

IContextMenu_QueryContextMenu :: inline (this: *IContextMenu, hmenu: HMENU, indexMenu: u32, idCmdFirst: u32, idCmdLast: u32, uFlags: u32) -> HRESULT { return this.icontextmenu_vtable.QueryContextMenu(this, hmenu, indexMenu, idCmdFirst, idCmdLast, uFlags); }

IContextMenu_InvokeCommand :: inline (this: *IContextMenu, pici: *CMINVOKECOMMANDINFO) -> HRESULT { return this.icontextmenu_vtable.InvokeCommand(this, pici); }

IContextMenu_GetCommandString :: inline (this: *IContextMenu, idCmd: u64, uType: u32, pReserved: *u32, pszName: *u8, cchMax: u32) -> HRESULT { return this.icontextmenu_vtable.GetCommandString(this, idCmd, uType, pReserved, pszName, cchMax); }

vtable :: (obj: *IContextMenu) -> *IContextMenu_VTable { return obj.icontextmenu_vtable; }



IContextMenu2_UUID :: "000214f4-0000-0000-c000-000000000046";
IContextMenu2 :: struct {
    #as using icontextmenu: IContextMenu;
    #place icontextmenu; icontextmenu2_vtable: *IContextMenu2_VTable;
}
IContextMenu2_VTable :: struct #type_info_none {
    using icontextmenu: IContextMenu_VTable;
    HandleMenuMsg: (this: *IContextMenu2, uMsg: u32, wParam: WPARAM, lParam: LPARAM) -> HRESULT #cpp_method;
}
IContextMenu2_HandleMenuMsg :: inline (this: *IContextMenu2, uMsg: u32, wParam: WPARAM, lParam: LPARAM) -> HRESULT { return this.icontextmenu2_vtable.HandleMenuMsg(this, uMsg, wParam, lParam); }

vtable :: (obj: *IContextMenu2) -> *IContextMenu2_VTable { return obj.icontextmenu2_vtable; }



IContextMenu3_UUID :: "BCFCE0A0-EC17-11d0-8D10-00A0C90F2719";
IContextMenu3 :: struct {
    #as using icontextmenu2: IContextMenu2;
    #place icontextmenu2; icontextmenu3_vtable: *IContextMenu3_VTable;
}
IContextMenu3_VTable :: struct #type_info_none {
    using icontextmenu2: IContextMenu2_VTable;
    HandleMenuMsg2: (this: *IContextMenu3, uMsg: u32, wParam: WPARAM, lParam: LPARAM, plResult: *LRESULT) -> HRESULT #cpp_method;
}
IContextMenu3_HandleMenuMsg2 :: inline (this: *IContextMenu3, uMsg: u32, wParam: WPARAM, lParam: LPARAM, plResult: *LRESULT) -> HRESULT { return this.icontextmenu3_vtable.HandleMenuMsg2(this, uMsg, wParam, lParam, plResult); }

vtable :: (obj: *IContextMenu3) -> *IContextMenu3_VTable { return obj.icontextmenu3_vtable; }



IExecuteCommand_UUID :: "7F9185B0-CB92-43c5-80A9-92277A4F7B54";
IExecuteCommand :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iexecutecommand_vtable: *IExecuteCommand_VTable;
}
IExecuteCommand_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SetKeyState: (this: *IExecuteCommand, grfKeyState: u32) -> HRESULT #cpp_method;

    SetParameters: (this: *IExecuteCommand, pszParameters: *s16) -> HRESULT #cpp_method;

    SetPosition: (this: *IExecuteCommand, pt: POINT) -> HRESULT #cpp_method;

    SetShowWindow: (this: *IExecuteCommand, nShow: s32) -> HRESULT #cpp_method;

    SetNoShowUI: (this: *IExecuteCommand, fNoShowUI: BOOL) -> HRESULT #cpp_method;

    SetDirectory: (this: *IExecuteCommand, pszDirectory: *s16) -> HRESULT #cpp_method;

    Execute: (this: *IExecuteCommand) -> HRESULT #cpp_method;
}

IExecuteCommand_SetKeyState :: inline (this: *IExecuteCommand, grfKeyState: u32) -> HRESULT { return this.iexecutecommand_vtable.SetKeyState(this, grfKeyState); }

IExecuteCommand_SetParameters :: inline (this: *IExecuteCommand, pszParameters: *s16) -> HRESULT { return this.iexecutecommand_vtable.SetParameters(this, pszParameters); }

IExecuteCommand_SetPosition :: inline (this: *IExecuteCommand, pt: POINT) -> HRESULT { return this.iexecutecommand_vtable.SetPosition(this, pt); }

IExecuteCommand_SetShowWindow :: inline (this: *IExecuteCommand, nShow: s32) -> HRESULT { return this.iexecutecommand_vtable.SetShowWindow(this, nShow); }

IExecuteCommand_SetNoShowUI :: inline (this: *IExecuteCommand, fNoShowUI: BOOL) -> HRESULT { return this.iexecutecommand_vtable.SetNoShowUI(this, fNoShowUI); }

IExecuteCommand_SetDirectory :: inline (this: *IExecuteCommand, pszDirectory: *s16) -> HRESULT { return this.iexecutecommand_vtable.SetDirectory(this, pszDirectory); }

IExecuteCommand_Execute :: inline (this: *IExecuteCommand) -> HRESULT { return this.iexecutecommand_vtable.Execute(this); }

vtable :: (obj: *IExecuteCommand) -> *IExecuteCommand_VTable { return obj.iexecutecommand_vtable; }



IPersistFolder_UUID :: "000214EA-0000-0000-C000-000000000046";
IPersistFolder :: struct {
    #as using ipersist: IPersist;
    #place ipersist; ipersistfolder_vtable: *IPersistFolder_VTable;
}
IPersistFolder_VTable :: struct #type_info_none {
    using ipersist: IPersist_VTable;
    Initialize: (this: *IPersistFolder, pidl: LPCITEMIDLIST) -> HRESULT #cpp_method;
}
IPersistFolder_Initialize :: inline (this: *IPersistFolder, pidl: LPCITEMIDLIST) -> HRESULT { return this.ipersistfolder_vtable.Initialize(this, pidl); }

vtable :: (obj: *IPersistFolder) -> *IPersistFolder_VTable { return obj.ipersistfolder_vtable; }



IRunnableTask_UUID :: "85788d00-6807-11d0-b810-00c04fd706ec";
IRunnableTask :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; irunnabletask_vtable: *IRunnableTask_VTable;
}
IRunnableTask_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Run: (this: *IRunnableTask) -> HRESULT #cpp_method;

    Kill: (this: *IRunnableTask, bWait: BOOL) -> HRESULT #cpp_method;

    Suspend: (this: *IRunnableTask) -> HRESULT #cpp_method;

    Resume: (this: *IRunnableTask) -> HRESULT #cpp_method;

    IsRunning: (this: *IRunnableTask) -> u32 #cpp_method;
}

IRunnableTask_Run :: inline (this: *IRunnableTask) -> HRESULT { return this.irunnabletask_vtable.Run(this); }

IRunnableTask_Kill :: inline (this: *IRunnableTask, bWait: BOOL) -> HRESULT { return this.irunnabletask_vtable.Kill(this, bWait); }

IRunnableTask_Suspend :: inline (this: *IRunnableTask) -> HRESULT { return this.irunnabletask_vtable.Suspend(this); }

IRunnableTask_Resume :: inline (this: *IRunnableTask) -> HRESULT { return this.irunnabletask_vtable.Resume(this); }

IRunnableTask_IsRunning :: inline (this: *IRunnableTask) -> u32 { return this.irunnabletask_vtable.IsRunning(this); }

vtable :: (obj: *IRunnableTask) -> *IRunnableTask_VTable { return obj.irunnabletask_vtable; }



IShellTaskScheduler_UUID :: "6CCB7BE0-6807-11d0-B810-00C04FD706EC";
IShellTaskScheduler :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ishelltaskscheduler_vtable: *IShellTaskScheduler_VTable;
}
IShellTaskScheduler_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    AddTask: (this: *IShellTaskScheduler, prt: *IRunnableTask, rtoid: *TASKOWNERID, lParam: u64, dwPriority: u32) -> HRESULT #cpp_method;

    RemoveTasks: (this: *IShellTaskScheduler, rtoid: *TASKOWNERID, lParam: u64, bWaitIfRunning: BOOL) -> HRESULT #cpp_method;

    CountTasks: (this: *IShellTaskScheduler, rtoid: *TASKOWNERID) -> u32 #cpp_method;

    Status: (this: *IShellTaskScheduler, dwReleaseStatus: u32, dwThreadTimeout: u32) -> HRESULT #cpp_method;
}

IShellTaskScheduler_AddTask :: inline (this: *IShellTaskScheduler, prt: *IRunnableTask, rtoid: *TASKOWNERID, lParam: u64, dwPriority: u32) -> HRESULT { return this.ishelltaskscheduler_vtable.AddTask(this, prt, rtoid, lParam, dwPriority); }

IShellTaskScheduler_RemoveTasks :: inline (this: *IShellTaskScheduler, rtoid: *TASKOWNERID, lParam: u64, bWaitIfRunning: BOOL) -> HRESULT { return this.ishelltaskscheduler_vtable.RemoveTasks(this, rtoid, lParam, bWaitIfRunning); }

IShellTaskScheduler_CountTasks :: inline (this: *IShellTaskScheduler, rtoid: *TASKOWNERID) -> u32 { return this.ishelltaskscheduler_vtable.CountTasks(this, rtoid); }

IShellTaskScheduler_Status :: inline (this: *IShellTaskScheduler, dwReleaseStatus: u32, dwThreadTimeout: u32) -> HRESULT { return this.ishelltaskscheduler_vtable.Status(this, dwReleaseStatus, dwThreadTimeout); }

vtable :: (obj: *IShellTaskScheduler) -> *IShellTaskScheduler_VTable { return obj.ishelltaskscheduler_vtable; }



IPersistFolder2_UUID :: "1AC3D9F0-175C-11d1-95BE-00609797EA4F";
IPersistFolder2 :: struct {
    #as using ipersistfolder: IPersistFolder;
    #place ipersistfolder; ipersistfolder2_vtable: *IPersistFolder2_VTable;
}
IPersistFolder2_VTable :: struct #type_info_none {
    using ipersistfolder: IPersistFolder_VTable;
    GetCurFolder: (this: *IPersistFolder2, ppidl: *LPITEMIDLIST) -> HRESULT #cpp_method;
}
IPersistFolder2_GetCurFolder :: inline (this: *IPersistFolder2, ppidl: *LPITEMIDLIST) -> HRESULT { return this.ipersistfolder2_vtable.GetCurFolder(this, ppidl); }

vtable :: (obj: *IPersistFolder2) -> *IPersistFolder2_VTable { return obj.ipersistfolder2_vtable; }


PERSIST_FOLDER_TARGET_INFO :: struct {
    pidlTargetFolder:    LPITEMIDLIST;
    szTargetParsingName: [260] s16;
    szNetworkProvider:   [260] s16;
    dwAttributes:        u32;
    csidl:               s32;
}


IPersistFolder3_UUID :: "CEF04FDF-FE72-11d2-87A5-00C04F6837CF";
IPersistFolder3 :: struct {
    #as using ipersistfolder2: IPersistFolder2;
    #place ipersistfolder2; ipersistfolder3_vtable: *IPersistFolder3_VTable;
}
IPersistFolder3_VTable :: struct #type_info_none {
    using ipersistfolder2: IPersistFolder2_VTable;
    InitializeEx: (this: *IPersistFolder3, pbc: *IBindCtx, pidlRoot: LPCITEMIDLIST, ppfti: *PERSIST_FOLDER_TARGET_INFO) -> HRESULT #cpp_method;

    GetFolderTargetInfo: (this: *IPersistFolder3, ppfti: *PERSIST_FOLDER_TARGET_INFO) -> HRESULT #cpp_method;
}

IPersistFolder3_InitializeEx :: inline (this: *IPersistFolder3, pbc: *IBindCtx, pidlRoot: LPCITEMIDLIST, ppfti: *PERSIST_FOLDER_TARGET_INFO) -> HRESULT { return this.ipersistfolder3_vtable.InitializeEx(this, pbc, pidlRoot, ppfti); }

IPersistFolder3_GetFolderTargetInfo :: inline (this: *IPersistFolder3, ppfti: *PERSIST_FOLDER_TARGET_INFO) -> HRESULT { return this.ipersistfolder3_vtable.GetFolderTargetInfo(this, ppfti); }

vtable :: (obj: *IPersistFolder3) -> *IPersistFolder3_VTable { return obj.ipersistfolder3_vtable; }



IPersistIDList_UUID :: "1079acfc-29bd-11d3-8e0d-00c04f6837d5";
IPersistIDList :: struct {
    #as using ipersist: IPersist;
    #place ipersist; ipersistidlist_vtable: *IPersistIDList_VTable;
}
IPersistIDList_VTable :: struct #type_info_none {
    using ipersist: IPersist_VTable;
    SetIDList: (this: *IPersistIDList, pidl: LPCITEMIDLIST) -> HRESULT #cpp_method;

    GetIDList: (this: *IPersistIDList, ppidl: *LPITEMIDLIST) -> HRESULT #cpp_method;
}

IPersistIDList_SetIDList :: inline (this: *IPersistIDList, pidl: LPCITEMIDLIST) -> HRESULT { return this.ipersistidlist_vtable.SetIDList(this, pidl); }

IPersistIDList_GetIDList :: inline (this: *IPersistIDList, ppidl: *LPITEMIDLIST) -> HRESULT { return this.ipersistidlist_vtable.GetIDList(this, ppidl); }

vtable :: (obj: *IPersistIDList) -> *IPersistIDList_VTable { return obj.ipersistidlist_vtable; }



IEnumIDList_UUID :: "000214F2-0000-0000-C000-000000000046";
IEnumIDList :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ienumidlist_vtable: *IEnumIDList_VTable;
}
IEnumIDList_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Next: (this: *IEnumIDList, celt: u32, rgelt: *LPITEMIDLIST, pceltFetched: *u32) -> HRESULT #cpp_method;

    Skip: (this: *IEnumIDList, celt: u32) -> HRESULT #cpp_method;

    Reset: (this: *IEnumIDList) -> HRESULT #cpp_method;

    Clone: (this: *IEnumIDList, ppenum: **IEnumIDList) -> HRESULT #cpp_method;
}

IEnumIDList_Next :: inline (this: *IEnumIDList, celt: u32, rgelt: *LPITEMIDLIST, pceltFetched: *u32) -> HRESULT { return this.ienumidlist_vtable.Next(this, celt, rgelt, pceltFetched); }

IEnumIDList_Skip :: inline (this: *IEnumIDList, celt: u32) -> HRESULT { return this.ienumidlist_vtable.Skip(this, celt); }

IEnumIDList_Reset :: inline (this: *IEnumIDList) -> HRESULT { return this.ienumidlist_vtable.Reset(this); }

IEnumIDList_Clone :: inline (this: *IEnumIDList, ppenum: **IEnumIDList) -> HRESULT { return this.ienumidlist_vtable.Clone(this, ppenum); }

vtable :: (obj: *IEnumIDList) -> *IEnumIDList_VTable { return obj.ienumidlist_vtable; }



IEnumFullIDList_UUID :: "d0191542-7954-4908-bc06-b2360bbe45ba";
IEnumFullIDList :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ienumfullidlist_vtable: *IEnumFullIDList_VTable;
}
IEnumFullIDList_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Next: (this: *IEnumFullIDList, celt: u32, rgelt: *LPITEMIDLIST, pceltFetched: *u32) -> HRESULT #cpp_method;

    Skip: (this: *IEnumFullIDList, celt: u32) -> HRESULT #cpp_method;

    Reset: (this: *IEnumFullIDList) -> HRESULT #cpp_method;

    Clone: (this: *IEnumFullIDList, ppenum: **IEnumFullIDList) -> HRESULT #cpp_method;
}

IEnumFullIDList_Next :: inline (this: *IEnumFullIDList, celt: u32, rgelt: *LPITEMIDLIST, pceltFetched: *u32) -> HRESULT { return this.ienumfullidlist_vtable.Next(this, celt, rgelt, pceltFetched); }

IEnumFullIDList_Skip :: inline (this: *IEnumFullIDList, celt: u32) -> HRESULT { return this.ienumfullidlist_vtable.Skip(this, celt); }

IEnumFullIDList_Reset :: inline (this: *IEnumFullIDList) -> HRESULT { return this.ienumfullidlist_vtable.Reset(this); }

IEnumFullIDList_Clone :: inline (this: *IEnumFullIDList, ppenum: **IEnumFullIDList) -> HRESULT { return this.ienumfullidlist_vtable.Clone(this, ppenum); }

vtable :: (obj: *IEnumFullIDList) -> *IEnumFullIDList_VTable { return obj.ienumfullidlist_vtable; }


SHGDNF :: enum s32 {
    NORMAL        :: 0;
    INFOLDER      :: 1;
    FOREDITING    :: 4096;
    FORADDRESSBAR :: 16384;
    FORPARSING    :: 32768;

    SHGDN_NORMAL        :: NORMAL;
    SHGDN_INFOLDER      :: INFOLDER;
    SHGDN_FOREDITING    :: FOREDITING;
    SHGDN_FORADDRESSBAR :: FORADDRESSBAR;
    SHGDN_FORPARSING    :: FORPARSING;
}

SHGDNF :: u32;

SHCONTF :: enum s32 {
    CHECKING_FOR_CHILDREN :: 16;
    FOLDERS               :: 32;
    NONFOLDERS            :: 64;
    INCLUDEHIDDEN         :: 128;
    INIT_ON_FIRST_NEXT    :: 256;
    NETPRINTERSRCH        :: 512;
    SHAREABLE             :: 1024;
    STORAGE               :: 2048;
    NAVIGATION_ENUM       :: 4096;
    FASTITEMS             :: 8192;
    FLATLIST              :: 16384;
    ENABLE_ASYNC          :: 32768;
    INCLUDESUPERHIDDEN    :: 65536;

    SHCONTF_CHECKING_FOR_CHILDREN :: CHECKING_FOR_CHILDREN;
    SHCONTF_FOLDERS               :: FOLDERS;
    SHCONTF_NONFOLDERS            :: NONFOLDERS;
    SHCONTF_INCLUDEHIDDEN         :: INCLUDEHIDDEN;
    SHCONTF_INIT_ON_FIRST_NEXT    :: INIT_ON_FIRST_NEXT;
    SHCONTF_NETPRINTERSRCH        :: NETPRINTERSRCH;
    SHCONTF_SHAREABLE             :: SHAREABLE;
    SHCONTF_STORAGE               :: STORAGE;
    SHCONTF_NAVIGATION_ENUM       :: NAVIGATION_ENUM;
    SHCONTF_FASTITEMS             :: FASTITEMS;
    SHCONTF_FLATLIST              :: FLATLIST;
    SHCONTF_ENABLE_ASYNC          :: ENABLE_ASYNC;
    SHCONTF_INCLUDESUPERHIDDEN    :: INCLUDESUPERHIDDEN;
}

SHCONTF :: u32;

SFGAOF :: u32;

SYNC_TRANSFER_STATUS :: enum s32 {
    NONE                   :: 0;
    NEEDSUPLOAD            :: 1;
    NEEDSDOWNLOAD          :: 2;
    TRANSFERRING           :: 4;
    PAUSED                 :: 8;
    HASERROR               :: 16;
    FETCHING_METADATA      :: 32;
    USER_REQUESTED_REFRESH :: 64;
    HASWARNING             :: 128;
    EXCLUDED               :: 256;
    INCOMPLETE             :: 512;
    PLACEHOLDER_IFEMPTY    :: 1024;

    STS_NONE                   :: NONE;
    STS_NEEDSUPLOAD            :: NEEDSUPLOAD;
    STS_NEEDSDOWNLOAD          :: NEEDSDOWNLOAD;
    STS_TRANSFERRING           :: TRANSFERRING;
    STS_PAUSED                 :: PAUSED;
    STS_HASERROR               :: HASERROR;
    STS_FETCHING_METADATA      :: FETCHING_METADATA;
    STS_USER_REQUESTED_REFRESH :: USER_REQUESTED_REFRESH;
    STS_HASWARNING             :: HASWARNING;
    STS_EXCLUDED               :: EXCLUDED;
    STS_INCOMPLETE             :: INCOMPLETE;
    STS_PLACEHOLDER_IFEMPTY    :: PLACEHOLDER_IFEMPTY;
}

STORAGE_PROVIDER_FILE_FLAGS :: enum s32 {
    NONE                   :: 0;
    DOWNLOAD_BY_DEFAULT    :: 1;
    CREATED_ON_THIS_DEVICE :: 2;

    SPFF_NONE                   :: NONE;
    SPFF_DOWNLOAD_BY_DEFAULT    :: DOWNLOAD_BY_DEFAULT;
    SPFF_CREATED_ON_THIS_DEVICE :: CREATED_ON_THIS_DEVICE;
}

PLACEHOLDER_STATES :: enum s32 {
    NONE                            :: 0;
    MARKED_FOR_OFFLINE_AVAILABILITY :: 1;
    FULL_PRIMARY_STREAM_AVAILABLE   :: 2;
    CREATE_FILE_ACCESSIBLE          :: 4;
    CLOUDFILE_PLACEHOLDER           :: 8;
    DEFAULT                         :: 7;
    ALL                             :: 15;

    PS_NONE                            :: NONE;
    PS_MARKED_FOR_OFFLINE_AVAILABILITY :: MARKED_FOR_OFFLINE_AVAILABILITY;
    PS_FULL_PRIMARY_STREAM_AVAILABLE   :: FULL_PRIMARY_STREAM_AVAILABLE;
    PS_CREATE_FILE_ACCESSIBLE          :: CREATE_FILE_ACCESSIBLE;
    PS_CLOUDFILE_PLACEHOLDER           :: CLOUDFILE_PLACEHOLDER;
    PS_DEFAULT                         :: DEFAULT;
    PS_ALL                             :: ALL;
}

MERGE_UPDATE_STATUS :: enum s32 {
    COMPLETE        :: 0;
    USERINPUTNEEDED :: 1;
    FAILED          :: 2;

    MUS_COMPLETE        :: COMPLETE;
    MUS_USERINPUTNEEDED :: USERINPUTNEEDED;
    MUS_FAILED          :: FAILED;
}


IFileSyncMergeHandler_UUID :: "d97b5aac-c792-433c-975d-35c4eadc7a9d";
IFileSyncMergeHandler :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ifilesyncmergehandler_vtable: *IFileSyncMergeHandler_VTable;
}
IFileSyncMergeHandler_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Merge: (this: *IFileSyncMergeHandler, localFilePath: *s16, serverFilePath: *s16, updateStatus: *MERGE_UPDATE_STATUS) -> HRESULT #cpp_method;

    ShowResolveConflictUIAsync: (this: *IFileSyncMergeHandler, localFilePath: *s16, monitorToDisplayOn: HMONITOR) -> HRESULT #cpp_method;
}

IFileSyncMergeHandler_Merge :: inline (this: *IFileSyncMergeHandler, localFilePath: *s16, serverFilePath: *s16, updateStatus: *MERGE_UPDATE_STATUS) -> HRESULT { return this.ifilesyncmergehandler_vtable.Merge(this, localFilePath, serverFilePath, updateStatus); }

IFileSyncMergeHandler_ShowResolveConflictUIAsync :: inline (this: *IFileSyncMergeHandler, localFilePath: *s16, monitorToDisplayOn: HMONITOR) -> HRESULT { return this.ifilesyncmergehandler_vtable.ShowResolveConflictUIAsync(this, localFilePath, monitorToDisplayOn); }

vtable :: (obj: *IFileSyncMergeHandler) -> *IFileSyncMergeHandler_VTable { return obj.ifilesyncmergehandler_vtable; }


FOLDER_ENUM_MODE :: enum s32 {
    VIEWRESULT :: 0;
    NAVIGATION :: 1;

    FEM_VIEWRESULT :: VIEWRESULT;
    FEM_NAVIGATION :: NAVIGATION;
}


IObjectWithFolderEnumMode_UUID :: "6a9d9026-0e6e-464c-b000-42ecc07de673";
IObjectWithFolderEnumMode :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iobjectwithfolderenummode_vtable: *IObjectWithFolderEnumMode_VTable;
}
IObjectWithFolderEnumMode_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SetMode: (this: *IObjectWithFolderEnumMode, feMode: FOLDER_ENUM_MODE) -> HRESULT #cpp_method;

    GetMode: (this: *IObjectWithFolderEnumMode, pfeMode: *FOLDER_ENUM_MODE) -> HRESULT #cpp_method;
}

IObjectWithFolderEnumMode_SetMode :: inline (this: *IObjectWithFolderEnumMode, feMode: FOLDER_ENUM_MODE) -> HRESULT { return this.iobjectwithfolderenummode_vtable.SetMode(this, feMode); }

IObjectWithFolderEnumMode_GetMode :: inline (this: *IObjectWithFolderEnumMode, pfeMode: *FOLDER_ENUM_MODE) -> HRESULT { return this.iobjectwithfolderenummode_vtable.GetMode(this, pfeMode); }

vtable :: (obj: *IObjectWithFolderEnumMode) -> *IObjectWithFolderEnumMode_VTable { return obj.iobjectwithfolderenummode_vtable; }



IParseAndCreateItem_UUID :: "67efed0e-e827-4408-b493-78f3982b685c";
IParseAndCreateItem :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iparseandcreateitem_vtable: *IParseAndCreateItem_VTable;
}
IParseAndCreateItem_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SetItem: (this: *IParseAndCreateItem, psi: *IShellItem) -> HRESULT #cpp_method;

    GetItem: (this: *IParseAndCreateItem, riid: *IID, ppv: **void) -> HRESULT #cpp_method;
}

IParseAndCreateItem_SetItem :: inline (this: *IParseAndCreateItem, psi: *IShellItem) -> HRESULT { return this.iparseandcreateitem_vtable.SetItem(this, psi); }

IParseAndCreateItem_GetItem :: inline (this: *IParseAndCreateItem, riid: *IID, ppv: **void) -> HRESULT { return this.iparseandcreateitem_vtable.GetItem(this, riid, ppv); }

vtable :: (obj: *IParseAndCreateItem) -> *IParseAndCreateItem_VTable { return obj.iparseandcreateitem_vtable; }



IShellFolder_UUID :: "000214E6-0000-0000-C000-000000000046";
IShellFolder :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ishellfolder_vtable: *IShellFolder_VTable;
}
IShellFolder_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    ParseDisplayName: (this: *IShellFolder, hwnd: HWND, pbc: *IBindCtx, pszDisplayName: *s16, pchEaten: *u32, ppidl: *LPITEMIDLIST, pdwAttributes: *u32) -> HRESULT #cpp_method;

    EnumObjects: (this: *IShellFolder, hwnd: HWND, grfFlags: SHCONTF, ppenumIDList: **IEnumIDList) -> HRESULT #cpp_method;

    BindToObject: (this: *IShellFolder, pidl: LPCITEMIDLIST, pbc: *IBindCtx, riid: *IID, ppv: **void) -> HRESULT #cpp_method;

    BindToStorage: (this: *IShellFolder, pidl: LPCITEMIDLIST, pbc: *IBindCtx, riid: *IID, ppv: **void) -> HRESULT #cpp_method;

    CompareIDs: (this: *IShellFolder, lParam: LPARAM, pidl1: LPCITEMIDLIST, pidl2: LPCITEMIDLIST) -> HRESULT #cpp_method;

    CreateViewObject: (this: *IShellFolder, hwndOwner: HWND, riid: *IID, ppv: **void) -> HRESULT #cpp_method;

    GetAttributesOf: (this: *IShellFolder, cidl: u32, apidl: *LPCITEMIDLIST, rgfInOut: *SFGAOF) -> HRESULT #cpp_method;

    GetUIObjectOf: (this: *IShellFolder, hwndOwner: HWND, cidl: u32, apidl: *LPCITEMIDLIST, riid: *IID, rgfReserved: *u32, ppv: **void) -> HRESULT #cpp_method;

    GetDisplayNameOf: (this: *IShellFolder, pidl: LPCITEMIDLIST, uFlags: SHGDNF, pName: *STRRET) -> HRESULT #cpp_method;

    SetNameOf: (this: *IShellFolder, hwnd: HWND, pidl: LPCITEMIDLIST, pszName: *s16, uFlags: SHGDNF, ppidlOut: *LPITEMIDLIST) -> HRESULT #cpp_method;
}

IShellFolder_ParseDisplayName :: inline (this: *IShellFolder, hwnd: HWND, pbc: *IBindCtx, pszDisplayName: *s16, pchEaten: *u32, ppidl: *LPITEMIDLIST, pdwAttributes: *u32) -> HRESULT { return this.ishellfolder_vtable.ParseDisplayName(this, hwnd, pbc, pszDisplayName, pchEaten, ppidl, pdwAttributes); }

IShellFolder_EnumObjects :: inline (this: *IShellFolder, hwnd: HWND, grfFlags: SHCONTF, ppenumIDList: **IEnumIDList) -> HRESULT { return this.ishellfolder_vtable.EnumObjects(this, hwnd, grfFlags, ppenumIDList); }

IShellFolder_BindToObject :: inline (this: *IShellFolder, pidl: LPCITEMIDLIST, pbc: *IBindCtx, riid: *IID, ppv: **void) -> HRESULT { return this.ishellfolder_vtable.BindToObject(this, pidl, pbc, riid, ppv); }

IShellFolder_BindToStorage :: inline (this: *IShellFolder, pidl: LPCITEMIDLIST, pbc: *IBindCtx, riid: *IID, ppv: **void) -> HRESULT { return this.ishellfolder_vtable.BindToStorage(this, pidl, pbc, riid, ppv); }

IShellFolder_CompareIDs :: inline (this: *IShellFolder, lParam: LPARAM, pidl1: LPCITEMIDLIST, pidl2: LPCITEMIDLIST) -> HRESULT { return this.ishellfolder_vtable.CompareIDs(this, lParam, pidl1, pidl2); }

IShellFolder_CreateViewObject :: inline (this: *IShellFolder, hwndOwner: HWND, riid: *IID, ppv: **void) -> HRESULT { return this.ishellfolder_vtable.CreateViewObject(this, hwndOwner, riid, ppv); }

IShellFolder_GetAttributesOf :: inline (this: *IShellFolder, cidl: u32, apidl: *LPCITEMIDLIST, rgfInOut: *SFGAOF) -> HRESULT { return this.ishellfolder_vtable.GetAttributesOf(this, cidl, apidl, rgfInOut); }

IShellFolder_GetUIObjectOf :: inline (this: *IShellFolder, hwndOwner: HWND, cidl: u32, apidl: *LPCITEMIDLIST, riid: *IID, rgfReserved: *u32, ppv: **void) -> HRESULT { return this.ishellfolder_vtable.GetUIObjectOf(this, hwndOwner, cidl, apidl, riid, rgfReserved, ppv); }

IShellFolder_GetDisplayNameOf :: inline (this: *IShellFolder, pidl: LPCITEMIDLIST, uFlags: SHGDNF, pName: *STRRET) -> HRESULT { return this.ishellfolder_vtable.GetDisplayNameOf(this, pidl, uFlags, pName); }

IShellFolder_SetNameOf :: inline (this: *IShellFolder, hwnd: HWND, pidl: LPCITEMIDLIST, pszName: *s16, uFlags: SHGDNF, ppidlOut: *LPITEMIDLIST) -> HRESULT { return this.ishellfolder_vtable.SetNameOf(this, hwnd, pidl, pszName, uFlags, ppidlOut); }

vtable :: (obj: *IShellFolder) -> *IShellFolder_VTable { return obj.ishellfolder_vtable; }


EXTRASEARCH :: struct {
    guidSearch:      GUID;
    wszFriendlyName: [80] s16;
    wszUrl:          [2084] s16;
}


IEnumExtraSearch_UUID :: "0E700BE1-9DB6-11d1-A1CE-00C04FD75D13";
IEnumExtraSearch :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ienumextrasearch_vtable: *IEnumExtraSearch_VTable;
}
IEnumExtraSearch_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Next: (this: *IEnumExtraSearch, celt: u32, rgelt: *EXTRASEARCH, pceltFetched: *u32) -> HRESULT #cpp_method;

    Skip: (this: *IEnumExtraSearch, celt: u32) -> HRESULT #cpp_method;

    Reset: (this: *IEnumExtraSearch) -> HRESULT #cpp_method;

    Clone: (this: *IEnumExtraSearch, ppenum: **IEnumExtraSearch) -> HRESULT #cpp_method;
}

IEnumExtraSearch_Next :: inline (this: *IEnumExtraSearch, celt: u32, rgelt: *EXTRASEARCH, pceltFetched: *u32) -> HRESULT { return this.ienumextrasearch_vtable.Next(this, celt, rgelt, pceltFetched); }

IEnumExtraSearch_Skip :: inline (this: *IEnumExtraSearch, celt: u32) -> HRESULT { return this.ienumextrasearch_vtable.Skip(this, celt); }

IEnumExtraSearch_Reset :: inline (this: *IEnumExtraSearch) -> HRESULT { return this.ienumextrasearch_vtable.Reset(this); }

IEnumExtraSearch_Clone :: inline (this: *IEnumExtraSearch, ppenum: **IEnumExtraSearch) -> HRESULT { return this.ienumextrasearch_vtable.Clone(this, ppenum); }

vtable :: (obj: *IEnumExtraSearch) -> *IEnumExtraSearch_VTable { return obj.ienumextrasearch_vtable; }



IShellFolder2_UUID :: "93F2F68C-1D1B-11d3-A30E-00C04F79ABD1";
IShellFolder2 :: struct {
    #as using ishellfolder: IShellFolder;
    #place ishellfolder; ishellfolder2_vtable: *IShellFolder2_VTable;
}
IShellFolder2_VTable :: struct #type_info_none {
    using ishellfolder: IShellFolder_VTable;
    GetDefaultSearchGUID: (this: *IShellFolder2, pguid: *GUID) -> HRESULT #cpp_method;

    EnumSearches: (this: *IShellFolder2, ppenum: **IEnumExtraSearch) -> HRESULT #cpp_method;

    GetDefaultColumn: (this: *IShellFolder2, dwRes: u32, pSort: *u32, pDisplay: *u32) -> HRESULT #cpp_method;

    GetDefaultColumnState: (this: *IShellFolder2, iColumn: u32, pcsFlags: *SHCOLSTATEF) -> HRESULT #cpp_method;

    GetDetailsEx: (this: *IShellFolder2, pidl: LPCITEMIDLIST, pscid: *SHCOLUMNID, pv: *VARIANT) -> HRESULT #cpp_method;

    GetDetailsOf: (this: *IShellFolder2, pidl: LPCITEMIDLIST, iColumn: u32, psd: *SHELLDETAILS) -> HRESULT #cpp_method;

    MapColumnToSCID: (this: *IShellFolder2, iColumn: u32, pscid: *SHCOLUMNID) -> HRESULT #cpp_method;
}

IShellFolder2_GetDefaultSearchGUID :: inline (this: *IShellFolder2, pguid: *GUID) -> HRESULT { return this.ishellfolder2_vtable.GetDefaultSearchGUID(this, pguid); }

IShellFolder2_EnumSearches :: inline (this: *IShellFolder2, ppenum: **IEnumExtraSearch) -> HRESULT { return this.ishellfolder2_vtable.EnumSearches(this, ppenum); }

IShellFolder2_GetDefaultColumn :: inline (this: *IShellFolder2, dwRes: u32, pSort: *u32, pDisplay: *u32) -> HRESULT { return this.ishellfolder2_vtable.GetDefaultColumn(this, dwRes, pSort, pDisplay); }

IShellFolder2_GetDefaultColumnState :: inline (this: *IShellFolder2, iColumn: u32, pcsFlags: *SHCOLSTATEF) -> HRESULT { return this.ishellfolder2_vtable.GetDefaultColumnState(this, iColumn, pcsFlags); }

IShellFolder2_GetDetailsEx :: inline (this: *IShellFolder2, pidl: LPCITEMIDLIST, pscid: *SHCOLUMNID, pv: *VARIANT) -> HRESULT { return this.ishellfolder2_vtable.GetDetailsEx(this, pidl, pscid, pv); }

IShellFolder2_GetDetailsOf :: inline (this: *IShellFolder2, pidl: LPCITEMIDLIST, iColumn: u32, psd: *SHELLDETAILS) -> HRESULT { return this.ishellfolder2_vtable.GetDetailsOf(this, pidl, iColumn, psd); }

IShellFolder2_MapColumnToSCID :: inline (this: *IShellFolder2, iColumn: u32, pscid: *SHCOLUMNID) -> HRESULT { return this.ishellfolder2_vtable.MapColumnToSCID(this, iColumn, pscid); }

vtable :: (obj: *IShellFolder2) -> *IShellFolder2_VTable { return obj.ishellfolder2_vtable; }


FOLDERFLAGS :: enum s32 {
    NONE                :: 0;
    AUTOARRANGE         :: 1;
    ABBREVIATEDNAMES    :: 2;
    SNAPTOGRID          :: 4;
    OWNERDATA           :: 8;
    BESTFITWINDOW       :: 16;
    DESKTOP             :: 32;
    SINGLESEL           :: 64;
    NOSUBFOLDERS        :: 128;
    TRANSPARENT         :: 256;
    NOCLIENTEDGE        :: 512;
    NOSCROLL            :: 1024;
    ALIGNLEFT           :: 2048;
    NOICONS             :: 4096;
    SHOWSELALWAYS       :: 8192;
    NOVISIBLE           :: 16384;
    SINGLECLICKACTIVATE :: 32768;
    NOWEBVIEW           :: 65536;
    HIDEFILENAMES       :: 131072;
    CHECKSELECT         :: 262144;
    NOENUMREFRESH       :: 524288;
    NOGROUPING          :: 1048576;
    FULLROWSELECT       :: 2097152;
    NOFILTERS           :: 4194304;
    NOCOLUMNHEADER      :: 8388608;
    NOHEADERINALLVIEWS  :: 16777216;
    EXTENDEDTILES       :: 33554432;
    TRICHECKSELECT      :: 67108864;
    AUTOCHECKSELECT     :: 134217728;
    NOBROWSERVIEWSTATE  :: 268435456;
    SUBSETGROUPS        :: 536870912;
    USESEARCHFOLDER     :: 1073741824;
    ALLOWRTLREADING     :: -2147483648;

    FWF_NONE                :: NONE;
    FWF_AUTOARRANGE         :: AUTOARRANGE;
    FWF_ABBREVIATEDNAMES    :: ABBREVIATEDNAMES;
    FWF_SNAPTOGRID          :: SNAPTOGRID;
    FWF_OWNERDATA           :: OWNERDATA;
    FWF_BESTFITWINDOW       :: BESTFITWINDOW;
    FWF_DESKTOP             :: DESKTOP;
    FWF_SINGLESEL           :: SINGLESEL;
    FWF_NOSUBFOLDERS        :: NOSUBFOLDERS;
    FWF_TRANSPARENT         :: TRANSPARENT;
    FWF_NOCLIENTEDGE        :: NOCLIENTEDGE;
    FWF_NOSCROLL            :: NOSCROLL;
    FWF_ALIGNLEFT           :: ALIGNLEFT;
    FWF_NOICONS             :: NOICONS;
    FWF_SHOWSELALWAYS       :: SHOWSELALWAYS;
    FWF_NOVISIBLE           :: NOVISIBLE;
    FWF_SINGLECLICKACTIVATE :: SINGLECLICKACTIVATE;
    FWF_NOWEBVIEW           :: NOWEBVIEW;
    FWF_HIDEFILENAMES       :: HIDEFILENAMES;
    FWF_CHECKSELECT         :: CHECKSELECT;
    FWF_NOENUMREFRESH       :: NOENUMREFRESH;
    FWF_NOGROUPING          :: NOGROUPING;
    FWF_FULLROWSELECT       :: FULLROWSELECT;
    FWF_NOFILTERS           :: NOFILTERS;
    FWF_NOCOLUMNHEADER      :: NOCOLUMNHEADER;
    FWF_NOHEADERINALLVIEWS  :: NOHEADERINALLVIEWS;
    FWF_EXTENDEDTILES       :: EXTENDEDTILES;
    FWF_TRICHECKSELECT      :: TRICHECKSELECT;
    FWF_AUTOCHECKSELECT     :: AUTOCHECKSELECT;
    FWF_NOBROWSERVIEWSTATE  :: NOBROWSERVIEWSTATE;
    FWF_SUBSETGROUPS        :: SUBSETGROUPS;
    FWF_USESEARCHFOLDER     :: USESEARCHFOLDER;
    FWF_ALLOWRTLREADING     :: ALLOWRTLREADING;
}

FOLDERVIEWMODE :: enum s32 {
    AUTO       :: -1;
    FIRST      :: 1;
    ICON       :: 1;
    SMALLICON  :: 2;
    LIST       :: 3;
    DETAILS    :: 4;
    THUMBNAIL  :: 5;
    TILE       :: 6;
    THUMBSTRIP :: 7;
    CONTENT    :: 8;
    LAST       :: 8;

    FVM_AUTO       :: AUTO;
    FVM_FIRST      :: FIRST;
    FVM_ICON       :: ICON;
    FVM_SMALLICON  :: SMALLICON;
    FVM_LIST       :: LIST;
    FVM_DETAILS    :: DETAILS;
    FVM_THUMBNAIL  :: THUMBNAIL;
    FVM_TILE       :: TILE;
    FVM_THUMBSTRIP :: THUMBSTRIP;
    FVM_CONTENT    :: CONTENT;
    FVM_LAST       :: LAST;
}

FOLDERLOGICALVIEWMODE :: enum s32 {
    UNSPECIFIED :: -1;
    FIRST       :: 1;
    DETAILS     :: 1;
    TILES       :: 2;
    ICONS       :: 3;
    LIST        :: 4;
    CONTENT     :: 5;
    LAST        :: 5;

    FLVM_UNSPECIFIED :: UNSPECIFIED;
    FLVM_FIRST       :: FIRST;
    FLVM_DETAILS     :: DETAILS;
    FLVM_TILES       :: TILES;
    FLVM_ICONS       :: ICONS;
    FLVM_LIST        :: LIST;
    FLVM_CONTENT     :: CONTENT;
    FLVM_LAST        :: LAST;
}

FOLDERSETTINGS :: struct {
    ViewMode: u32;
    fFlags:   u32;
}

PFOLDERSETTINGS :: *FOLDERSETTINGS;

SVSIF :: enum s32 {
    DESELECT       :: 0;
    SELECT         :: 1;
    EDIT           :: 3;
    DESELECTOTHERS :: 4;
    ENSUREVISIBLE  :: 8;
    FOCUSED        :: 16;
    TRANSLATEPT    :: 32;
    SELECTIONMARK  :: 64;
    POSITIONITEM   :: 128;
    CHECK          :: 256;
    CHECK2         :: 512;
    KEYBOARDSELECT :: 1025;
    NOTAKEFOCUS    :: 1073741824;

    SVSI_DESELECT       :: DESELECT;
    SVSI_SELECT         :: SELECT;
    SVSI_EDIT           :: EDIT;
    SVSI_DESELECTOTHERS :: DESELECTOTHERS;
    SVSI_ENSUREVISIBLE  :: ENSUREVISIBLE;
    SVSI_FOCUSED        :: FOCUSED;
    SVSI_TRANSLATEPT    :: TRANSLATEPT;
    SVSI_SELECTIONMARK  :: SELECTIONMARK;
    SVSI_POSITIONITEM   :: POSITIONITEM;
    SVSI_CHECK          :: CHECK;
    SVSI_CHECK2         :: CHECK2;
    SVSI_KEYBOARDSELECT :: KEYBOARDSELECT;
    SVSI_NOTAKEFOCUS    :: NOTAKEFOCUS;
}

_SVSIF :: SVSIF;

SVSIF :: u32;

SVGIO :: enum s32 {
    BACKGROUND     :: 0;
    SELECTION      :: 1;
    ALLVIEW        :: 2;
    CHECKED        :: 3;
    TYPE_MASK      :: 15;
    FLAG_VIEWORDER :: -2147483648;

    SVGIO_BACKGROUND     :: BACKGROUND;
    SVGIO_SELECTION      :: SELECTION;
    SVGIO_ALLVIEW        :: ALLVIEW;
    SVGIO_CHECKED        :: CHECKED;
    SVGIO_TYPE_MASK      :: TYPE_MASK;
    SVGIO_FLAG_VIEWORDER :: FLAG_VIEWORDER;
}

_SVGIO :: SVGIO;

SVGIO :: s32;

SVUIA_STATUS :: enum s32 {
    DEACTIVATE       :: 0;
    ACTIVATE_NOFOCUS :: 1;
    ACTIVATE_FOCUS   :: 2;
    INPLACEACTIVATE  :: 3;

    SVUIA_DEACTIVATE       :: DEACTIVATE;
    SVUIA_ACTIVATE_NOFOCUS :: ACTIVATE_NOFOCUS;
    SVUIA_ACTIVATE_FOCUS   :: ACTIVATE_FOCUS;
    SVUIA_INPLACEACTIVATE  :: INPLACEACTIVATE;
}


IShellView_UUID :: "000214E3-0000-0000-C000-000000000046";
IShellView :: struct {
    #as using iolewindow: IOleWindow;
    #place iolewindow; ishellview_vtable: *IShellView_VTable;
}
IShellView_VTable :: struct #type_info_none {
    using iolewindow: IOleWindow_VTable;
    TranslateAcceleratorA: (this: *IShellView, pmsg: *MSG) -> HRESULT #cpp_method;

    EnableModeless: (this: *IShellView, fEnable: BOOL) -> HRESULT #cpp_method;

    UIActivate: (this: *IShellView, uState: u32) -> HRESULT #cpp_method;

    Refresh: (this: *IShellView) -> HRESULT #cpp_method;

    CreateViewWindow: (this: *IShellView, psvPrevious: *IShellView, pfs: LPCFOLDERSETTINGS, psb: *IShellBrowser, prcView: *RECT, phWnd: *HWND) -> HRESULT #cpp_method;

    DestroyViewWindow: (this: *IShellView) -> HRESULT #cpp_method;

    GetCurrentInfo: (this: *IShellView, pfs: LPFOLDERSETTINGS) -> HRESULT #cpp_method;

    AddPropertySheetPages: (this: *IShellView, dwReserved: u32, pfn: LPFNSVADDPROPSHEETPAGE, lparam: LPARAM) -> HRESULT #cpp_method;

    SaveViewState: (this: *IShellView) -> HRESULT #cpp_method;

    SelectItem: (this: *IShellView, pidlItem: LPCITEMIDLIST, uFlags: SVSIF) -> HRESULT #cpp_method;

    GetItemObject: (this: *IShellView, uItem: u32, riid: *IID, ppv: **void) -> HRESULT #cpp_method;
}

IShellView_TranslateAcceleratorA :: inline (this: *IShellView, pmsg: *MSG) -> HRESULT { return this.ishellview_vtable.TranslateAcceleratorA(this, pmsg); }

IShellView_EnableModeless :: inline (this: *IShellView, fEnable: BOOL) -> HRESULT { return this.ishellview_vtable.EnableModeless(this, fEnable); }

IShellView_UIActivate :: inline (this: *IShellView, uState: u32) -> HRESULT { return this.ishellview_vtable.UIActivate(this, uState); }

IShellView_Refresh :: inline (this: *IShellView) -> HRESULT { return this.ishellview_vtable.Refresh(this); }

IShellView_CreateViewWindow :: inline (this: *IShellView, psvPrevious: *IShellView, pfs: LPCFOLDERSETTINGS, psb: *IShellBrowser, prcView: *RECT, phWnd: *HWND) -> HRESULT { return this.ishellview_vtable.CreateViewWindow(this, psvPrevious, pfs, psb, prcView, phWnd); }

IShellView_DestroyViewWindow :: inline (this: *IShellView) -> HRESULT { return this.ishellview_vtable.DestroyViewWindow(this); }

IShellView_GetCurrentInfo :: inline (this: *IShellView, pfs: LPFOLDERSETTINGS) -> HRESULT { return this.ishellview_vtable.GetCurrentInfo(this, pfs); }

IShellView_AddPropertySheetPages :: inline (this: *IShellView, dwReserved: u32, pfn: LPFNSVADDPROPSHEETPAGE, lparam: LPARAM) -> HRESULT { return this.ishellview_vtable.AddPropertySheetPages(this, dwReserved, pfn, lparam); }

IShellView_SaveViewState :: inline (this: *IShellView) -> HRESULT { return this.ishellview_vtable.SaveViewState(this); }

IShellView_SelectItem :: inline (this: *IShellView, pidlItem: LPCITEMIDLIST, uFlags: SVSIF) -> HRESULT { return this.ishellview_vtable.SelectItem(this, pidlItem, uFlags); }

IShellView_GetItemObject :: inline (this: *IShellView, uItem: u32, riid: *IID, ppv: **void) -> HRESULT { return this.ishellview_vtable.GetItemObject(this, uItem, riid, ppv); }

vtable :: (obj: *IShellView) -> *IShellView_VTable { return obj.ishellview_vtable; }


SHELLVIEWID :: GUID;

SV2CVW2_PARAMS :: struct {
    cbSize:   u32;
    psvPrev:  *IShellView;
    pfs:      LPCFOLDERSETTINGS;
    psbOwner: *IShellBrowser;
    prcView:  *RECT;
    pvid:     *SHELLVIEWID;
    hwndView: HWND;
}


IShellView2_UUID :: "88E39E80-3578-11CF-AE69-08002B2E1262";
IShellView2 :: struct {
    #as using ishellview: IShellView;
    #place ishellview; ishellview2_vtable: *IShellView2_VTable;
}
IShellView2_VTable :: struct #type_info_none {
    using ishellview: IShellView_VTable;
    GetView: (this: *IShellView2, pvid: *SHELLVIEWID, uView: u32) -> HRESULT #cpp_method;

    CreateViewWindow2: (this: *IShellView2, lpParams: LPSV2CVW2_PARAMS) -> HRESULT #cpp_method;

    HandleRename: (this: *IShellView2, pidlNew: LPCITEMIDLIST) -> HRESULT #cpp_method;

    SelectAndPositionItem: (this: *IShellView2, pidlItem: LPCITEMIDLIST, uFlags: u32, ppt: *POINT) -> HRESULT #cpp_method;
}

IShellView2_GetView :: inline (this: *IShellView2, pvid: *SHELLVIEWID, uView: u32) -> HRESULT { return this.ishellview2_vtable.GetView(this, pvid, uView); }

IShellView2_CreateViewWindow2 :: inline (this: *IShellView2, lpParams: LPSV2CVW2_PARAMS) -> HRESULT { return this.ishellview2_vtable.CreateViewWindow2(this, lpParams); }

IShellView2_HandleRename :: inline (this: *IShellView2, pidlNew: LPCITEMIDLIST) -> HRESULT { return this.ishellview2_vtable.HandleRename(this, pidlNew); }

IShellView2_SelectAndPositionItem :: inline (this: *IShellView2, pidlItem: LPCITEMIDLIST, uFlags: u32, ppt: *POINT) -> HRESULT { return this.ishellview2_vtable.SelectAndPositionItem(this, pidlItem, uFlags, ppt); }

vtable :: (obj: *IShellView2) -> *IShellView2_VTable { return obj.ishellview2_vtable; }



IFolderView_UUID :: "cde725b0-ccc9-4519-917e-325d72fab4ce";
IFolderView :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ifolderview_vtable: *IFolderView_VTable;
}
IFolderView_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetCurrentViewMode: (this: *IFolderView, pViewMode: *u32) -> HRESULT #cpp_method;

    SetCurrentViewMode: (this: *IFolderView, ViewMode: u32) -> HRESULT #cpp_method;

    GetFolder: (this: *IFolderView, riid: *IID, ppv: **void) -> HRESULT #cpp_method;

    Item: (this: *IFolderView, iItemIndex: s32, ppidl: *LPITEMIDLIST) -> HRESULT #cpp_method;

    ItemCount: (this: *IFolderView, uFlags: u32, pcItems: *s32) -> HRESULT #cpp_method;

    Items: (this: *IFolderView, uFlags: u32, riid: *IID, ppv: **void) -> HRESULT #cpp_method;

    GetSelectionMarkedItem: (this: *IFolderView, piItem: *s32) -> HRESULT #cpp_method;

    GetFocusedItem: (this: *IFolderView, piItem: *s32) -> HRESULT #cpp_method;

    GetItemPosition: (this: *IFolderView, pidl: LPCITEMIDLIST, ppt: *POINT) -> HRESULT #cpp_method;

    GetSpacing: (this: *IFolderView, ppt: *POINT) -> HRESULT #cpp_method;

    GetDefaultSpacing: (this: *IFolderView, ppt: *POINT) -> HRESULT #cpp_method;

    GetAutoArrange: (this: *IFolderView) -> HRESULT #cpp_method;

    SelectItem: (this: *IFolderView, iItem: s32, dwFlags: u32) -> HRESULT #cpp_method;

    SelectAndPositionItems: (this: *IFolderView, cidl: u32, apidl: *LPCITEMIDLIST, apt: *POINT, dwFlags: u32) -> HRESULT #cpp_method;
}

IFolderView_GetCurrentViewMode :: inline (this: *IFolderView, pViewMode: *u32) -> HRESULT { return this.ifolderview_vtable.GetCurrentViewMode(this, pViewMode); }

IFolderView_SetCurrentViewMode :: inline (this: *IFolderView, ViewMode: u32) -> HRESULT { return this.ifolderview_vtable.SetCurrentViewMode(this, ViewMode); }

IFolderView_GetFolder :: inline (this: *IFolderView, riid: *IID, ppv: **void) -> HRESULT { return this.ifolderview_vtable.GetFolder(this, riid, ppv); }

IFolderView_Item :: inline (this: *IFolderView, iItemIndex: s32, ppidl: *LPITEMIDLIST) -> HRESULT { return this.ifolderview_vtable.Item(this, iItemIndex, ppidl); }

IFolderView_ItemCount :: inline (this: *IFolderView, uFlags: u32, pcItems: *s32) -> HRESULT { return this.ifolderview_vtable.ItemCount(this, uFlags, pcItems); }

IFolderView_Items :: inline (this: *IFolderView, uFlags: u32, riid: *IID, ppv: **void) -> HRESULT { return this.ifolderview_vtable.Items(this, uFlags, riid, ppv); }

IFolderView_GetSelectionMarkedItem :: inline (this: *IFolderView, piItem: *s32) -> HRESULT { return this.ifolderview_vtable.GetSelectionMarkedItem(this, piItem); }

IFolderView_GetFocusedItem :: inline (this: *IFolderView, piItem: *s32) -> HRESULT { return this.ifolderview_vtable.GetFocusedItem(this, piItem); }

IFolderView_GetItemPosition :: inline (this: *IFolderView, pidl: LPCITEMIDLIST, ppt: *POINT) -> HRESULT { return this.ifolderview_vtable.GetItemPosition(this, pidl, ppt); }

IFolderView_GetSpacing :: inline (this: *IFolderView, ppt: *POINT) -> HRESULT { return this.ifolderview_vtable.GetSpacing(this, ppt); }

IFolderView_GetDefaultSpacing :: inline (this: *IFolderView, ppt: *POINT) -> HRESULT { return this.ifolderview_vtable.GetDefaultSpacing(this, ppt); }

IFolderView_GetAutoArrange :: inline (this: *IFolderView) -> HRESULT { return this.ifolderview_vtable.GetAutoArrange(this); }

IFolderView_SelectItem :: inline (this: *IFolderView, iItem: s32, dwFlags: u32) -> HRESULT { return this.ifolderview_vtable.SelectItem(this, iItem, dwFlags); }

IFolderView_SelectAndPositionItems :: inline (this: *IFolderView, cidl: u32, apidl: *LPCITEMIDLIST, apt: *POINT, dwFlags: u32) -> HRESULT { return this.ifolderview_vtable.SelectAndPositionItems(this, cidl, apidl, apt, dwFlags); }

vtable :: (obj: *IFolderView) -> *IFolderView_VTable { return obj.ifolderview_vtable; }


tagSORTDIRECTION :: enum s32 {
    DESCENDING :: -1;
    ASCENDING  :: 1;

    SORT_DESCENDING :: DESCENDING;
    SORT_ASCENDING  :: ASCENDING;
}

SORTDIRECTION :: s32;

SORTCOLUMN :: struct {
    propkey:   PROPERTYKEY;
    direction: SORTDIRECTION;
}

FVTEXTTYPE :: enum s32 {
    FVST_EMPTYTEXT :: 0;
}

DEPRECATED_HRESULT :: HRESULT;


IFolderView2_UUID :: "1af3a467-214f-4298-908e-06b03e0b39f9";
IFolderView2 :: struct {
    #as using ifolderview: IFolderView;
    #place ifolderview; ifolderview2_vtable: *IFolderView2_VTable;
}
IFolderView2_VTable :: struct #type_info_none {
    using ifolderview: IFolderView_VTable;
    SetGroupBy: (this: *IFolderView2, key: *PROPERTYKEY, fAscending: BOOL) -> HRESULT #cpp_method;

    GetGroupBy: (this: *IFolderView2, pkey: *PROPERTYKEY, pfAscending: *BOOL) -> HRESULT #cpp_method;

    SetViewProperty: (this: *IFolderView2, pidl: LPCITEMIDLIST, propkey: *PROPERTYKEY, propvar: *PROPVARIANT) -> HRESULT #cpp_method;

    GetViewProperty: (this: *IFolderView2, pidl: LPCITEMIDLIST, propkey: *PROPERTYKEY, ppropvar: *PROPVARIANT) -> HRESULT #cpp_method;

    SetTileViewProperties: (this: *IFolderView2, pidl: LPCITEMIDLIST, pszPropList: *s16) -> HRESULT #cpp_method;

    SetExtendedTileViewProperties: (this: *IFolderView2, pidl: LPCITEMIDLIST, pszPropList: *s16) -> HRESULT #cpp_method;

    SetText: (this: *IFolderView2, iType: FVTEXTTYPE, pwszText: *s16) -> HRESULT #cpp_method;

    SetCurrentFolderFlags: (this: *IFolderView2, dwMask: u32, dwFlags: u32) -> HRESULT #cpp_method;

    GetCurrentFolderFlags: (this: *IFolderView2, pdwFlags: *u32) -> HRESULT #cpp_method;

    GetSortColumnCount: (this: *IFolderView2, pcColumns: *s32) -> HRESULT #cpp_method;

    SetSortColumns: (this: *IFolderView2, rgSortColumns: *SORTCOLUMN, cColumns: s32) -> HRESULT #cpp_method;

    GetSortColumns: (this: *IFolderView2, rgSortColumns: *SORTCOLUMN, cColumns: s32) -> HRESULT #cpp_method;

    GetItem: (this: *IFolderView2, iItem: s32, riid: *IID, ppv: **void) -> HRESULT #cpp_method;

    GetVisibleItem: (this: *IFolderView2, iStart: s32, fPrevious: BOOL, piItem: *s32) -> HRESULT #cpp_method;

    GetSelectedItem: (this: *IFolderView2, iStart: s32, piItem: *s32) -> HRESULT #cpp_method;

    GetSelection: (this: *IFolderView2, fNoneImpliesFolder: BOOL, ppsia: **IShellItemArray) -> HRESULT #cpp_method;

    GetSelectionState: (this: *IFolderView2, pidl: LPCITEMIDLIST, pdwFlags: *u32) -> HRESULT #cpp_method;

    InvokeVerbOnSelection: (this: *IFolderView2, pszVerb: *u8) -> HRESULT #cpp_method;

    SetViewModeAndIconSize: (this: *IFolderView2, uViewMode: FOLDERVIEWMODE, iImageSize: s32) -> HRESULT #cpp_method;

    GetViewModeAndIconSize: (this: *IFolderView2, puViewMode: *FOLDERVIEWMODE, piImageSize: *s32) -> HRESULT #cpp_method;

    SetGroupSubsetCount: (this: *IFolderView2, cVisibleRows: u32) -> HRESULT #cpp_method;

    GetGroupSubsetCount: (this: *IFolderView2, pcVisibleRows: *u32) -> HRESULT #cpp_method;

    SetRedraw: (this: *IFolderView2, fRedrawOn: BOOL) -> HRESULT #cpp_method;

    IsMoveInSameFolder: (this: *IFolderView2) -> HRESULT #cpp_method;

    DoRename: (this: *IFolderView2) -> HRESULT #cpp_method;
}

IFolderView2_SetGroupBy :: inline (this: *IFolderView2, key: *PROPERTYKEY, fAscending: BOOL) -> HRESULT { return this.ifolderview2_vtable.SetGroupBy(this, key, fAscending); }

IFolderView2_GetGroupBy :: inline (this: *IFolderView2, pkey: *PROPERTYKEY, pfAscending: *BOOL) -> HRESULT { return this.ifolderview2_vtable.GetGroupBy(this, pkey, pfAscending); }

IFolderView2_SetViewProperty :: inline (this: *IFolderView2, pidl: LPCITEMIDLIST, propkey: *PROPERTYKEY, propvar: *PROPVARIANT) -> HRESULT { return this.ifolderview2_vtable.SetViewProperty(this, pidl, propkey, propvar); }

IFolderView2_GetViewProperty :: inline (this: *IFolderView2, pidl: LPCITEMIDLIST, propkey: *PROPERTYKEY, ppropvar: *PROPVARIANT) -> HRESULT { return this.ifolderview2_vtable.GetViewProperty(this, pidl, propkey, ppropvar); }

IFolderView2_SetTileViewProperties :: inline (this: *IFolderView2, pidl: LPCITEMIDLIST, pszPropList: *s16) -> HRESULT { return this.ifolderview2_vtable.SetTileViewProperties(this, pidl, pszPropList); }

IFolderView2_SetExtendedTileViewProperties :: inline (this: *IFolderView2, pidl: LPCITEMIDLIST, pszPropList: *s16) -> HRESULT { return this.ifolderview2_vtable.SetExtendedTileViewProperties(this, pidl, pszPropList); }

IFolderView2_SetText :: inline (this: *IFolderView2, iType: FVTEXTTYPE, pwszText: *s16) -> HRESULT { return this.ifolderview2_vtable.SetText(this, iType, pwszText); }

IFolderView2_SetCurrentFolderFlags :: inline (this: *IFolderView2, dwMask: u32, dwFlags: u32) -> HRESULT { return this.ifolderview2_vtable.SetCurrentFolderFlags(this, dwMask, dwFlags); }

IFolderView2_GetCurrentFolderFlags :: inline (this: *IFolderView2, pdwFlags: *u32) -> HRESULT { return this.ifolderview2_vtable.GetCurrentFolderFlags(this, pdwFlags); }

IFolderView2_GetSortColumnCount :: inline (this: *IFolderView2, pcColumns: *s32) -> HRESULT { return this.ifolderview2_vtable.GetSortColumnCount(this, pcColumns); }

IFolderView2_SetSortColumns :: inline (this: *IFolderView2, rgSortColumns: *SORTCOLUMN, cColumns: s32) -> HRESULT { return this.ifolderview2_vtable.SetSortColumns(this, rgSortColumns, cColumns); }

IFolderView2_GetSortColumns :: inline (this: *IFolderView2, rgSortColumns: *SORTCOLUMN, cColumns: s32) -> HRESULT { return this.ifolderview2_vtable.GetSortColumns(this, rgSortColumns, cColumns); }

IFolderView2_GetItem :: inline (this: *IFolderView2, iItem: s32, riid: *IID, ppv: **void) -> HRESULT { return this.ifolderview2_vtable.GetItem(this, iItem, riid, ppv); }

IFolderView2_GetVisibleItem :: inline (this: *IFolderView2, iStart: s32, fPrevious: BOOL, piItem: *s32) -> HRESULT { return this.ifolderview2_vtable.GetVisibleItem(this, iStart, fPrevious, piItem); }

IFolderView2_GetSelectedItem :: inline (this: *IFolderView2, iStart: s32, piItem: *s32) -> HRESULT { return this.ifolderview2_vtable.GetSelectedItem(this, iStart, piItem); }

IFolderView2_GetSelection :: inline (this: *IFolderView2, fNoneImpliesFolder: BOOL, ppsia: **IShellItemArray) -> HRESULT { return this.ifolderview2_vtable.GetSelection(this, fNoneImpliesFolder, ppsia); }

IFolderView2_GetSelectionState :: inline (this: *IFolderView2, pidl: LPCITEMIDLIST, pdwFlags: *u32) -> HRESULT { return this.ifolderview2_vtable.GetSelectionState(this, pidl, pdwFlags); }

IFolderView2_InvokeVerbOnSelection :: inline (this: *IFolderView2, pszVerb: *u8) -> HRESULT { return this.ifolderview2_vtable.InvokeVerbOnSelection(this, pszVerb); }

IFolderView2_SetViewModeAndIconSize :: inline (this: *IFolderView2, uViewMode: FOLDERVIEWMODE, iImageSize: s32) -> HRESULT { return this.ifolderview2_vtable.SetViewModeAndIconSize(this, uViewMode, iImageSize); }

IFolderView2_GetViewModeAndIconSize :: inline (this: *IFolderView2, puViewMode: *FOLDERVIEWMODE, piImageSize: *s32) -> HRESULT { return this.ifolderview2_vtable.GetViewModeAndIconSize(this, puViewMode, piImageSize); }

IFolderView2_SetGroupSubsetCount :: inline (this: *IFolderView2, cVisibleRows: u32) -> HRESULT { return this.ifolderview2_vtable.SetGroupSubsetCount(this, cVisibleRows); }

IFolderView2_GetGroupSubsetCount :: inline (this: *IFolderView2, pcVisibleRows: *u32) -> HRESULT { return this.ifolderview2_vtable.GetGroupSubsetCount(this, pcVisibleRows); }

IFolderView2_SetRedraw :: inline (this: *IFolderView2, fRedrawOn: BOOL) -> HRESULT { return this.ifolderview2_vtable.SetRedraw(this, fRedrawOn); }

IFolderView2_IsMoveInSameFolder :: inline (this: *IFolderView2) -> HRESULT { return this.ifolderview2_vtable.IsMoveInSameFolder(this); }

IFolderView2_DoRename :: inline (this: *IFolderView2) -> HRESULT { return this.ifolderview2_vtable.DoRename(this); }

vtable :: (obj: *IFolderView2) -> *IFolderView2_VTable { return obj.ifolderview2_vtable; }



IFolderViewSettings_UUID :: "ae8c987d-8797-4ed3-be72-2a47dd938db0";
IFolderViewSettings :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ifolderviewsettings_vtable: *IFolderViewSettings_VTable;
}
IFolderViewSettings_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetColumnPropertyList: (this: *IFolderViewSettings, riid: *IID, ppv: **void) -> HRESULT #cpp_method;

    GetGroupByProperty: (this: *IFolderViewSettings, pkey: *PROPERTYKEY, pfGroupAscending: *BOOL) -> HRESULT #cpp_method;

    GetViewMode: (this: *IFolderViewSettings, plvm: *FOLDERLOGICALVIEWMODE) -> HRESULT #cpp_method;

    GetIconSize: (this: *IFolderViewSettings, puIconSize: *u32) -> HRESULT #cpp_method;

    GetFolderFlags: (this: *IFolderViewSettings, pfolderMask: *FOLDERFLAGS, pfolderFlags: *FOLDERFLAGS) -> HRESULT #cpp_method;

    GetSortColumns: (this: *IFolderViewSettings, rgSortColumns: *SORTCOLUMN, cColumnsIn: u32, pcColumnsOut: *u32) -> HRESULT #cpp_method;

    GetGroupSubsetCount: (this: *IFolderViewSettings, pcVisibleRows: *u32) -> HRESULT #cpp_method;
}

IFolderViewSettings_GetColumnPropertyList :: inline (this: *IFolderViewSettings, riid: *IID, ppv: **void) -> HRESULT { return this.ifolderviewsettings_vtable.GetColumnPropertyList(this, riid, ppv); }

IFolderViewSettings_GetGroupByProperty :: inline (this: *IFolderViewSettings, pkey: *PROPERTYKEY, pfGroupAscending: *BOOL) -> HRESULT { return this.ifolderviewsettings_vtable.GetGroupByProperty(this, pkey, pfGroupAscending); }

IFolderViewSettings_GetViewMode :: inline (this: *IFolderViewSettings, plvm: *FOLDERLOGICALVIEWMODE) -> HRESULT { return this.ifolderviewsettings_vtable.GetViewMode(this, plvm); }

IFolderViewSettings_GetIconSize :: inline (this: *IFolderViewSettings, puIconSize: *u32) -> HRESULT { return this.ifolderviewsettings_vtable.GetIconSize(this, puIconSize); }

IFolderViewSettings_GetFolderFlags :: inline (this: *IFolderViewSettings, pfolderMask: *FOLDERFLAGS, pfolderFlags: *FOLDERFLAGS) -> HRESULT { return this.ifolderviewsettings_vtable.GetFolderFlags(this, pfolderMask, pfolderFlags); }

IFolderViewSettings_GetSortColumns :: inline (this: *IFolderViewSettings, rgSortColumns: *SORTCOLUMN, cColumnsIn: u32, pcColumnsOut: *u32) -> HRESULT { return this.ifolderviewsettings_vtable.GetSortColumns(this, rgSortColumns, cColumnsIn, pcColumnsOut); }

IFolderViewSettings_GetGroupSubsetCount :: inline (this: *IFolderViewSettings, pcVisibleRows: *u32) -> HRESULT { return this.ifolderviewsettings_vtable.GetGroupSubsetCount(this, pcVisibleRows); }

vtable :: (obj: *IFolderViewSettings) -> *IFolderViewSettings_VTable { return obj.ifolderviewsettings_vtable; }



IInitializeNetworkFolder_UUID :: "6e0f9881-42a8-4f2a-97f8-8af4e026d92d";
IInitializeNetworkFolder :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iinitializenetworkfolder_vtable: *IInitializeNetworkFolder_VTable;
}
IInitializeNetworkFolder_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Initialize: (this: *IInitializeNetworkFolder, pidl: LPCITEMIDLIST, pidlTarget: LPCITEMIDLIST, uDisplayType: u32, pszResName: *s16, pszProvider: *s16) -> HRESULT #cpp_method;
}
IInitializeNetworkFolder_Initialize :: inline (this: *IInitializeNetworkFolder, pidl: LPCITEMIDLIST, pidlTarget: LPCITEMIDLIST, uDisplayType: u32, pszResName: *s16, pszProvider: *s16) -> HRESULT { return this.iinitializenetworkfolder_vtable.Initialize(this, pidl, pidlTarget, uDisplayType, pszResName, pszProvider); }

vtable :: (obj: *IInitializeNetworkFolder) -> *IInitializeNetworkFolder_VTable { return obj.iinitializenetworkfolder_vtable; }



INetworkFolderInternal_UUID :: "CEB38218-C971-47BB-A703-F0BC99CCDB81";
INetworkFolderInternal :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; inetworkfolderinternal_vtable: *INetworkFolderInternal_VTable;
}
INetworkFolderInternal_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetResourceDisplayType: (this: *INetworkFolderInternal, displayType: *u32) -> HRESULT #cpp_method;

    GetIDList: (this: *INetworkFolderInternal, idList: *LPITEMIDLIST) -> HRESULT #cpp_method;

    GetProvider: (this: *INetworkFolderInternal, itemIdCount: u32, itemIds: *LPCITEMIDLIST, providerMaxLength: u32, provider: *s16) -> HRESULT #cpp_method;
}

INetworkFolderInternal_GetResourceDisplayType :: inline (this: *INetworkFolderInternal, displayType: *u32) -> HRESULT { return this.inetworkfolderinternal_vtable.GetResourceDisplayType(this, displayType); }

INetworkFolderInternal_GetIDList :: inline (this: *INetworkFolderInternal, idList: *LPITEMIDLIST) -> HRESULT { return this.inetworkfolderinternal_vtable.GetIDList(this, idList); }

INetworkFolderInternal_GetProvider :: inline (this: *INetworkFolderInternal, itemIdCount: u32, itemIds: *LPCITEMIDLIST, providerMaxLength: u32, provider: *s16) -> HRESULT { return this.inetworkfolderinternal_vtable.GetProvider(this, itemIdCount, itemIds, providerMaxLength, provider); }

vtable :: (obj: *INetworkFolderInternal) -> *INetworkFolderInternal_VTable { return obj.inetworkfolderinternal_vtable; }



IPreviewHandlerVisuals_UUID :: "196bf9a5-b346-4ef0-aa1e-5dcdb76768b1";
IPreviewHandlerVisuals :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ipreviewhandlervisuals_vtable: *IPreviewHandlerVisuals_VTable;
}
IPreviewHandlerVisuals_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SetBackgroundColor: (this: *IPreviewHandlerVisuals, color: COLORREF) -> HRESULT #cpp_method;

    SetFont: (this: *IPreviewHandlerVisuals, plf: *LOGFONTW) -> HRESULT #cpp_method;

    SetTextColor: (this: *IPreviewHandlerVisuals, color: COLORREF) -> HRESULT #cpp_method;
}

IPreviewHandlerVisuals_SetBackgroundColor :: inline (this: *IPreviewHandlerVisuals, color: COLORREF) -> HRESULT { return this.ipreviewhandlervisuals_vtable.SetBackgroundColor(this, color); }

IPreviewHandlerVisuals_SetFont :: inline (this: *IPreviewHandlerVisuals, plf: *LOGFONTW) -> HRESULT { return this.ipreviewhandlervisuals_vtable.SetFont(this, plf); }

IPreviewHandlerVisuals_SetTextColor :: inline (this: *IPreviewHandlerVisuals, color: COLORREF) -> HRESULT { return this.ipreviewhandlervisuals_vtable.SetTextColor(this, color); }

vtable :: (obj: *IPreviewHandlerVisuals) -> *IPreviewHandlerVisuals_VTable { return obj.ipreviewhandlervisuals_vtable; }



ICommDlgBrowser_UUID :: "000214F1-0000-0000-C000-000000000046";
ICommDlgBrowser :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; icommdlgbrowser_vtable: *ICommDlgBrowser_VTable;
}
ICommDlgBrowser_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    OnDefaultCommand: (this: *ICommDlgBrowser, ppshv: *IShellView) -> HRESULT #cpp_method;

    OnStateChange: (this: *ICommDlgBrowser, ppshv: *IShellView, uChange: u32) -> HRESULT #cpp_method;

    IncludeObject: (this: *ICommDlgBrowser, ppshv: *IShellView, pidl: LPCITEMIDLIST) -> HRESULT #cpp_method;
}

ICommDlgBrowser_OnDefaultCommand :: inline (this: *ICommDlgBrowser, ppshv: *IShellView) -> HRESULT { return this.icommdlgbrowser_vtable.OnDefaultCommand(this, ppshv); }

ICommDlgBrowser_OnStateChange :: inline (this: *ICommDlgBrowser, ppshv: *IShellView, uChange: u32) -> HRESULT { return this.icommdlgbrowser_vtable.OnStateChange(this, ppshv, uChange); }

ICommDlgBrowser_IncludeObject :: inline (this: *ICommDlgBrowser, ppshv: *IShellView, pidl: LPCITEMIDLIST) -> HRESULT { return this.icommdlgbrowser_vtable.IncludeObject(this, ppshv, pidl); }

vtable :: (obj: *ICommDlgBrowser) -> *ICommDlgBrowser_VTable { return obj.icommdlgbrowser_vtable; }



ICommDlgBrowser2_UUID :: "10339516-2894-11d2-9039-00C04F8EEB3E";
ICommDlgBrowser2 :: struct {
    #as using icommdlgbrowser: ICommDlgBrowser;
    #place icommdlgbrowser; icommdlgbrowser2_vtable: *ICommDlgBrowser2_VTable;
}
ICommDlgBrowser2_VTable :: struct #type_info_none {
    using icommdlgbrowser: ICommDlgBrowser_VTable;
    Notify: (this: *ICommDlgBrowser2, ppshv: *IShellView, dwNotifyType: u32) -> HRESULT #cpp_method;

    GetDefaultMenuText: (this: *ICommDlgBrowser2, ppshv: *IShellView, pszText: *s16, cchMax: s32) -> HRESULT #cpp_method;

    GetViewFlags: (this: *ICommDlgBrowser2, pdwFlags: *u32) -> HRESULT #cpp_method;
}

ICommDlgBrowser2_Notify :: inline (this: *ICommDlgBrowser2, ppshv: *IShellView, dwNotifyType: u32) -> HRESULT { return this.icommdlgbrowser2_vtable.Notify(this, ppshv, dwNotifyType); }

ICommDlgBrowser2_GetDefaultMenuText :: inline (this: *ICommDlgBrowser2, ppshv: *IShellView, pszText: *s16, cchMax: s32) -> HRESULT { return this.icommdlgbrowser2_vtable.GetDefaultMenuText(this, ppshv, pszText, cchMax); }

ICommDlgBrowser2_GetViewFlags :: inline (this: *ICommDlgBrowser2, pdwFlags: *u32) -> HRESULT { return this.icommdlgbrowser2_vtable.GetViewFlags(this, pdwFlags); }

vtable :: (obj: *ICommDlgBrowser2) -> *ICommDlgBrowser2_VTable { return obj.icommdlgbrowser2_vtable; }


CM_MASK :: enum s32 {
    WIDTH        :: 1;
    DEFAULTWIDTH :: 2;
    IDEALWIDTH   :: 4;
    NAME         :: 8;
    STATE        :: 16;

    CM_MASK_WIDTH        :: WIDTH;
    CM_MASK_DEFAULTWIDTH :: DEFAULTWIDTH;
    CM_MASK_IDEALWIDTH   :: IDEALWIDTH;
    CM_MASK_NAME         :: NAME;
    CM_MASK_STATE        :: STATE;
}

CM_STATE :: enum s32 {
    NONE               :: 0;
    VISIBLE            :: 1;
    FIXEDWIDTH         :: 2;
    NOSORTBYFOLDERNESS :: 4;
    ALWAYSVISIBLE      :: 8;

    CM_STATE_NONE               :: NONE;
    CM_STATE_VISIBLE            :: VISIBLE;
    CM_STATE_FIXEDWIDTH         :: FIXEDWIDTH;
    CM_STATE_NOSORTBYFOLDERNESS :: NOSORTBYFOLDERNESS;
    CM_STATE_ALWAYSVISIBLE      :: ALWAYSVISIBLE;
}

CM_ENUM_FLAGS :: enum s32 {
    ALL     :: 1;
    VISIBLE :: 2;

    CM_ENUM_ALL     :: ALL;
    CM_ENUM_VISIBLE :: VISIBLE;
}

CM_SET_WIDTH_VALUE :: enum s32 {
    USEDEFAULT :: -1;
    AUTOSIZE   :: -2;

    CM_WIDTH_USEDEFAULT :: USEDEFAULT;
    CM_WIDTH_AUTOSIZE   :: AUTOSIZE;
}

CM_COLUMNINFO :: struct {
    cbSize:        u32;
    dwMask:        u32;
    dwState:       u32;
    uWidth:        u32;
    uDefaultWidth: u32;
    uIdealWidth:   u32;
    wszName:       [80] s16;
}


IColumnManager_UUID :: "d8ec27bb-3f3b-4042-b10a-4acfd924d453";
IColumnManager :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; icolumnmanager_vtable: *IColumnManager_VTable;
}
IColumnManager_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SetColumnInfo: (this: *IColumnManager, propkey: *PROPERTYKEY, pcmci: *CM_COLUMNINFO) -> HRESULT #cpp_method;

    GetColumnInfo: (this: *IColumnManager, propkey: *PROPERTYKEY, pcmci: *CM_COLUMNINFO) -> HRESULT #cpp_method;

    GetColumnCount: (this: *IColumnManager, dwFlags: CM_ENUM_FLAGS, puCount: *u32) -> HRESULT #cpp_method;

    GetColumns: (this: *IColumnManager, dwFlags: CM_ENUM_FLAGS, rgkeyOrder: *PROPERTYKEY, cColumns: u32) -> HRESULT #cpp_method;

    SetColumns: (this: *IColumnManager, rgkeyOrder: *PROPERTYKEY, cVisible: u32) -> HRESULT #cpp_method;
}

IColumnManager_SetColumnInfo :: inline (this: *IColumnManager, propkey: *PROPERTYKEY, pcmci: *CM_COLUMNINFO) -> HRESULT { return this.icolumnmanager_vtable.SetColumnInfo(this, propkey, pcmci); }

IColumnManager_GetColumnInfo :: inline (this: *IColumnManager, propkey: *PROPERTYKEY, pcmci: *CM_COLUMNINFO) -> HRESULT { return this.icolumnmanager_vtable.GetColumnInfo(this, propkey, pcmci); }

IColumnManager_GetColumnCount :: inline (this: *IColumnManager, dwFlags: CM_ENUM_FLAGS, puCount: *u32) -> HRESULT { return this.icolumnmanager_vtable.GetColumnCount(this, dwFlags, puCount); }

IColumnManager_GetColumns :: inline (this: *IColumnManager, dwFlags: CM_ENUM_FLAGS, rgkeyOrder: *PROPERTYKEY, cColumns: u32) -> HRESULT { return this.icolumnmanager_vtable.GetColumns(this, dwFlags, rgkeyOrder, cColumns); }

IColumnManager_SetColumns :: inline (this: *IColumnManager, rgkeyOrder: *PROPERTYKEY, cVisible: u32) -> HRESULT { return this.icolumnmanager_vtable.SetColumns(this, rgkeyOrder, cVisible); }

vtable :: (obj: *IColumnManager) -> *IColumnManager_VTable { return obj.icolumnmanager_vtable; }



IFolderFilterSite_UUID :: "C0A651F5-B48B-11d2-B5ED-006097C686F6";
IFolderFilterSite :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ifolderfiltersite_vtable: *IFolderFilterSite_VTable;
}
IFolderFilterSite_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SetFilter: (this: *IFolderFilterSite, punk: *IUnknown) -> HRESULT #cpp_method;
}
IFolderFilterSite_SetFilter :: inline (this: *IFolderFilterSite, punk: *IUnknown) -> HRESULT { return this.ifolderfiltersite_vtable.SetFilter(this, punk); }

vtable :: (obj: *IFolderFilterSite) -> *IFolderFilterSite_VTable { return obj.ifolderfiltersite_vtable; }



IFolderFilter_UUID :: "9CC22886-DC8E-11d2-B1D0-00C04F8EEB3E";
IFolderFilter :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ifolderfilter_vtable: *IFolderFilter_VTable;
}
IFolderFilter_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    ShouldShow: (this: *IFolderFilter, psf: *IShellFolder, pidlFolder: LPCITEMIDLIST, pidlItem: LPCITEMIDLIST) -> HRESULT #cpp_method;

    GetEnumFlags: (this: *IFolderFilter, psf: *IShellFolder, pidlFolder: LPCITEMIDLIST, phwnd: *HWND, pgrfFlags: *u32) -> HRESULT #cpp_method;
}

IFolderFilter_ShouldShow :: inline (this: *IFolderFilter, psf: *IShellFolder, pidlFolder: LPCITEMIDLIST, pidlItem: LPCITEMIDLIST) -> HRESULT { return this.ifolderfilter_vtable.ShouldShow(this, psf, pidlFolder, pidlItem); }

IFolderFilter_GetEnumFlags :: inline (this: *IFolderFilter, psf: *IShellFolder, pidlFolder: LPCITEMIDLIST, phwnd: *HWND, pgrfFlags: *u32) -> HRESULT { return this.ifolderfilter_vtable.GetEnumFlags(this, psf, pidlFolder, phwnd, pgrfFlags); }

vtable :: (obj: *IFolderFilter) -> *IFolderFilter_VTable { return obj.ifolderfilter_vtable; }



IInputObjectSite_UUID :: "F1DB8392-7331-11D0-8C99-00A0C92DBFE8";
IInputObjectSite :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iinputobjectsite_vtable: *IInputObjectSite_VTable;
}
IInputObjectSite_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    OnFocusChangeIS: (this: *IInputObjectSite, punkObj: *IUnknown, fSetFocus: BOOL) -> HRESULT #cpp_method;
}
IInputObjectSite_OnFocusChangeIS :: inline (this: *IInputObjectSite, punkObj: *IUnknown, fSetFocus: BOOL) -> HRESULT { return this.iinputobjectsite_vtable.OnFocusChangeIS(this, punkObj, fSetFocus); }

vtable :: (obj: *IInputObjectSite) -> *IInputObjectSite_VTable { return obj.iinputobjectsite_vtable; }



IInputObject_UUID :: "68284fAA-6A48-11D0-8c78-00C04fd918b4";
IInputObject :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iinputobject_vtable: *IInputObject_VTable;
}
IInputObject_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    UIActivateIO: (this: *IInputObject, fActivate: BOOL, pMsg: *MSG) -> HRESULT #cpp_method;

    HasFocusIO: (this: *IInputObject) -> HRESULT #cpp_method;

    TranslateAcceleratorIO: (this: *IInputObject, pMsg: *MSG) -> HRESULT #cpp_method;
}

IInputObject_UIActivateIO :: inline (this: *IInputObject, fActivate: BOOL, pMsg: *MSG) -> HRESULT { return this.iinputobject_vtable.UIActivateIO(this, fActivate, pMsg); }

IInputObject_HasFocusIO :: inline (this: *IInputObject) -> HRESULT { return this.iinputobject_vtable.HasFocusIO(this); }

IInputObject_TranslateAcceleratorIO :: inline (this: *IInputObject, pMsg: *MSG) -> HRESULT { return this.iinputobject_vtable.TranslateAcceleratorIO(this, pMsg); }

vtable :: (obj: *IInputObject) -> *IInputObject_VTable { return obj.iinputobject_vtable; }



IInputObject2_UUID :: "6915C085-510B-44cd-94AF-28DFA56CF92B";
IInputObject2 :: struct {
    #as using iinputobject: IInputObject;
    #place iinputobject; iinputobject2_vtable: *IInputObject2_VTable;
}
IInputObject2_VTable :: struct #type_info_none {
    using iinputobject: IInputObject_VTable;
    TranslateAcceleratorGlobal: (this: *IInputObject2, pMsg: *MSG) -> HRESULT #cpp_method;
}
IInputObject2_TranslateAcceleratorGlobal :: inline (this: *IInputObject2, pMsg: *MSG) -> HRESULT { return this.iinputobject2_vtable.TranslateAcceleratorGlobal(this, pMsg); }

vtable :: (obj: *IInputObject2) -> *IInputObject2_VTable { return obj.iinputobject2_vtable; }



IShellIcon_UUID :: "000214E5-0000-0000-C000-000000000046";
IShellIcon :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ishellicon_vtable: *IShellIcon_VTable;
}
IShellIcon_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetIconOf: (this: *IShellIcon, pidl: LPCITEMIDLIST, flags: u32, pIconIndex: *s32) -> HRESULT #cpp_method;
}
IShellIcon_GetIconOf :: inline (this: *IShellIcon, pidl: LPCITEMIDLIST, flags: u32, pIconIndex: *s32) -> HRESULT { return this.ishellicon_vtable.GetIconOf(this, pidl, flags, pIconIndex); }

vtable :: (obj: *IShellIcon) -> *IShellIcon_VTable { return obj.ishellicon_vtable; }



IShellBrowser_UUID :: "000214E2-0000-0000-C000-000000000046";
IShellBrowser :: struct {
    #as using iolewindow: IOleWindow;
    #place iolewindow; ishellbrowser_vtable: *IShellBrowser_VTable;
}
IShellBrowser_VTable :: struct #type_info_none {
    using iolewindow: IOleWindow_VTable;
    InsertMenusSB: (this: *IShellBrowser, hmenuShared: HMENU, lpMenuWidths: LPOLEMENUGROUPWIDTHS) -> HRESULT #cpp_method;

    SetMenuSB: (this: *IShellBrowser, hmenuShared: HMENU, holemenuRes: HOLEMENU, hwndActiveObject: HWND) -> HRESULT #cpp_method;

    RemoveMenusSB: (this: *IShellBrowser, hmenuShared: HMENU) -> HRESULT #cpp_method;

    SetStatusTextSB: (this: *IShellBrowser, pszStatusText: *s16) -> HRESULT #cpp_method;

    EnableModelessSB: (this: *IShellBrowser, fEnable: BOOL) -> HRESULT #cpp_method;

    TranslateAcceleratorSB: (this: *IShellBrowser, pmsg: *MSG, wID: u16) -> HRESULT #cpp_method;

    BrowseObject: (this: *IShellBrowser, pidl: LPCITEMIDLIST, wFlags: u32) -> HRESULT #cpp_method;

    GetViewStateStream: (this: *IShellBrowser, grfMode: u32, ppStrm: **IStream) -> HRESULT #cpp_method;

    GetControlWindow: (this: *IShellBrowser, id: u32, phwnd: *HWND) -> HRESULT #cpp_method;

    SendControlMsg: (this: *IShellBrowser, id: u32, uMsg: u32, wParam: WPARAM, lParam: LPARAM, pret: *LRESULT) -> HRESULT #cpp_method;

    QueryActiveShellView: (this: *IShellBrowser, ppshv: **IShellView) -> HRESULT #cpp_method;

    OnViewWindowActive: (this: *IShellBrowser, pshv: *IShellView) -> HRESULT #cpp_method;

    SetToolbarItems: (this: *IShellBrowser, lpButtons: LPTBBUTTONSB, nButtons: u32, uFlags: u32) -> HRESULT #cpp_method;
}

IShellBrowser_InsertMenusSB :: inline (this: *IShellBrowser, hmenuShared: HMENU, lpMenuWidths: LPOLEMENUGROUPWIDTHS) -> HRESULT { return this.ishellbrowser_vtable.InsertMenusSB(this, hmenuShared, lpMenuWidths); }

IShellBrowser_SetMenuSB :: inline (this: *IShellBrowser, hmenuShared: HMENU, holemenuRes: HOLEMENU, hwndActiveObject: HWND) -> HRESULT { return this.ishellbrowser_vtable.SetMenuSB(this, hmenuShared, holemenuRes, hwndActiveObject); }

IShellBrowser_RemoveMenusSB :: inline (this: *IShellBrowser, hmenuShared: HMENU) -> HRESULT { return this.ishellbrowser_vtable.RemoveMenusSB(this, hmenuShared); }

IShellBrowser_SetStatusTextSB :: inline (this: *IShellBrowser, pszStatusText: *s16) -> HRESULT { return this.ishellbrowser_vtable.SetStatusTextSB(this, pszStatusText); }

IShellBrowser_EnableModelessSB :: inline (this: *IShellBrowser, fEnable: BOOL) -> HRESULT { return this.ishellbrowser_vtable.EnableModelessSB(this, fEnable); }

IShellBrowser_TranslateAcceleratorSB :: inline (this: *IShellBrowser, pmsg: *MSG, wID: u16) -> HRESULT { return this.ishellbrowser_vtable.TranslateAcceleratorSB(this, pmsg, wID); }

IShellBrowser_BrowseObject :: inline (this: *IShellBrowser, pidl: LPCITEMIDLIST, wFlags: u32) -> HRESULT { return this.ishellbrowser_vtable.BrowseObject(this, pidl, wFlags); }

IShellBrowser_GetViewStateStream :: inline (this: *IShellBrowser, grfMode: u32, ppStrm: **IStream) -> HRESULT { return this.ishellbrowser_vtable.GetViewStateStream(this, grfMode, ppStrm); }

IShellBrowser_GetControlWindow :: inline (this: *IShellBrowser, id: u32, phwnd: *HWND) -> HRESULT { return this.ishellbrowser_vtable.GetControlWindow(this, id, phwnd); }

IShellBrowser_SendControlMsg :: inline (this: *IShellBrowser, id: u32, uMsg: u32, wParam: WPARAM, lParam: LPARAM, pret: *LRESULT) -> HRESULT { return this.ishellbrowser_vtable.SendControlMsg(this, id, uMsg, wParam, lParam, pret); }

IShellBrowser_QueryActiveShellView :: inline (this: *IShellBrowser, ppshv: **IShellView) -> HRESULT { return this.ishellbrowser_vtable.QueryActiveShellView(this, ppshv); }

IShellBrowser_OnViewWindowActive :: inline (this: *IShellBrowser, pshv: *IShellView) -> HRESULT { return this.ishellbrowser_vtable.OnViewWindowActive(this, pshv); }

IShellBrowser_SetToolbarItems :: inline (this: *IShellBrowser, lpButtons: LPTBBUTTONSB, nButtons: u32, uFlags: u32) -> HRESULT { return this.ishellbrowser_vtable.SetToolbarItems(this, lpButtons, nButtons, uFlags); }

vtable :: (obj: *IShellBrowser) -> *IShellBrowser_VTable { return obj.ishellbrowser_vtable; }



IProfferService_UUID :: "cb728b20-f786-11ce-92ad-00aa00a74cd0";
IProfferService :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iprofferservice_vtable: *IProfferService_VTable;
}
IProfferService_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    ProfferService: (this: *IProfferService, serviceId: *GUID, serviceProvider: *IServiceProvider, cookie: *u32) -> HRESULT #cpp_method;

    RevokeService: (this: *IProfferService, cookie: u32) -> HRESULT #cpp_method;
}

IProfferService_ProfferService :: inline (this: *IProfferService, serviceId: *GUID, serviceProvider: *IServiceProvider, cookie: *u32) -> HRESULT { return this.iprofferservice_vtable.ProfferService(this, serviceId, serviceProvider, cookie); }

IProfferService_RevokeService :: inline (this: *IProfferService, cookie: u32) -> HRESULT { return this.iprofferservice_vtable.RevokeService(this, cookie); }

vtable :: (obj: *IProfferService) -> *IProfferService_VTable { return obj.iprofferservice_vtable; }



IGetServiceIds_UUID :: "4A073526-6103-4E21-B7BC-F519D1524E5D";
IGetServiceIds :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; igetserviceids_vtable: *IGetServiceIds_VTable;
}
IGetServiceIds_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetServiceIds: (this: *IGetServiceIds, serviceIdCount: *u32, serviceIds: **GUID) -> HRESULT #cpp_method;
}
IGetServiceIds_GetServiceIds :: inline (this: *IGetServiceIds, serviceIdCount: *u32, serviceIds: **GUID) -> HRESULT { return this.igetserviceids_vtable.GetServiceIds(this, serviceIdCount, serviceIds); }

vtable :: (obj: *IGetServiceIds) -> *IGetServiceIds_VTable { return obj.igetserviceids_vtable; }


SIGDN :: enum s32 {
    NORMALDISPLAY               :: 0;
    PARENTRELATIVEPARSING       :: -2147385343;
    DESKTOPABSOLUTEPARSING      :: -2147319808;
    PARENTRELATIVEEDITING       :: -2147282943;
    DESKTOPABSOLUTEEDITING      :: -2147172352;
    FILESYSPATH                 :: -2147123200;
    URL                         :: -2147057664;
    PARENTRELATIVEFORADDRESSBAR :: -2146975743;
    PARENTRELATIVE              :: -2146959359;
    PARENTRELATIVEFORUI         :: -2146877439;

    SIGDN_NORMALDISPLAY               :: NORMALDISPLAY;
    SIGDN_PARENTRELATIVEPARSING       :: PARENTRELATIVEPARSING;
    SIGDN_DESKTOPABSOLUTEPARSING      :: DESKTOPABSOLUTEPARSING;
    SIGDN_PARENTRELATIVEEDITING       :: PARENTRELATIVEEDITING;
    SIGDN_DESKTOPABSOLUTEEDITING      :: DESKTOPABSOLUTEEDITING;
    SIGDN_FILESYSPATH                 :: FILESYSPATH;
    SIGDN_URL                         :: URL;
    SIGDN_PARENTRELATIVEFORADDRESSBAR :: PARENTRELATIVEFORADDRESSBAR;
    SIGDN_PARENTRELATIVE              :: PARENTRELATIVE;
    SIGDN_PARENTRELATIVEFORUI         :: PARENTRELATIVEFORUI;
}

SICHINTF :: enum s32 {
    DISPLAY                       :: 0;
    ALLFIELDS                     :: -2147483648;
    CANONICAL                     :: 268435456;
    TEST_FILESYSPATH_IF_NOT_EQUAL :: 536870912;

    SICHINT_DISPLAY                       :: DISPLAY;
    SICHINT_ALLFIELDS                     :: ALLFIELDS;
    SICHINT_CANONICAL                     :: CANONICAL;
    SICHINT_TEST_FILESYSPATH_IF_NOT_EQUAL :: TEST_FILESYSPATH_IF_NOT_EQUAL;
}

SICHINTF :: u32;


IShellItem_UUID :: "43826d1e-e718-42ee-bc55-a1e261c37bfe";
IShellItem :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ishellitem_vtable: *IShellItem_VTable;
}
IShellItem_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    BindToHandler: (this: *IShellItem, pbc: *IBindCtx, bhid: *GUID, riid: *IID, ppv: **void) -> HRESULT #cpp_method;

    GetParent: (this: *IShellItem, ppsi: **IShellItem) -> HRESULT #cpp_method;

    GetDisplayName: (this: *IShellItem, sigdnName: SIGDN, ppszName: **s16) -> HRESULT #cpp_method;

    GetAttributes: (this: *IShellItem, sfgaoMask: SFGAOF, psfgaoAttribs: *SFGAOF) -> HRESULT #cpp_method;

    Compare: (this: *IShellItem, psi: *IShellItem, hint: SICHINTF, piOrder: *s32) -> HRESULT #cpp_method;
}

IShellItem_BindToHandler :: inline (this: *IShellItem, pbc: *IBindCtx, bhid: *GUID, riid: *IID, ppv: **void) -> HRESULT { return this.ishellitem_vtable.BindToHandler(this, pbc, bhid, riid, ppv); }

IShellItem_GetParent :: inline (this: *IShellItem, ppsi: **IShellItem) -> HRESULT { return this.ishellitem_vtable.GetParent(this, ppsi); }

IShellItem_GetDisplayName :: inline (this: *IShellItem, sigdnName: SIGDN, ppszName: **s16) -> HRESULT { return this.ishellitem_vtable.GetDisplayName(this, sigdnName, ppszName); }

IShellItem_GetAttributes :: inline (this: *IShellItem, sfgaoMask: SFGAOF, psfgaoAttribs: *SFGAOF) -> HRESULT { return this.ishellitem_vtable.GetAttributes(this, sfgaoMask, psfgaoAttribs); }

IShellItem_Compare :: inline (this: *IShellItem, psi: *IShellItem, hint: SICHINTF, piOrder: *s32) -> HRESULT { return this.ishellitem_vtable.Compare(this, psi, hint, piOrder); }

vtable :: (obj: *IShellItem) -> *IShellItem_VTable { return obj.ishellitem_vtable; }


SHSimpleIDListFromPath :: (pszPath: PCWSTR) -> LPITEMIDLIST #foreign shell32;

SHCreateItemFromIDList :: (pidl: LPCITEMIDLIST, riid: *IID, ppv: **void) -> HRESULT #foreign shell32;
SHCreateItemFromIDList :: (pidl: LPCITEMIDLIST, riid: IID, ppv: **void) -> HRESULT #no_context {
    return SHCreateItemFromIDList(pidl, *riid, ppv);
}
SHCreateItemFromParsingName :: (pszPath: PCWSTR, pbc: *IBindCtx, riid: *IID, ppv: **void) -> HRESULT #foreign shell32;
SHCreateItemFromParsingName :: (pszPath: PCWSTR, pbc: *IBindCtx, riid: IID, ppv: **void) -> HRESULT #no_context {
    return SHCreateItemFromParsingName(pszPath, pbc, *riid, ppv);
}
SHCreateItemWithParent :: (pidlParent: LPCITEMIDLIST, psfParent: *IShellFolder, pidl: LPCITEMIDLIST, riid: *IID, ppvItem: **void) -> HRESULT #foreign shell32;
SHCreateItemWithParent :: (pidlParent: LPCITEMIDLIST, psfParent: *IShellFolder, pidl: LPCITEMIDLIST, riid: IID, ppvItem: **void) -> HRESULT #no_context {
    return SHCreateItemWithParent(pidlParent, psfParent, pidl, *riid, ppvItem);
}
SHCreateItemFromRelativeName :: (psiParent: *IShellItem, pszName: PCWSTR, pbc: *IBindCtx, riid: *IID, ppv: **void) -> HRESULT #foreign shell32;
SHCreateItemFromRelativeName :: (psiParent: *IShellItem, pszName: PCWSTR, pbc: *IBindCtx, riid: IID, ppv: **void) -> HRESULT #no_context {
    return SHCreateItemFromRelativeName(psiParent, pszName, pbc, *riid, ppv);
}

SHCreateItemInKnownFolder :: (kfid: *KNOWNFOLDERID, dwKFFlags: u32, pszItem: PCWSTR, riid: *IID, ppv: **void) -> HRESULT #foreign shell32;
SHCreateItemInKnownFolder :: (kfid: KNOWNFOLDERID, dwKFFlags: u32, pszItem: PCWSTR, riid: IID, ppv: **void) -> HRESULT #no_context {
    return SHCreateItemInKnownFolder(*kfid, dwKFFlags, pszItem, *riid, ppv);
}

SHGetIDListFromObject :: (punk: *IUnknown, ppidl: *LPITEMIDLIST) -> HRESULT #foreign shell32;

SHGetItemFromObject :: (punk: *IUnknown, riid: *IID, ppv: **void) -> HRESULT #foreign shell32;
SHGetItemFromObject :: (punk: *IUnknown, riid: IID, ppv: **void) -> HRESULT #no_context {
    return SHGetItemFromObject(punk, *riid, ppv);
}

SHGetPropertyStoreFromIDList :: (pidl: LPCITEMIDLIST, flags: GETPROPERTYSTOREFLAGS, riid: *IID, ppv: **void) -> HRESULT #foreign shell32;
SHGetPropertyStoreFromIDList :: (pidl: LPCITEMIDLIST, flags: GETPROPERTYSTOREFLAGS, riid: IID, ppv: **void) -> HRESULT #no_context {
    return SHGetPropertyStoreFromIDList(pidl, flags, *riid, ppv);
}
SHGetPropertyStoreFromParsingName :: (pszPath: PCWSTR, pbc: *IBindCtx, flags: GETPROPERTYSTOREFLAGS, riid: *IID, ppv: **void) -> HRESULT #foreign shell32;
SHGetPropertyStoreFromParsingName :: (pszPath: PCWSTR, pbc: *IBindCtx, flags: GETPROPERTYSTOREFLAGS, riid: IID, ppv: **void) -> HRESULT #no_context {
    return SHGetPropertyStoreFromParsingName(pszPath, pbc, flags, *riid, ppv);
}
SHGetNameFromIDList :: (pidl: LPCITEMIDLIST, sigdnName: SIGDN, ppszName: **s16) -> HRESULT #foreign shell32;

DATAOBJ_GET_ITEM_FLAGS :: enum s32 {
    DEFAULT       :: 0;
    TRAVERSE_LINK :: 1;
    NO_HDROP      :: 2;
    NO_URL        :: 4;
    ONLY_IF_ONE   :: 8;

    DOGIF_DEFAULT       :: DEFAULT;
    DOGIF_TRAVERSE_LINK :: TRAVERSE_LINK;
    DOGIF_NO_HDROP      :: NO_HDROP;
    DOGIF_NO_URL        :: NO_URL;
    DOGIF_ONLY_IF_ONE   :: ONLY_IF_ONE;
}

SHGetItemFromDataObject :: (pdtobj: *IDataObject, dwFlags: DATAOBJ_GET_ITEM_FLAGS, riid: *IID, ppv: **void) -> HRESULT #foreign shell32;
SHGetItemFromDataObject :: (pdtobj: *IDataObject, dwFlags: DATAOBJ_GET_ITEM_FLAGS, riid: IID, ppv: **void) -> HRESULT #no_context {
    return SHGetItemFromDataObject(pdtobj, dwFlags, *riid, ppv);
}


IShellItem2_UUID :: "7e9fb0d3-919f-4307-ab2e-9b1860310c93";
IShellItem2 :: struct {
    #as using ishellitem: IShellItem;
    #place ishellitem; ishellitem2_vtable: *IShellItem2_VTable;
}
IShellItem2_VTable :: struct #type_info_none {
    using ishellitem: IShellItem_VTable;
    GetPropertyStore: (this: *IShellItem2, flags: GETPROPERTYSTOREFLAGS, riid: *IID, ppv: **void) -> HRESULT #cpp_method;

    GetPropertyStoreWithCreateObject: (this: *IShellItem2, flags: GETPROPERTYSTOREFLAGS, punkCreateObject: *IUnknown, riid: *IID, ppv: **void) -> HRESULT #cpp_method;

    GetPropertyStoreForKeys: (this: *IShellItem2, rgKeys: *PROPERTYKEY, cKeys: u32, flags: GETPROPERTYSTOREFLAGS, riid: *IID, ppv: **void) -> HRESULT #cpp_method;

    GetPropertyDescriptionList: (this: *IShellItem2, keyType: *PROPERTYKEY, riid: *IID, ppv: **void) -> HRESULT #cpp_method;

    Update: (this: *IShellItem2, pbc: *IBindCtx) -> HRESULT #cpp_method;

    GetProperty: (this: *IShellItem2, key: *PROPERTYKEY, ppropvar: *PROPVARIANT) -> HRESULT #cpp_method;

    GetCLSID: (this: *IShellItem2, key: *PROPERTYKEY, pclsid: *CLSID) -> HRESULT #cpp_method;

    GetFileTime: (this: *IShellItem2, key: *PROPERTYKEY, pft: *FILETIME) -> HRESULT #cpp_method;

    GetInt32: (this: *IShellItem2, key: *PROPERTYKEY, pi: *s32) -> HRESULT #cpp_method;

    GetString: (this: *IShellItem2, key: *PROPERTYKEY, ppsz: **s16) -> HRESULT #cpp_method;

    GetUInt32: (this: *IShellItem2, key: *PROPERTYKEY, pui: *u32) -> HRESULT #cpp_method;

    GetUInt64: (this: *IShellItem2, key: *PROPERTYKEY, pull: *u64) -> HRESULT #cpp_method;

    GetBool: (this: *IShellItem2, key: *PROPERTYKEY, pf: *BOOL) -> HRESULT #cpp_method;
}

IShellItem2_GetPropertyStore :: inline (this: *IShellItem2, flags: GETPROPERTYSTOREFLAGS, riid: *IID, ppv: **void) -> HRESULT { return this.ishellitem2_vtable.GetPropertyStore(this, flags, riid, ppv); }

IShellItem2_GetPropertyStoreWithCreateObject :: inline (this: *IShellItem2, flags: GETPROPERTYSTOREFLAGS, punkCreateObject: *IUnknown, riid: *IID, ppv: **void) -> HRESULT { return this.ishellitem2_vtable.GetPropertyStoreWithCreateObject(this, flags, punkCreateObject, riid, ppv); }

IShellItem2_GetPropertyStoreForKeys :: inline (this: *IShellItem2, rgKeys: *PROPERTYKEY, cKeys: u32, flags: GETPROPERTYSTOREFLAGS, riid: *IID, ppv: **void) -> HRESULT { return this.ishellitem2_vtable.GetPropertyStoreForKeys(this, rgKeys, cKeys, flags, riid, ppv); }

IShellItem2_GetPropertyDescriptionList :: inline (this: *IShellItem2, keyType: *PROPERTYKEY, riid: *IID, ppv: **void) -> HRESULT { return this.ishellitem2_vtable.GetPropertyDescriptionList(this, keyType, riid, ppv); }

IShellItem2_Update :: inline (this: *IShellItem2, pbc: *IBindCtx) -> HRESULT { return this.ishellitem2_vtable.Update(this, pbc); }

IShellItem2_GetProperty :: inline (this: *IShellItem2, key: *PROPERTYKEY, ppropvar: *PROPVARIANT) -> HRESULT { return this.ishellitem2_vtable.GetProperty(this, key, ppropvar); }

IShellItem2_GetCLSID :: inline (this: *IShellItem2, key: *PROPERTYKEY, pclsid: *CLSID) -> HRESULT { return this.ishellitem2_vtable.GetCLSID(this, key, pclsid); }

IShellItem2_GetFileTime :: inline (this: *IShellItem2, key: *PROPERTYKEY, pft: *FILETIME) -> HRESULT { return this.ishellitem2_vtable.GetFileTime(this, key, pft); }

IShellItem2_GetInt32 :: inline (this: *IShellItem2, key: *PROPERTYKEY, pi: *s32) -> HRESULT { return this.ishellitem2_vtable.GetInt32(this, key, pi); }

IShellItem2_GetString :: inline (this: *IShellItem2, key: *PROPERTYKEY, ppsz: **s16) -> HRESULT { return this.ishellitem2_vtable.GetString(this, key, ppsz); }

IShellItem2_GetUInt32 :: inline (this: *IShellItem2, key: *PROPERTYKEY, pui: *u32) -> HRESULT { return this.ishellitem2_vtable.GetUInt32(this, key, pui); }

IShellItem2_GetUInt64 :: inline (this: *IShellItem2, key: *PROPERTYKEY, pull: *u64) -> HRESULT { return this.ishellitem2_vtable.GetUInt64(this, key, pull); }

IShellItem2_GetBool :: inline (this: *IShellItem2, key: *PROPERTYKEY, pf: *BOOL) -> HRESULT { return this.ishellitem2_vtable.GetBool(this, key, pf); }

vtable :: (obj: *IShellItem2) -> *IShellItem2_VTable { return obj.ishellitem2_vtable; }


SIIGBF :: enum s32 {
    RESIZETOFIT    :: 0;
    BIGGERSIZEOK   :: 1;
    MEMORYONLY     :: 2;
    ICONONLY       :: 4;
    THUMBNAILONLY  :: 8;
    INCACHEONLY    :: 16;
    CROPTOSQUARE   :: 32;
    WIDETHUMBNAILS :: 64;
    ICONBACKGROUND :: 128;
    SCALEUP        :: 256;

    SIIGBF_RESIZETOFIT    :: RESIZETOFIT;
    SIIGBF_BIGGERSIZEOK   :: BIGGERSIZEOK;
    SIIGBF_MEMORYONLY     :: MEMORYONLY;
    SIIGBF_ICONONLY       :: ICONONLY;
    SIIGBF_THUMBNAILONLY  :: THUMBNAILONLY;
    SIIGBF_INCACHEONLY    :: INCACHEONLY;
    SIIGBF_CROPTOSQUARE   :: CROPTOSQUARE;
    SIIGBF_WIDETHUMBNAILS :: WIDETHUMBNAILS;
    SIIGBF_ICONBACKGROUND :: ICONBACKGROUND;
    SIIGBF_SCALEUP        :: SCALEUP;
}

SIIGBF :: s32;


IShellItemImageFactory_UUID :: "bcc18b79-ba16-442f-80c4-8a59c30c463b";
IShellItemImageFactory :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ishellitemimagefactory_vtable: *IShellItemImageFactory_VTable;
}
IShellItemImageFactory_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetImage: (this: *IShellItemImageFactory, size: SIZE, flags: SIIGBF, phbm: *HBITMAP) -> HRESULT #cpp_method;
}
IShellItemImageFactory_GetImage :: inline (this: *IShellItemImageFactory, size: SIZE, flags: SIIGBF, phbm: *HBITMAP) -> HRESULT { return this.ishellitemimagefactory_vtable.GetImage(this, size, flags, phbm); }

vtable :: (obj: *IShellItemImageFactory) -> *IShellItemImageFactory_VTable { return obj.ishellitemimagefactory_vtable; }



IEnumShellItems_UUID :: "70629033-e363-4a28-a567-0db78006e6d7";
IEnumShellItems :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ienumshellitems_vtable: *IEnumShellItems_VTable;
}
IEnumShellItems_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Next: (this: *IEnumShellItems, celt: u32, rgelt: **IShellItem, pceltFetched: *u32) -> HRESULT #cpp_method;

    Skip: (this: *IEnumShellItems, celt: u32) -> HRESULT #cpp_method;

    Reset: (this: *IEnumShellItems) -> HRESULT #cpp_method;

    Clone: (this: *IEnumShellItems, ppenum: **IEnumShellItems) -> HRESULT #cpp_method;
}

IEnumShellItems_Next :: inline (this: *IEnumShellItems, celt: u32, rgelt: **IShellItem, pceltFetched: *u32) -> HRESULT { return this.ienumshellitems_vtable.Next(this, celt, rgelt, pceltFetched); }

IEnumShellItems_Skip :: inline (this: *IEnumShellItems, celt: u32) -> HRESULT { return this.ienumshellitems_vtable.Skip(this, celt); }

IEnumShellItems_Reset :: inline (this: *IEnumShellItems) -> HRESULT { return this.ienumshellitems_vtable.Reset(this); }

IEnumShellItems_Clone :: inline (this: *IEnumShellItems, ppenum: **IEnumShellItems) -> HRESULT { return this.ienumshellitems_vtable.Clone(this, ppenum); }

vtable :: (obj: *IEnumShellItems) -> *IEnumShellItems_VTable { return obj.ienumshellitems_vtable; }


STGTRANSCONFIRMATION :: GUID;

STGOP :: enum s32 {
    MOVE            :: 1;
    COPY            :: 2;
    SYNC            :: 3;
    REMOVE          :: 5;
    RENAME          :: 6;
    APPLYPROPERTIES :: 8;
    NEW             :: 10;

    STGOP_MOVE            :: MOVE;
    STGOP_COPY            :: COPY;
    STGOP_SYNC            :: SYNC;
    STGOP_REMOVE          :: REMOVE;
    STGOP_RENAME          :: RENAME;
    STGOP_APPLYPROPERTIES :: APPLYPROPERTIES;
    STGOP_NEW             :: NEW;
}

TRANSFER_SOURCE_FLAGS :: enum s32 {
    NORMAL                     :: 0;
    FAIL_EXIST                 :: 0;
    RENAME_EXIST               :: 1;
    OVERWRITE_EXIST            :: 2;
    ALLOW_DECRYPTION           :: 4;
    NO_SECURITY                :: 8;
    COPY_CREATION_TIME         :: 16;
    COPY_WRITE_TIME            :: 32;
    USE_FULL_ACCESS            :: 64;
    DELETE_RECYCLE_IF_POSSIBLE :: 128;
    COPY_HARD_LINK             :: 256;
    COPY_LOCALIZED_NAME        :: 512;
    MOVE_AS_COPY_DELETE        :: 1024;
    SUSPEND_SHELLEVENTS        :: 2048;

    TSF_NORMAL                     :: NORMAL;
    TSF_FAIL_EXIST                 :: FAIL_EXIST;
    TSF_RENAME_EXIST               :: RENAME_EXIST;
    TSF_OVERWRITE_EXIST            :: OVERWRITE_EXIST;
    TSF_ALLOW_DECRYPTION           :: ALLOW_DECRYPTION;
    TSF_NO_SECURITY                :: NO_SECURITY;
    TSF_COPY_CREATION_TIME         :: COPY_CREATION_TIME;
    TSF_COPY_WRITE_TIME            :: COPY_WRITE_TIME;
    TSF_USE_FULL_ACCESS            :: USE_FULL_ACCESS;
    TSF_DELETE_RECYCLE_IF_POSSIBLE :: DELETE_RECYCLE_IF_POSSIBLE;
    TSF_COPY_HARD_LINK             :: COPY_HARD_LINK;
    TSF_COPY_LOCALIZED_NAME        :: COPY_LOCALIZED_NAME;
    TSF_MOVE_AS_COPY_DELETE        :: MOVE_AS_COPY_DELETE;
    TSF_SUSPEND_SHELLEVENTS        :: SUSPEND_SHELLEVENTS;
}

TRANSFER_SOURCE_FLAGS :: u32;

TRANSFER_ADVISE_STATE :: enum s32 {
    NONE          :: 0;
    PERFORMING    :: 1;
    PREPARING     :: 2;
    INDETERMINATE :: 4;

    TS_NONE          :: NONE;
    TS_PERFORMING    :: PERFORMING;
    TS_PREPARING     :: PREPARING;
    TS_INDETERMINATE :: INDETERMINATE;
}

TRANSFER_ADVISE_STATE :: u32;


ITransferAdviseSink_UUID :: "d594d0d8-8da7-457b-b3b4-ce5dbaac0b88";
ITransferAdviseSink :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; itransferadvisesink_vtable: *ITransferAdviseSink_VTable;
}
ITransferAdviseSink_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    UpdateProgress: (this: *ITransferAdviseSink, ullSizeCurrent: u64, ullSizeTotal: u64, nFilesCurrent: s32, nFilesTotal: s32, nFoldersCurrent: s32, nFoldersTotal: s32) -> HRESULT #cpp_method;

    UpdateTransferState: (this: *ITransferAdviseSink, ts: TRANSFER_ADVISE_STATE) -> HRESULT #cpp_method;

    ConfirmOverwrite: (this: *ITransferAdviseSink, psiSource: *IShellItem, psiDestParent: *IShellItem, pszName: *s16) -> HRESULT #cpp_method;

    ConfirmEncryptionLoss: (this: *ITransferAdviseSink, psiSource: *IShellItem) -> HRESULT #cpp_method;

    FileFailure: (this: *ITransferAdviseSink, psi: *IShellItem, pszItem: *s16, hrError: HRESULT, pszRename: *s16, cchRename: u32) -> HRESULT #cpp_method;

    SubStreamFailure: (this: *ITransferAdviseSink, psi: *IShellItem, pszStreamName: *s16, hrError: HRESULT) -> HRESULT #cpp_method;

    PropertyFailure: (this: *ITransferAdviseSink, psi: *IShellItem, pkey: *PROPERTYKEY, hrError: HRESULT) -> HRESULT #cpp_method;
}

ITransferAdviseSink_UpdateProgress :: inline (this: *ITransferAdviseSink, ullSizeCurrent: u64, ullSizeTotal: u64, nFilesCurrent: s32, nFilesTotal: s32, nFoldersCurrent: s32, nFoldersTotal: s32) -> HRESULT { return this.itransferadvisesink_vtable.UpdateProgress(this, ullSizeCurrent, ullSizeTotal, nFilesCurrent, nFilesTotal, nFoldersCurrent, nFoldersTotal); }

ITransferAdviseSink_UpdateTransferState :: inline (this: *ITransferAdviseSink, ts: TRANSFER_ADVISE_STATE) -> HRESULT { return this.itransferadvisesink_vtable.UpdateTransferState(this, ts); }

ITransferAdviseSink_ConfirmOverwrite :: inline (this: *ITransferAdviseSink, psiSource: *IShellItem, psiDestParent: *IShellItem, pszName: *s16) -> HRESULT { return this.itransferadvisesink_vtable.ConfirmOverwrite(this, psiSource, psiDestParent, pszName); }

ITransferAdviseSink_ConfirmEncryptionLoss :: inline (this: *ITransferAdviseSink, psiSource: *IShellItem) -> HRESULT { return this.itransferadvisesink_vtable.ConfirmEncryptionLoss(this, psiSource); }

ITransferAdviseSink_FileFailure :: inline (this: *ITransferAdviseSink, psi: *IShellItem, pszItem: *s16, hrError: HRESULT, pszRename: *s16, cchRename: u32) -> HRESULT { return this.itransferadvisesink_vtable.FileFailure(this, psi, pszItem, hrError, pszRename, cchRename); }

ITransferAdviseSink_SubStreamFailure :: inline (this: *ITransferAdviseSink, psi: *IShellItem, pszStreamName: *s16, hrError: HRESULT) -> HRESULT { return this.itransferadvisesink_vtable.SubStreamFailure(this, psi, pszStreamName, hrError); }

ITransferAdviseSink_PropertyFailure :: inline (this: *ITransferAdviseSink, psi: *IShellItem, pkey: *PROPERTYKEY, hrError: HRESULT) -> HRESULT { return this.itransferadvisesink_vtable.PropertyFailure(this, psi, pkey, hrError); }

vtable :: (obj: *ITransferAdviseSink) -> *ITransferAdviseSink_VTable { return obj.itransferadvisesink_vtable; }



ITransferSource_UUID :: "00adb003-bde9-45c6-8e29-d09f9353e108";
ITransferSource :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; itransfersource_vtable: *ITransferSource_VTable;
}
ITransferSource_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Advise: (this: *ITransferSource, psink: *ITransferAdviseSink, pdwCookie: *u32) -> HRESULT #cpp_method;

    Unadvise: (this: *ITransferSource, dwCookie: u32) -> HRESULT #cpp_method;

    SetProperties: (this: *ITransferSource, pproparray: *IPropertyChangeArray) -> HRESULT #cpp_method;

    OpenItem: (this: *ITransferSource, psi: *IShellItem, flags: TRANSFER_SOURCE_FLAGS, riid: *IID, ppv: **void) -> HRESULT #cpp_method;

    MoveItem: (this: *ITransferSource, psi: *IShellItem, psiParentDst: *IShellItem, pszNameDst: *s16, flags: TRANSFER_SOURCE_FLAGS, ppsiNew: **IShellItem) -> HRESULT #cpp_method;

    RecycleItem: (this: *ITransferSource, psiSource: *IShellItem, psiParentDest: *IShellItem, flags: TRANSFER_SOURCE_FLAGS, ppsiNewDest: **IShellItem) -> HRESULT #cpp_method;

    RemoveItem: (this: *ITransferSource, psiSource: *IShellItem, flags: TRANSFER_SOURCE_FLAGS) -> HRESULT #cpp_method;

    RenameItem: (this: *ITransferSource, psiSource: *IShellItem, pszNewName: *s16, flags: TRANSFER_SOURCE_FLAGS, ppsiNewDest: **IShellItem) -> HRESULT #cpp_method;

    LinkItem: (this: *ITransferSource, psiSource: *IShellItem, psiParentDest: *IShellItem, pszNewName: *s16, flags: TRANSFER_SOURCE_FLAGS, ppsiNewDest: **IShellItem) -> HRESULT #cpp_method;

    ApplyPropertiesToItem: (this: *ITransferSource, psiSource: *IShellItem, ppsiNew: **IShellItem) -> HRESULT #cpp_method;

    GetDefaultDestinationName: (this: *ITransferSource, psiSource: *IShellItem, psiParentDest: *IShellItem, ppszDestinationName: **s16) -> HRESULT #cpp_method;

    EnterFolder: (this: *ITransferSource, psiChildFolderDest: *IShellItem) -> HRESULT #cpp_method;

    LeaveFolder: (this: *ITransferSource, psiChildFolderDest: *IShellItem) -> HRESULT #cpp_method;
}

ITransferSource_Advise :: inline (this: *ITransferSource, psink: *ITransferAdviseSink, pdwCookie: *u32) -> HRESULT { return this.itransfersource_vtable.Advise(this, psink, pdwCookie); }

ITransferSource_Unadvise :: inline (this: *ITransferSource, dwCookie: u32) -> HRESULT { return this.itransfersource_vtable.Unadvise(this, dwCookie); }

ITransferSource_SetProperties :: inline (this: *ITransferSource, pproparray: *IPropertyChangeArray) -> HRESULT { return this.itransfersource_vtable.SetProperties(this, pproparray); }

ITransferSource_OpenItem :: inline (this: *ITransferSource, psi: *IShellItem, flags: TRANSFER_SOURCE_FLAGS, riid: *IID, ppv: **void) -> HRESULT { return this.itransfersource_vtable.OpenItem(this, psi, flags, riid, ppv); }

ITransferSource_MoveItem :: inline (this: *ITransferSource, psi: *IShellItem, psiParentDst: *IShellItem, pszNameDst: *s16, flags: TRANSFER_SOURCE_FLAGS, ppsiNew: **IShellItem) -> HRESULT { return this.itransfersource_vtable.MoveItem(this, psi, psiParentDst, pszNameDst, flags, ppsiNew); }

ITransferSource_RecycleItem :: inline (this: *ITransferSource, psiSource: *IShellItem, psiParentDest: *IShellItem, flags: TRANSFER_SOURCE_FLAGS, ppsiNewDest: **IShellItem) -> HRESULT { return this.itransfersource_vtable.RecycleItem(this, psiSource, psiParentDest, flags, ppsiNewDest); }

ITransferSource_RemoveItem :: inline (this: *ITransferSource, psiSource: *IShellItem, flags: TRANSFER_SOURCE_FLAGS) -> HRESULT { return this.itransfersource_vtable.RemoveItem(this, psiSource, flags); }

ITransferSource_RenameItem :: inline (this: *ITransferSource, psiSource: *IShellItem, pszNewName: *s16, flags: TRANSFER_SOURCE_FLAGS, ppsiNewDest: **IShellItem) -> HRESULT { return this.itransfersource_vtable.RenameItem(this, psiSource, pszNewName, flags, ppsiNewDest); }

ITransferSource_LinkItem :: inline (this: *ITransferSource, psiSource: *IShellItem, psiParentDest: *IShellItem, pszNewName: *s16, flags: TRANSFER_SOURCE_FLAGS, ppsiNewDest: **IShellItem) -> HRESULT { return this.itransfersource_vtable.LinkItem(this, psiSource, psiParentDest, pszNewName, flags, ppsiNewDest); }

ITransferSource_ApplyPropertiesToItem :: inline (this: *ITransferSource, psiSource: *IShellItem, ppsiNew: **IShellItem) -> HRESULT { return this.itransfersource_vtable.ApplyPropertiesToItem(this, psiSource, ppsiNew); }

ITransferSource_GetDefaultDestinationName :: inline (this: *ITransferSource, psiSource: *IShellItem, psiParentDest: *IShellItem, ppszDestinationName: **s16) -> HRESULT { return this.itransfersource_vtable.GetDefaultDestinationName(this, psiSource, psiParentDest, ppszDestinationName); }

ITransferSource_EnterFolder :: inline (this: *ITransferSource, psiChildFolderDest: *IShellItem) -> HRESULT { return this.itransfersource_vtable.EnterFolder(this, psiChildFolderDest); }

ITransferSource_LeaveFolder :: inline (this: *ITransferSource, psiChildFolderDest: *IShellItem) -> HRESULT { return this.itransfersource_vtable.LeaveFolder(this, psiChildFolderDest); }

vtable :: (obj: *ITransferSource) -> *ITransferSource_VTable { return obj.itransfersource_vtable; }


SHELL_ITEM_RESOURCE :: struct {
    guidType: GUID;
    szName:   [260] s16;
}


IEnumResources_UUID :: "2dd81fe3-a83c-4da9-a330-47249d345ba1";
IEnumResources :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ienumresources_vtable: *IEnumResources_VTable;
}
IEnumResources_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Next: (this: *IEnumResources, celt: u32, psir: *SHELL_ITEM_RESOURCE, pceltFetched: *u32) -> HRESULT #cpp_method;

    Skip: (this: *IEnumResources, celt: u32) -> HRESULT #cpp_method;

    Reset: (this: *IEnumResources) -> HRESULT #cpp_method;

    Clone: (this: *IEnumResources, ppenumr: **IEnumResources) -> HRESULT #cpp_method;
}

IEnumResources_Next :: inline (this: *IEnumResources, celt: u32, psir: *SHELL_ITEM_RESOURCE, pceltFetched: *u32) -> HRESULT { return this.ienumresources_vtable.Next(this, celt, psir, pceltFetched); }

IEnumResources_Skip :: inline (this: *IEnumResources, celt: u32) -> HRESULT { return this.ienumresources_vtable.Skip(this, celt); }

IEnumResources_Reset :: inline (this: *IEnumResources) -> HRESULT { return this.ienumresources_vtable.Reset(this); }

IEnumResources_Clone :: inline (this: *IEnumResources, ppenumr: **IEnumResources) -> HRESULT { return this.ienumresources_vtable.Clone(this, ppenumr); }

vtable :: (obj: *IEnumResources) -> *IEnumResources_VTable { return obj.ienumresources_vtable; }



IShellItemResources_UUID :: "ff5693be-2ce0-4d48-b5c5-40817d1acdb9";
IShellItemResources :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ishellitemresources_vtable: *IShellItemResources_VTable;
}
IShellItemResources_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetAttributes: (this: *IShellItemResources, pdwAttributes: *u32) -> HRESULT #cpp_method;

    GetSize: (this: *IShellItemResources, pullSize: *u64) -> HRESULT #cpp_method;

    GetTimes: (this: *IShellItemResources, pftCreation: *FILETIME, pftWrite: *FILETIME, pftAccess: *FILETIME) -> HRESULT #cpp_method;

    SetTimes: (this: *IShellItemResources, pftCreation: *FILETIME, pftWrite: *FILETIME, pftAccess: *FILETIME) -> HRESULT #cpp_method;

    GetResourceDescription: (this: *IShellItemResources, pcsir: *SHELL_ITEM_RESOURCE, ppszDescription: **s16) -> HRESULT #cpp_method;

    EnumResources: (this: *IShellItemResources, ppenumr: **IEnumResources) -> HRESULT #cpp_method;

    SupportsResource: (this: *IShellItemResources, pcsir: *SHELL_ITEM_RESOURCE) -> HRESULT #cpp_method;

    OpenResource: (this: *IShellItemResources, pcsir: *SHELL_ITEM_RESOURCE, riid: *IID, ppv: **void) -> HRESULT #cpp_method;

    CreateResource: (this: *IShellItemResources, pcsir: *SHELL_ITEM_RESOURCE, riid: *IID, ppv: **void) -> HRESULT #cpp_method;

    MarkForDelete: (this: *IShellItemResources) -> HRESULT #cpp_method;
}

IShellItemResources_GetAttributes :: inline (this: *IShellItemResources, pdwAttributes: *u32) -> HRESULT { return this.ishellitemresources_vtable.GetAttributes(this, pdwAttributes); }

IShellItemResources_GetSize :: inline (this: *IShellItemResources, pullSize: *u64) -> HRESULT { return this.ishellitemresources_vtable.GetSize(this, pullSize); }

IShellItemResources_GetTimes :: inline (this: *IShellItemResources, pftCreation: *FILETIME, pftWrite: *FILETIME, pftAccess: *FILETIME) -> HRESULT { return this.ishellitemresources_vtable.GetTimes(this, pftCreation, pftWrite, pftAccess); }

IShellItemResources_SetTimes :: inline (this: *IShellItemResources, pftCreation: *FILETIME, pftWrite: *FILETIME, pftAccess: *FILETIME) -> HRESULT { return this.ishellitemresources_vtable.SetTimes(this, pftCreation, pftWrite, pftAccess); }

IShellItemResources_GetResourceDescription :: inline (this: *IShellItemResources, pcsir: *SHELL_ITEM_RESOURCE, ppszDescription: **s16) -> HRESULT { return this.ishellitemresources_vtable.GetResourceDescription(this, pcsir, ppszDescription); }

IShellItemResources_EnumResources :: inline (this: *IShellItemResources, ppenumr: **IEnumResources) -> HRESULT { return this.ishellitemresources_vtable.EnumResources(this, ppenumr); }

IShellItemResources_SupportsResource :: inline (this: *IShellItemResources, pcsir: *SHELL_ITEM_RESOURCE) -> HRESULT { return this.ishellitemresources_vtable.SupportsResource(this, pcsir); }

IShellItemResources_OpenResource :: inline (this: *IShellItemResources, pcsir: *SHELL_ITEM_RESOURCE, riid: *IID, ppv: **void) -> HRESULT { return this.ishellitemresources_vtable.OpenResource(this, pcsir, riid, ppv); }

IShellItemResources_CreateResource :: inline (this: *IShellItemResources, pcsir: *SHELL_ITEM_RESOURCE, riid: *IID, ppv: **void) -> HRESULT { return this.ishellitemresources_vtable.CreateResource(this, pcsir, riid, ppv); }

IShellItemResources_MarkForDelete :: inline (this: *IShellItemResources) -> HRESULT { return this.ishellitemresources_vtable.MarkForDelete(this); }

vtable :: (obj: *IShellItemResources) -> *IShellItemResources_VTable { return obj.ishellitemresources_vtable; }



ITransferDestination_UUID :: "48addd32-3ca5-4124-abe3-b5a72531b207";
ITransferDestination :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; itransferdestination_vtable: *ITransferDestination_VTable;
}
ITransferDestination_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Advise: (this: *ITransferDestination, psink: *ITransferAdviseSink, pdwCookie: *u32) -> HRESULT #cpp_method;

    Unadvise: (this: *ITransferDestination, dwCookie: u32) -> HRESULT #cpp_method;

    CreateItem: (this: *ITransferDestination, pszName: *s16, dwAttributes: u32, ullSize: u64, flags: TRANSFER_SOURCE_FLAGS, riidItem: *IID, ppvItem: **void, riidResources: *IID, ppvResources: **void) -> HRESULT #cpp_method;
}

ITransferDestination_Advise :: inline (this: *ITransferDestination, psink: *ITransferAdviseSink, pdwCookie: *u32) -> HRESULT { return this.itransferdestination_vtable.Advise(this, psink, pdwCookie); }

ITransferDestination_Unadvise :: inline (this: *ITransferDestination, dwCookie: u32) -> HRESULT { return this.itransferdestination_vtable.Unadvise(this, dwCookie); }

ITransferDestination_CreateItem :: inline (this: *ITransferDestination, pszName: *s16, dwAttributes: u32, ullSize: u64, flags: TRANSFER_SOURCE_FLAGS, riidItem: *IID, ppvItem: **void, riidResources: *IID, ppvResources: **void) -> HRESULT { return this.itransferdestination_vtable.CreateItem(this, pszName, dwAttributes, ullSize, flags, riidItem, ppvItem, riidResources, ppvResources); }

vtable :: (obj: *ITransferDestination) -> *ITransferDestination_VTable { return obj.itransferdestination_vtable; }



IFileOperationProgressSink_UUID :: "04b0f1a7-9490-44bc-96e1-4296a31252e2";
IFileOperationProgressSink :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ifileoperationprogresssink_vtable: *IFileOperationProgressSink_VTable;
}
IFileOperationProgressSink_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    StartOperations: (this: *IFileOperationProgressSink) -> HRESULT #cpp_method;

    FinishOperations: (this: *IFileOperationProgressSink, hrResult: HRESULT) -> HRESULT #cpp_method;

    PreRenameItem: (this: *IFileOperationProgressSink, dwFlags: u32, psiItem: *IShellItem, pszNewName: *s16) -> HRESULT #cpp_method;

    PostRenameItem: (this: *IFileOperationProgressSink, dwFlags: u32, psiItem: *IShellItem, pszNewName: *s16, hrRename: HRESULT, psiNewlyCreated: *IShellItem) -> HRESULT #cpp_method;

    PreMoveItem: (this: *IFileOperationProgressSink, dwFlags: u32, psiItem: *IShellItem, psiDestinationFolder: *IShellItem, pszNewName: *s16) -> HRESULT #cpp_method;

    PostMoveItem: (this: *IFileOperationProgressSink, dwFlags: u32, psiItem: *IShellItem, psiDestinationFolder: *IShellItem, pszNewName: *s16, hrMove: HRESULT, psiNewlyCreated: *IShellItem) -> HRESULT #cpp_method;

    PreCopyItem: (this: *IFileOperationProgressSink, dwFlags: u32, psiItem: *IShellItem, psiDestinationFolder: *IShellItem, pszNewName: *s16) -> HRESULT #cpp_method;

    PostCopyItem: (this: *IFileOperationProgressSink, dwFlags: u32, psiItem: *IShellItem, psiDestinationFolder: *IShellItem, pszNewName: *s16, hrCopy: HRESULT, psiNewlyCreated: *IShellItem) -> HRESULT #cpp_method;

    PreDeleteItem: (this: *IFileOperationProgressSink, dwFlags: u32, psiItem: *IShellItem) -> HRESULT #cpp_method;

    PostDeleteItem: (this: *IFileOperationProgressSink, dwFlags: u32, psiItem: *IShellItem, hrDelete: HRESULT, psiNewlyCreated: *IShellItem) -> HRESULT #cpp_method;

    PreNewItem: (this: *IFileOperationProgressSink, dwFlags: u32, psiDestinationFolder: *IShellItem, pszNewName: *s16) -> HRESULT #cpp_method;

    PostNewItem: (this: *IFileOperationProgressSink, dwFlags: u32, psiDestinationFolder: *IShellItem, pszNewName: *s16, pszTemplateName: *s16, dwFileAttributes: u32, hrNew: HRESULT, psiNewItem: *IShellItem) -> HRESULT #cpp_method;

    UpdateProgress: (this: *IFileOperationProgressSink, iWorkTotal: u32, iWorkSoFar: u32) -> HRESULT #cpp_method;

    ResetTimer: (this: *IFileOperationProgressSink) -> HRESULT #cpp_method;

    PauseTimer: (this: *IFileOperationProgressSink) -> HRESULT #cpp_method;

    ResumeTimer: (this: *IFileOperationProgressSink) -> HRESULT #cpp_method;
}

IFileOperationProgressSink_StartOperations :: inline (this: *IFileOperationProgressSink) -> HRESULT { return this.ifileoperationprogresssink_vtable.StartOperations(this); }

IFileOperationProgressSink_FinishOperations :: inline (this: *IFileOperationProgressSink, hrResult: HRESULT) -> HRESULT { return this.ifileoperationprogresssink_vtable.FinishOperations(this, hrResult); }

IFileOperationProgressSink_PreRenameItem :: inline (this: *IFileOperationProgressSink, dwFlags: u32, psiItem: *IShellItem, pszNewName: *s16) -> HRESULT { return this.ifileoperationprogresssink_vtable.PreRenameItem(this, dwFlags, psiItem, pszNewName); }

IFileOperationProgressSink_PostRenameItem :: inline (this: *IFileOperationProgressSink, dwFlags: u32, psiItem: *IShellItem, pszNewName: *s16, hrRename: HRESULT, psiNewlyCreated: *IShellItem) -> HRESULT { return this.ifileoperationprogresssink_vtable.PostRenameItem(this, dwFlags, psiItem, pszNewName, hrRename, psiNewlyCreated); }

IFileOperationProgressSink_PreMoveItem :: inline (this: *IFileOperationProgressSink, dwFlags: u32, psiItem: *IShellItem, psiDestinationFolder: *IShellItem, pszNewName: *s16) -> HRESULT { return this.ifileoperationprogresssink_vtable.PreMoveItem(this, dwFlags, psiItem, psiDestinationFolder, pszNewName); }

IFileOperationProgressSink_PostMoveItem :: inline (this: *IFileOperationProgressSink, dwFlags: u32, psiItem: *IShellItem, psiDestinationFolder: *IShellItem, pszNewName: *s16, hrMove: HRESULT, psiNewlyCreated: *IShellItem) -> HRESULT { return this.ifileoperationprogresssink_vtable.PostMoveItem(this, dwFlags, psiItem, psiDestinationFolder, pszNewName, hrMove, psiNewlyCreated); }

IFileOperationProgressSink_PreCopyItem :: inline (this: *IFileOperationProgressSink, dwFlags: u32, psiItem: *IShellItem, psiDestinationFolder: *IShellItem, pszNewName: *s16) -> HRESULT { return this.ifileoperationprogresssink_vtable.PreCopyItem(this, dwFlags, psiItem, psiDestinationFolder, pszNewName); }

IFileOperationProgressSink_PostCopyItem :: inline (this: *IFileOperationProgressSink, dwFlags: u32, psiItem: *IShellItem, psiDestinationFolder: *IShellItem, pszNewName: *s16, hrCopy: HRESULT, psiNewlyCreated: *IShellItem) -> HRESULT { return this.ifileoperationprogresssink_vtable.PostCopyItem(this, dwFlags, psiItem, psiDestinationFolder, pszNewName, hrCopy, psiNewlyCreated); }

IFileOperationProgressSink_PreDeleteItem :: inline (this: *IFileOperationProgressSink, dwFlags: u32, psiItem: *IShellItem) -> HRESULT { return this.ifileoperationprogresssink_vtable.PreDeleteItem(this, dwFlags, psiItem); }

IFileOperationProgressSink_PostDeleteItem :: inline (this: *IFileOperationProgressSink, dwFlags: u32, psiItem: *IShellItem, hrDelete: HRESULT, psiNewlyCreated: *IShellItem) -> HRESULT { return this.ifileoperationprogresssink_vtable.PostDeleteItem(this, dwFlags, psiItem, hrDelete, psiNewlyCreated); }

IFileOperationProgressSink_PreNewItem :: inline (this: *IFileOperationProgressSink, dwFlags: u32, psiDestinationFolder: *IShellItem, pszNewName: *s16) -> HRESULT { return this.ifileoperationprogresssink_vtable.PreNewItem(this, dwFlags, psiDestinationFolder, pszNewName); }

IFileOperationProgressSink_PostNewItem :: inline (this: *IFileOperationProgressSink, dwFlags: u32, psiDestinationFolder: *IShellItem, pszNewName: *s16, pszTemplateName: *s16, dwFileAttributes: u32, hrNew: HRESULT, psiNewItem: *IShellItem) -> HRESULT { return this.ifileoperationprogresssink_vtable.PostNewItem(this, dwFlags, psiDestinationFolder, pszNewName, pszTemplateName, dwFileAttributes, hrNew, psiNewItem); }

IFileOperationProgressSink_UpdateProgress :: inline (this: *IFileOperationProgressSink, iWorkTotal: u32, iWorkSoFar: u32) -> HRESULT { return this.ifileoperationprogresssink_vtable.UpdateProgress(this, iWorkTotal, iWorkSoFar); }

IFileOperationProgressSink_ResetTimer :: inline (this: *IFileOperationProgressSink) -> HRESULT { return this.ifileoperationprogresssink_vtable.ResetTimer(this); }

IFileOperationProgressSink_PauseTimer :: inline (this: *IFileOperationProgressSink) -> HRESULT { return this.ifileoperationprogresssink_vtable.PauseTimer(this); }

IFileOperationProgressSink_ResumeTimer :: inline (this: *IFileOperationProgressSink) -> HRESULT { return this.ifileoperationprogresssink_vtable.ResumeTimer(this); }

vtable :: (obj: *IFileOperationProgressSink) -> *IFileOperationProgressSink_VTable { return obj.ifileoperationprogresssink_vtable; }


SIATTRIBFLAGS :: enum s32 {
    AND       :: 1;
    OR        :: 2;
    APPCOMPAT :: 3;
    MASK      :: 3;
    ALLITEMS  :: 16384;

    SIATTRIBFLAGS_AND       :: AND;
    SIATTRIBFLAGS_OR        :: OR;
    SIATTRIBFLAGS_APPCOMPAT :: APPCOMPAT;
    SIATTRIBFLAGS_MASK      :: MASK;
    SIATTRIBFLAGS_ALLITEMS  :: ALLITEMS;
}


IShellItemArray_UUID :: "b63ea76d-1f85-456f-a19c-48159efa858b";
IShellItemArray :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ishellitemarray_vtable: *IShellItemArray_VTable;
}
IShellItemArray_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    BindToHandler: (this: *IShellItemArray, pbc: *IBindCtx, bhid: *GUID, riid: *IID, ppvOut: **void) -> HRESULT #cpp_method;

    GetPropertyStore: (this: *IShellItemArray, flags: GETPROPERTYSTOREFLAGS, riid: *IID, ppv: **void) -> HRESULT #cpp_method;

    GetPropertyDescriptionList: (this: *IShellItemArray, keyType: *PROPERTYKEY, riid: *IID, ppv: **void) -> HRESULT #cpp_method;

    GetAttributes: (this: *IShellItemArray, AttribFlags: SIATTRIBFLAGS, sfgaoMask: SFGAOF, psfgaoAttribs: *SFGAOF) -> HRESULT #cpp_method;

    GetCount: (this: *IShellItemArray, pdwNumItems: *u32) -> HRESULT #cpp_method;

    GetItemAt: (this: *IShellItemArray, dwIndex: u32, ppsi: **IShellItem) -> HRESULT #cpp_method;

    EnumItems: (this: *IShellItemArray, ppenumShellItems: **IEnumShellItems) -> HRESULT #cpp_method;
}

IShellItemArray_BindToHandler :: inline (this: *IShellItemArray, pbc: *IBindCtx, bhid: *GUID, riid: *IID, ppvOut: **void) -> HRESULT { return this.ishellitemarray_vtable.BindToHandler(this, pbc, bhid, riid, ppvOut); }

IShellItemArray_GetPropertyStore :: inline (this: *IShellItemArray, flags: GETPROPERTYSTOREFLAGS, riid: *IID, ppv: **void) -> HRESULT { return this.ishellitemarray_vtable.GetPropertyStore(this, flags, riid, ppv); }

IShellItemArray_GetPropertyDescriptionList :: inline (this: *IShellItemArray, keyType: *PROPERTYKEY, riid: *IID, ppv: **void) -> HRESULT { return this.ishellitemarray_vtable.GetPropertyDescriptionList(this, keyType, riid, ppv); }

IShellItemArray_GetAttributes :: inline (this: *IShellItemArray, AttribFlags: SIATTRIBFLAGS, sfgaoMask: SFGAOF, psfgaoAttribs: *SFGAOF) -> HRESULT { return this.ishellitemarray_vtable.GetAttributes(this, AttribFlags, sfgaoMask, psfgaoAttribs); }

IShellItemArray_GetCount :: inline (this: *IShellItemArray, pdwNumItems: *u32) -> HRESULT { return this.ishellitemarray_vtable.GetCount(this, pdwNumItems); }

IShellItemArray_GetItemAt :: inline (this: *IShellItemArray, dwIndex: u32, ppsi: **IShellItem) -> HRESULT { return this.ishellitemarray_vtable.GetItemAt(this, dwIndex, ppsi); }

IShellItemArray_EnumItems :: inline (this: *IShellItemArray, ppenumShellItems: **IEnumShellItems) -> HRESULT { return this.ishellitemarray_vtable.EnumItems(this, ppenumShellItems); }

vtable :: (obj: *IShellItemArray) -> *IShellItemArray_VTable { return obj.ishellitemarray_vtable; }


SHCreateShellItemArray :: (pidlParent: LPCITEMIDLIST, psf: *IShellFolder, cidl: u32, ppidl: *LPCITEMIDLIST, ppsiItemArray: **IShellItemArray) -> HRESULT #foreign shell32;
SHCreateShellItemArrayFromDataObject :: (pdo: *IDataObject, riid: *IID, ppv: **void) -> HRESULT #foreign shell32;
SHCreateShellItemArrayFromDataObject :: (pdo: *IDataObject, riid: IID, ppv: **void) -> HRESULT #no_context {
    return SHCreateShellItemArrayFromDataObject(pdo, *riid, ppv);
}
SHCreateShellItemArrayFromIDLists :: (cidl: u32, rgpidl: *LPCITEMIDLIST, ppsiItemArray: **IShellItemArray) -> HRESULT #foreign shell32;
SHCreateShellItemArrayFromShellItem :: (psi: *IShellItem, riid: *IID, ppv: **void) -> HRESULT #foreign shell32;
SHCreateShellItemArrayFromShellItem :: (psi: *IShellItem, riid: IID, ppv: **void) -> HRESULT #no_context {
    return SHCreateShellItemArrayFromShellItem(psi, *riid, ppv);
}


IInitializeWithItem_UUID :: "7f73be3f-fb79-493c-a6c7-7ee14e245841";
IInitializeWithItem :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iinitializewithitem_vtable: *IInitializeWithItem_VTable;
}
IInitializeWithItem_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Initialize: (this: *IInitializeWithItem, psi: *IShellItem, grfMode: u32) -> HRESULT #cpp_method;
}
IInitializeWithItem_Initialize :: inline (this: *IInitializeWithItem, psi: *IShellItem, grfMode: u32) -> HRESULT { return this.iinitializewithitem_vtable.Initialize(this, psi, grfMode); }

vtable :: (obj: *IInitializeWithItem) -> *IInitializeWithItem_VTable { return obj.iinitializewithitem_vtable; }



IObjectWithSelection_UUID :: "1c9cd5bb-98e9-4491-a60f-31aacc72b83c";
IObjectWithSelection :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iobjectwithselection_vtable: *IObjectWithSelection_VTable;
}
IObjectWithSelection_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SetSelection: (this: *IObjectWithSelection, psia: *IShellItemArray) -> HRESULT #cpp_method;

    GetSelection: (this: *IObjectWithSelection, riid: *IID, ppv: **void) -> HRESULT #cpp_method;
}

IObjectWithSelection_SetSelection :: inline (this: *IObjectWithSelection, psia: *IShellItemArray) -> HRESULT { return this.iobjectwithselection_vtable.SetSelection(this, psia); }

IObjectWithSelection_GetSelection :: inline (this: *IObjectWithSelection, riid: *IID, ppv: **void) -> HRESULT { return this.iobjectwithselection_vtable.GetSelection(this, riid, ppv); }

vtable :: (obj: *IObjectWithSelection) -> *IObjectWithSelection_VTable { return obj.iobjectwithselection_vtable; }



IObjectWithBackReferences_UUID :: "321a6a6a-d61f-4bf3-97ae-14be2986bb36";
IObjectWithBackReferences :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iobjectwithbackreferences_vtable: *IObjectWithBackReferences_VTable;
}
IObjectWithBackReferences_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    RemoveBackReferences: (this: *IObjectWithBackReferences) -> HRESULT #cpp_method;
}
IObjectWithBackReferences_RemoveBackReferences :: inline (this: *IObjectWithBackReferences) -> HRESULT { return this.iobjectwithbackreferences_vtable.RemoveBackReferences(this); }

vtable :: (obj: *IObjectWithBackReferences) -> *IObjectWithBackReferences_VTable { return obj.iobjectwithbackreferences_vtable; }


PROPERTYUI_NAME_FLAGS :: enum s32 {
    DEFAULT  :: 0;
    MNEMONIC :: 1;

    PUIFNF_DEFAULT  :: DEFAULT;
    PUIFNF_MNEMONIC :: MNEMONIC;
}

PROPERTYUI_NAME_FLAGS :: u32;

PROPERTYUI_FLAGS :: enum s32 {
    DEFAULT          :: 0;
    RIGHTALIGN       :: 1;
    NOLABELININFOTIP :: 2;

    PUIF_DEFAULT          :: DEFAULT;
    PUIF_RIGHTALIGN       :: RIGHTALIGN;
    PUIF_NOLABELININFOTIP :: NOLABELININFOTIP;
}

PROPERTYUI_FLAGS :: u32;

PROPERTYUI_FORMAT_FLAGS :: enum s32 {
    DEFAULT      :: 0;
    RIGHTTOLEFT  :: 1;
    SHORTFORMAT  :: 2;
    NOTIME       :: 4;
    FRIENDLYDATE :: 8;

    PUIFFDF_DEFAULT      :: DEFAULT;
    PUIFFDF_RIGHTTOLEFT  :: RIGHTTOLEFT;
    PUIFFDF_SHORTFORMAT  :: SHORTFORMAT;
    PUIFFDF_NOTIME       :: NOTIME;
    PUIFFDF_FRIENDLYDATE :: FRIENDLYDATE;
}

PROPERTYUI_FORMAT_FLAGS :: u32;


IPropertyUI_UUID :: "757a7d9f-919a-4118-99d7-dbb208c8cc66";
IPropertyUI :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ipropertyui_vtable: *IPropertyUI_VTable;
}
IPropertyUI_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    ParsePropertyName: (this: *IPropertyUI, pszName: *s16, pfmtid: *FMTID, ppid: *PROPID, pchEaten: *u32) -> HRESULT #cpp_method;

    GetCannonicalName: (this: *IPropertyUI, fmtid: *IID, pid: PROPID, pwszText: *s16, cchText: u32) -> HRESULT #cpp_method;

    GetDisplayName: (this: *IPropertyUI, fmtid: *IID, pid: PROPID, flags: PROPERTYUI_NAME_FLAGS, pwszText: *s16, cchText: u32) -> HRESULT #cpp_method;

    GetPropertyDescription: (this: *IPropertyUI, fmtid: *IID, pid: PROPID, pwszText: *s16, cchText: u32) -> HRESULT #cpp_method;

    GetDefaultWidth: (this: *IPropertyUI, fmtid: *IID, pid: PROPID, pcxChars: *u32) -> HRESULT #cpp_method;

    GetFlags: (this: *IPropertyUI, fmtid: *IID, pid: PROPID, pflags: *PROPERTYUI_FLAGS) -> HRESULT #cpp_method;

    FormatForDisplay: (this: *IPropertyUI, fmtid: *IID, pid: PROPID, ppropvar: *PROPVARIANT, puiff: PROPERTYUI_FORMAT_FLAGS, pwszText: *s16, cchText: u32) -> HRESULT #cpp_method;

    GetHelpInfo: (this: *IPropertyUI, fmtid: *IID, pid: PROPID, pwszHelpFile: *s16, cch: u32, puHelpID: *u32) -> HRESULT #cpp_method;
}

IPropertyUI_ParsePropertyName :: inline (this: *IPropertyUI, pszName: *s16, pfmtid: *FMTID, ppid: *PROPID, pchEaten: *u32) -> HRESULT { return this.ipropertyui_vtable.ParsePropertyName(this, pszName, pfmtid, ppid, pchEaten); }

IPropertyUI_GetCannonicalName :: inline (this: *IPropertyUI, fmtid: *IID, pid: PROPID, pwszText: *s16, cchText: u32) -> HRESULT { return this.ipropertyui_vtable.GetCannonicalName(this, fmtid, pid, pwszText, cchText); }

IPropertyUI_GetDisplayName :: inline (this: *IPropertyUI, fmtid: *IID, pid: PROPID, flags: PROPERTYUI_NAME_FLAGS, pwszText: *s16, cchText: u32) -> HRESULT { return this.ipropertyui_vtable.GetDisplayName(this, fmtid, pid, flags, pwszText, cchText); }

IPropertyUI_GetPropertyDescription :: inline (this: *IPropertyUI, fmtid: *IID, pid: PROPID, pwszText: *s16, cchText: u32) -> HRESULT { return this.ipropertyui_vtable.GetPropertyDescription(this, fmtid, pid, pwszText, cchText); }

IPropertyUI_GetDefaultWidth :: inline (this: *IPropertyUI, fmtid: *IID, pid: PROPID, pcxChars: *u32) -> HRESULT { return this.ipropertyui_vtable.GetDefaultWidth(this, fmtid, pid, pcxChars); }

IPropertyUI_GetFlags :: inline (this: *IPropertyUI, fmtid: *IID, pid: PROPID, pflags: *PROPERTYUI_FLAGS) -> HRESULT { return this.ipropertyui_vtable.GetFlags(this, fmtid, pid, pflags); }

IPropertyUI_FormatForDisplay :: inline (this: *IPropertyUI, fmtid: *IID, pid: PROPID, ppropvar: *PROPVARIANT, puiff: PROPERTYUI_FORMAT_FLAGS, pwszText: *s16, cchText: u32) -> HRESULT { return this.ipropertyui_vtable.FormatForDisplay(this, fmtid, pid, ppropvar, puiff, pwszText, cchText); }

IPropertyUI_GetHelpInfo :: inline (this: *IPropertyUI, fmtid: *IID, pid: PROPID, pwszHelpFile: *s16, cch: u32, puHelpID: *u32) -> HRESULT { return this.ipropertyui_vtable.GetHelpInfo(this, fmtid, pid, pwszHelpFile, cch, puHelpID); }

vtable :: (obj: *IPropertyUI) -> *IPropertyUI_VTable { return obj.ipropertyui_vtable; }



ICategoryProvider_UUID :: "9af64809-5864-4c26-a720-c1f78c086ee3";
ICategoryProvider :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; icategoryprovider_vtable: *ICategoryProvider_VTable;
}
ICategoryProvider_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    CanCategorizeOnSCID: (this: *ICategoryProvider, pscid: *SHCOLUMNID) -> HRESULT #cpp_method;

    GetDefaultCategory: (this: *ICategoryProvider, pguid: *GUID, pscid: *SHCOLUMNID) -> HRESULT #cpp_method;

    GetCategoryForSCID: (this: *ICategoryProvider, pscid: *SHCOLUMNID, pguid: *GUID) -> HRESULT #cpp_method;

    EnumCategories: (this: *ICategoryProvider, penum: **IEnumGUID) -> HRESULT #cpp_method;

    GetCategoryName: (this: *ICategoryProvider, pguid: *GUID, pszName: *s16, cch: u32) -> HRESULT #cpp_method;

    CreateCategory: (this: *ICategoryProvider, pguid: *GUID, riid: *IID, ppv: **void) -> HRESULT #cpp_method;
}

ICategoryProvider_CanCategorizeOnSCID :: inline (this: *ICategoryProvider, pscid: *SHCOLUMNID) -> HRESULT { return this.icategoryprovider_vtable.CanCategorizeOnSCID(this, pscid); }

ICategoryProvider_GetDefaultCategory :: inline (this: *ICategoryProvider, pguid: *GUID, pscid: *SHCOLUMNID) -> HRESULT { return this.icategoryprovider_vtable.GetDefaultCategory(this, pguid, pscid); }

ICategoryProvider_GetCategoryForSCID :: inline (this: *ICategoryProvider, pscid: *SHCOLUMNID, pguid: *GUID) -> HRESULT { return this.icategoryprovider_vtable.GetCategoryForSCID(this, pscid, pguid); }

ICategoryProvider_EnumCategories :: inline (this: *ICategoryProvider, penum: **IEnumGUID) -> HRESULT { return this.icategoryprovider_vtable.EnumCategories(this, penum); }

ICategoryProvider_GetCategoryName :: inline (this: *ICategoryProvider, pguid: *GUID, pszName: *s16, cch: u32) -> HRESULT { return this.icategoryprovider_vtable.GetCategoryName(this, pguid, pszName, cch); }

ICategoryProvider_CreateCategory :: inline (this: *ICategoryProvider, pguid: *GUID, riid: *IID, ppv: **void) -> HRESULT { return this.icategoryprovider_vtable.CreateCategory(this, pguid, riid, ppv); }

vtable :: (obj: *ICategoryProvider) -> *ICategoryProvider_VTable { return obj.icategoryprovider_vtable; }


CATEGORYINFO_FLAGS :: enum s32 {
    NORMAL          :: 0;
    COLLAPSED       :: 1;
    HIDDEN          :: 2;
    EXPANDED        :: 4;
    NOHEADER        :: 8;
    NOTCOLLAPSIBLE  :: 16;
    NOHEADERCOUNT   :: 32;
    SUBSETTED       :: 64;
    SEPARATE_IMAGES :: 128;
    SHOWEMPTY       :: 256;

    CATINFO_NORMAL          :: NORMAL;
    CATINFO_COLLAPSED       :: COLLAPSED;
    CATINFO_HIDDEN          :: HIDDEN;
    CATINFO_EXPANDED        :: EXPANDED;
    CATINFO_NOHEADER        :: NOHEADER;
    CATINFO_NOTCOLLAPSIBLE  :: NOTCOLLAPSIBLE;
    CATINFO_NOHEADERCOUNT   :: NOHEADERCOUNT;
    CATINFO_SUBSETTED       :: SUBSETTED;
    CATINFO_SEPARATE_IMAGES :: SEPARATE_IMAGES;
    CATINFO_SHOWEMPTY       :: SHOWEMPTY;
}

CATSORT_FLAGS :: enum s32 {
    DEFAULT :: 0;
    NAME    :: 1;

    CATSORT_DEFAULT :: DEFAULT;
    CATSORT_NAME    :: NAME;
}

CATEGORY_INFO :: struct {
    cif:     CATEGORYINFO_FLAGS;
    wszName: [260] s16;
}


ICategorizer_UUID :: "a3b14589-9174-49a8-89a3-06a1ae2b9ba7";
ICategorizer :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; icategorizer_vtable: *ICategorizer_VTable;
}
ICategorizer_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetDescription: (this: *ICategorizer, pszDesc: *s16, cch: u32) -> HRESULT #cpp_method;

    GetCategory: (this: *ICategorizer, cidl: u32, apidl: *LPCITEMIDLIST, rgCategoryIds: *u32) -> HRESULT #cpp_method;

    GetCategoryInfo: (this: *ICategorizer, dwCategoryId: u32, pci: *CATEGORY_INFO) -> HRESULT #cpp_method;

    CompareCategory: (this: *ICategorizer, csfFlags: CATSORT_FLAGS, dwCategoryId1: u32, dwCategoryId2: u32) -> HRESULT #cpp_method;
}

ICategorizer_GetDescription :: inline (this: *ICategorizer, pszDesc: *s16, cch: u32) -> HRESULT { return this.icategorizer_vtable.GetDescription(this, pszDesc, cch); }

ICategorizer_GetCategory :: inline (this: *ICategorizer, cidl: u32, apidl: *LPCITEMIDLIST, rgCategoryIds: *u32) -> HRESULT { return this.icategorizer_vtable.GetCategory(this, cidl, apidl, rgCategoryIds); }

ICategorizer_GetCategoryInfo :: inline (this: *ICategorizer, dwCategoryId: u32, pci: *CATEGORY_INFO) -> HRESULT { return this.icategorizer_vtable.GetCategoryInfo(this, dwCategoryId, pci); }

ICategorizer_CompareCategory :: inline (this: *ICategorizer, csfFlags: CATSORT_FLAGS, dwCategoryId1: u32, dwCategoryId2: u32) -> HRESULT { return this.icategorizer_vtable.CompareCategory(this, csfFlags, dwCategoryId1, dwCategoryId2); }

vtable :: (obj: *ICategorizer) -> *ICategorizer_VTable { return obj.icategorizer_vtable; }


SHDRAGIMAGE :: struct {
    sizeDragImage: SIZE;
    ptOffset:      POINT;
    hbmpDragImage: HBITMAP;
    crColorKey:    COLORREF;
}


IDropTargetHelper_UUID :: "4657278B-411B-11D2-839A-00C04FD918D0";
IDropTargetHelper :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; idroptargethelper_vtable: *IDropTargetHelper_VTable;
}
IDropTargetHelper_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    DragEnter: (this: *IDropTargetHelper, hwndTarget: HWND, pDataObject: *IDataObject, ppt: *POINT, dwEffect: u32) -> HRESULT #cpp_method;

    DragLeave: (this: *IDropTargetHelper) -> HRESULT #cpp_method;

    DragOver: (this: *IDropTargetHelper, ppt: *POINT, dwEffect: u32) -> HRESULT #cpp_method;

    Drop: (this: *IDropTargetHelper, pDataObject: *IDataObject, ppt: *POINT, dwEffect: u32) -> HRESULT #cpp_method;

    Show: (this: *IDropTargetHelper, fShow: BOOL) -> HRESULT #cpp_method;
}

IDropTargetHelper_DragEnter :: inline (this: *IDropTargetHelper, hwndTarget: HWND, pDataObject: *IDataObject, ppt: *POINT, dwEffect: u32) -> HRESULT { return this.idroptargethelper_vtable.DragEnter(this, hwndTarget, pDataObject, ppt, dwEffect); }

IDropTargetHelper_DragLeave :: inline (this: *IDropTargetHelper) -> HRESULT { return this.idroptargethelper_vtable.DragLeave(this); }

IDropTargetHelper_DragOver :: inline (this: *IDropTargetHelper, ppt: *POINT, dwEffect: u32) -> HRESULT { return this.idroptargethelper_vtable.DragOver(this, ppt, dwEffect); }

IDropTargetHelper_Drop :: inline (this: *IDropTargetHelper, pDataObject: *IDataObject, ppt: *POINT, dwEffect: u32) -> HRESULT { return this.idroptargethelper_vtable.Drop(this, pDataObject, ppt, dwEffect); }

IDropTargetHelper_Show :: inline (this: *IDropTargetHelper, fShow: BOOL) -> HRESULT { return this.idroptargethelper_vtable.Show(this, fShow); }

vtable :: (obj: *IDropTargetHelper) -> *IDropTargetHelper_VTable { return obj.idroptargethelper_vtable; }



IDragSourceHelper_UUID :: "DE5BF786-477A-11D2-839D-00C04FD918D0";
IDragSourceHelper :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; idragsourcehelper_vtable: *IDragSourceHelper_VTable;
}
IDragSourceHelper_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    InitializeFromBitmap: (this: *IDragSourceHelper, pshdi: LPSHDRAGIMAGE, pDataObject: *IDataObject) -> HRESULT #cpp_method;

    InitializeFromWindow: (this: *IDragSourceHelper, hwnd: HWND, ppt: *POINT, pDataObject: *IDataObject) -> HRESULT #cpp_method;
}

IDragSourceHelper_InitializeFromBitmap :: inline (this: *IDragSourceHelper, pshdi: LPSHDRAGIMAGE, pDataObject: *IDataObject) -> HRESULT { return this.idragsourcehelper_vtable.InitializeFromBitmap(this, pshdi, pDataObject); }

IDragSourceHelper_InitializeFromWindow :: inline (this: *IDragSourceHelper, hwnd: HWND, ppt: *POINT, pDataObject: *IDataObject) -> HRESULT { return this.idragsourcehelper_vtable.InitializeFromWindow(this, hwnd, ppt, pDataObject); }

vtable :: (obj: *IDragSourceHelper) -> *IDragSourceHelper_VTable { return obj.idragsourcehelper_vtable; }


SLR_FLAGS :: enum s32 {
    NONE                      :: 0;
    NO_UI                     :: 1;
    ANY_MATCH                 :: 2;
    UPDATE                    :: 4;
    NOUPDATE                  :: 8;
    NOSEARCH                  :: 16;
    NOTRACK                   :: 32;
    NOLINKINFO                :: 64;
    INVOKE_MSI                :: 128;
    NO_UI_WITH_MSG_PUMP       :: 257;
    OFFER_DELETE_WITHOUT_FILE :: 512;
    KNOWNFOLDER               :: 1024;
    MACHINE_IN_LOCAL_TARGET   :: 2048;
    UPDATE_MACHINE_AND_SID    :: 4096;
    NO_OBJECT_ID              :: 8192;

    SLR_NONE                      :: NONE;
    SLR_NO_UI                     :: NO_UI;
    SLR_ANY_MATCH                 :: ANY_MATCH;
    SLR_UPDATE                    :: UPDATE;
    SLR_NOUPDATE                  :: NOUPDATE;
    SLR_NOSEARCH                  :: NOSEARCH;
    SLR_NOTRACK                   :: NOTRACK;
    SLR_NOLINKINFO                :: NOLINKINFO;
    SLR_INVOKE_MSI                :: INVOKE_MSI;
    SLR_NO_UI_WITH_MSG_PUMP       :: NO_UI_WITH_MSG_PUMP;
    SLR_OFFER_DELETE_WITHOUT_FILE :: OFFER_DELETE_WITHOUT_FILE;
    SLR_KNOWNFOLDER               :: KNOWNFOLDER;
    SLR_MACHINE_IN_LOCAL_TARGET   :: MACHINE_IN_LOCAL_TARGET;
    SLR_UPDATE_MACHINE_AND_SID    :: UPDATE_MACHINE_AND_SID;
    SLR_NO_OBJECT_ID              :: NO_OBJECT_ID;
}

SLGP_FLAGS :: enum s32 {
    SHORTPATH        :: 1;
    UNCPRIORITY      :: 2;
    RAWPATH          :: 4;
    RELATIVEPRIORITY :: 8;

    SLGP_SHORTPATH        :: SHORTPATH;
    SLGP_UNCPRIORITY      :: UNCPRIORITY;
    SLGP_RAWPATH          :: RAWPATH;
    SLGP_RELATIVEPRIORITY :: RELATIVEPRIORITY;
}


IShellLinkA_UUID :: "000214EE-0000-0000-C000-000000000046";
IShellLinkA :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ishelllinka_vtable: *IShellLinkA_VTable;
}
IShellLinkA_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetPath: (this: *IShellLinkA, pszFile: *u8, cch: s32, pfd: *WIN32_FIND_DATAA, fFlags: u32) -> HRESULT #cpp_method;

    GetIDList: (this: *IShellLinkA, ppidl: *LPITEMIDLIST) -> HRESULT #cpp_method;

    SetIDList: (this: *IShellLinkA, pidl: LPCITEMIDLIST) -> HRESULT #cpp_method;

    GetDescription: (this: *IShellLinkA, pszName: *u8, cch: s32) -> HRESULT #cpp_method;

    SetDescription: (this: *IShellLinkA, pszName: *u8) -> HRESULT #cpp_method;

    GetWorkingDirectory: (this: *IShellLinkA, pszDir: *u8, cch: s32) -> HRESULT #cpp_method;

    SetWorkingDirectory: (this: *IShellLinkA, pszDir: *u8) -> HRESULT #cpp_method;

    GetArguments: (this: *IShellLinkA, pszArgs: *u8, cch: s32) -> HRESULT #cpp_method;

    SetArguments: (this: *IShellLinkA, pszArgs: *u8) -> HRESULT #cpp_method;

    GetHotkey: (this: *IShellLinkA, pwHotkey: *u16) -> HRESULT #cpp_method;

    SetHotkey: (this: *IShellLinkA, wHotkey: u16) -> HRESULT #cpp_method;

    GetShowCmd: (this: *IShellLinkA, piShowCmd: *s32) -> HRESULT #cpp_method;

    SetShowCmd: (this: *IShellLinkA, iShowCmd: s32) -> HRESULT #cpp_method;

    GetIconLocation: (this: *IShellLinkA, pszIconPath: *u8, cch: s32, piIcon: *s32) -> HRESULT #cpp_method;

    SetIconLocation: (this: *IShellLinkA, pszIconPath: *u8, iIcon: s32) -> HRESULT #cpp_method;

    SetRelativePath: (this: *IShellLinkA, pszPathRel: *u8, dwReserved: u32) -> HRESULT #cpp_method;

    Resolve: (this: *IShellLinkA, hwnd: HWND, fFlags: u32) -> HRESULT #cpp_method;

    SetPath: (this: *IShellLinkA, pszFile: *u8) -> HRESULT #cpp_method;
}

IShellLinkA_GetPath :: inline (this: *IShellLinkA, pszFile: *u8, cch: s32, pfd: *WIN32_FIND_DATAA, fFlags: u32) -> HRESULT { return this.ishelllinka_vtable.GetPath(this, pszFile, cch, pfd, fFlags); }

IShellLinkA_GetIDList :: inline (this: *IShellLinkA, ppidl: *LPITEMIDLIST) -> HRESULT { return this.ishelllinka_vtable.GetIDList(this, ppidl); }

IShellLinkA_SetIDList :: inline (this: *IShellLinkA, pidl: LPCITEMIDLIST) -> HRESULT { return this.ishelllinka_vtable.SetIDList(this, pidl); }

IShellLinkA_GetDescription :: inline (this: *IShellLinkA, pszName: *u8, cch: s32) -> HRESULT { return this.ishelllinka_vtable.GetDescription(this, pszName, cch); }

IShellLinkA_SetDescription :: inline (this: *IShellLinkA, pszName: *u8) -> HRESULT { return this.ishelllinka_vtable.SetDescription(this, pszName); }

IShellLinkA_GetWorkingDirectory :: inline (this: *IShellLinkA, pszDir: *u8, cch: s32) -> HRESULT { return this.ishelllinka_vtable.GetWorkingDirectory(this, pszDir, cch); }

IShellLinkA_SetWorkingDirectory :: inline (this: *IShellLinkA, pszDir: *u8) -> HRESULT { return this.ishelllinka_vtable.SetWorkingDirectory(this, pszDir); }

IShellLinkA_GetArguments :: inline (this: *IShellLinkA, pszArgs: *u8, cch: s32) -> HRESULT { return this.ishelllinka_vtable.GetArguments(this, pszArgs, cch); }

IShellLinkA_SetArguments :: inline (this: *IShellLinkA, pszArgs: *u8) -> HRESULT { return this.ishelllinka_vtable.SetArguments(this, pszArgs); }

IShellLinkA_GetHotkey :: inline (this: *IShellLinkA, pwHotkey: *u16) -> HRESULT { return this.ishelllinka_vtable.GetHotkey(this, pwHotkey); }

IShellLinkA_SetHotkey :: inline (this: *IShellLinkA, wHotkey: u16) -> HRESULT { return this.ishelllinka_vtable.SetHotkey(this, wHotkey); }

IShellLinkA_GetShowCmd :: inline (this: *IShellLinkA, piShowCmd: *s32) -> HRESULT { return this.ishelllinka_vtable.GetShowCmd(this, piShowCmd); }

IShellLinkA_SetShowCmd :: inline (this: *IShellLinkA, iShowCmd: s32) -> HRESULT { return this.ishelllinka_vtable.SetShowCmd(this, iShowCmd); }

IShellLinkA_GetIconLocation :: inline (this: *IShellLinkA, pszIconPath: *u8, cch: s32, piIcon: *s32) -> HRESULT { return this.ishelllinka_vtable.GetIconLocation(this, pszIconPath, cch, piIcon); }

IShellLinkA_SetIconLocation :: inline (this: *IShellLinkA, pszIconPath: *u8, iIcon: s32) -> HRESULT { return this.ishelllinka_vtable.SetIconLocation(this, pszIconPath, iIcon); }

IShellLinkA_SetRelativePath :: inline (this: *IShellLinkA, pszPathRel: *u8, dwReserved: u32) -> HRESULT { return this.ishelllinka_vtable.SetRelativePath(this, pszPathRel, dwReserved); }

IShellLinkA_Resolve :: inline (this: *IShellLinkA, hwnd: HWND, fFlags: u32) -> HRESULT { return this.ishelllinka_vtable.Resolve(this, hwnd, fFlags); }

IShellLinkA_SetPath :: inline (this: *IShellLinkA, pszFile: *u8) -> HRESULT { return this.ishelllinka_vtable.SetPath(this, pszFile); }

vtable :: (obj: *IShellLinkA) -> *IShellLinkA_VTable { return obj.ishelllinka_vtable; }



IShellLinkW_UUID :: "000214F9-0000-0000-C000-000000000046";
IShellLinkW :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ishelllinkw_vtable: *IShellLinkW_VTable;
}
IShellLinkW_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetPath: (this: *IShellLinkW, pszFile: *s16, cch: s32, pfd: *WIN32_FIND_DATAW, fFlags: u32) -> HRESULT #cpp_method;

    GetIDList: (this: *IShellLinkW, ppidl: *LPITEMIDLIST) -> HRESULT #cpp_method;

    SetIDList: (this: *IShellLinkW, pidl: LPCITEMIDLIST) -> HRESULT #cpp_method;

    GetDescription: (this: *IShellLinkW, pszName: *s16, cch: s32) -> HRESULT #cpp_method;

    SetDescription: (this: *IShellLinkW, pszName: *s16) -> HRESULT #cpp_method;

    GetWorkingDirectory: (this: *IShellLinkW, pszDir: *s16, cch: s32) -> HRESULT #cpp_method;

    SetWorkingDirectory: (this: *IShellLinkW, pszDir: *s16) -> HRESULT #cpp_method;

    GetArguments: (this: *IShellLinkW, pszArgs: *s16, cch: s32) -> HRESULT #cpp_method;

    SetArguments: (this: *IShellLinkW, pszArgs: *s16) -> HRESULT #cpp_method;

    GetHotkey: (this: *IShellLinkW, pwHotkey: *u16) -> HRESULT #cpp_method;

    SetHotkey: (this: *IShellLinkW, wHotkey: u16) -> HRESULT #cpp_method;

    GetShowCmd: (this: *IShellLinkW, piShowCmd: *s32) -> HRESULT #cpp_method;

    SetShowCmd: (this: *IShellLinkW, iShowCmd: s32) -> HRESULT #cpp_method;

    GetIconLocation: (this: *IShellLinkW, pszIconPath: *s16, cch: s32, piIcon: *s32) -> HRESULT #cpp_method;

    SetIconLocation: (this: *IShellLinkW, pszIconPath: *s16, iIcon: s32) -> HRESULT #cpp_method;

    SetRelativePath: (this: *IShellLinkW, pszPathRel: *s16, dwReserved: u32) -> HRESULT #cpp_method;

    Resolve: (this: *IShellLinkW, hwnd: HWND, fFlags: u32) -> HRESULT #cpp_method;

    SetPath: (this: *IShellLinkW, pszFile: *s16) -> HRESULT #cpp_method;
}

IShellLinkW_GetPath :: inline (this: *IShellLinkW, pszFile: *s16, cch: s32, pfd: *WIN32_FIND_DATAW, fFlags: u32) -> HRESULT { return this.ishelllinkw_vtable.GetPath(this, pszFile, cch, pfd, fFlags); }

IShellLinkW_GetIDList :: inline (this: *IShellLinkW, ppidl: *LPITEMIDLIST) -> HRESULT { return this.ishelllinkw_vtable.GetIDList(this, ppidl); }

IShellLinkW_SetIDList :: inline (this: *IShellLinkW, pidl: LPCITEMIDLIST) -> HRESULT { return this.ishelllinkw_vtable.SetIDList(this, pidl); }

IShellLinkW_GetDescription :: inline (this: *IShellLinkW, pszName: *s16, cch: s32) -> HRESULT { return this.ishelllinkw_vtable.GetDescription(this, pszName, cch); }

IShellLinkW_SetDescription :: inline (this: *IShellLinkW, pszName: *s16) -> HRESULT { return this.ishelllinkw_vtable.SetDescription(this, pszName); }

IShellLinkW_GetWorkingDirectory :: inline (this: *IShellLinkW, pszDir: *s16, cch: s32) -> HRESULT { return this.ishelllinkw_vtable.GetWorkingDirectory(this, pszDir, cch); }

IShellLinkW_SetWorkingDirectory :: inline (this: *IShellLinkW, pszDir: *s16) -> HRESULT { return this.ishelllinkw_vtable.SetWorkingDirectory(this, pszDir); }

IShellLinkW_GetArguments :: inline (this: *IShellLinkW, pszArgs: *s16, cch: s32) -> HRESULT { return this.ishelllinkw_vtable.GetArguments(this, pszArgs, cch); }

IShellLinkW_SetArguments :: inline (this: *IShellLinkW, pszArgs: *s16) -> HRESULT { return this.ishelllinkw_vtable.SetArguments(this, pszArgs); }

IShellLinkW_GetHotkey :: inline (this: *IShellLinkW, pwHotkey: *u16) -> HRESULT { return this.ishelllinkw_vtable.GetHotkey(this, pwHotkey); }

IShellLinkW_SetHotkey :: inline (this: *IShellLinkW, wHotkey: u16) -> HRESULT { return this.ishelllinkw_vtable.SetHotkey(this, wHotkey); }

IShellLinkW_GetShowCmd :: inline (this: *IShellLinkW, piShowCmd: *s32) -> HRESULT { return this.ishelllinkw_vtable.GetShowCmd(this, piShowCmd); }

IShellLinkW_SetShowCmd :: inline (this: *IShellLinkW, iShowCmd: s32) -> HRESULT { return this.ishelllinkw_vtable.SetShowCmd(this, iShowCmd); }

IShellLinkW_GetIconLocation :: inline (this: *IShellLinkW, pszIconPath: *s16, cch: s32, piIcon: *s32) -> HRESULT { return this.ishelllinkw_vtable.GetIconLocation(this, pszIconPath, cch, piIcon); }

IShellLinkW_SetIconLocation :: inline (this: *IShellLinkW, pszIconPath: *s16, iIcon: s32) -> HRESULT { return this.ishelllinkw_vtable.SetIconLocation(this, pszIconPath, iIcon); }

IShellLinkW_SetRelativePath :: inline (this: *IShellLinkW, pszPathRel: *s16, dwReserved: u32) -> HRESULT { return this.ishelllinkw_vtable.SetRelativePath(this, pszPathRel, dwReserved); }

IShellLinkW_Resolve :: inline (this: *IShellLinkW, hwnd: HWND, fFlags: u32) -> HRESULT { return this.ishelllinkw_vtable.Resolve(this, hwnd, fFlags); }

IShellLinkW_SetPath :: inline (this: *IShellLinkW, pszFile: *s16) -> HRESULT { return this.ishelllinkw_vtable.SetPath(this, pszFile); }

vtable :: (obj: *IShellLinkW) -> *IShellLinkW_VTable { return obj.ishelllinkw_vtable; }



IShellLinkDataList_UUID :: "45e2b4ae-b1c3-11d0-b92f-00a0c90312e1";
IShellLinkDataList :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ishelllinkdatalist_vtable: *IShellLinkDataList_VTable;
}
IShellLinkDataList_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    AddDataBlock: (this: *IShellLinkDataList, pDataBlock: *void) -> HRESULT #cpp_method;

    CopyDataBlock: (this: *IShellLinkDataList, dwSig: u32, ppDataBlock: **void) -> HRESULT #cpp_method;

    RemoveDataBlock: (this: *IShellLinkDataList, dwSig: u32) -> HRESULT #cpp_method;

    GetFlags: (this: *IShellLinkDataList, pdwFlags: *u32) -> HRESULT #cpp_method;

    SetFlags: (this: *IShellLinkDataList, dwFlags: u32) -> HRESULT #cpp_method;
}

IShellLinkDataList_AddDataBlock :: inline (this: *IShellLinkDataList, pDataBlock: *void) -> HRESULT { return this.ishelllinkdatalist_vtable.AddDataBlock(this, pDataBlock); }

IShellLinkDataList_CopyDataBlock :: inline (this: *IShellLinkDataList, dwSig: u32, ppDataBlock: **void) -> HRESULT { return this.ishelllinkdatalist_vtable.CopyDataBlock(this, dwSig, ppDataBlock); }

IShellLinkDataList_RemoveDataBlock :: inline (this: *IShellLinkDataList, dwSig: u32) -> HRESULT { return this.ishelllinkdatalist_vtable.RemoveDataBlock(this, dwSig); }

IShellLinkDataList_GetFlags :: inline (this: *IShellLinkDataList, pdwFlags: *u32) -> HRESULT { return this.ishelllinkdatalist_vtable.GetFlags(this, pdwFlags); }

IShellLinkDataList_SetFlags :: inline (this: *IShellLinkDataList, dwFlags: u32) -> HRESULT { return this.ishelllinkdatalist_vtable.SetFlags(this, dwFlags); }

vtable :: (obj: *IShellLinkDataList) -> *IShellLinkDataList_VTable { return obj.ishelllinkdatalist_vtable; }



IResolveShellLink_UUID :: "5cd52983-9449-11d2-963a-00c04f79adf0";
IResolveShellLink :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iresolveshelllink_vtable: *IResolveShellLink_VTable;
}
IResolveShellLink_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    ResolveShellLink: (this: *IResolveShellLink, punkLink: *IUnknown, hwnd: HWND, fFlags: u32) -> HRESULT #cpp_method;
}
IResolveShellLink_ResolveShellLink :: inline (this: *IResolveShellLink, punkLink: *IUnknown, hwnd: HWND, fFlags: u32) -> HRESULT { return this.iresolveshelllink_vtable.ResolveShellLink(this, punkLink, hwnd, fFlags); }

vtable :: (obj: *IResolveShellLink) -> *IResolveShellLink_VTable { return obj.iresolveshelllink_vtable; }


SPINITF :: enum s32 {
    NORMAL     :: 0;
    MODAL      :: 1;
    NOMINIMIZE :: 8;

    SPINITF_NORMAL     :: NORMAL;
    SPINITF_MODAL      :: MODAL;
    SPINITF_NOMINIMIZE :: NOMINIMIZE;
}

SPINITF :: u32;


IActionProgressDialog_UUID :: "49ff1172-eadc-446d-9285-156453a6431c";
IActionProgressDialog :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iactionprogressdialog_vtable: *IActionProgressDialog_VTable;
}
IActionProgressDialog_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Initialize: (this: *IActionProgressDialog, flags: SPINITF, pszTitle: *s16, pszCancel: *s16) -> HRESULT #cpp_method;

    Stop: (this: *IActionProgressDialog) -> HRESULT #cpp_method;
}

IActionProgressDialog_Initialize :: inline (this: *IActionProgressDialog, flags: SPINITF, pszTitle: *s16, pszCancel: *s16) -> HRESULT { return this.iactionprogressdialog_vtable.Initialize(this, flags, pszTitle, pszCancel); }

IActionProgressDialog_Stop :: inline (this: *IActionProgressDialog) -> HRESULT { return this.iactionprogressdialog_vtable.Stop(this); }

vtable :: (obj: *IActionProgressDialog) -> *IActionProgressDialog_VTable { return obj.iactionprogressdialog_vtable; }


SPBEGINF :: enum s32 {
    NORMAL          :: 0;
    AUTOTIME        :: 2;
    NOPROGRESSBAR   :: 16;
    MARQUEEPROGRESS :: 32;
    NOCANCELBUTTON  :: 64;

    SPBEGINF_NORMAL          :: NORMAL;
    SPBEGINF_AUTOTIME        :: AUTOTIME;
    SPBEGINF_NOPROGRESSBAR   :: NOPROGRESSBAR;
    SPBEGINF_MARQUEEPROGRESS :: MARQUEEPROGRESS;
    SPBEGINF_NOCANCELBUTTON  :: NOCANCELBUTTON;
}

SPBEGINF :: u32;

SPACTION :: enum s32 {
    NONE               :: 0;
    MOVING             :: 1;
    COPYING            :: 2;
    RECYCLING          :: 3;
    APPLYINGATTRIBS    :: 4;
    DOWNLOADING        :: 5;
    SEARCHING_INTERNET :: 6;
    CALCULATING        :: 7;
    UPLOADING          :: 8;
    SEARCHING_FILES    :: 9;
    DELETING           :: 10;
    RENAMING           :: 11;
    FORMATTING         :: 12;
    COPY_MOVING        :: 13;

    SPACTION_NONE               :: NONE;
    SPACTION_MOVING             :: MOVING;
    SPACTION_COPYING            :: COPYING;
    SPACTION_RECYCLING          :: RECYCLING;
    SPACTION_APPLYINGATTRIBS    :: APPLYINGATTRIBS;
    SPACTION_DOWNLOADING        :: DOWNLOADING;
    SPACTION_SEARCHING_INTERNET :: SEARCHING_INTERNET;
    SPACTION_CALCULATING        :: CALCULATING;
    SPACTION_UPLOADING          :: UPLOADING;
    SPACTION_SEARCHING_FILES    :: SEARCHING_FILES;
    SPACTION_DELETING           :: DELETING;
    SPACTION_RENAMING           :: RENAMING;
    SPACTION_FORMATTING         :: FORMATTING;
    SPACTION_COPY_MOVING        :: COPY_MOVING;
}

SPTEXT :: enum s32 {
    ACTIONDESCRIPTION :: 1;
    ACTIONDETAIL      :: 2;

    SPTEXT_ACTIONDESCRIPTION :: ACTIONDESCRIPTION;
    SPTEXT_ACTIONDETAIL      :: ACTIONDETAIL;
}


IActionProgress_UUID :: "49ff1173-eadc-446d-9285-156453a6431c";
IActionProgress :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iactionprogress_vtable: *IActionProgress_VTable;
}
IActionProgress_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Begin: (this: *IActionProgress, action: SPACTION, flags: SPBEGINF) -> HRESULT #cpp_method;

    UpdateProgress: (this: *IActionProgress, ulCompleted: u64, ulTotal: u64) -> HRESULT #cpp_method;

    UpdateText: (this: *IActionProgress, sptext: SPTEXT, pszText: *s16, fMayCompact: BOOL) -> HRESULT #cpp_method;

    QueryCancel: (this: *IActionProgress, pfCancelled: *BOOL) -> HRESULT #cpp_method;

    ResetCancel: (this: *IActionProgress) -> HRESULT #cpp_method;

    End: (this: *IActionProgress) -> HRESULT #cpp_method;
}

IActionProgress_Begin :: inline (this: *IActionProgress, action: SPACTION, flags: SPBEGINF) -> HRESULT { return this.iactionprogress_vtable.Begin(this, action, flags); }

IActionProgress_UpdateProgress :: inline (this: *IActionProgress, ulCompleted: u64, ulTotal: u64) -> HRESULT { return this.iactionprogress_vtable.UpdateProgress(this, ulCompleted, ulTotal); }

IActionProgress_UpdateText :: inline (this: *IActionProgress, sptext: SPTEXT, pszText: *s16, fMayCompact: BOOL) -> HRESULT { return this.iactionprogress_vtable.UpdateText(this, sptext, pszText, fMayCompact); }

IActionProgress_QueryCancel :: inline (this: *IActionProgress, pfCancelled: *BOOL) -> HRESULT { return this.iactionprogress_vtable.QueryCancel(this, pfCancelled); }

IActionProgress_ResetCancel :: inline (this: *IActionProgress) -> HRESULT { return this.iactionprogress_vtable.ResetCancel(this); }

IActionProgress_End :: inline (this: *IActionProgress) -> HRESULT { return this.iactionprogress_vtable.End(this); }

vtable :: (obj: *IActionProgress) -> *IActionProgress_VTable { return obj.iactionprogress_vtable; }



IShellExtInit_UUID :: "000214E8-0000-0000-C000-000000000046";
IShellExtInit :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ishellextinit_vtable: *IShellExtInit_VTable;
}
IShellExtInit_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Initialize: (this: *IShellExtInit, pidlFolder: LPCITEMIDLIST, pdtobj: *IDataObject, hkeyProgID: HKEY) -> HRESULT #cpp_method;
}
IShellExtInit_Initialize :: inline (this: *IShellExtInit, pidlFolder: LPCITEMIDLIST, pdtobj: *IDataObject, hkeyProgID: HKEY) -> HRESULT { return this.ishellextinit_vtable.Initialize(this, pidlFolder, pdtobj, hkeyProgID); }

vtable :: (obj: *IShellExtInit) -> *IShellExtInit_VTable { return obj.ishellextinit_vtable; }


EXPPS :: enum s32 {
    EXPPS_FILETYPES :: 1;
}

EXPPS :: u32;


IShellPropSheetExt_UUID :: "000214E9-0000-0000-C000-000000000046";
IShellPropSheetExt :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ishellpropsheetext_vtable: *IShellPropSheetExt_VTable;
}
IShellPropSheetExt_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    AddPages: (this: *IShellPropSheetExt, pfnAddPage: LPFNSVADDPROPSHEETPAGE, lParam: LPARAM) -> HRESULT #cpp_method;

    ReplacePage: (this: *IShellPropSheetExt, uPageID: EXPPS, pfnReplaceWith: LPFNSVADDPROPSHEETPAGE, lParam: LPARAM) -> HRESULT #cpp_method;
}

IShellPropSheetExt_AddPages :: inline (this: *IShellPropSheetExt, pfnAddPage: LPFNSVADDPROPSHEETPAGE, lParam: LPARAM) -> HRESULT { return this.ishellpropsheetext_vtable.AddPages(this, pfnAddPage, lParam); }

IShellPropSheetExt_ReplacePage :: inline (this: *IShellPropSheetExt, uPageID: EXPPS, pfnReplaceWith: LPFNSVADDPROPSHEETPAGE, lParam: LPARAM) -> HRESULT { return this.ishellpropsheetext_vtable.ReplacePage(this, uPageID, pfnReplaceWith, lParam); }

vtable :: (obj: *IShellPropSheetExt) -> *IShellPropSheetExt_VTable { return obj.ishellpropsheetext_vtable; }



IRemoteComputer_UUID :: "000214FE-0000-0000-C000-000000000046";
IRemoteComputer :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iremotecomputer_vtable: *IRemoteComputer_VTable;
}
IRemoteComputer_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Initialize: (this: *IRemoteComputer, pszMachine: *s16, bEnumerating: BOOL) -> HRESULT #cpp_method;
}
IRemoteComputer_Initialize :: inline (this: *IRemoteComputer, pszMachine: *s16, bEnumerating: BOOL) -> HRESULT { return this.iremotecomputer_vtable.Initialize(this, pszMachine, bEnumerating); }

vtable :: (obj: *IRemoteComputer) -> *IRemoteComputer_VTable { return obj.iremotecomputer_vtable; }



IQueryContinue_UUID :: "7307055c-b24a-486b-9f25-163e597a28a9";
IQueryContinue :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iquerycontinue_vtable: *IQueryContinue_VTable;
}
IQueryContinue_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    QueryContinue: (this: *IQueryContinue) -> HRESULT #cpp_method;
}
IQueryContinue_QueryContinue :: inline (this: *IQueryContinue) -> HRESULT { return this.iquerycontinue_vtable.QueryContinue(this); }

vtable :: (obj: *IQueryContinue) -> *IQueryContinue_VTable { return obj.iquerycontinue_vtable; }



IObjectWithCancelEvent_UUID :: "F279B885-0AE9-4b85-AC06-DDECF9408941";
IObjectWithCancelEvent :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iobjectwithcancelevent_vtable: *IObjectWithCancelEvent_VTable;
}
IObjectWithCancelEvent_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetCancelEvent: (this: *IObjectWithCancelEvent, phEvent: *HANDLE) -> HRESULT #cpp_method;
}
IObjectWithCancelEvent_GetCancelEvent :: inline (this: *IObjectWithCancelEvent, phEvent: *HANDLE) -> HRESULT { return this.iobjectwithcancelevent_vtable.GetCancelEvent(this, phEvent); }

vtable :: (obj: *IObjectWithCancelEvent) -> *IObjectWithCancelEvent_VTable { return obj.iobjectwithcancelevent_vtable; }



IUserNotification_UUID :: "ba9711ba-5893-4787-a7e1-41277151550b";
IUserNotification :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iusernotification_vtable: *IUserNotification_VTable;
}
IUserNotification_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SetBalloonInfo: (this: *IUserNotification, pszTitle: *s16, pszText: *s16, dwInfoFlags: u32) -> HRESULT #cpp_method;

    SetBalloonRetry: (this: *IUserNotification, dwShowTime: u32, dwInterval: u32, cRetryCount: u32) -> HRESULT #cpp_method;

    SetIconInfo: (this: *IUserNotification, hIcon: HICON, pszToolTip: *s16) -> HRESULT #cpp_method;

    Show: (this: *IUserNotification, pqc: *IQueryContinue, dwContinuePollInterval: u32) -> HRESULT #cpp_method;

    PlaySound: (this: *IUserNotification, pszSoundName: *s16) -> HRESULT #cpp_method;
}

IUserNotification_SetBalloonInfo :: inline (this: *IUserNotification, pszTitle: *s16, pszText: *s16, dwInfoFlags: u32) -> HRESULT { return this.iusernotification_vtable.SetBalloonInfo(this, pszTitle, pszText, dwInfoFlags); }

IUserNotification_SetBalloonRetry :: inline (this: *IUserNotification, dwShowTime: u32, dwInterval: u32, cRetryCount: u32) -> HRESULT { return this.iusernotification_vtable.SetBalloonRetry(this, dwShowTime, dwInterval, cRetryCount); }

IUserNotification_SetIconInfo :: inline (this: *IUserNotification, hIcon: HICON, pszToolTip: *s16) -> HRESULT { return this.iusernotification_vtable.SetIconInfo(this, hIcon, pszToolTip); }

IUserNotification_Show :: inline (this: *IUserNotification, pqc: *IQueryContinue, dwContinuePollInterval: u32) -> HRESULT { return this.iusernotification_vtable.Show(this, pqc, dwContinuePollInterval); }

IUserNotification_PlaySound :: inline (this: *IUserNotification, pszSoundName: *s16) -> HRESULT { return this.iusernotification_vtable.PlaySound(this, pszSoundName); }

vtable :: (obj: *IUserNotification) -> *IUserNotification_VTable { return obj.iusernotification_vtable; }



IItemNameLimits_UUID :: "1df0d7f1-b267-4d28-8b10-12e23202a5c4";
IItemNameLimits :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iitemnamelimits_vtable: *IItemNameLimits_VTable;
}
IItemNameLimits_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetValidCharacters: (this: *IItemNameLimits, ppwszValidChars: **s16, ppwszInvalidChars: **s16) -> HRESULT #cpp_method;

    GetMaxLength: (this: *IItemNameLimits, pszName: *s16, piMaxNameLen: *s32) -> HRESULT #cpp_method;
}

IItemNameLimits_GetValidCharacters :: inline (this: *IItemNameLimits, ppwszValidChars: **s16, ppwszInvalidChars: **s16) -> HRESULT { return this.iitemnamelimits_vtable.GetValidCharacters(this, ppwszValidChars, ppwszInvalidChars); }

IItemNameLimits_GetMaxLength :: inline (this: *IItemNameLimits, pszName: *s16, piMaxNameLen: *s32) -> HRESULT { return this.iitemnamelimits_vtable.GetMaxLength(this, pszName, piMaxNameLen); }

vtable :: (obj: *IItemNameLimits) -> *IItemNameLimits_VTable { return obj.iitemnamelimits_vtable; }



ISearchFolderItemFactory_UUID :: "a0ffbc28-5482-4366-be27-3e81e78e06c2";
ISearchFolderItemFactory :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; isearchfolderitemfactory_vtable: *ISearchFolderItemFactory_VTable;
}
ISearchFolderItemFactory_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SetDisplayName: (this: *ISearchFolderItemFactory, pszDisplayName: *s16) -> HRESULT #cpp_method;

    SetFolderTypeID: (this: *ISearchFolderItemFactory, ftid: FOLDERTYPEID) -> HRESULT #cpp_method;

    SetFolderLogicalViewMode: (this: *ISearchFolderItemFactory, flvm: FOLDERLOGICALVIEWMODE) -> HRESULT #cpp_method;

    SetIconSize: (this: *ISearchFolderItemFactory, iIconSize: s32) -> HRESULT #cpp_method;

    SetVisibleColumns: (this: *ISearchFolderItemFactory, cVisibleColumns: u32, rgKey: *PROPERTYKEY) -> HRESULT #cpp_method;

    SetSortColumns: (this: *ISearchFolderItemFactory, cSortColumns: u32, rgSortColumns: *SORTCOLUMN) -> HRESULT #cpp_method;

    SetGroupColumn: (this: *ISearchFolderItemFactory, keyGroup: *PROPERTYKEY) -> HRESULT #cpp_method;

    SetStacks: (this: *ISearchFolderItemFactory, cStackKeys: u32, rgStackKeys: *PROPERTYKEY) -> HRESULT #cpp_method;

    SetScope: (this: *ISearchFolderItemFactory, psiaScope: *IShellItemArray) -> HRESULT #cpp_method;

    SetCondition: (this: *ISearchFolderItemFactory, pCondition: *ICondition) -> HRESULT #cpp_method;

    GetShellItem: (this: *ISearchFolderItemFactory, riid: *IID, ppv: **void) -> HRESULT #cpp_method;

    GetIDList: (this: *ISearchFolderItemFactory, ppidl: *LPITEMIDLIST) -> HRESULT #cpp_method;
}

ISearchFolderItemFactory_SetDisplayName :: inline (this: *ISearchFolderItemFactory, pszDisplayName: *s16) -> HRESULT { return this.isearchfolderitemfactory_vtable.SetDisplayName(this, pszDisplayName); }

ISearchFolderItemFactory_SetFolderTypeID :: inline (this: *ISearchFolderItemFactory, ftid: FOLDERTYPEID) -> HRESULT { return this.isearchfolderitemfactory_vtable.SetFolderTypeID(this, ftid); }

ISearchFolderItemFactory_SetFolderLogicalViewMode :: inline (this: *ISearchFolderItemFactory, flvm: FOLDERLOGICALVIEWMODE) -> HRESULT { return this.isearchfolderitemfactory_vtable.SetFolderLogicalViewMode(this, flvm); }

ISearchFolderItemFactory_SetIconSize :: inline (this: *ISearchFolderItemFactory, iIconSize: s32) -> HRESULT { return this.isearchfolderitemfactory_vtable.SetIconSize(this, iIconSize); }

ISearchFolderItemFactory_SetVisibleColumns :: inline (this: *ISearchFolderItemFactory, cVisibleColumns: u32, rgKey: *PROPERTYKEY) -> HRESULT { return this.isearchfolderitemfactory_vtable.SetVisibleColumns(this, cVisibleColumns, rgKey); }

ISearchFolderItemFactory_SetSortColumns :: inline (this: *ISearchFolderItemFactory, cSortColumns: u32, rgSortColumns: *SORTCOLUMN) -> HRESULT { return this.isearchfolderitemfactory_vtable.SetSortColumns(this, cSortColumns, rgSortColumns); }

ISearchFolderItemFactory_SetGroupColumn :: inline (this: *ISearchFolderItemFactory, keyGroup: *PROPERTYKEY) -> HRESULT { return this.isearchfolderitemfactory_vtable.SetGroupColumn(this, keyGroup); }

ISearchFolderItemFactory_SetStacks :: inline (this: *ISearchFolderItemFactory, cStackKeys: u32, rgStackKeys: *PROPERTYKEY) -> HRESULT { return this.isearchfolderitemfactory_vtable.SetStacks(this, cStackKeys, rgStackKeys); }

ISearchFolderItemFactory_SetScope :: inline (this: *ISearchFolderItemFactory, psiaScope: *IShellItemArray) -> HRESULT { return this.isearchfolderitemfactory_vtable.SetScope(this, psiaScope); }

ISearchFolderItemFactory_SetCondition :: inline (this: *ISearchFolderItemFactory, pCondition: *ICondition) -> HRESULT { return this.isearchfolderitemfactory_vtable.SetCondition(this, pCondition); }

ISearchFolderItemFactory_GetShellItem :: inline (this: *ISearchFolderItemFactory, riid: *IID, ppv: **void) -> HRESULT { return this.isearchfolderitemfactory_vtable.GetShellItem(this, riid, ppv); }

ISearchFolderItemFactory_GetIDList :: inline (this: *ISearchFolderItemFactory, ppidl: *LPITEMIDLIST) -> HRESULT { return this.isearchfolderitemfactory_vtable.GetIDList(this, ppidl); }

vtable :: (obj: *ISearchFolderItemFactory) -> *ISearchFolderItemFactory_VTable { return obj.isearchfolderitemfactory_vtable; }



IExtractImage_UUID :: "BB2E617C-0920-11d1-9A0B-00C04FC2D6C1";
IExtractImage :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iextractimage_vtable: *IExtractImage_VTable;
}
IExtractImage_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetLocation: (this: *IExtractImage, pszPathBuffer: *s16, cch: u32, pdwPriority: *u32, prgSize: *SIZE, dwRecClrDepth: u32, pdwFlags: *u32) -> HRESULT #cpp_method;

    Extract: (this: *IExtractImage, phBmpThumbnail: *HBITMAP) -> HRESULT #cpp_method;
}

IExtractImage_GetLocation :: inline (this: *IExtractImage, pszPathBuffer: *s16, cch: u32, pdwPriority: *u32, prgSize: *SIZE, dwRecClrDepth: u32, pdwFlags: *u32) -> HRESULT { return this.iextractimage_vtable.GetLocation(this, pszPathBuffer, cch, pdwPriority, prgSize, dwRecClrDepth, pdwFlags); }

IExtractImage_Extract :: inline (this: *IExtractImage, phBmpThumbnail: *HBITMAP) -> HRESULT { return this.iextractimage_vtable.Extract(this, phBmpThumbnail); }

vtable :: (obj: *IExtractImage) -> *IExtractImage_VTable { return obj.iextractimage_vtable; }



IExtractImage2_UUID :: "953BB1EE-93B4-11d1-98A3-00C04FB687DA";
IExtractImage2 :: struct {
    #as using iextractimage: IExtractImage;
    #place iextractimage; iextractimage2_vtable: *IExtractImage2_VTable;
}
IExtractImage2_VTable :: struct #type_info_none {
    using iextractimage: IExtractImage_VTable;
    GetDateStamp: (this: *IExtractImage2, pDateStamp: *FILETIME) -> HRESULT #cpp_method;
}
IExtractImage2_GetDateStamp :: inline (this: *IExtractImage2, pDateStamp: *FILETIME) -> HRESULT { return this.iextractimage2_vtable.GetDateStamp(this, pDateStamp); }

vtable :: (obj: *IExtractImage2) -> *IExtractImage2_VTable { return obj.iextractimage2_vtable; }



IThumbnailHandlerFactory_UUID :: "e35b4b2e-00da-4bc1-9f13-38bc11f5d417";
IThumbnailHandlerFactory :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ithumbnailhandlerfactory_vtable: *IThumbnailHandlerFactory_VTable;
}
IThumbnailHandlerFactory_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetThumbnailHandler: (this: *IThumbnailHandlerFactory, pidlChild: LPCITEMIDLIST, pbc: *IBindCtx, riid: *IID, ppv: **void) -> HRESULT #cpp_method;
}
IThumbnailHandlerFactory_GetThumbnailHandler :: inline (this: *IThumbnailHandlerFactory, pidlChild: LPCITEMIDLIST, pbc: *IBindCtx, riid: *IID, ppv: **void) -> HRESULT { return this.ithumbnailhandlerfactory_vtable.GetThumbnailHandler(this, pidlChild, pbc, riid, ppv); }

vtable :: (obj: *IThumbnailHandlerFactory) -> *IThumbnailHandlerFactory_VTable { return obj.ithumbnailhandlerfactory_vtable; }



IParentAndItem_UUID :: "b3a4b685-b685-4805-99d9-5dead2873236";
IParentAndItem :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iparentanditem_vtable: *IParentAndItem_VTable;
}
IParentAndItem_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SetParentAndItem: (this: *IParentAndItem, pidlParent: LPCITEMIDLIST, psf: *IShellFolder, pidlChild: LPCITEMIDLIST) -> HRESULT #cpp_method;

    GetParentAndItem: (this: *IParentAndItem, ppidlParent: *LPITEMIDLIST, ppsf: **IShellFolder, ppidlChild: *LPITEMIDLIST) -> HRESULT #cpp_method;
}

IParentAndItem_SetParentAndItem :: inline (this: *IParentAndItem, pidlParent: LPCITEMIDLIST, psf: *IShellFolder, pidlChild: LPCITEMIDLIST) -> HRESULT { return this.iparentanditem_vtable.SetParentAndItem(this, pidlParent, psf, pidlChild); }

IParentAndItem_GetParentAndItem :: inline (this: *IParentAndItem, ppidlParent: *LPITEMIDLIST, ppsf: **IShellFolder, ppidlChild: *LPITEMIDLIST) -> HRESULT { return this.iparentanditem_vtable.GetParentAndItem(this, ppidlParent, ppsf, ppidlChild); }

vtable :: (obj: *IParentAndItem) -> *IParentAndItem_VTable { return obj.iparentanditem_vtable; }



IDockingWindow_UUID :: "012dd920-7b26-11d0-8ca9-00a0c92dbfe8";
IDockingWindow :: struct {
    #as using iolewindow: IOleWindow;
    #place iolewindow; idockingwindow_vtable: *IDockingWindow_VTable;
}
IDockingWindow_VTable :: struct #type_info_none {
    using iolewindow: IOleWindow_VTable;
    ShowDW: (this: *IDockingWindow, fShow: BOOL) -> HRESULT #cpp_method;

    CloseDW: (this: *IDockingWindow, dwReserved: u32) -> HRESULT #cpp_method;

    ResizeBorderDW: (this: *IDockingWindow, prcBorder: LPCRECT, punkToolbarSite: *IUnknown, fReserved: BOOL) -> HRESULT #cpp_method;
}

IDockingWindow_ShowDW :: inline (this: *IDockingWindow, fShow: BOOL) -> HRESULT { return this.idockingwindow_vtable.ShowDW(this, fShow); }

IDockingWindow_CloseDW :: inline (this: *IDockingWindow, dwReserved: u32) -> HRESULT { return this.idockingwindow_vtable.CloseDW(this, dwReserved); }

IDockingWindow_ResizeBorderDW :: inline (this: *IDockingWindow, prcBorder: LPCRECT, punkToolbarSite: *IUnknown, fReserved: BOOL) -> HRESULT { return this.idockingwindow_vtable.ResizeBorderDW(this, prcBorder, punkToolbarSite, fReserved); }

vtable :: (obj: *IDockingWindow) -> *IDockingWindow_VTable { return obj.idockingwindow_vtable; }


DESKBANDINFO :: struct {
    dwMask:      u32;
    ptMinSize:   POINTL;
    ptMaxSize:   POINTL;
    ptIntegral:  POINTL;
    ptActual:    POINTL;
    wszTitle:    [256] s16;
    dwModeFlags: u32;
    crBkgnd:     COLORREF;
}

tagDESKBANDCID :: enum s32 {
    BANDINFOCHANGED :: 0;
    SHOWONLY        :: 1;
    MAXIMIZEBAND    :: 2;
    PUSHCHEVRON     :: 3;
    DELAYINIT       :: 4;
    FINISHINIT      :: 5;
    SETWINDOWTHEME  :: 6;
    PERMITAUTOHIDE  :: 7;

    DBID_BANDINFOCHANGED :: BANDINFOCHANGED;
    DBID_SHOWONLY        :: SHOWONLY;
    DBID_MAXIMIZEBAND    :: MAXIMIZEBAND;
    DBID_PUSHCHEVRON     :: PUSHCHEVRON;
    DBID_DELAYINIT       :: DELAYINIT;
    DBID_FINISHINIT      :: FINISHINIT;
    DBID_SETWINDOWTHEME  :: SETWINDOWTHEME;
    DBID_PERMITAUTOHIDE  :: PERMITAUTOHIDE;
}


IDeskBand_UUID :: "EB0FE172-1A3A-11D0-89B3-00A0C90A90AC";
IDeskBand :: struct {
    #as using idockingwindow: IDockingWindow;
    #place idockingwindow; ideskband_vtable: *IDeskBand_VTable;
}
IDeskBand_VTable :: struct #type_info_none {
    using idockingwindow: IDockingWindow_VTable;
    GetBandInfo: (this: *IDeskBand, dwBandID: u32, dwViewMode: u32, pdbi: *DESKBANDINFO) -> HRESULT #cpp_method;
}
IDeskBand_GetBandInfo :: inline (this: *IDeskBand, dwBandID: u32, dwViewMode: u32, pdbi: *DESKBANDINFO) -> HRESULT { return this.ideskband_vtable.GetBandInfo(this, dwBandID, dwViewMode, pdbi); }

vtable :: (obj: *IDeskBand) -> *IDeskBand_VTable { return obj.ideskband_vtable; }



IDeskBandInfo_UUID :: "77E425FC-CBF9-4307-BA6A-BB5727745661";
IDeskBandInfo :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ideskbandinfo_vtable: *IDeskBandInfo_VTable;
}
IDeskBandInfo_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetDefaultBandWidth: (this: *IDeskBandInfo, dwBandID: u32, dwViewMode: u32, pnWidth: *s32) -> HRESULT #cpp_method;
}
IDeskBandInfo_GetDefaultBandWidth :: inline (this: *IDeskBandInfo, dwBandID: u32, dwViewMode: u32, pnWidth: *s32) -> HRESULT { return this.ideskbandinfo_vtable.GetDefaultBandWidth(this, dwBandID, dwViewMode, pnWidth); }

vtable :: (obj: *IDeskBandInfo) -> *IDeskBandInfo_VTable { return obj.ideskbandinfo_vtable; }



ITaskbarList_UUID :: "56FDF342-FD6D-11d0-958A-006097C9A090";
ITaskbarList :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; itaskbarlist_vtable: *ITaskbarList_VTable;
}
ITaskbarList_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    HrInit: (this: *ITaskbarList) -> HRESULT #cpp_method;

    AddTab: (this: *ITaskbarList, hwnd: HWND) -> HRESULT #cpp_method;

    DeleteTab: (this: *ITaskbarList, hwnd: HWND) -> HRESULT #cpp_method;

    ActivateTab: (this: *ITaskbarList, hwnd: HWND) -> HRESULT #cpp_method;

    SetActiveAlt: (this: *ITaskbarList, hwnd: HWND) -> HRESULT #cpp_method;
}

ITaskbarList_HrInit :: inline (this: *ITaskbarList) -> HRESULT { return this.itaskbarlist_vtable.HrInit(this); }

ITaskbarList_AddTab :: inline (this: *ITaskbarList, hwnd: HWND) -> HRESULT { return this.itaskbarlist_vtable.AddTab(this, hwnd); }

ITaskbarList_DeleteTab :: inline (this: *ITaskbarList, hwnd: HWND) -> HRESULT { return this.itaskbarlist_vtable.DeleteTab(this, hwnd); }

ITaskbarList_ActivateTab :: inline (this: *ITaskbarList, hwnd: HWND) -> HRESULT { return this.itaskbarlist_vtable.ActivateTab(this, hwnd); }

ITaskbarList_SetActiveAlt :: inline (this: *ITaskbarList, hwnd: HWND) -> HRESULT { return this.itaskbarlist_vtable.SetActiveAlt(this, hwnd); }

vtable :: (obj: *ITaskbarList) -> *ITaskbarList_VTable { return obj.itaskbarlist_vtable; }



ITaskbarList2_UUID :: "602D4995-B13A-429b-A66E-1935E44F4317";
ITaskbarList2 :: struct {
    #as using itaskbarlist: ITaskbarList;
    #place itaskbarlist; itaskbarlist2_vtable: *ITaskbarList2_VTable;
}
ITaskbarList2_VTable :: struct #type_info_none {
    using itaskbarlist: ITaskbarList_VTable;
    MarkFullscreenWindow: (this: *ITaskbarList2, hwnd: HWND, fFullscreen: BOOL) -> HRESULT #cpp_method;
}
ITaskbarList2_MarkFullscreenWindow :: inline (this: *ITaskbarList2, hwnd: HWND, fFullscreen: BOOL) -> HRESULT { return this.itaskbarlist2_vtable.MarkFullscreenWindow(this, hwnd, fFullscreen); }

vtable :: (obj: *ITaskbarList2) -> *ITaskbarList2_VTable { return obj.itaskbarlist2_vtable; }


THUMBBUTTONFLAGS :: enum s32 {
    ENABLED        :: 0;
    DISABLED       :: 1;
    DISMISSONCLICK :: 2;
    NOBACKGROUND   :: 4;
    HIDDEN         :: 8;
    NONINTERACTIVE :: 16;

    THBF_ENABLED        :: ENABLED;
    THBF_DISABLED       :: DISABLED;
    THBF_DISMISSONCLICK :: DISMISSONCLICK;
    THBF_NOBACKGROUND   :: NOBACKGROUND;
    THBF_HIDDEN         :: HIDDEN;
    THBF_NONINTERACTIVE :: NONINTERACTIVE;
}

THUMBBUTTONMASK :: enum s32 {
    BITMAP  :: 1;
    ICON    :: 2;
    TOOLTIP :: 4;
    FLAGS   :: 8;

    THB_BITMAP  :: BITMAP;
    THB_ICON    :: ICON;
    THB_TOOLTIP :: TOOLTIP;
    THB_FLAGS   :: FLAGS;
}

THUMBBUTTON :: struct {
    dwMask:  THUMBBUTTONMASK;
    iId:     u32;
    iBitmap: u32;
    hIcon:   HICON;
    szTip:   [260] s16;
    dwFlags: THUMBBUTTONFLAGS;
}

TBPFLAG :: enum s32 {
    NOPROGRESS    :: 0;
    INDETERMINATE :: 1;
    NORMAL        :: 2;
    ERROR         :: 4;
    PAUSED        :: 8;

    TBPF_NOPROGRESS    :: NOPROGRESS;
    TBPF_INDETERMINATE :: INDETERMINATE;
    TBPF_NORMAL        :: NORMAL;
    TBPF_ERROR         :: ERROR;
    TBPF_PAUSED        :: PAUSED;
}


ITaskbarList3_UUID :: "ea1afb91-9e28-4b86-90e9-9e9f8a5eefaf";
ITaskbarList3 :: struct {
    #as using itaskbarlist2: ITaskbarList2;
    #place itaskbarlist2; itaskbarlist3_vtable: *ITaskbarList3_VTable;
}
ITaskbarList3_VTable :: struct #type_info_none {
    using itaskbarlist2: ITaskbarList2_VTable;
    SetProgressValue: (this: *ITaskbarList3, hwnd: HWND, ullCompleted: u64, ullTotal: u64) -> HRESULT #cpp_method;

    SetProgressState: (this: *ITaskbarList3, hwnd: HWND, tbpFlags: TBPFLAG) -> HRESULT #cpp_method;

    RegisterTab: (this: *ITaskbarList3, hwndTab: HWND, hwndMDI: HWND) -> HRESULT #cpp_method;

    UnregisterTab: (this: *ITaskbarList3, hwndTab: HWND) -> HRESULT #cpp_method;

    SetTabOrder: (this: *ITaskbarList3, hwndTab: HWND, hwndInsertBefore: HWND) -> HRESULT #cpp_method;

    SetTabActive: (this: *ITaskbarList3, hwndTab: HWND, hwndMDI: HWND, dwReserved: u32) -> HRESULT #cpp_method;

    ThumbBarAddButtons: (this: *ITaskbarList3, hwnd: HWND, cButtons: u32, pButton: LPTHUMBBUTTON) -> HRESULT #cpp_method;

    ThumbBarUpdateButtons: (this: *ITaskbarList3, hwnd: HWND, cButtons: u32, pButton: LPTHUMBBUTTON) -> HRESULT #cpp_method;

    ThumbBarSetImageList: (this: *ITaskbarList3, hwnd: HWND, himl: HIMAGELIST) -> HRESULT #cpp_method;

    SetOverlayIcon: (this: *ITaskbarList3, hwnd: HWND, hIcon: HICON, pszDescription: *s16) -> HRESULT #cpp_method;

    SetThumbnailTooltip: (this: *ITaskbarList3, hwnd: HWND, pszTip: *s16) -> HRESULT #cpp_method;

    SetThumbnailClip: (this: *ITaskbarList3, hwnd: HWND, prcClip: *RECT) -> HRESULT #cpp_method;
}

ITaskbarList3_SetProgressValue :: inline (this: *ITaskbarList3, hwnd: HWND, ullCompleted: u64, ullTotal: u64) -> HRESULT { return this.itaskbarlist3_vtable.SetProgressValue(this, hwnd, ullCompleted, ullTotal); }

ITaskbarList3_SetProgressState :: inline (this: *ITaskbarList3, hwnd: HWND, tbpFlags: TBPFLAG) -> HRESULT { return this.itaskbarlist3_vtable.SetProgressState(this, hwnd, tbpFlags); }

ITaskbarList3_RegisterTab :: inline (this: *ITaskbarList3, hwndTab: HWND, hwndMDI: HWND) -> HRESULT { return this.itaskbarlist3_vtable.RegisterTab(this, hwndTab, hwndMDI); }

ITaskbarList3_UnregisterTab :: inline (this: *ITaskbarList3, hwndTab: HWND) -> HRESULT { return this.itaskbarlist3_vtable.UnregisterTab(this, hwndTab); }

ITaskbarList3_SetTabOrder :: inline (this: *ITaskbarList3, hwndTab: HWND, hwndInsertBefore: HWND) -> HRESULT { return this.itaskbarlist3_vtable.SetTabOrder(this, hwndTab, hwndInsertBefore); }

ITaskbarList3_SetTabActive :: inline (this: *ITaskbarList3, hwndTab: HWND, hwndMDI: HWND, dwReserved: u32) -> HRESULT { return this.itaskbarlist3_vtable.SetTabActive(this, hwndTab, hwndMDI, dwReserved); }

ITaskbarList3_ThumbBarAddButtons :: inline (this: *ITaskbarList3, hwnd: HWND, cButtons: u32, pButton: LPTHUMBBUTTON) -> HRESULT { return this.itaskbarlist3_vtable.ThumbBarAddButtons(this, hwnd, cButtons, pButton); }

ITaskbarList3_ThumbBarUpdateButtons :: inline (this: *ITaskbarList3, hwnd: HWND, cButtons: u32, pButton: LPTHUMBBUTTON) -> HRESULT { return this.itaskbarlist3_vtable.ThumbBarUpdateButtons(this, hwnd, cButtons, pButton); }

ITaskbarList3_ThumbBarSetImageList :: inline (this: *ITaskbarList3, hwnd: HWND, himl: HIMAGELIST) -> HRESULT { return this.itaskbarlist3_vtable.ThumbBarSetImageList(this, hwnd, himl); }

ITaskbarList3_SetOverlayIcon :: inline (this: *ITaskbarList3, hwnd: HWND, hIcon: HICON, pszDescription: *s16) -> HRESULT { return this.itaskbarlist3_vtable.SetOverlayIcon(this, hwnd, hIcon, pszDescription); }

ITaskbarList3_SetThumbnailTooltip :: inline (this: *ITaskbarList3, hwnd: HWND, pszTip: *s16) -> HRESULT { return this.itaskbarlist3_vtable.SetThumbnailTooltip(this, hwnd, pszTip); }

ITaskbarList3_SetThumbnailClip :: inline (this: *ITaskbarList3, hwnd: HWND, prcClip: *RECT) -> HRESULT { return this.itaskbarlist3_vtable.SetThumbnailClip(this, hwnd, prcClip); }

vtable :: (obj: *ITaskbarList3) -> *ITaskbarList3_VTable { return obj.itaskbarlist3_vtable; }


STPFLAG :: enum s32 {
    NONE                      :: 0;
    USEAPPTHUMBNAILALWAYS     :: 1;
    USEAPPTHUMBNAILWHENACTIVE :: 2;
    USEAPPPEEKALWAYS          :: 4;
    USEAPPPEEKWHENACTIVE      :: 8;

    STPF_NONE                      :: NONE;
    STPF_USEAPPTHUMBNAILALWAYS     :: USEAPPTHUMBNAILALWAYS;
    STPF_USEAPPTHUMBNAILWHENACTIVE :: USEAPPTHUMBNAILWHENACTIVE;
    STPF_USEAPPPEEKALWAYS          :: USEAPPPEEKALWAYS;
    STPF_USEAPPPEEKWHENACTIVE      :: USEAPPPEEKWHENACTIVE;
}


ITaskbarList4_UUID :: "c43dc798-95d1-4bea-9030-bb99e2983a1a";
ITaskbarList4 :: struct {
    #as using itaskbarlist3: ITaskbarList3;
    #place itaskbarlist3; itaskbarlist4_vtable: *ITaskbarList4_VTable;
}
ITaskbarList4_VTable :: struct #type_info_none {
    using itaskbarlist3: ITaskbarList3_VTable;
    SetTabProperties: (this: *ITaskbarList4, hwndTab: HWND, stpFlags: STPFLAG) -> HRESULT #cpp_method;
}
ITaskbarList4_SetTabProperties :: inline (this: *ITaskbarList4, hwndTab: HWND, stpFlags: STPFLAG) -> HRESULT { return this.itaskbarlist4_vtable.SetTabProperties(this, hwndTab, stpFlags); }

vtable :: (obj: *ITaskbarList4) -> *ITaskbarList4_VTable { return obj.itaskbarlist4_vtable; }



IExplorerBrowserEvents_UUID :: "361bbdc7-e6ee-4e13-be58-58e2240c810f";
IExplorerBrowserEvents :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iexplorerbrowserevents_vtable: *IExplorerBrowserEvents_VTable;
}
IExplorerBrowserEvents_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    OnNavigationPending: (this: *IExplorerBrowserEvents, pidlFolder: LPCITEMIDLIST) -> HRESULT #cpp_method;

    OnViewCreated: (this: *IExplorerBrowserEvents, psv: *IShellView) -> HRESULT #cpp_method;

    OnNavigationComplete: (this: *IExplorerBrowserEvents, pidlFolder: LPCITEMIDLIST) -> HRESULT #cpp_method;

    OnNavigationFailed: (this: *IExplorerBrowserEvents, pidlFolder: LPCITEMIDLIST) -> HRESULT #cpp_method;
}

IExplorerBrowserEvents_OnNavigationPending :: inline (this: *IExplorerBrowserEvents, pidlFolder: LPCITEMIDLIST) -> HRESULT { return this.iexplorerbrowserevents_vtable.OnNavigationPending(this, pidlFolder); }

IExplorerBrowserEvents_OnViewCreated :: inline (this: *IExplorerBrowserEvents, psv: *IShellView) -> HRESULT { return this.iexplorerbrowserevents_vtable.OnViewCreated(this, psv); }

IExplorerBrowserEvents_OnNavigationComplete :: inline (this: *IExplorerBrowserEvents, pidlFolder: LPCITEMIDLIST) -> HRESULT { return this.iexplorerbrowserevents_vtable.OnNavigationComplete(this, pidlFolder); }

IExplorerBrowserEvents_OnNavigationFailed :: inline (this: *IExplorerBrowserEvents, pidlFolder: LPCITEMIDLIST) -> HRESULT { return this.iexplorerbrowserevents_vtable.OnNavigationFailed(this, pidlFolder); }

vtable :: (obj: *IExplorerBrowserEvents) -> *IExplorerBrowserEvents_VTable { return obj.iexplorerbrowserevents_vtable; }


EXPLORER_BROWSER_OPTIONS :: enum s32 {
    NONE               :: 0;
    NAVIGATEONCE       :: 1;
    SHOWFRAMES         :: 2;
    ALWAYSNAVIGATE     :: 4;
    NOTRAVELLOG        :: 8;
    NOWRAPPERWINDOW    :: 16;
    HTMLSHAREPOINTVIEW :: 32;
    NOBORDER           :: 64;
    NOPERSISTVIEWSTATE :: 128;

    EBO_NONE               :: NONE;
    EBO_NAVIGATEONCE       :: NAVIGATEONCE;
    EBO_SHOWFRAMES         :: SHOWFRAMES;
    EBO_ALWAYSNAVIGATE     :: ALWAYSNAVIGATE;
    EBO_NOTRAVELLOG        :: NOTRAVELLOG;
    EBO_NOWRAPPERWINDOW    :: NOWRAPPERWINDOW;
    EBO_HTMLSHAREPOINTVIEW :: HTMLSHAREPOINTVIEW;
    EBO_NOBORDER           :: NOBORDER;
    EBO_NOPERSISTVIEWSTATE :: NOPERSISTVIEWSTATE;
}

EXPLORER_BROWSER_FILL_FLAGS :: enum s32 {
    NONE                 :: 0;
    SELECTFROMDATAOBJECT :: 256;
    NODROPTARGET         :: 512;

    EBF_NONE                 :: NONE;
    EBF_SELECTFROMDATAOBJECT :: SELECTFROMDATAOBJECT;
    EBF_NODROPTARGET         :: NODROPTARGET;
}


IExplorerBrowser_UUID :: "dfd3b6b5-c10c-4be9-85f6-a66969f402f6";
IExplorerBrowser :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iexplorerbrowser_vtable: *IExplorerBrowser_VTable;
}
IExplorerBrowser_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Initialize: (this: *IExplorerBrowser, hwndParent: HWND, prc: *RECT, pfs: *FOLDERSETTINGS) -> HRESULT #cpp_method;

    Destroy: (this: *IExplorerBrowser) -> HRESULT #cpp_method;

    SetRect: (this: *IExplorerBrowser, phdwp: *HDWP, rcBrowser: RECT) -> HRESULT #cpp_method;

    SetPropertyBag: (this: *IExplorerBrowser, pszPropertyBag: *s16) -> HRESULT #cpp_method;

    SetEmptyText: (this: *IExplorerBrowser, pszEmptyText: *s16) -> HRESULT #cpp_method;

    SetFolderSettings: (this: *IExplorerBrowser, pfs: *FOLDERSETTINGS) -> HRESULT #cpp_method;

    Advise: (this: *IExplorerBrowser, psbe: *IExplorerBrowserEvents, pdwCookie: *u32) -> HRESULT #cpp_method;

    Unadvise: (this: *IExplorerBrowser, dwCookie: u32) -> HRESULT #cpp_method;

    SetOptions: (this: *IExplorerBrowser, dwFlag: EXPLORER_BROWSER_OPTIONS) -> HRESULT #cpp_method;

    GetOptions: (this: *IExplorerBrowser, pdwFlag: *EXPLORER_BROWSER_OPTIONS) -> HRESULT #cpp_method;

    BrowseToIDList: (this: *IExplorerBrowser, pidl: LPCITEMIDLIST, uFlags: u32) -> HRESULT #cpp_method;

    BrowseToObject: (this: *IExplorerBrowser, punk: *IUnknown, uFlags: u32) -> HRESULT #cpp_method;

    FillFromObject: (this: *IExplorerBrowser, punk: *IUnknown, dwFlags: EXPLORER_BROWSER_FILL_FLAGS) -> HRESULT #cpp_method;

    RemoveAll: (this: *IExplorerBrowser) -> HRESULT #cpp_method;

    GetCurrentView: (this: *IExplorerBrowser, riid: *IID, ppv: **void) -> HRESULT #cpp_method;
}

IExplorerBrowser_Initialize :: inline (this: *IExplorerBrowser, hwndParent: HWND, prc: *RECT, pfs: *FOLDERSETTINGS) -> HRESULT { return this.iexplorerbrowser_vtable.Initialize(this, hwndParent, prc, pfs); }

IExplorerBrowser_Destroy :: inline (this: *IExplorerBrowser) -> HRESULT { return this.iexplorerbrowser_vtable.Destroy(this); }

IExplorerBrowser_SetRect :: inline (this: *IExplorerBrowser, phdwp: *HDWP, rcBrowser: RECT) -> HRESULT { return this.iexplorerbrowser_vtable.SetRect(this, phdwp, rcBrowser); }

IExplorerBrowser_SetPropertyBag :: inline (this: *IExplorerBrowser, pszPropertyBag: *s16) -> HRESULT { return this.iexplorerbrowser_vtable.SetPropertyBag(this, pszPropertyBag); }

IExplorerBrowser_SetEmptyText :: inline (this: *IExplorerBrowser, pszEmptyText: *s16) -> HRESULT { return this.iexplorerbrowser_vtable.SetEmptyText(this, pszEmptyText); }

IExplorerBrowser_SetFolderSettings :: inline (this: *IExplorerBrowser, pfs: *FOLDERSETTINGS) -> HRESULT { return this.iexplorerbrowser_vtable.SetFolderSettings(this, pfs); }

IExplorerBrowser_Advise :: inline (this: *IExplorerBrowser, psbe: *IExplorerBrowserEvents, pdwCookie: *u32) -> HRESULT { return this.iexplorerbrowser_vtable.Advise(this, psbe, pdwCookie); }

IExplorerBrowser_Unadvise :: inline (this: *IExplorerBrowser, dwCookie: u32) -> HRESULT { return this.iexplorerbrowser_vtable.Unadvise(this, dwCookie); }

IExplorerBrowser_SetOptions :: inline (this: *IExplorerBrowser, dwFlag: EXPLORER_BROWSER_OPTIONS) -> HRESULT { return this.iexplorerbrowser_vtable.SetOptions(this, dwFlag); }

IExplorerBrowser_GetOptions :: inline (this: *IExplorerBrowser, pdwFlag: *EXPLORER_BROWSER_OPTIONS) -> HRESULT { return this.iexplorerbrowser_vtable.GetOptions(this, pdwFlag); }

IExplorerBrowser_BrowseToIDList :: inline (this: *IExplorerBrowser, pidl: LPCITEMIDLIST, uFlags: u32) -> HRESULT { return this.iexplorerbrowser_vtable.BrowseToIDList(this, pidl, uFlags); }

IExplorerBrowser_BrowseToObject :: inline (this: *IExplorerBrowser, punk: *IUnknown, uFlags: u32) -> HRESULT { return this.iexplorerbrowser_vtable.BrowseToObject(this, punk, uFlags); }

IExplorerBrowser_FillFromObject :: inline (this: *IExplorerBrowser, punk: *IUnknown, dwFlags: EXPLORER_BROWSER_FILL_FLAGS) -> HRESULT { return this.iexplorerbrowser_vtable.FillFromObject(this, punk, dwFlags); }

IExplorerBrowser_RemoveAll :: inline (this: *IExplorerBrowser) -> HRESULT { return this.iexplorerbrowser_vtable.RemoveAll(this); }

IExplorerBrowser_GetCurrentView :: inline (this: *IExplorerBrowser, riid: *IID, ppv: **void) -> HRESULT { return this.iexplorerbrowser_vtable.GetCurrentView(this, riid, ppv); }

vtable :: (obj: *IExplorerBrowser) -> *IExplorerBrowser_VTable { return obj.iexplorerbrowser_vtable; }



IEnumObjects_UUID :: "2c1c7e2e-2d0e-4059-831e-1e6f82335c2e";
IEnumObjects :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ienumobjects_vtable: *IEnumObjects_VTable;
}
IEnumObjects_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Next: (this: *IEnumObjects, celt: u32, riid: *IID, rgelt: **void, pceltFetched: *u32) -> HRESULT #cpp_method;

    Skip: (this: *IEnumObjects, celt: u32) -> HRESULT #cpp_method;

    Reset: (this: *IEnumObjects) -> HRESULT #cpp_method;

    Clone: (this: *IEnumObjects, ppenum: **IEnumObjects) -> HRESULT #cpp_method;
}

IEnumObjects_Next :: inline (this: *IEnumObjects, celt: u32, riid: *IID, rgelt: **void, pceltFetched: *u32) -> HRESULT { return this.ienumobjects_vtable.Next(this, celt, riid, rgelt, pceltFetched); }

IEnumObjects_Skip :: inline (this: *IEnumObjects, celt: u32) -> HRESULT { return this.ienumobjects_vtable.Skip(this, celt); }

IEnumObjects_Reset :: inline (this: *IEnumObjects) -> HRESULT { return this.ienumobjects_vtable.Reset(this); }

IEnumObjects_Clone :: inline (this: *IEnumObjects, ppenum: **IEnumObjects) -> HRESULT { return this.ienumobjects_vtable.Clone(this, ppenum); }

vtable :: (obj: *IEnumObjects) -> *IEnumObjects_VTable { return obj.ienumobjects_vtable; }


OPPROGDLGF :: enum s32 {
    DEFAULT               :: 0;
    ENABLEPAUSE           :: 128;
    ALLOWUNDO             :: 256;
    DONTDISPLAYSOURCEPATH :: 512;
    DONTDISPLAYDESTPATH   :: 1024;
    NOMULTIDAYESTIMATES   :: 2048;
    DONTDISPLAYLOCATIONS  :: 4096;

    OPPROGDLG_DEFAULT               :: DEFAULT;
    OPPROGDLG_ENABLEPAUSE           :: ENABLEPAUSE;
    OPPROGDLG_ALLOWUNDO             :: ALLOWUNDO;
    OPPROGDLG_DONTDISPLAYSOURCEPATH :: DONTDISPLAYSOURCEPATH;
    OPPROGDLG_DONTDISPLAYDESTPATH   :: DONTDISPLAYDESTPATH;
    OPPROGDLG_NOMULTIDAYESTIMATES   :: NOMULTIDAYESTIMATES;
    OPPROGDLG_DONTDISPLAYLOCATIONS  :: DONTDISPLAYLOCATIONS;
}

OPPROGDLGF :: u32;

PDMODE :: enum s32 {
    DEFAULT        :: 0;
    RUN            :: 1;
    PREFLIGHT      :: 2;
    UNDOING        :: 4;
    ERRORSBLOCKING :: 8;
    INDETERMINATE  :: 16;

    PDM_DEFAULT        :: DEFAULT;
    PDM_RUN            :: RUN;
    PDM_PREFLIGHT      :: PREFLIGHT;
    PDM_UNDOING        :: UNDOING;
    PDM_ERRORSBLOCKING :: ERRORSBLOCKING;
    PDM_INDETERMINATE  :: INDETERMINATE;
}

PDMODE :: u32;

PDOPSTATUS :: enum s32 {
    RUNNING   :: 1;
    PAUSED    :: 2;
    CANCELLED :: 3;
    STOPPED   :: 4;
    ERRORS    :: 5;

    PDOPS_RUNNING   :: RUNNING;
    PDOPS_PAUSED    :: PAUSED;
    PDOPS_CANCELLED :: CANCELLED;
    PDOPS_STOPPED   :: STOPPED;
    PDOPS_ERRORS    :: ERRORS;
}


IOperationsProgressDialog_UUID :: "0C9FB851-E5C9-43EB-A370-F0677B13874C";
IOperationsProgressDialog :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ioperationsprogressdialog_vtable: *IOperationsProgressDialog_VTable;
}
IOperationsProgressDialog_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    StartProgressDialog: (this: *IOperationsProgressDialog, hwndOwner: HWND, flags: OPPROGDLGF) -> HRESULT #cpp_method;

    StopProgressDialog: (this: *IOperationsProgressDialog) -> HRESULT #cpp_method;

    SetOperation: (this: *IOperationsProgressDialog, action: SPACTION) -> HRESULT #cpp_method;

    SetMode: (this: *IOperationsProgressDialog, mode: PDMODE) -> HRESULT #cpp_method;

    UpdateProgress: (this: *IOperationsProgressDialog, ullPointsCurrent: u64, ullPointsTotal: u64, ullSizeCurrent: u64, ullSizeTotal: u64, ullItemsCurrent: u64, ullItemsTotal: u64) -> HRESULT #cpp_method;

    UpdateLocations: (this: *IOperationsProgressDialog, psiSource: *IShellItem, psiTarget: *IShellItem, psiItem: *IShellItem) -> HRESULT #cpp_method;

    ResetTimer: (this: *IOperationsProgressDialog) -> HRESULT #cpp_method;

    PauseTimer: (this: *IOperationsProgressDialog) -> HRESULT #cpp_method;

    ResumeTimer: (this: *IOperationsProgressDialog) -> HRESULT #cpp_method;

    GetMilliseconds: (this: *IOperationsProgressDialog, pullElapsed: *u64, pullRemaining: *u64) -> HRESULT #cpp_method;

    GetOperationStatus: (this: *IOperationsProgressDialog, popstatus: *PDOPSTATUS) -> HRESULT #cpp_method;
}

IOperationsProgressDialog_StartProgressDialog :: inline (this: *IOperationsProgressDialog, hwndOwner: HWND, flags: OPPROGDLGF) -> HRESULT { return this.ioperationsprogressdialog_vtable.StartProgressDialog(this, hwndOwner, flags); }

IOperationsProgressDialog_StopProgressDialog :: inline (this: *IOperationsProgressDialog) -> HRESULT { return this.ioperationsprogressdialog_vtable.StopProgressDialog(this); }

IOperationsProgressDialog_SetOperation :: inline (this: *IOperationsProgressDialog, action: SPACTION) -> HRESULT { return this.ioperationsprogressdialog_vtable.SetOperation(this, action); }

IOperationsProgressDialog_SetMode :: inline (this: *IOperationsProgressDialog, mode: PDMODE) -> HRESULT { return this.ioperationsprogressdialog_vtable.SetMode(this, mode); }

IOperationsProgressDialog_UpdateProgress :: inline (this: *IOperationsProgressDialog, ullPointsCurrent: u64, ullPointsTotal: u64, ullSizeCurrent: u64, ullSizeTotal: u64, ullItemsCurrent: u64, ullItemsTotal: u64) -> HRESULT { return this.ioperationsprogressdialog_vtable.UpdateProgress(this, ullPointsCurrent, ullPointsTotal, ullSizeCurrent, ullSizeTotal, ullItemsCurrent, ullItemsTotal); }

IOperationsProgressDialog_UpdateLocations :: inline (this: *IOperationsProgressDialog, psiSource: *IShellItem, psiTarget: *IShellItem, psiItem: *IShellItem) -> HRESULT { return this.ioperationsprogressdialog_vtable.UpdateLocations(this, psiSource, psiTarget, psiItem); }

IOperationsProgressDialog_ResetTimer :: inline (this: *IOperationsProgressDialog) -> HRESULT { return this.ioperationsprogressdialog_vtable.ResetTimer(this); }

IOperationsProgressDialog_PauseTimer :: inline (this: *IOperationsProgressDialog) -> HRESULT { return this.ioperationsprogressdialog_vtable.PauseTimer(this); }

IOperationsProgressDialog_ResumeTimer :: inline (this: *IOperationsProgressDialog) -> HRESULT { return this.ioperationsprogressdialog_vtable.ResumeTimer(this); }

IOperationsProgressDialog_GetMilliseconds :: inline (this: *IOperationsProgressDialog, pullElapsed: *u64, pullRemaining: *u64) -> HRESULT { return this.ioperationsprogressdialog_vtable.GetMilliseconds(this, pullElapsed, pullRemaining); }

IOperationsProgressDialog_GetOperationStatus :: inline (this: *IOperationsProgressDialog, popstatus: *PDOPSTATUS) -> HRESULT { return this.ioperationsprogressdialog_vtable.GetOperationStatus(this, popstatus); }

vtable :: (obj: *IOperationsProgressDialog) -> *IOperationsProgressDialog_VTable { return obj.ioperationsprogressdialog_vtable; }



IIOCancelInformation_UUID :: "f5b0bf81-8cb5-4b1b-9449-1a159e0c733c";
IIOCancelInformation :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iiocancelinformation_vtable: *IIOCancelInformation_VTable;
}
IIOCancelInformation_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SetCancelInformation: (this: *IIOCancelInformation, dwThreadID: u32, uMsgCancel: u32) -> HRESULT #cpp_method;

    GetCancelInformation: (this: *IIOCancelInformation, pdwThreadID: *u32, puMsgCancel: *u32) -> HRESULT #cpp_method;
}

IIOCancelInformation_SetCancelInformation :: inline (this: *IIOCancelInformation, dwThreadID: u32, uMsgCancel: u32) -> HRESULT { return this.iiocancelinformation_vtable.SetCancelInformation(this, dwThreadID, uMsgCancel); }

IIOCancelInformation_GetCancelInformation :: inline (this: *IIOCancelInformation, pdwThreadID: *u32, puMsgCancel: *u32) -> HRESULT { return this.iiocancelinformation_vtable.GetCancelInformation(this, pdwThreadID, puMsgCancel); }

vtable :: (obj: *IIOCancelInformation) -> *IIOCancelInformation_VTable { return obj.iiocancelinformation_vtable; }



IFileOperation_UUID :: "947aab5f-0a5c-4c13-b4d6-4bf7836fc9f8";
IFileOperation :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ifileoperation_vtable: *IFileOperation_VTable;
}
IFileOperation_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Advise: (this: *IFileOperation, pfops: *IFileOperationProgressSink, pdwCookie: *u32) -> HRESULT #cpp_method;

    Unadvise: (this: *IFileOperation, dwCookie: u32) -> HRESULT #cpp_method;

    SetOperationFlags: (this: *IFileOperation, dwOperationFlags: u32) -> HRESULT #cpp_method;

    SetProgressMessage: (this: *IFileOperation, pszMessage: *s16) -> HRESULT #cpp_method;

    SetProgressDialog: (this: *IFileOperation, popd: *IOperationsProgressDialog) -> HRESULT #cpp_method;

    SetProperties: (this: *IFileOperation, pproparray: *IPropertyChangeArray) -> HRESULT #cpp_method;

    SetOwnerWindow: (this: *IFileOperation, hwndOwner: HWND) -> HRESULT #cpp_method;

    ApplyPropertiesToItem: (this: *IFileOperation, psiItem: *IShellItem) -> HRESULT #cpp_method;

    ApplyPropertiesToItems: (this: *IFileOperation, punkItems: *IUnknown) -> HRESULT #cpp_method;

    RenameItem: (this: *IFileOperation, psiItem: *IShellItem, pszNewName: *s16, pfopsItem: *IFileOperationProgressSink) -> HRESULT #cpp_method;

    RenameItems: (this: *IFileOperation, pUnkItems: *IUnknown, pszNewName: *s16) -> HRESULT #cpp_method;

    MoveItem: (this: *IFileOperation, psiItem: *IShellItem, psiDestinationFolder: *IShellItem, pszNewName: *s16, pfopsItem: *IFileOperationProgressSink) -> HRESULT #cpp_method;

    MoveItems: (this: *IFileOperation, punkItems: *IUnknown, psiDestinationFolder: *IShellItem) -> HRESULT #cpp_method;

    CopyItem: (this: *IFileOperation, psiItem: *IShellItem, psiDestinationFolder: *IShellItem, pszCopyName: *s16, pfopsItem: *IFileOperationProgressSink) -> HRESULT #cpp_method;

    CopyItems: (this: *IFileOperation, punkItems: *IUnknown, psiDestinationFolder: *IShellItem) -> HRESULT #cpp_method;

    DeleteItem: (this: *IFileOperation, psiItem: *IShellItem, pfopsItem: *IFileOperationProgressSink) -> HRESULT #cpp_method;

    DeleteItems: (this: *IFileOperation, punkItems: *IUnknown) -> HRESULT #cpp_method;

    NewItem: (this: *IFileOperation, psiDestinationFolder: *IShellItem, dwFileAttributes: u32, pszName: *s16, pszTemplateName: *s16, pfopsItem: *IFileOperationProgressSink) -> HRESULT #cpp_method;

    PerformOperations: (this: *IFileOperation) -> HRESULT #cpp_method;

    GetAnyOperationsAborted: (this: *IFileOperation, pfAnyOperationsAborted: *BOOL) -> HRESULT #cpp_method;
}

IFileOperation_Advise :: inline (this: *IFileOperation, pfops: *IFileOperationProgressSink, pdwCookie: *u32) -> HRESULT { return this.ifileoperation_vtable.Advise(this, pfops, pdwCookie); }

IFileOperation_Unadvise :: inline (this: *IFileOperation, dwCookie: u32) -> HRESULT { return this.ifileoperation_vtable.Unadvise(this, dwCookie); }

IFileOperation_SetOperationFlags :: inline (this: *IFileOperation, dwOperationFlags: u32) -> HRESULT { return this.ifileoperation_vtable.SetOperationFlags(this, dwOperationFlags); }

IFileOperation_SetProgressMessage :: inline (this: *IFileOperation, pszMessage: *s16) -> HRESULT { return this.ifileoperation_vtable.SetProgressMessage(this, pszMessage); }

IFileOperation_SetProgressDialog :: inline (this: *IFileOperation, popd: *IOperationsProgressDialog) -> HRESULT { return this.ifileoperation_vtable.SetProgressDialog(this, popd); }

IFileOperation_SetProperties :: inline (this: *IFileOperation, pproparray: *IPropertyChangeArray) -> HRESULT { return this.ifileoperation_vtable.SetProperties(this, pproparray); }

IFileOperation_SetOwnerWindow :: inline (this: *IFileOperation, hwndOwner: HWND) -> HRESULT { return this.ifileoperation_vtable.SetOwnerWindow(this, hwndOwner); }

IFileOperation_ApplyPropertiesToItem :: inline (this: *IFileOperation, psiItem: *IShellItem) -> HRESULT { return this.ifileoperation_vtable.ApplyPropertiesToItem(this, psiItem); }

IFileOperation_ApplyPropertiesToItems :: inline (this: *IFileOperation, punkItems: *IUnknown) -> HRESULT { return this.ifileoperation_vtable.ApplyPropertiesToItems(this, punkItems); }

IFileOperation_RenameItem :: inline (this: *IFileOperation, psiItem: *IShellItem, pszNewName: *s16, pfopsItem: *IFileOperationProgressSink) -> HRESULT { return this.ifileoperation_vtable.RenameItem(this, psiItem, pszNewName, pfopsItem); }

IFileOperation_RenameItems :: inline (this: *IFileOperation, pUnkItems: *IUnknown, pszNewName: *s16) -> HRESULT { return this.ifileoperation_vtable.RenameItems(this, pUnkItems, pszNewName); }

IFileOperation_MoveItem :: inline (this: *IFileOperation, psiItem: *IShellItem, psiDestinationFolder: *IShellItem, pszNewName: *s16, pfopsItem: *IFileOperationProgressSink) -> HRESULT { return this.ifileoperation_vtable.MoveItem(this, psiItem, psiDestinationFolder, pszNewName, pfopsItem); }

IFileOperation_MoveItems :: inline (this: *IFileOperation, punkItems: *IUnknown, psiDestinationFolder: *IShellItem) -> HRESULT { return this.ifileoperation_vtable.MoveItems(this, punkItems, psiDestinationFolder); }

IFileOperation_CopyItem :: inline (this: *IFileOperation, psiItem: *IShellItem, psiDestinationFolder: *IShellItem, pszCopyName: *s16, pfopsItem: *IFileOperationProgressSink) -> HRESULT { return this.ifileoperation_vtable.CopyItem(this, psiItem, psiDestinationFolder, pszCopyName, pfopsItem); }

IFileOperation_CopyItems :: inline (this: *IFileOperation, punkItems: *IUnknown, psiDestinationFolder: *IShellItem) -> HRESULT { return this.ifileoperation_vtable.CopyItems(this, punkItems, psiDestinationFolder); }

IFileOperation_DeleteItem :: inline (this: *IFileOperation, psiItem: *IShellItem, pfopsItem: *IFileOperationProgressSink) -> HRESULT { return this.ifileoperation_vtable.DeleteItem(this, psiItem, pfopsItem); }

IFileOperation_DeleteItems :: inline (this: *IFileOperation, punkItems: *IUnknown) -> HRESULT { return this.ifileoperation_vtable.DeleteItems(this, punkItems); }

IFileOperation_NewItem :: inline (this: *IFileOperation, psiDestinationFolder: *IShellItem, dwFileAttributes: u32, pszName: *s16, pszTemplateName: *s16, pfopsItem: *IFileOperationProgressSink) -> HRESULT { return this.ifileoperation_vtable.NewItem(this, psiDestinationFolder, dwFileAttributes, pszName, pszTemplateName, pfopsItem); }

IFileOperation_PerformOperations :: inline (this: *IFileOperation) -> HRESULT { return this.ifileoperation_vtable.PerformOperations(this); }

IFileOperation_GetAnyOperationsAborted :: inline (this: *IFileOperation, pfAnyOperationsAborted: *BOOL) -> HRESULT { return this.ifileoperation_vtable.GetAnyOperationsAborted(this, pfAnyOperationsAborted); }

vtable :: (obj: *IFileOperation) -> *IFileOperation_VTable { return obj.ifileoperation_vtable; }


FILE_OPERATION_FLAGS2 :: enum s32 {
    NONE                    :: 0;
    MERGEFOLDERSONCOLLISION :: 1;

    FOF2_NONE                    :: NONE;
    FOF2_MERGEFOLDERSONCOLLISION :: MERGEFOLDERSONCOLLISION;
}


IFileOperation2_UUID :: "cd8f23c1-8f61-4916-909d-55bdd0918753";
IFileOperation2 :: struct {
    #as using ifileoperation: IFileOperation;
    #place ifileoperation; ifileoperation2_vtable: *IFileOperation2_VTable;
}
IFileOperation2_VTable :: struct #type_info_none {
    using ifileoperation: IFileOperation_VTable;
    SetOperationFlags2: (this: *IFileOperation2, operationFlags2: FILE_OPERATION_FLAGS2) -> HRESULT #cpp_method;
}
IFileOperation2_SetOperationFlags2 :: inline (this: *IFileOperation2, operationFlags2: FILE_OPERATION_FLAGS2) -> HRESULT { return this.ifileoperation2_vtable.SetOperationFlags2(this, operationFlags2); }

vtable :: (obj: *IFileOperation2) -> *IFileOperation2_VTable { return obj.ifileoperation2_vtable; }



IObjectProvider_UUID :: "a6087428-3be3-4d73-b308-7c04a540bf1a";
IObjectProvider :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iobjectprovider_vtable: *IObjectProvider_VTable;
}
IObjectProvider_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    QueryObject: (this: *IObjectProvider, guidObject: *GUID, riid: *IID, ppvOut: **void) -> HRESULT #cpp_method;
}
IObjectProvider_QueryObject :: inline (this: *IObjectProvider, guidObject: *GUID, riid: *IID, ppvOut: **void) -> HRESULT { return this.iobjectprovider_vtable.QueryObject(this, guidObject, riid, ppvOut); }

vtable :: (obj: *IObjectProvider) -> *IObjectProvider_VTable { return obj.iobjectprovider_vtable; }



INamespaceWalkCB_UUID :: "d92995f8-cf5e-4a76-bf59-ead39ea2b97e";
INamespaceWalkCB :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; inamespacewalkcb_vtable: *INamespaceWalkCB_VTable;
}
INamespaceWalkCB_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    FoundItem: (this: *INamespaceWalkCB, psf: *IShellFolder, pidl: LPCITEMIDLIST) -> HRESULT #cpp_method;

    EnterFolder: (this: *INamespaceWalkCB, psf: *IShellFolder, pidl: LPCITEMIDLIST) -> HRESULT #cpp_method;

    LeaveFolder: (this: *INamespaceWalkCB, psf: *IShellFolder, pidl: LPCITEMIDLIST) -> HRESULT #cpp_method;

    InitializeProgressDialog: (this: *INamespaceWalkCB, ppszTitle: **s16, ppszCancel: **s16) -> HRESULT #cpp_method;
}

INamespaceWalkCB_FoundItem :: inline (this: *INamespaceWalkCB, psf: *IShellFolder, pidl: LPCITEMIDLIST) -> HRESULT { return this.inamespacewalkcb_vtable.FoundItem(this, psf, pidl); }

INamespaceWalkCB_EnterFolder :: inline (this: *INamespaceWalkCB, psf: *IShellFolder, pidl: LPCITEMIDLIST) -> HRESULT { return this.inamespacewalkcb_vtable.EnterFolder(this, psf, pidl); }

INamespaceWalkCB_LeaveFolder :: inline (this: *INamespaceWalkCB, psf: *IShellFolder, pidl: LPCITEMIDLIST) -> HRESULT { return this.inamespacewalkcb_vtable.LeaveFolder(this, psf, pidl); }

INamespaceWalkCB_InitializeProgressDialog :: inline (this: *INamespaceWalkCB, ppszTitle: **s16, ppszCancel: **s16) -> HRESULT { return this.inamespacewalkcb_vtable.InitializeProgressDialog(this, ppszTitle, ppszCancel); }

vtable :: (obj: *INamespaceWalkCB) -> *INamespaceWalkCB_VTable { return obj.inamespacewalkcb_vtable; }



INamespaceWalkCB2_UUID :: "7ac7492b-c38e-438a-87db-68737844ff70";
INamespaceWalkCB2 :: struct {
    #as using inamespacewalkcb: INamespaceWalkCB;
    #place inamespacewalkcb; inamespacewalkcb2_vtable: *INamespaceWalkCB2_VTable;
}
INamespaceWalkCB2_VTable :: struct #type_info_none {
    using inamespacewalkcb: INamespaceWalkCB_VTable;
    WalkComplete: (this: *INamespaceWalkCB2, hr: HRESULT) -> HRESULT #cpp_method;
}
INamespaceWalkCB2_WalkComplete :: inline (this: *INamespaceWalkCB2, hr: HRESULT) -> HRESULT { return this.inamespacewalkcb2_vtable.WalkComplete(this, hr); }

vtable :: (obj: *INamespaceWalkCB2) -> *INamespaceWalkCB2_VTable { return obj.inamespacewalkcb2_vtable; }


NAMESPACEWALKFLAG :: enum s32 {
    DEFAULT                        :: 0;
    NONE_IMPLIES_ALL               :: 1;
    ONE_IMPLIES_ALL                :: 2;
    DONT_TRAVERSE_LINKS            :: 4;
    DONT_ACCUMULATE_RESULT         :: 8;
    TRAVERSE_STREAM_JUNCTIONS      :: 16;
    FILESYSTEM_ONLY                :: 32;
    SHOW_PROGRESS                  :: 64;
    FLAG_VIEWORDER                 :: 128;
    IGNORE_AUTOPLAY_HIDA           :: 256;
    ASYNC                          :: 512;
    DONT_RESOLVE_LINKS             :: 1024;
    ACCUMULATE_FOLDERS             :: 2048;
    DONT_SORT                      :: 4096;
    USE_TRANSFER_MEDIUM            :: 8192;
    DONT_TRAVERSE_STREAM_JUNCTIONS :: 16384;
    ANY_IMPLIES_ALL                :: 32768;

    NSWF_DEFAULT                        :: DEFAULT;
    NSWF_NONE_IMPLIES_ALL               :: NONE_IMPLIES_ALL;
    NSWF_ONE_IMPLIES_ALL                :: ONE_IMPLIES_ALL;
    NSWF_DONT_TRAVERSE_LINKS            :: DONT_TRAVERSE_LINKS;
    NSWF_DONT_ACCUMULATE_RESULT         :: DONT_ACCUMULATE_RESULT;
    NSWF_TRAVERSE_STREAM_JUNCTIONS      :: TRAVERSE_STREAM_JUNCTIONS;
    NSWF_FILESYSTEM_ONLY                :: FILESYSTEM_ONLY;
    NSWF_SHOW_PROGRESS                  :: SHOW_PROGRESS;
    NSWF_FLAG_VIEWORDER                 :: FLAG_VIEWORDER;
    NSWF_IGNORE_AUTOPLAY_HIDA           :: IGNORE_AUTOPLAY_HIDA;
    NSWF_ASYNC                          :: ASYNC;
    NSWF_DONT_RESOLVE_LINKS             :: DONT_RESOLVE_LINKS;
    NSWF_ACCUMULATE_FOLDERS             :: ACCUMULATE_FOLDERS;
    NSWF_DONT_SORT                      :: DONT_SORT;
    NSWF_USE_TRANSFER_MEDIUM            :: USE_TRANSFER_MEDIUM;
    NSWF_DONT_TRAVERSE_STREAM_JUNCTIONS :: DONT_TRAVERSE_STREAM_JUNCTIONS;
    NSWF_ANY_IMPLIES_ALL                :: ANY_IMPLIES_ALL;
}


INamespaceWalk_UUID :: "57ced8a7-3f4a-432c-9350-30f24483f74f";
INamespaceWalk :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; inamespacewalk_vtable: *INamespaceWalk_VTable;
}
INamespaceWalk_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Walk: (this: *INamespaceWalk, punkToWalk: *IUnknown, dwFlags: u32, cDepth: s32, pnswcb: *INamespaceWalkCB) -> HRESULT #cpp_method;

    GetIDArrayResult: (this: *INamespaceWalk, pcItems: *u32, prgpidl: **LPITEMIDLIST) -> HRESULT #cpp_method;
}

INamespaceWalk_Walk :: inline (this: *INamespaceWalk, punkToWalk: *IUnknown, dwFlags: u32, cDepth: s32, pnswcb: *INamespaceWalkCB) -> HRESULT { return this.inamespacewalk_vtable.Walk(this, punkToWalk, dwFlags, cDepth, pnswcb); }

INamespaceWalk_GetIDArrayResult :: inline (this: *INamespaceWalk, pcItems: *u32, prgpidl: **LPITEMIDLIST) -> HRESULT { return this.inamespacewalk_vtable.GetIDArrayResult(this, pcItems, prgpidl); }

vtable :: (obj: *INamespaceWalk) -> *INamespaceWalk_VTable { return obj.inamespacewalk_vtable; }


tagBANDSITEINFO :: struct {
    dwMask:  u32;
    dwState: u32;
    dwStyle: u32;
}

BANDSITEINFO :: tagBANDSITEINFO;

tagBANDSITECID :: enum s32 {
    BANDADDED   :: 0;
    BANDREMOVED :: 1;

    BSID_BANDADDED   :: BANDADDED;
    BSID_BANDREMOVED :: BANDREMOVED;
}


IBandSite_UUID :: "4CF504B0-DE96-11D0-8B3F-00A0C911E8E5";
IBandSite :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ibandsite_vtable: *IBandSite_VTable;
}
IBandSite_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    AddBand: (this: *IBandSite, punk: *IUnknown) -> HRESULT #cpp_method;

    EnumBands: (this: *IBandSite, uBand: u32, pdwBandID: *u32) -> HRESULT #cpp_method;

    QueryBand: (this: *IBandSite, dwBandID: u32, ppstb: **IDeskBand, pdwState: *u32, pszName: *s16, cchName: s32) -> HRESULT #cpp_method;

    SetBandState: (this: *IBandSite, dwBandID: u32, dwMask: u32, dwState: u32) -> HRESULT #cpp_method;

    RemoveBand: (this: *IBandSite, dwBandID: u32) -> HRESULT #cpp_method;

    GetBandObject: (this: *IBandSite, dwBandID: u32, riid: *IID, ppv: **void) -> HRESULT #cpp_method;

    SetBandSiteInfo: (this: *IBandSite, pbsinfo: *BANDSITEINFO) -> HRESULT #cpp_method;

    GetBandSiteInfo: (this: *IBandSite, pbsinfo: *BANDSITEINFO) -> HRESULT #cpp_method;
}

IBandSite_AddBand :: inline (this: *IBandSite, punk: *IUnknown) -> HRESULT { return this.ibandsite_vtable.AddBand(this, punk); }

IBandSite_EnumBands :: inline (this: *IBandSite, uBand: u32, pdwBandID: *u32) -> HRESULT { return this.ibandsite_vtable.EnumBands(this, uBand, pdwBandID); }

IBandSite_QueryBand :: inline (this: *IBandSite, dwBandID: u32, ppstb: **IDeskBand, pdwState: *u32, pszName: *s16, cchName: s32) -> HRESULT { return this.ibandsite_vtable.QueryBand(this, dwBandID, ppstb, pdwState, pszName, cchName); }

IBandSite_SetBandState :: inline (this: *IBandSite, dwBandID: u32, dwMask: u32, dwState: u32) -> HRESULT { return this.ibandsite_vtable.SetBandState(this, dwBandID, dwMask, dwState); }

IBandSite_RemoveBand :: inline (this: *IBandSite, dwBandID: u32) -> HRESULT { return this.ibandsite_vtable.RemoveBand(this, dwBandID); }

IBandSite_GetBandObject :: inline (this: *IBandSite, dwBandID: u32, riid: *IID, ppv: **void) -> HRESULT { return this.ibandsite_vtable.GetBandObject(this, dwBandID, riid, ppv); }

IBandSite_SetBandSiteInfo :: inline (this: *IBandSite, pbsinfo: *BANDSITEINFO) -> HRESULT { return this.ibandsite_vtable.SetBandSiteInfo(this, pbsinfo); }

IBandSite_GetBandSiteInfo :: inline (this: *IBandSite, pbsinfo: *BANDSITEINFO) -> HRESULT { return this.ibandsite_vtable.GetBandSiteInfo(this, pbsinfo); }

vtable :: (obj: *IBandSite) -> *IBandSite_VTable { return obj.ibandsite_vtable; }



IModalWindow_UUID :: "b4db1657-70d7-485e-8e3e-6fcb5a5c1802";
IModalWindow :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; imodalwindow_vtable: *IModalWindow_VTable;
}
IModalWindow_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Show: (this: *IModalWindow, hwndOwner: HWND) -> HRESULT #cpp_method;
}
IModalWindow_Show :: inline (this: *IModalWindow, hwndOwner: HWND) -> HRESULT { return this.imodalwindow_vtable.Show(this, hwndOwner); }

vtable :: (obj: *IModalWindow) -> *IModalWindow_VTable { return obj.imodalwindow_vtable; }



IContextMenuSite_UUID :: "0811AEBE-0B87-4C54-9E72-548CF649016B";
IContextMenuSite :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; icontextmenusite_vtable: *IContextMenuSite_VTable;
}
IContextMenuSite_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    DoContextMenuPopup: (this: *IContextMenuSite, punkContextMenu: *IUnknown, fFlags: u32, pt: POINT) -> HRESULT #cpp_method;
}
IContextMenuSite_DoContextMenuPopup :: inline (this: *IContextMenuSite, punkContextMenu: *IUnknown, fFlags: u32, pt: POINT) -> HRESULT { return this.icontextmenusite_vtable.DoContextMenuPopup(this, punkContextMenu, fFlags, pt); }

vtable :: (obj: *IContextMenuSite) -> *IContextMenuSite_VTable { return obj.icontextmenusite_vtable; }


tagMENUBANDHANDLERCID :: enum s32 {
    MBHANDCID_PIDLSELECT :: 0;
}


IMenuBand_UUID :: "568804CD-CBD7-11d0-9816-00C04FD91972";
IMenuBand :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; imenuband_vtable: *IMenuBand_VTable;
}
IMenuBand_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    IsMenuMessage: (this: *IMenuBand, pmsg: *MSG) -> HRESULT #cpp_method;

    TranslateMenuMessage: (this: *IMenuBand, pmsg: *MSG, plRet: *LRESULT) -> HRESULT #cpp_method;
}

IMenuBand_IsMenuMessage :: inline (this: *IMenuBand, pmsg: *MSG) -> HRESULT { return this.imenuband_vtable.IsMenuMessage(this, pmsg); }

IMenuBand_TranslateMenuMessage :: inline (this: *IMenuBand, pmsg: *MSG, plRet: *LRESULT) -> HRESULT { return this.imenuband_vtable.TranslateMenuMessage(this, pmsg, plRet); }

vtable :: (obj: *IMenuBand) -> *IMenuBand_VTable { return obj.imenuband_vtable; }



IRegTreeItem_UUID :: "A9521922-0812-4d44-9EC3-7FD38C726F3D";
IRegTreeItem :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iregtreeitem_vtable: *IRegTreeItem_VTable;
}
IRegTreeItem_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetCheckState: (this: *IRegTreeItem, pbCheck: *BOOL) -> HRESULT #cpp_method;

    SetCheckState: (this: *IRegTreeItem, bCheck: BOOL) -> HRESULT #cpp_method;
}

IRegTreeItem_GetCheckState :: inline (this: *IRegTreeItem, pbCheck: *BOOL) -> HRESULT { return this.iregtreeitem_vtable.GetCheckState(this, pbCheck); }

IRegTreeItem_SetCheckState :: inline (this: *IRegTreeItem, bCheck: BOOL) -> HRESULT { return this.iregtreeitem_vtable.SetCheckState(this, bCheck); }

vtable :: (obj: *IRegTreeItem) -> *IRegTreeItem_VTable { return obj.iregtreeitem_vtable; }



IDeskBar_UUID :: "EB0FE173-1A3A-11D0-89B3-00A0C90A90AC";
IDeskBar :: struct {
    #as using iolewindow: IOleWindow;
    #place iolewindow; ideskbar_vtable: *IDeskBar_VTable;
}
IDeskBar_VTable :: struct #type_info_none {
    using iolewindow: IOleWindow_VTable;
    SetClient: (this: *IDeskBar, punkClient: *IUnknown) -> HRESULT #cpp_method;

    GetClient: (this: *IDeskBar, ppunkClient: **IUnknown) -> HRESULT #cpp_method;

    OnPosRectChangeDB: (this: *IDeskBar, prc: *RECT) -> HRESULT #cpp_method;
}

IDeskBar_SetClient :: inline (this: *IDeskBar, punkClient: *IUnknown) -> HRESULT { return this.ideskbar_vtable.SetClient(this, punkClient); }

IDeskBar_GetClient :: inline (this: *IDeskBar, ppunkClient: **IUnknown) -> HRESULT { return this.ideskbar_vtable.GetClient(this, ppunkClient); }

IDeskBar_OnPosRectChangeDB :: inline (this: *IDeskBar, prc: *RECT) -> HRESULT { return this.ideskbar_vtable.OnPosRectChangeDB(this, prc); }

vtable :: (obj: *IDeskBar) -> *IDeskBar_VTable { return obj.ideskbar_vtable; }


tagMENUPOPUPSELECT :: enum s32 {
    EXECUTE       :: 0;
    FULLCANCEL    :: 1;
    CANCELLEVEL   :: 2;
    SELECTLEFT    :: 3;
    SELECTRIGHT   :: 4;
    CHILDTRACKING :: 5;

    MPOS_EXECUTE       :: EXECUTE;
    MPOS_FULLCANCEL    :: FULLCANCEL;
    MPOS_CANCELLEVEL   :: CANCELLEVEL;
    MPOS_SELECTLEFT    :: SELECTLEFT;
    MPOS_SELECTRIGHT   :: SELECTRIGHT;
    MPOS_CHILDTRACKING :: CHILDTRACKING;
}

tagMENUPOPUPPOPUPFLAGS :: enum s32 {
    SETFOCUS      :: 1;
    INITIALSELECT :: 2;
    NOANIMATE     :: 4;
    KEYBOARD      :: 16;
    REPOSITION    :: 32;
    FORCEZORDER   :: 64;
    FINALSELECT   :: 128;
    TOP           :: 536870912;
    LEFT          :: 1073741824;
    RIGHT         :: 1610612736;
    BOTTOM        :: -2147483648;
    POS_MASK      :: -536870912;
    ALIGN_LEFT    :: 33554432;
    ALIGN_RIGHT   :: 67108864;

    MPPF_SETFOCUS      :: SETFOCUS;
    MPPF_INITIALSELECT :: INITIALSELECT;
    MPPF_NOANIMATE     :: NOANIMATE;
    MPPF_KEYBOARD      :: KEYBOARD;
    MPPF_REPOSITION    :: REPOSITION;
    MPPF_FORCEZORDER   :: FORCEZORDER;
    MPPF_FINALSELECT   :: FINALSELECT;
    MPPF_TOP           :: TOP;
    MPPF_LEFT          :: LEFT;
    MPPF_RIGHT         :: RIGHT;
    MPPF_BOTTOM        :: BOTTOM;
    MPPF_POS_MASK      :: POS_MASK;
    MPPF_ALIGN_LEFT    :: ALIGN_LEFT;
    MPPF_ALIGN_RIGHT   :: ALIGN_RIGHT;
}

MP_POPUPFLAGS :: s32;


IMenuPopup_UUID :: "D1E7AFEB-6A2E-11d0-8C78-00C04FD918B4";
IMenuPopup :: struct {
    #as using ideskbar: IDeskBar;
    #place ideskbar; imenupopup_vtable: *IMenuPopup_VTable;
}
IMenuPopup_VTable :: struct #type_info_none {
    using ideskbar: IDeskBar_VTable;
    Popup: (this: *IMenuPopup, ppt: *POINTL, prcExclude: *RECTL, dwFlags: MP_POPUPFLAGS) -> HRESULT #cpp_method;

    OnSelect: (this: *IMenuPopup, dwSelectType: u32) -> HRESULT #cpp_method;

    SetSubMenu: (this: *IMenuPopup, pmp: *IMenuPopup, fSet: BOOL) -> HRESULT #cpp_method;
}

IMenuPopup_Popup :: inline (this: *IMenuPopup, ppt: *POINTL, prcExclude: *RECTL, dwFlags: MP_POPUPFLAGS) -> HRESULT { return this.imenupopup_vtable.Popup(this, ppt, prcExclude, dwFlags); }

IMenuPopup_OnSelect :: inline (this: *IMenuPopup, dwSelectType: u32) -> HRESULT { return this.imenupopup_vtable.OnSelect(this, dwSelectType); }

IMenuPopup_SetSubMenu :: inline (this: *IMenuPopup, pmp: *IMenuPopup, fSet: BOOL) -> HRESULT { return this.imenupopup_vtable.SetSubMenu(this, pmp, fSet); }

vtable :: (obj: *IMenuPopup) -> *IMenuPopup_VTable { return obj.imenupopup_vtable; }


FILE_USAGE_TYPE :: enum s32 {
    PLAYING :: 0;
    EDITING :: 1;
    GENERIC :: 2;

    FUT_PLAYING :: PLAYING;
    FUT_EDITING :: EDITING;
    FUT_GENERIC :: GENERIC;
}


IFileIsInUse_UUID :: "64a1cbf0-3a1a-4461-9158-376969693950";
IFileIsInUse :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ifileisinuse_vtable: *IFileIsInUse_VTable;
}
IFileIsInUse_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetAppName: (this: *IFileIsInUse, ppszName: **s16) -> HRESULT #cpp_method;

    GetUsage: (this: *IFileIsInUse, pfut: *FILE_USAGE_TYPE) -> HRESULT #cpp_method;

    GetCapabilities: (this: *IFileIsInUse, pdwCapFlags: *u32) -> HRESULT #cpp_method;

    GetSwitchToHWND: (this: *IFileIsInUse, phwnd: *HWND) -> HRESULT #cpp_method;

    CloseFile: (this: *IFileIsInUse) -> HRESULT #cpp_method;
}

IFileIsInUse_GetAppName :: inline (this: *IFileIsInUse, ppszName: **s16) -> HRESULT { return this.ifileisinuse_vtable.GetAppName(this, ppszName); }

IFileIsInUse_GetUsage :: inline (this: *IFileIsInUse, pfut: *FILE_USAGE_TYPE) -> HRESULT { return this.ifileisinuse_vtable.GetUsage(this, pfut); }

IFileIsInUse_GetCapabilities :: inline (this: *IFileIsInUse, pdwCapFlags: *u32) -> HRESULT { return this.ifileisinuse_vtable.GetCapabilities(this, pdwCapFlags); }

IFileIsInUse_GetSwitchToHWND :: inline (this: *IFileIsInUse, phwnd: *HWND) -> HRESULT { return this.ifileisinuse_vtable.GetSwitchToHWND(this, phwnd); }

IFileIsInUse_CloseFile :: inline (this: *IFileIsInUse) -> HRESULT { return this.ifileisinuse_vtable.CloseFile(this); }

vtable :: (obj: *IFileIsInUse) -> *IFileIsInUse_VTable { return obj.ifileisinuse_vtable; }


FDE_OVERWRITE_RESPONSE :: enum s32 {
    DEFAULT :: 0;
    ACCEPT  :: 1;
    REFUSE  :: 2;

    FDEOR_DEFAULT :: DEFAULT;
    FDEOR_ACCEPT  :: ACCEPT;
    FDEOR_REFUSE  :: REFUSE;
}

FDE_SHAREVIOLATION_RESPONSE :: enum s32 {
    DEFAULT :: 0;
    ACCEPT  :: 1;
    REFUSE  :: 2;

    FDESVR_DEFAULT :: DEFAULT;
    FDESVR_ACCEPT  :: ACCEPT;
    FDESVR_REFUSE  :: REFUSE;
}

FDAP :: enum s32 {
    BOTTOM :: 0;
    TOP    :: 1;

    FDAP_BOTTOM :: BOTTOM;
    FDAP_TOP    :: TOP;
}


IFileDialogEvents_UUID :: "973510db-7d7f-452b-8975-74a85828d354";
IFileDialogEvents :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ifiledialogevents_vtable: *IFileDialogEvents_VTable;
}
IFileDialogEvents_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    OnFileOk: (this: *IFileDialogEvents, pfd: *IFileDialog) -> HRESULT #cpp_method;

    OnFolderChanging: (this: *IFileDialogEvents, pfd: *IFileDialog, psiFolder: *IShellItem) -> HRESULT #cpp_method;

    OnFolderChange: (this: *IFileDialogEvents, pfd: *IFileDialog) -> HRESULT #cpp_method;

    OnSelectionChange: (this: *IFileDialogEvents, pfd: *IFileDialog) -> HRESULT #cpp_method;

    OnShareViolation: (this: *IFileDialogEvents, pfd: *IFileDialog, psi: *IShellItem, pResponse: *FDE_SHAREVIOLATION_RESPONSE) -> HRESULT #cpp_method;

    OnTypeChange: (this: *IFileDialogEvents, pfd: *IFileDialog) -> HRESULT #cpp_method;

    OnOverwrite: (this: *IFileDialogEvents, pfd: *IFileDialog, psi: *IShellItem, pResponse: *FDE_OVERWRITE_RESPONSE) -> HRESULT #cpp_method;
}

IFileDialogEvents_OnFileOk :: inline (this: *IFileDialogEvents, pfd: *IFileDialog) -> HRESULT { return this.ifiledialogevents_vtable.OnFileOk(this, pfd); }

IFileDialogEvents_OnFolderChanging :: inline (this: *IFileDialogEvents, pfd: *IFileDialog, psiFolder: *IShellItem) -> HRESULT { return this.ifiledialogevents_vtable.OnFolderChanging(this, pfd, psiFolder); }

IFileDialogEvents_OnFolderChange :: inline (this: *IFileDialogEvents, pfd: *IFileDialog) -> HRESULT { return this.ifiledialogevents_vtable.OnFolderChange(this, pfd); }

IFileDialogEvents_OnSelectionChange :: inline (this: *IFileDialogEvents, pfd: *IFileDialog) -> HRESULT { return this.ifiledialogevents_vtable.OnSelectionChange(this, pfd); }

IFileDialogEvents_OnShareViolation :: inline (this: *IFileDialogEvents, pfd: *IFileDialog, psi: *IShellItem, pResponse: *FDE_SHAREVIOLATION_RESPONSE) -> HRESULT { return this.ifiledialogevents_vtable.OnShareViolation(this, pfd, psi, pResponse); }

IFileDialogEvents_OnTypeChange :: inline (this: *IFileDialogEvents, pfd: *IFileDialog) -> HRESULT { return this.ifiledialogevents_vtable.OnTypeChange(this, pfd); }

IFileDialogEvents_OnOverwrite :: inline (this: *IFileDialogEvents, pfd: *IFileDialog, psi: *IShellItem, pResponse: *FDE_OVERWRITE_RESPONSE) -> HRESULT { return this.ifiledialogevents_vtable.OnOverwrite(this, pfd, psi, pResponse); }

vtable :: (obj: *IFileDialogEvents) -> *IFileDialogEvents_VTable { return obj.ifiledialogevents_vtable; }


FILEOPENDIALOGOPTIONS :: enum s32 {
    OVERWRITEPROMPT          :: 2;
    STRICTFILETYPES          :: 4;
    NOCHANGEDIR              :: 8;
    PICKFOLDERS              :: 32;
    FORCEFILESYSTEM          :: 64;
    ALLNONSTORAGEITEMS       :: 128;
    NOVALIDATE               :: 256;
    ALLOWMULTISELECT         :: 512;
    PATHMUSTEXIST            :: 2048;
    FILEMUSTEXIST            :: 4096;
    CREATEPROMPT             :: 8192;
    SHAREAWARE               :: 16384;
    NOREADONLYRETURN         :: 32768;
    NOTESTFILECREATE         :: 65536;
    HIDEMRUPLACES            :: 131072;
    HIDEPINNEDPLACES         :: 262144;
    NODEREFERENCELINKS       :: 1048576;
    OKBUTTONNEEDSINTERACTION :: 2097152;
    DONTADDTORECENT          :: 33554432;
    FORCESHOWHIDDEN          :: 268435456;
    DEFAULTNOMINIMODE        :: 536870912;
    FORCEPREVIEWPANEON       :: 1073741824;
    SUPPORTSTREAMABLEITEMS   :: -2147483648;

    FOS_OVERWRITEPROMPT          :: OVERWRITEPROMPT;
    FOS_STRICTFILETYPES          :: STRICTFILETYPES;
    FOS_NOCHANGEDIR              :: NOCHANGEDIR;
    FOS_PICKFOLDERS              :: PICKFOLDERS;
    FOS_FORCEFILESYSTEM          :: FORCEFILESYSTEM;
    FOS_ALLNONSTORAGEITEMS       :: ALLNONSTORAGEITEMS;
    FOS_NOVALIDATE               :: NOVALIDATE;
    FOS_ALLOWMULTISELECT         :: ALLOWMULTISELECT;
    FOS_PATHMUSTEXIST            :: PATHMUSTEXIST;
    FOS_FILEMUSTEXIST            :: FILEMUSTEXIST;
    FOS_CREATEPROMPT             :: CREATEPROMPT;
    FOS_SHAREAWARE               :: SHAREAWARE;
    FOS_NOREADONLYRETURN         :: NOREADONLYRETURN;
    FOS_NOTESTFILECREATE         :: NOTESTFILECREATE;
    FOS_HIDEMRUPLACES            :: HIDEMRUPLACES;
    FOS_HIDEPINNEDPLACES         :: HIDEPINNEDPLACES;
    FOS_NODEREFERENCELINKS       :: NODEREFERENCELINKS;
    FOS_OKBUTTONNEEDSINTERACTION :: OKBUTTONNEEDSINTERACTION;
    FOS_DONTADDTORECENT          :: DONTADDTORECENT;
    FOS_FORCESHOWHIDDEN          :: FORCESHOWHIDDEN;
    FOS_DEFAULTNOMINIMODE        :: DEFAULTNOMINIMODE;
    FOS_FORCEPREVIEWPANEON       :: FORCEPREVIEWPANEON;
    FOS_SUPPORTSTREAMABLEITEMS   :: SUPPORTSTREAMABLEITEMS;
}

FILEOPENDIALOGOPTIONS :: u32;


IFileDialog_UUID :: "42f85136-db7e-439c-85f1-e4075d135fc8";
IFileDialog :: struct {
    #as using imodalwindow: IModalWindow;
    #place imodalwindow; ifiledialog_vtable: *IFileDialog_VTable;
}
IFileDialog_VTable :: struct #type_info_none {
    using imodalwindow: IModalWindow_VTable;
    SetFileTypes: (this: *IFileDialog, cFileTypes: u32, rgFilterSpec: *COMDLG_FILTERSPEC) -> HRESULT #cpp_method;

    SetFileTypeIndex: (this: *IFileDialog, iFileType: u32) -> HRESULT #cpp_method;

    GetFileTypeIndex: (this: *IFileDialog, piFileType: *u32) -> HRESULT #cpp_method;

    Advise: (this: *IFileDialog, pfde: *IFileDialogEvents, pdwCookie: *u32) -> HRESULT #cpp_method;

    Unadvise: (this: *IFileDialog, dwCookie: u32) -> HRESULT #cpp_method;

    SetOptions: (this: *IFileDialog, fos: FILEOPENDIALOGOPTIONS) -> HRESULT #cpp_method;

    GetOptions: (this: *IFileDialog, pfos: *FILEOPENDIALOGOPTIONS) -> HRESULT #cpp_method;

    SetDefaultFolder: (this: *IFileDialog, psi: *IShellItem) -> HRESULT #cpp_method;

    SetFolder: (this: *IFileDialog, psi: *IShellItem) -> HRESULT #cpp_method;

    GetFolder: (this: *IFileDialog, ppsi: **IShellItem) -> HRESULT #cpp_method;

    GetCurrentSelection: (this: *IFileDialog, ppsi: **IShellItem) -> HRESULT #cpp_method;

    SetFileName: (this: *IFileDialog, pszName: *s16) -> HRESULT #cpp_method;

    GetFileName: (this: *IFileDialog, pszName: **s16) -> HRESULT #cpp_method;

    SetTitle: (this: *IFileDialog, pszTitle: *s16) -> HRESULT #cpp_method;

    SetOkButtonLabel: (this: *IFileDialog, pszText: *s16) -> HRESULT #cpp_method;

    SetFileNameLabel: (this: *IFileDialog, pszLabel: *s16) -> HRESULT #cpp_method;

    GetResult: (this: *IFileDialog, ppsi: **IShellItem) -> HRESULT #cpp_method;

    AddPlace: (this: *IFileDialog, psi: *IShellItem, fdap: FDAP) -> HRESULT #cpp_method;

    SetDefaultExtension: (this: *IFileDialog, pszDefaultExtension: *s16) -> HRESULT #cpp_method;

    Close: (this: *IFileDialog, hr: HRESULT) -> HRESULT #cpp_method;

    SetClientGuid: (this: *IFileDialog, guid: *GUID) -> HRESULT #cpp_method;

    ClearClientData: (this: *IFileDialog) -> HRESULT #cpp_method;

    SetFilter: (this: *IFileDialog, pFilter: *IShellItemFilter) -> HRESULT #cpp_method;
}

IFileDialog_SetFileTypes :: inline (this: *IFileDialog, cFileTypes: u32, rgFilterSpec: *COMDLG_FILTERSPEC) -> HRESULT { return this.ifiledialog_vtable.SetFileTypes(this, cFileTypes, rgFilterSpec); }

IFileDialog_SetFileTypeIndex :: inline (this: *IFileDialog, iFileType: u32) -> HRESULT { return this.ifiledialog_vtable.SetFileTypeIndex(this, iFileType); }

IFileDialog_GetFileTypeIndex :: inline (this: *IFileDialog, piFileType: *u32) -> HRESULT { return this.ifiledialog_vtable.GetFileTypeIndex(this, piFileType); }

IFileDialog_Advise :: inline (this: *IFileDialog, pfde: *IFileDialogEvents, pdwCookie: *u32) -> HRESULT { return this.ifiledialog_vtable.Advise(this, pfde, pdwCookie); }

IFileDialog_Unadvise :: inline (this: *IFileDialog, dwCookie: u32) -> HRESULT { return this.ifiledialog_vtable.Unadvise(this, dwCookie); }

IFileDialog_SetOptions :: inline (this: *IFileDialog, fos: FILEOPENDIALOGOPTIONS) -> HRESULT { return this.ifiledialog_vtable.SetOptions(this, fos); }

IFileDialog_GetOptions :: inline (this: *IFileDialog, pfos: *FILEOPENDIALOGOPTIONS) -> HRESULT { return this.ifiledialog_vtable.GetOptions(this, pfos); }

IFileDialog_SetDefaultFolder :: inline (this: *IFileDialog, psi: *IShellItem) -> HRESULT { return this.ifiledialog_vtable.SetDefaultFolder(this, psi); }

IFileDialog_SetFolder :: inline (this: *IFileDialog, psi: *IShellItem) -> HRESULT { return this.ifiledialog_vtable.SetFolder(this, psi); }

IFileDialog_GetFolder :: inline (this: *IFileDialog, ppsi: **IShellItem) -> HRESULT { return this.ifiledialog_vtable.GetFolder(this, ppsi); }

IFileDialog_GetCurrentSelection :: inline (this: *IFileDialog, ppsi: **IShellItem) -> HRESULT { return this.ifiledialog_vtable.GetCurrentSelection(this, ppsi); }

IFileDialog_SetFileName :: inline (this: *IFileDialog, pszName: *s16) -> HRESULT { return this.ifiledialog_vtable.SetFileName(this, pszName); }

IFileDialog_GetFileName :: inline (this: *IFileDialog, pszName: **s16) -> HRESULT { return this.ifiledialog_vtable.GetFileName(this, pszName); }

IFileDialog_SetTitle :: inline (this: *IFileDialog, pszTitle: *s16) -> HRESULT { return this.ifiledialog_vtable.SetTitle(this, pszTitle); }

IFileDialog_SetOkButtonLabel :: inline (this: *IFileDialog, pszText: *s16) -> HRESULT { return this.ifiledialog_vtable.SetOkButtonLabel(this, pszText); }

IFileDialog_SetFileNameLabel :: inline (this: *IFileDialog, pszLabel: *s16) -> HRESULT { return this.ifiledialog_vtable.SetFileNameLabel(this, pszLabel); }

IFileDialog_GetResult :: inline (this: *IFileDialog, ppsi: **IShellItem) -> HRESULT { return this.ifiledialog_vtable.GetResult(this, ppsi); }

IFileDialog_AddPlace :: inline (this: *IFileDialog, psi: *IShellItem, fdap: FDAP) -> HRESULT { return this.ifiledialog_vtable.AddPlace(this, psi, fdap); }

IFileDialog_SetDefaultExtension :: inline (this: *IFileDialog, pszDefaultExtension: *s16) -> HRESULT { return this.ifiledialog_vtable.SetDefaultExtension(this, pszDefaultExtension); }

IFileDialog_Close :: inline (this: *IFileDialog, hr: HRESULT) -> HRESULT { return this.ifiledialog_vtable.Close(this, hr); }

IFileDialog_SetClientGuid :: inline (this: *IFileDialog, guid: *GUID) -> HRESULT { return this.ifiledialog_vtable.SetClientGuid(this, guid); }

IFileDialog_ClearClientData :: inline (this: *IFileDialog) -> HRESULT { return this.ifiledialog_vtable.ClearClientData(this); }

IFileDialog_SetFilter :: inline (this: *IFileDialog, pFilter: *IShellItemFilter) -> HRESULT { return this.ifiledialog_vtable.SetFilter(this, pFilter); }

vtable :: (obj: *IFileDialog) -> *IFileDialog_VTable { return obj.ifiledialog_vtable; }



IFileSaveDialog_UUID :: "84bccd23-5fde-4cdb-aea4-af64b83d78ab";
IFileSaveDialog :: struct {
    #as using ifiledialog: IFileDialog;
    #place ifiledialog; ifilesavedialog_vtable: *IFileSaveDialog_VTable;
}
IFileSaveDialog_VTable :: struct #type_info_none {
    using ifiledialog: IFileDialog_VTable;
    SetSaveAsItem: (this: *IFileSaveDialog, psi: *IShellItem) -> HRESULT #cpp_method;

    SetProperties: (this: *IFileSaveDialog, pStore: *IPropertyStore) -> HRESULT #cpp_method;

    SetCollectedProperties: (this: *IFileSaveDialog, pList: *IPropertyDescriptionList, fAppendDefault: BOOL) -> HRESULT #cpp_method;

    GetProperties: (this: *IFileSaveDialog, ppStore: **IPropertyStore) -> HRESULT #cpp_method;

    ApplyProperties: (this: *IFileSaveDialog, psi: *IShellItem, pStore: *IPropertyStore, hwnd: HWND, pSink: *IFileOperationProgressSink) -> HRESULT #cpp_method;
}

IFileSaveDialog_SetSaveAsItem :: inline (this: *IFileSaveDialog, psi: *IShellItem) -> HRESULT { return this.ifilesavedialog_vtable.SetSaveAsItem(this, psi); }

IFileSaveDialog_SetProperties :: inline (this: *IFileSaveDialog, pStore: *IPropertyStore) -> HRESULT { return this.ifilesavedialog_vtable.SetProperties(this, pStore); }

IFileSaveDialog_SetCollectedProperties :: inline (this: *IFileSaveDialog, pList: *IPropertyDescriptionList, fAppendDefault: BOOL) -> HRESULT { return this.ifilesavedialog_vtable.SetCollectedProperties(this, pList, fAppendDefault); }

IFileSaveDialog_GetProperties :: inline (this: *IFileSaveDialog, ppStore: **IPropertyStore) -> HRESULT { return this.ifilesavedialog_vtable.GetProperties(this, ppStore); }

IFileSaveDialog_ApplyProperties :: inline (this: *IFileSaveDialog, psi: *IShellItem, pStore: *IPropertyStore, hwnd: HWND, pSink: *IFileOperationProgressSink) -> HRESULT { return this.ifilesavedialog_vtable.ApplyProperties(this, psi, pStore, hwnd, pSink); }

vtable :: (obj: *IFileSaveDialog) -> *IFileSaveDialog_VTable { return obj.ifilesavedialog_vtable; }



IFileOpenDialog_UUID :: "d57c7288-d4ad-4768-be02-9d969532d960";
IFileOpenDialog :: struct {
    #as using ifiledialog: IFileDialog;
    #place ifiledialog; ifileopendialog_vtable: *IFileOpenDialog_VTable;
}
IFileOpenDialog_VTable :: struct #type_info_none {
    using ifiledialog: IFileDialog_VTable;
    GetResults: (this: *IFileOpenDialog, ppenum: **IShellItemArray) -> HRESULT #cpp_method;

    GetSelectedItems: (this: *IFileOpenDialog, ppsai: **IShellItemArray) -> HRESULT #cpp_method;
}

IFileOpenDialog_GetResults :: inline (this: *IFileOpenDialog, ppenum: **IShellItemArray) -> HRESULT { return this.ifileopendialog_vtable.GetResults(this, ppenum); }

IFileOpenDialog_GetSelectedItems :: inline (this: *IFileOpenDialog, ppsai: **IShellItemArray) -> HRESULT { return this.ifileopendialog_vtable.GetSelectedItems(this, ppsai); }

vtable :: (obj: *IFileOpenDialog) -> *IFileOpenDialog_VTable { return obj.ifileopendialog_vtable; }


CDCONTROLSTATEF :: enum s32 {
    INACTIVE       :: 0;
    ENABLED        :: 1;
    VISIBLE        :: 2;
    ENABLEDVISIBLE :: 3;

    CDCS_INACTIVE       :: INACTIVE;
    CDCS_ENABLED        :: ENABLED;
    CDCS_VISIBLE        :: VISIBLE;
    CDCS_ENABLEDVISIBLE :: ENABLEDVISIBLE;
}


IFileDialogCustomize_UUID :: "e6fdd21a-163f-4975-9c8c-a69f1ba37034";
IFileDialogCustomize :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ifiledialogcustomize_vtable: *IFileDialogCustomize_VTable;
}
IFileDialogCustomize_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    EnableOpenDropDown: (this: *IFileDialogCustomize, dwIDCtl: u32) -> HRESULT #cpp_method;

    AddMenu: (this: *IFileDialogCustomize, dwIDCtl: u32, pszLabel: *s16) -> HRESULT #cpp_method;

    AddPushButton: (this: *IFileDialogCustomize, dwIDCtl: u32, pszLabel: *s16) -> HRESULT #cpp_method;

    AddComboBox: (this: *IFileDialogCustomize, dwIDCtl: u32) -> HRESULT #cpp_method;

    AddRadioButtonList: (this: *IFileDialogCustomize, dwIDCtl: u32) -> HRESULT #cpp_method;

    AddCheckButton: (this: *IFileDialogCustomize, dwIDCtl: u32, pszLabel: *s16, bChecked: BOOL) -> HRESULT #cpp_method;

    AddEditBox: (this: *IFileDialogCustomize, dwIDCtl: u32, pszText: *s16) -> HRESULT #cpp_method;

    AddSeparator: (this: *IFileDialogCustomize, dwIDCtl: u32) -> HRESULT #cpp_method;

    AddText: (this: *IFileDialogCustomize, dwIDCtl: u32, pszText: *s16) -> HRESULT #cpp_method;

    SetControlLabel: (this: *IFileDialogCustomize, dwIDCtl: u32, pszLabel: *s16) -> HRESULT #cpp_method;

    GetControlState: (this: *IFileDialogCustomize, dwIDCtl: u32, pdwState: *CDCONTROLSTATEF) -> HRESULT #cpp_method;

    SetControlState: (this: *IFileDialogCustomize, dwIDCtl: u32, dwState: CDCONTROLSTATEF) -> HRESULT #cpp_method;

    GetEditBoxText: (this: *IFileDialogCustomize, dwIDCtl: u32, ppszText: **s16) -> HRESULT #cpp_method;

    SetEditBoxText: (this: *IFileDialogCustomize, dwIDCtl: u32, pszText: *s16) -> HRESULT #cpp_method;

    GetCheckButtonState: (this: *IFileDialogCustomize, dwIDCtl: u32, pbChecked: *BOOL) -> HRESULT #cpp_method;

    SetCheckButtonState: (this: *IFileDialogCustomize, dwIDCtl: u32, bChecked: BOOL) -> HRESULT #cpp_method;

    AddControlItem: (this: *IFileDialogCustomize, dwIDCtl: u32, dwIDItem: u32, pszLabel: *s16) -> HRESULT #cpp_method;

    RemoveControlItem: (this: *IFileDialogCustomize, dwIDCtl: u32, dwIDItem: u32) -> HRESULT #cpp_method;

    RemoveAllControlItems: (this: *IFileDialogCustomize, dwIDCtl: u32) -> HRESULT #cpp_method;

    GetControlItemState: (this: *IFileDialogCustomize, dwIDCtl: u32, dwIDItem: u32, pdwState: *CDCONTROLSTATEF) -> HRESULT #cpp_method;

    SetControlItemState: (this: *IFileDialogCustomize, dwIDCtl: u32, dwIDItem: u32, dwState: CDCONTROLSTATEF) -> HRESULT #cpp_method;

    GetSelectedControlItem: (this: *IFileDialogCustomize, dwIDCtl: u32, pdwIDItem: *u32) -> HRESULT #cpp_method;

    SetSelectedControlItem: (this: *IFileDialogCustomize, dwIDCtl: u32, dwIDItem: u32) -> HRESULT #cpp_method;

    StartVisualGroup: (this: *IFileDialogCustomize, dwIDCtl: u32, pszLabel: *s16) -> HRESULT #cpp_method;

    EndVisualGroup: (this: *IFileDialogCustomize) -> HRESULT #cpp_method;

    MakeProminent: (this: *IFileDialogCustomize, dwIDCtl: u32) -> HRESULT #cpp_method;

    SetControlItemText: (this: *IFileDialogCustomize, dwIDCtl: u32, dwIDItem: u32, pszLabel: *s16) -> HRESULT #cpp_method;
}

IFileDialogCustomize_EnableOpenDropDown :: inline (this: *IFileDialogCustomize, dwIDCtl: u32) -> HRESULT { return this.ifiledialogcustomize_vtable.EnableOpenDropDown(this, dwIDCtl); }

IFileDialogCustomize_AddMenu :: inline (this: *IFileDialogCustomize, dwIDCtl: u32, pszLabel: *s16) -> HRESULT { return this.ifiledialogcustomize_vtable.AddMenu(this, dwIDCtl, pszLabel); }

IFileDialogCustomize_AddPushButton :: inline (this: *IFileDialogCustomize, dwIDCtl: u32, pszLabel: *s16) -> HRESULT { return this.ifiledialogcustomize_vtable.AddPushButton(this, dwIDCtl, pszLabel); }

IFileDialogCustomize_AddComboBox :: inline (this: *IFileDialogCustomize, dwIDCtl: u32) -> HRESULT { return this.ifiledialogcustomize_vtable.AddComboBox(this, dwIDCtl); }

IFileDialogCustomize_AddRadioButtonList :: inline (this: *IFileDialogCustomize, dwIDCtl: u32) -> HRESULT { return this.ifiledialogcustomize_vtable.AddRadioButtonList(this, dwIDCtl); }

IFileDialogCustomize_AddCheckButton :: inline (this: *IFileDialogCustomize, dwIDCtl: u32, pszLabel: *s16, bChecked: BOOL) -> HRESULT { return this.ifiledialogcustomize_vtable.AddCheckButton(this, dwIDCtl, pszLabel, bChecked); }

IFileDialogCustomize_AddEditBox :: inline (this: *IFileDialogCustomize, dwIDCtl: u32, pszText: *s16) -> HRESULT { return this.ifiledialogcustomize_vtable.AddEditBox(this, dwIDCtl, pszText); }

IFileDialogCustomize_AddSeparator :: inline (this: *IFileDialogCustomize, dwIDCtl: u32) -> HRESULT { return this.ifiledialogcustomize_vtable.AddSeparator(this, dwIDCtl); }

IFileDialogCustomize_AddText :: inline (this: *IFileDialogCustomize, dwIDCtl: u32, pszText: *s16) -> HRESULT { return this.ifiledialogcustomize_vtable.AddText(this, dwIDCtl, pszText); }

IFileDialogCustomize_SetControlLabel :: inline (this: *IFileDialogCustomize, dwIDCtl: u32, pszLabel: *s16) -> HRESULT { return this.ifiledialogcustomize_vtable.SetControlLabel(this, dwIDCtl, pszLabel); }

IFileDialogCustomize_GetControlState :: inline (this: *IFileDialogCustomize, dwIDCtl: u32, pdwState: *CDCONTROLSTATEF) -> HRESULT { return this.ifiledialogcustomize_vtable.GetControlState(this, dwIDCtl, pdwState); }

IFileDialogCustomize_SetControlState :: inline (this: *IFileDialogCustomize, dwIDCtl: u32, dwState: CDCONTROLSTATEF) -> HRESULT { return this.ifiledialogcustomize_vtable.SetControlState(this, dwIDCtl, dwState); }

IFileDialogCustomize_GetEditBoxText :: inline (this: *IFileDialogCustomize, dwIDCtl: u32, ppszText: **s16) -> HRESULT { return this.ifiledialogcustomize_vtable.GetEditBoxText(this, dwIDCtl, ppszText); }

IFileDialogCustomize_SetEditBoxText :: inline (this: *IFileDialogCustomize, dwIDCtl: u32, pszText: *s16) -> HRESULT { return this.ifiledialogcustomize_vtable.SetEditBoxText(this, dwIDCtl, pszText); }

IFileDialogCustomize_GetCheckButtonState :: inline (this: *IFileDialogCustomize, dwIDCtl: u32, pbChecked: *BOOL) -> HRESULT { return this.ifiledialogcustomize_vtable.GetCheckButtonState(this, dwIDCtl, pbChecked); }

IFileDialogCustomize_SetCheckButtonState :: inline (this: *IFileDialogCustomize, dwIDCtl: u32, bChecked: BOOL) -> HRESULT { return this.ifiledialogcustomize_vtable.SetCheckButtonState(this, dwIDCtl, bChecked); }

IFileDialogCustomize_AddControlItem :: inline (this: *IFileDialogCustomize, dwIDCtl: u32, dwIDItem: u32, pszLabel: *s16) -> HRESULT { return this.ifiledialogcustomize_vtable.AddControlItem(this, dwIDCtl, dwIDItem, pszLabel); }

IFileDialogCustomize_RemoveControlItem :: inline (this: *IFileDialogCustomize, dwIDCtl: u32, dwIDItem: u32) -> HRESULT { return this.ifiledialogcustomize_vtable.RemoveControlItem(this, dwIDCtl, dwIDItem); }

IFileDialogCustomize_RemoveAllControlItems :: inline (this: *IFileDialogCustomize, dwIDCtl: u32) -> HRESULT { return this.ifiledialogcustomize_vtable.RemoveAllControlItems(this, dwIDCtl); }

IFileDialogCustomize_GetControlItemState :: inline (this: *IFileDialogCustomize, dwIDCtl: u32, dwIDItem: u32, pdwState: *CDCONTROLSTATEF) -> HRESULT { return this.ifiledialogcustomize_vtable.GetControlItemState(this, dwIDCtl, dwIDItem, pdwState); }

IFileDialogCustomize_SetControlItemState :: inline (this: *IFileDialogCustomize, dwIDCtl: u32, dwIDItem: u32, dwState: CDCONTROLSTATEF) -> HRESULT { return this.ifiledialogcustomize_vtable.SetControlItemState(this, dwIDCtl, dwIDItem, dwState); }

IFileDialogCustomize_GetSelectedControlItem :: inline (this: *IFileDialogCustomize, dwIDCtl: u32, pdwIDItem: *u32) -> HRESULT { return this.ifiledialogcustomize_vtable.GetSelectedControlItem(this, dwIDCtl, pdwIDItem); }

IFileDialogCustomize_SetSelectedControlItem :: inline (this: *IFileDialogCustomize, dwIDCtl: u32, dwIDItem: u32) -> HRESULT { return this.ifiledialogcustomize_vtable.SetSelectedControlItem(this, dwIDCtl, dwIDItem); }

IFileDialogCustomize_StartVisualGroup :: inline (this: *IFileDialogCustomize, dwIDCtl: u32, pszLabel: *s16) -> HRESULT { return this.ifiledialogcustomize_vtable.StartVisualGroup(this, dwIDCtl, pszLabel); }

IFileDialogCustomize_EndVisualGroup :: inline (this: *IFileDialogCustomize) -> HRESULT { return this.ifiledialogcustomize_vtable.EndVisualGroup(this); }

IFileDialogCustomize_MakeProminent :: inline (this: *IFileDialogCustomize, dwIDCtl: u32) -> HRESULT { return this.ifiledialogcustomize_vtable.MakeProminent(this, dwIDCtl); }

IFileDialogCustomize_SetControlItemText :: inline (this: *IFileDialogCustomize, dwIDCtl: u32, dwIDItem: u32, pszLabel: *s16) -> HRESULT { return this.ifiledialogcustomize_vtable.SetControlItemText(this, dwIDCtl, dwIDItem, pszLabel); }

vtable :: (obj: *IFileDialogCustomize) -> *IFileDialogCustomize_VTable { return obj.ifiledialogcustomize_vtable; }


ASSOCIATIONLEVEL :: enum s32 {
    MACHINE   :: 0;
    EFFECTIVE :: 1;
    USER      :: 2;

    AL_MACHINE   :: MACHINE;
    AL_EFFECTIVE :: EFFECTIVE;
    AL_USER      :: USER;
}

ASSOCIATIONTYPE :: enum s32 {
    FILEEXTENSION   :: 0;
    URLPROTOCOL     :: 1;
    STARTMENUCLIENT :: 2;
    MIMETYPE        :: 3;

    AT_FILEEXTENSION   :: FILEEXTENSION;
    AT_URLPROTOCOL     :: URLPROTOCOL;
    AT_STARTMENUCLIENT :: STARTMENUCLIENT;
    AT_MIMETYPE        :: MIMETYPE;
}


IApplicationAssociationRegistration_UUID :: "4e530b0a-e611-4c77-a3ac-9031d022281b";
IApplicationAssociationRegistration :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iapplicationassociationregistration_vtable: *IApplicationAssociationRegistration_VTable;
}
IApplicationAssociationRegistration_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    QueryCurrentDefault: (this: *IApplicationAssociationRegistration, pszQuery: *s16, atQueryType: ASSOCIATIONTYPE, alQueryLevel: ASSOCIATIONLEVEL, ppszAssociation: **s16) -> HRESULT #cpp_method;

    QueryAppIsDefault: (this: *IApplicationAssociationRegistration, pszQuery: *s16, atQueryType: ASSOCIATIONTYPE, alQueryLevel: ASSOCIATIONLEVEL, pszAppRegistryName: *s16, pfDefault: *BOOL) -> HRESULT #cpp_method;

    QueryAppIsDefaultAll: (this: *IApplicationAssociationRegistration, alQueryLevel: ASSOCIATIONLEVEL, pszAppRegistryName: *s16, pfDefault: *BOOL) -> HRESULT #cpp_method;

    SetAppAsDefault: (this: *IApplicationAssociationRegistration, pszAppRegistryName: *s16, pszSet: *s16, atSetType: ASSOCIATIONTYPE) -> HRESULT #cpp_method;

    SetAppAsDefaultAll: (this: *IApplicationAssociationRegistration, pszAppRegistryName: *s16) -> HRESULT #cpp_method;

    ClearUserAssociations: (this: *IApplicationAssociationRegistration) -> HRESULT #cpp_method;
}

IApplicationAssociationRegistration_QueryCurrentDefault :: inline (this: *IApplicationAssociationRegistration, pszQuery: *s16, atQueryType: ASSOCIATIONTYPE, alQueryLevel: ASSOCIATIONLEVEL, ppszAssociation: **s16) -> HRESULT { return this.iapplicationassociationregistration_vtable.QueryCurrentDefault(this, pszQuery, atQueryType, alQueryLevel, ppszAssociation); }

IApplicationAssociationRegistration_QueryAppIsDefault :: inline (this: *IApplicationAssociationRegistration, pszQuery: *s16, atQueryType: ASSOCIATIONTYPE, alQueryLevel: ASSOCIATIONLEVEL, pszAppRegistryName: *s16, pfDefault: *BOOL) -> HRESULT { return this.iapplicationassociationregistration_vtable.QueryAppIsDefault(this, pszQuery, atQueryType, alQueryLevel, pszAppRegistryName, pfDefault); }

IApplicationAssociationRegistration_QueryAppIsDefaultAll :: inline (this: *IApplicationAssociationRegistration, alQueryLevel: ASSOCIATIONLEVEL, pszAppRegistryName: *s16, pfDefault: *BOOL) -> HRESULT { return this.iapplicationassociationregistration_vtable.QueryAppIsDefaultAll(this, alQueryLevel, pszAppRegistryName, pfDefault); }

IApplicationAssociationRegistration_SetAppAsDefault :: inline (this: *IApplicationAssociationRegistration, pszAppRegistryName: *s16, pszSet: *s16, atSetType: ASSOCIATIONTYPE) -> HRESULT { return this.iapplicationassociationregistration_vtable.SetAppAsDefault(this, pszAppRegistryName, pszSet, atSetType); }

IApplicationAssociationRegistration_SetAppAsDefaultAll :: inline (this: *IApplicationAssociationRegistration, pszAppRegistryName: *s16) -> HRESULT { return this.iapplicationassociationregistration_vtable.SetAppAsDefaultAll(this, pszAppRegistryName); }

IApplicationAssociationRegistration_ClearUserAssociations :: inline (this: *IApplicationAssociationRegistration) -> HRESULT { return this.iapplicationassociationregistration_vtable.ClearUserAssociations(this); }

vtable :: (obj: *IApplicationAssociationRegistration) -> *IApplicationAssociationRegistration_VTable { return obj.iapplicationassociationregistration_vtable; }


SHCreateAssociationRegistration :: (riid: *IID, ppv: **void) -> HRESULT #foreign shell32;
SHCreateAssociationRegistration :: (riid: IID, ppv: **void) -> HRESULT #no_context {
    return SHCreateAssociationRegistration(*riid, ppv);
}

DELEGATEITEMID :: struct {
    cbSize:  u16;
    wOuter:  u16;
    cbInner: u16;
    rgb:     [1] u8;
}

PCDELEGATEITEMID :: *DELEGATEITEMID;
PDELEGATEITEMID :: *DELEGATEITEMID;


IDelegateFolder_UUID :: "ADD8BA80-002B-11D0-8F0F-00C04FD7D062";
IDelegateFolder :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; idelegatefolder_vtable: *IDelegateFolder_VTable;
}
IDelegateFolder_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SetItemAlloc: (this: *IDelegateFolder, pmalloc: *IMalloc) -> HRESULT #cpp_method;
}
IDelegateFolder_SetItemAlloc :: inline (this: *IDelegateFolder, pmalloc: *IMalloc) -> HRESULT { return this.idelegatefolder_vtable.SetItemAlloc(this, pmalloc); }

vtable :: (obj: *IDelegateFolder) -> *IDelegateFolder_VTable { return obj.idelegatefolder_vtable; }


BROWSERFRAMEOPTIONS :: enum s32 {
    FO_NONE                             :: 0;
    FO_BROWSER_PERSIST_SETTINGS         :: 1;
    FO_RENAME_FOLDER_OPTIONS_TOINTERNET :: 2;
    FO_BOTH_OPTIONS                     :: 4;
    IF_PREFER_INTERNET_SHORTCUT         :: 8;
    FO_BROWSE_NO_IN_NEW_PROCESS         :: 16;
    FO_ENABLE_HYPERLINK_TRACKING        :: 32;
    FO_USE_IE_OFFLINE_SUPPORT           :: 64;
    FO_SUBSTITUE_INTERNET_START_PAGE    :: 128;
    FO_USE_IE_LOGOBANDING               :: 256;
    FO_ADD_IE_TOCAPTIONBAR              :: 512;
    FO_USE_DIALUP_REF                   :: 1024;
    FO_USE_IE_TOOLBAR                   :: 2048;
    FO_NO_PARENT_FOLDER_SUPPORT         :: 4096;
    FO_NO_REOPEN_NEXT_RESTART           :: 8192;
    FO_GO_HOME_PAGE                     :: 16384;
    FO_PREFER_IEPROCESS                 :: 32768;
    FO_SHOW_NAVIGATION_CANCELLED        :: 65536;
    FO_USE_IE_STATUSBAR                 :: 131072;
    FO_QUERY_ALL                        :: -1;

    BFO_NONE                             :: FO_NONE;
    BFO_BROWSER_PERSIST_SETTINGS         :: FO_BROWSER_PERSIST_SETTINGS;
    BFO_RENAME_FOLDER_OPTIONS_TOINTERNET :: FO_RENAME_FOLDER_OPTIONS_TOINTERNET;
    BFO_BOTH_OPTIONS                     :: FO_BOTH_OPTIONS;
    BIF_PREFER_INTERNET_SHORTCUT         :: IF_PREFER_INTERNET_SHORTCUT;
    BFO_BROWSE_NO_IN_NEW_PROCESS         :: FO_BROWSE_NO_IN_NEW_PROCESS;
    BFO_ENABLE_HYPERLINK_TRACKING        :: FO_ENABLE_HYPERLINK_TRACKING;
    BFO_USE_IE_OFFLINE_SUPPORT           :: FO_USE_IE_OFFLINE_SUPPORT;
    BFO_SUBSTITUE_INTERNET_START_PAGE    :: FO_SUBSTITUE_INTERNET_START_PAGE;
    BFO_USE_IE_LOGOBANDING               :: FO_USE_IE_LOGOBANDING;
    BFO_ADD_IE_TOCAPTIONBAR              :: FO_ADD_IE_TOCAPTIONBAR;
    BFO_USE_DIALUP_REF                   :: FO_USE_DIALUP_REF;
    BFO_USE_IE_TOOLBAR                   :: FO_USE_IE_TOOLBAR;
    BFO_NO_PARENT_FOLDER_SUPPORT         :: FO_NO_PARENT_FOLDER_SUPPORT;
    BFO_NO_REOPEN_NEXT_RESTART           :: FO_NO_REOPEN_NEXT_RESTART;
    BFO_GO_HOME_PAGE                     :: FO_GO_HOME_PAGE;
    BFO_PREFER_IEPROCESS                 :: FO_PREFER_IEPROCESS;
    BFO_SHOW_NAVIGATION_CANCELLED        :: FO_SHOW_NAVIGATION_CANCELLED;
    BFO_USE_IE_STATUSBAR                 :: FO_USE_IE_STATUSBAR;
    BFO_QUERY_ALL                        :: FO_QUERY_ALL;
}

BROWSERFRAMEOPTIONS :: u32;


IBrowserFrameOptions_UUID :: "10DF43C8-1DBE-11d3-8B34-006097DF5BD4";
IBrowserFrameOptions :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ibrowserframeoptions_vtable: *IBrowserFrameOptions_VTable;
}
IBrowserFrameOptions_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetFrameOptions: (this: *IBrowserFrameOptions, dwMask: BROWSERFRAMEOPTIONS, pdwOptions: *BROWSERFRAMEOPTIONS) -> HRESULT #cpp_method;
}
IBrowserFrameOptions_GetFrameOptions :: inline (this: *IBrowserFrameOptions, dwMask: BROWSERFRAMEOPTIONS, pdwOptions: *BROWSERFRAMEOPTIONS) -> HRESULT { return this.ibrowserframeoptions_vtable.GetFrameOptions(this, dwMask, pdwOptions); }

vtable :: (obj: *IBrowserFrameOptions) -> *IBrowserFrameOptions_VTable { return obj.ibrowserframeoptions_vtable; }


NWMF :: enum s32 {
    UNLOADING       :: 1;
    USERINITED      :: 2;
    FIRST           :: 4;
    OVERRIDEKEY     :: 8;
    SHOWHELP        :: 16;
    HTMLDIALOG      :: 32;
    FROMDIALOGCHILD :: 64;
    USERREQUESTED   :: 128;
    USERALLOWED     :: 256;
    FORCEWINDOW     :: 65536;
    FORCETAB        :: 131072;
    SUGGESTWINDOW   :: 262144;
    SUGGESTTAB      :: 524288;
    INACTIVETAB     :: 1048576;

    NWMF_UNLOADING       :: UNLOADING;
    NWMF_USERINITED      :: USERINITED;
    NWMF_FIRST           :: FIRST;
    NWMF_OVERRIDEKEY     :: OVERRIDEKEY;
    NWMF_SHOWHELP        :: SHOWHELP;
    NWMF_HTMLDIALOG      :: HTMLDIALOG;
    NWMF_FROMDIALOGCHILD :: FROMDIALOGCHILD;
    NWMF_USERREQUESTED   :: USERREQUESTED;
    NWMF_USERALLOWED     :: USERALLOWED;
    NWMF_FORCEWINDOW     :: FORCEWINDOW;
    NWMF_FORCETAB        :: FORCETAB;
    NWMF_SUGGESTWINDOW   :: SUGGESTWINDOW;
    NWMF_SUGGESTTAB      :: SUGGESTTAB;
    NWMF_INACTIVETAB     :: INACTIVETAB;
}


INewWindowManager_UUID :: "D2BC4C84-3F72-4a52-A604-7BCBF3982CBB";
INewWindowManager :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; inewwindowmanager_vtable: *INewWindowManager_VTable;
}
INewWindowManager_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    EvaluateNewWindow: (this: *INewWindowManager, pszUrl: *s16, pszName: *s16, pszUrlContext: *s16, pszFeatures: *s16, fReplace: BOOL, dwFlags: u32, dwUserActionTime: u32) -> HRESULT #cpp_method;
}
INewWindowManager_EvaluateNewWindow :: inline (this: *INewWindowManager, pszUrl: *s16, pszName: *s16, pszUrlContext: *s16, pszFeatures: *s16, fReplace: BOOL, dwFlags: u32, dwUserActionTime: u32) -> HRESULT { return this.inewwindowmanager_vtable.EvaluateNewWindow(this, pszUrl, pszName, pszUrlContext, pszFeatures, fReplace, dwFlags, dwUserActionTime); }

vtable :: (obj: *INewWindowManager) -> *INewWindowManager_VTable { return obj.inewwindowmanager_vtable; }


ATTACHMENT_PROMPT :: enum s32 {
    NONE         :: 0;
    SAVE         :: 1;
    EXEC         :: 2;
    EXEC_OR_SAVE :: 3;

    ATTACHMENT_PROMPT_NONE         :: NONE;
    ATTACHMENT_PROMPT_SAVE         :: SAVE;
    ATTACHMENT_PROMPT_EXEC         :: EXEC;
    ATTACHMENT_PROMPT_EXEC_OR_SAVE :: EXEC_OR_SAVE;
}

ATTACHMENT_ACTION :: enum s32 {
    CANCEL :: 0;
    SAVE   :: 1;
    EXEC   :: 2;

    ATTACHMENT_ACTION_CANCEL :: CANCEL;
    ATTACHMENT_ACTION_SAVE   :: SAVE;
    ATTACHMENT_ACTION_EXEC   :: EXEC;
}


IAttachmentExecute_UUID :: "73db1241-1e85-4581-8e4f-a81e1d0f8c57";
IAttachmentExecute :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iattachmentexecute_vtable: *IAttachmentExecute_VTable;
}
IAttachmentExecute_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SetClientTitle: (this: *IAttachmentExecute, pszTitle: *s16) -> HRESULT #cpp_method;

    SetClientGuid: (this: *IAttachmentExecute, guid: *GUID) -> HRESULT #cpp_method;

    SetLocalPath: (this: *IAttachmentExecute, pszLocalPath: *s16) -> HRESULT #cpp_method;

    SetFileName: (this: *IAttachmentExecute, pszFileName: *s16) -> HRESULT #cpp_method;

    SetSource: (this: *IAttachmentExecute, pszSource: *s16) -> HRESULT #cpp_method;

    SetReferrer: (this: *IAttachmentExecute, pszReferrer: *s16) -> HRESULT #cpp_method;

    CheckPolicy: (this: *IAttachmentExecute) -> HRESULT #cpp_method;

    Prompt: (this: *IAttachmentExecute, hwnd: HWND, prompt: ATTACHMENT_PROMPT, paction: *ATTACHMENT_ACTION) -> HRESULT #cpp_method;

    Save: (this: *IAttachmentExecute) -> HRESULT #cpp_method;

    Execute: (this: *IAttachmentExecute, hwnd: HWND, pszVerb: *s16, phProcess: *HANDLE) -> HRESULT #cpp_method;

    SaveWithUI: (this: *IAttachmentExecute, hwnd: HWND) -> HRESULT #cpp_method;

    ClearClientState: (this: *IAttachmentExecute) -> HRESULT #cpp_method;
}

IAttachmentExecute_SetClientTitle :: inline (this: *IAttachmentExecute, pszTitle: *s16) -> HRESULT { return this.iattachmentexecute_vtable.SetClientTitle(this, pszTitle); }

IAttachmentExecute_SetClientGuid :: inline (this: *IAttachmentExecute, guid: *GUID) -> HRESULT { return this.iattachmentexecute_vtable.SetClientGuid(this, guid); }

IAttachmentExecute_SetLocalPath :: inline (this: *IAttachmentExecute, pszLocalPath: *s16) -> HRESULT { return this.iattachmentexecute_vtable.SetLocalPath(this, pszLocalPath); }

IAttachmentExecute_SetFileName :: inline (this: *IAttachmentExecute, pszFileName: *s16) -> HRESULT { return this.iattachmentexecute_vtable.SetFileName(this, pszFileName); }

IAttachmentExecute_SetSource :: inline (this: *IAttachmentExecute, pszSource: *s16) -> HRESULT { return this.iattachmentexecute_vtable.SetSource(this, pszSource); }

IAttachmentExecute_SetReferrer :: inline (this: *IAttachmentExecute, pszReferrer: *s16) -> HRESULT { return this.iattachmentexecute_vtable.SetReferrer(this, pszReferrer); }

IAttachmentExecute_CheckPolicy :: inline (this: *IAttachmentExecute) -> HRESULT { return this.iattachmentexecute_vtable.CheckPolicy(this); }

IAttachmentExecute_Prompt :: inline (this: *IAttachmentExecute, hwnd: HWND, prompt: ATTACHMENT_PROMPT, paction: *ATTACHMENT_ACTION) -> HRESULT { return this.iattachmentexecute_vtable.Prompt(this, hwnd, prompt, paction); }

IAttachmentExecute_Save :: inline (this: *IAttachmentExecute) -> HRESULT { return this.iattachmentexecute_vtable.Save(this); }

IAttachmentExecute_Execute :: inline (this: *IAttachmentExecute, hwnd: HWND, pszVerb: *s16, phProcess: *HANDLE) -> HRESULT { return this.iattachmentexecute_vtable.Execute(this, hwnd, pszVerb, phProcess); }

IAttachmentExecute_SaveWithUI :: inline (this: *IAttachmentExecute, hwnd: HWND) -> HRESULT { return this.iattachmentexecute_vtable.SaveWithUI(this, hwnd); }

IAttachmentExecute_ClearClientState :: inline (this: *IAttachmentExecute) -> HRESULT { return this.iattachmentexecute_vtable.ClearClientState(this); }

vtable :: (obj: *IAttachmentExecute) -> *IAttachmentExecute_VTable { return obj.iattachmentexecute_vtable; }


tagSMDATA :: struct {
    dwMask:      u32;
    dwFlags:     u32;
    hmenu:       HMENU;
    hwnd:        HWND;
    uId:         u32;
    uIdParent:   u32;
    uIdAncestor: u32;
    punk:        *IUnknown;
    pidlFolder:  LPITEMIDLIST;
    pidlItem:    LPITEMIDLIST;
    psf:         *IShellFolder;
    pvUserData:  *void;
}

SMDATA :: tagSMDATA;

tagSMINFO :: struct {
    dwMask:  u32;
    dwType:  u32;
    dwFlags: u32;
    iIcon:   s32;
}

SMINFO :: tagSMINFO;

PSMINFO :: *tagSMINFO;

SHCSCHANGENOTIFYSTRUCT :: struct {
    lEvent: s32;
    pidl1:  LPCITEMIDLIST;
    pidl2:  LPCITEMIDLIST;
}

SMCSHCHANGENOTIFYSTRUCT :: SHCSCHANGENOTIFYSTRUCT;

PSMCSHCHANGENOTIFYSTRUCT :: *SHCSCHANGENOTIFYSTRUCT;

tagSMINFOMASK :: enum s32 {
    TYPE  :: 1;
    FLAGS :: 2;
    ICON  :: 4;

    SMIM_TYPE  :: TYPE;
    SMIM_FLAGS :: FLAGS;
    SMIM_ICON  :: ICON;
}

tagSMINFOTYPE :: enum s32 {
    SEPARATOR :: 1;
    STRING    :: 2;

    SMIT_SEPARATOR :: SEPARATOR;
    SMIT_STRING    :: STRING;
}

tagSMINFOFLAGS :: enum s32 {
    ICON        :: 1;
    ACCELERATOR :: 2;
    DROPTARGET  :: 4;
    SUBMENU     :: 8;
    CHECKED     :: 32;
    DROPCASCADE :: 64;
    HIDDEN      :: 128;
    DISABLED    :: 256;
    TRACKPOPUP  :: 512;
    DEMOTED     :: 1024;
    ALTSTATE    :: 2048;
    DRAGNDROP   :: 4096;
    NEW         :: 8192;

    SMIF_ICON        :: ICON;
    SMIF_ACCELERATOR :: ACCELERATOR;
    SMIF_DROPTARGET  :: DROPTARGET;
    SMIF_SUBMENU     :: SUBMENU;
    SMIF_CHECKED     :: CHECKED;
    SMIF_DROPCASCADE :: DROPCASCADE;
    SMIF_HIDDEN      :: HIDDEN;
    SMIF_DISABLED    :: DISABLED;
    SMIF_TRACKPOPUP  :: TRACKPOPUP;
    SMIF_DEMOTED     :: DEMOTED;
    SMIF_ALTSTATE    :: ALTSTATE;
    SMIF_DRAGNDROP   :: DRAGNDROP;
    SMIF_NEW         :: NEW;
}


IShellMenuCallback_UUID :: "4CA300A1-9B8D-11d1-8B22-00C04FD918D0";
IShellMenuCallback :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ishellmenucallback_vtable: *IShellMenuCallback_VTable;
}
IShellMenuCallback_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    CallbackSM: (this: *IShellMenuCallback, psmd: LPSMDATA, uMsg: u32, wParam: WPARAM, lParam: LPARAM) -> HRESULT #cpp_method;
}
IShellMenuCallback_CallbackSM :: inline (this: *IShellMenuCallback, psmd: LPSMDATA, uMsg: u32, wParam: WPARAM, lParam: LPARAM) -> HRESULT { return this.ishellmenucallback_vtable.CallbackSM(this, psmd, uMsg, wParam, lParam); }

vtable :: (obj: *IShellMenuCallback) -> *IShellMenuCallback_VTable { return obj.ishellmenucallback_vtable; }



IShellMenu_UUID :: "EE1F7637-E138-11d1-8379-00C04FD918D0";
IShellMenu :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ishellmenu_vtable: *IShellMenu_VTable;
}
IShellMenu_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Initialize: (this: *IShellMenu, psmc: *IShellMenuCallback, uId: u32, uIdAncestor: u32, dwFlags: u32) -> HRESULT #cpp_method;

    GetMenuInfo: (this: *IShellMenu, ppsmc: **IShellMenuCallback, puId: *u32, puIdAncestor: *u32, pdwFlags: *u32) -> HRESULT #cpp_method;

    SetShellFolder: (this: *IShellMenu, psf: *IShellFolder, pidlFolder: LPCITEMIDLIST, hKey: HKEY, dwFlags: u32) -> HRESULT #cpp_method;

    GetShellFolder: (this: *IShellMenu, pdwFlags: *u32, ppidl: *LPITEMIDLIST, riid: *IID, ppv: **void) -> HRESULT #cpp_method;

    SetMenu: (this: *IShellMenu, hmenu: HMENU, hwnd: HWND, dwFlags: u32) -> HRESULT #cpp_method;

    GetMenu: (this: *IShellMenu, phmenu: *HMENU, phwnd: *HWND, pdwFlags: *u32) -> HRESULT #cpp_method;

    InvalidateItem: (this: *IShellMenu, psmd: LPSMDATA, dwFlags: u32) -> HRESULT #cpp_method;

    GetState: (this: *IShellMenu, psmd: LPSMDATA) -> HRESULT #cpp_method;

    SetMenuToolbar: (this: *IShellMenu, punk: *IUnknown, dwFlags: u32) -> HRESULT #cpp_method;
}

IShellMenu_Initialize :: inline (this: *IShellMenu, psmc: *IShellMenuCallback, uId: u32, uIdAncestor: u32, dwFlags: u32) -> HRESULT { return this.ishellmenu_vtable.Initialize(this, psmc, uId, uIdAncestor, dwFlags); }

IShellMenu_GetMenuInfo :: inline (this: *IShellMenu, ppsmc: **IShellMenuCallback, puId: *u32, puIdAncestor: *u32, pdwFlags: *u32) -> HRESULT { return this.ishellmenu_vtable.GetMenuInfo(this, ppsmc, puId, puIdAncestor, pdwFlags); }

IShellMenu_SetShellFolder :: inline (this: *IShellMenu, psf: *IShellFolder, pidlFolder: LPCITEMIDLIST, hKey: HKEY, dwFlags: u32) -> HRESULT { return this.ishellmenu_vtable.SetShellFolder(this, psf, pidlFolder, hKey, dwFlags); }

IShellMenu_GetShellFolder :: inline (this: *IShellMenu, pdwFlags: *u32, ppidl: *LPITEMIDLIST, riid: *IID, ppv: **void) -> HRESULT { return this.ishellmenu_vtable.GetShellFolder(this, pdwFlags, ppidl, riid, ppv); }

IShellMenu_SetMenu :: inline (this: *IShellMenu, hmenu: HMENU, hwnd: HWND, dwFlags: u32) -> HRESULT { return this.ishellmenu_vtable.SetMenu(this, hmenu, hwnd, dwFlags); }

IShellMenu_GetMenu :: inline (this: *IShellMenu, phmenu: *HMENU, phwnd: *HWND, pdwFlags: *u32) -> HRESULT { return this.ishellmenu_vtable.GetMenu(this, phmenu, phwnd, pdwFlags); }

IShellMenu_InvalidateItem :: inline (this: *IShellMenu, psmd: LPSMDATA, dwFlags: u32) -> HRESULT { return this.ishellmenu_vtable.InvalidateItem(this, psmd, dwFlags); }

IShellMenu_GetState :: inline (this: *IShellMenu, psmd: LPSMDATA) -> HRESULT { return this.ishellmenu_vtable.GetState(this, psmd); }

IShellMenu_SetMenuToolbar :: inline (this: *IShellMenu, punk: *IUnknown, dwFlags: u32) -> HRESULT { return this.ishellmenu_vtable.SetMenuToolbar(this, punk, dwFlags); }

vtable :: (obj: *IShellMenu) -> *IShellMenu_VTable { return obj.ishellmenu_vtable; }


KF_CATEGORY :: enum s32 {
    VIRTUAL :: 1;
    FIXED   :: 2;
    COMMON  :: 3;
    PERUSER :: 4;

    KF_CATEGORY_VIRTUAL :: VIRTUAL;
    KF_CATEGORY_FIXED   :: FIXED;
    KF_CATEGORY_COMMON  :: COMMON;
    KF_CATEGORY_PERUSER :: PERUSER;
}

KF_DEFINITION_FLAGS :: enum s32 {
    LOCAL_REDIRECT_ONLY :: 2;
    ROAMABLE            :: 4;
    PRECREATE           :: 8;
    STREAM              :: 16;
    PUBLISHEXPANDEDPATH :: 32;
    NO_REDIRECT_UI      :: 64;

    KFDF_LOCAL_REDIRECT_ONLY :: LOCAL_REDIRECT_ONLY;
    KFDF_ROAMABLE            :: ROAMABLE;
    KFDF_PRECREATE           :: PRECREATE;
    KFDF_STREAM              :: STREAM;
    KFDF_PUBLISHEXPANDEDPATH :: PUBLISHEXPANDEDPATH;
    KFDF_NO_REDIRECT_UI      :: NO_REDIRECT_UI;
}

KF_DEFINITION_FLAGS :: u32;

KF_REDIRECT_FLAGS :: enum s32 {
    USER_EXCLUSIVE               :: 1;
    COPY_SOURCE_DACL             :: 2;
    OWNER_USER                   :: 4;
    SET_OWNER_EXPLICIT           :: 8;
    CHECK_ONLY                   :: 16;
    WITH_UI                      :: 32;
    UNPIN                        :: 64;
    PIN                          :: 128;
    COPY_CONTENTS                :: 512;
    DEL_SOURCE_CONTENTS          :: 1024;
    EXCLUDE_ALL_KNOWN_SUBFOLDERS :: 2048;

    KF_REDIRECT_USER_EXCLUSIVE               :: USER_EXCLUSIVE;
    KF_REDIRECT_COPY_SOURCE_DACL             :: COPY_SOURCE_DACL;
    KF_REDIRECT_OWNER_USER                   :: OWNER_USER;
    KF_REDIRECT_SET_OWNER_EXPLICIT           :: SET_OWNER_EXPLICIT;
    KF_REDIRECT_CHECK_ONLY                   :: CHECK_ONLY;
    KF_REDIRECT_WITH_UI                      :: WITH_UI;
    KF_REDIRECT_UNPIN                        :: UNPIN;
    KF_REDIRECT_PIN                          :: PIN;
    KF_REDIRECT_COPY_CONTENTS                :: COPY_CONTENTS;
    KF_REDIRECT_DEL_SOURCE_CONTENTS          :: DEL_SOURCE_CONTENTS;
    KF_REDIRECT_EXCLUDE_ALL_KNOWN_SUBFOLDERS :: EXCLUDE_ALL_KNOWN_SUBFOLDERS;
}

KF_REDIRECTION_CAPABILITIES :: enum s32 {
    ALLOW_ALL              :: 255;
    REDIRECTABLE           :: 1;
    DENY_ALL               :: 1048320;
    DENY_POLICY_REDIRECTED :: 256;
    DENY_POLICY            :: 512;
    DENY_PERMISSIONS       :: 1024;

    KF_REDIRECTION_CAPABILITIES_ALLOW_ALL              :: ALLOW_ALL;
    KF_REDIRECTION_CAPABILITIES_REDIRECTABLE           :: REDIRECTABLE;
    KF_REDIRECTION_CAPABILITIES_DENY_ALL               :: DENY_ALL;
    KF_REDIRECTION_CAPABILITIES_DENY_POLICY_REDIRECTED :: DENY_POLICY_REDIRECTED;
    KF_REDIRECTION_CAPABILITIES_DENY_POLICY            :: DENY_POLICY;
    KF_REDIRECTION_CAPABILITIES_DENY_PERMISSIONS       :: DENY_PERMISSIONS;
}

KF_REDIRECTION_CAPABILITIES :: u32;

KNOWNFOLDER_DEFINITION :: struct {
    category:         KF_CATEGORY;
    pszName:          *s16;
    pszDescription:   *s16;
    fidParent:        KNOWNFOLDERID;
    pszRelativePath:  *s16;
    pszParsingName:   *s16;
    pszTooltip:       *s16;
    pszLocalizedName: *s16;
    pszIcon:          *s16;
    pszSecurity:      *s16;
    dwAttributes:     u32;
    kfdFlags:         KF_DEFINITION_FLAGS;
    ftidType:         FOLDERTYPEID;
}


IKnownFolder_UUID :: "3AA7AF7E-9B36-420c-A8E3-F77D4674A488";
IKnownFolder :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iknownfolder_vtable: *IKnownFolder_VTable;
}
IKnownFolder_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetId: (this: *IKnownFolder, pkfid: *KNOWNFOLDERID) -> HRESULT #cpp_method;

    GetCategory: (this: *IKnownFolder, pCategory: *KF_CATEGORY) -> HRESULT #cpp_method;

    GetShellItem: (this: *IKnownFolder, dwFlags: u32, riid: *IID, ppv: **void) -> HRESULT #cpp_method;

    GetPath: (this: *IKnownFolder, dwFlags: u32, ppszPath: **s16) -> HRESULT #cpp_method;

    SetPath: (this: *IKnownFolder, dwFlags: u32, pszPath: *s16) -> HRESULT #cpp_method;

    GetIDList: (this: *IKnownFolder, dwFlags: u32, ppidl: *LPITEMIDLIST) -> HRESULT #cpp_method;

    GetFolderType: (this: *IKnownFolder, pftid: *FOLDERTYPEID) -> HRESULT #cpp_method;

    GetRedirectionCapabilities: (this: *IKnownFolder, pCapabilities: *KF_REDIRECTION_CAPABILITIES) -> HRESULT #cpp_method;

    GetFolderDefinition: (this: *IKnownFolder, pKFD: *KNOWNFOLDER_DEFINITION) -> HRESULT #cpp_method;
}

IKnownFolder_GetId :: inline (this: *IKnownFolder, pkfid: *KNOWNFOLDERID) -> HRESULT { return this.iknownfolder_vtable.GetId(this, pkfid); }

IKnownFolder_GetCategory :: inline (this: *IKnownFolder, pCategory: *KF_CATEGORY) -> HRESULT { return this.iknownfolder_vtable.GetCategory(this, pCategory); }

IKnownFolder_GetShellItem :: inline (this: *IKnownFolder, dwFlags: u32, riid: *IID, ppv: **void) -> HRESULT { return this.iknownfolder_vtable.GetShellItem(this, dwFlags, riid, ppv); }

IKnownFolder_GetPath :: inline (this: *IKnownFolder, dwFlags: u32, ppszPath: **s16) -> HRESULT { return this.iknownfolder_vtable.GetPath(this, dwFlags, ppszPath); }

IKnownFolder_SetPath :: inline (this: *IKnownFolder, dwFlags: u32, pszPath: *s16) -> HRESULT { return this.iknownfolder_vtable.SetPath(this, dwFlags, pszPath); }

IKnownFolder_GetIDList :: inline (this: *IKnownFolder, dwFlags: u32, ppidl: *LPITEMIDLIST) -> HRESULT { return this.iknownfolder_vtable.GetIDList(this, dwFlags, ppidl); }

IKnownFolder_GetFolderType :: inline (this: *IKnownFolder, pftid: *FOLDERTYPEID) -> HRESULT { return this.iknownfolder_vtable.GetFolderType(this, pftid); }

IKnownFolder_GetRedirectionCapabilities :: inline (this: *IKnownFolder, pCapabilities: *KF_REDIRECTION_CAPABILITIES) -> HRESULT { return this.iknownfolder_vtable.GetRedirectionCapabilities(this, pCapabilities); }

IKnownFolder_GetFolderDefinition :: inline (this: *IKnownFolder, pKFD: *KNOWNFOLDER_DEFINITION) -> HRESULT { return this.iknownfolder_vtable.GetFolderDefinition(this, pKFD); }

vtable :: (obj: *IKnownFolder) -> *IKnownFolder_VTable { return obj.iknownfolder_vtable; }


FFFP_MODE :: enum s32 {
    EXACTMATCH         :: 0;
    NEARESTPARENTMATCH :: 1;

    FFFP_EXACTMATCH         :: EXACTMATCH;
    FFFP_NEARESTPARENTMATCH :: NEARESTPARENTMATCH;
}


IKnownFolderManager_UUID :: "8BE2D872-86AA-4d47-B776-32CCA40C7018";
IKnownFolderManager :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iknownfoldermanager_vtable: *IKnownFolderManager_VTable;
}
IKnownFolderManager_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    FolderIdFromCsidl: (this: *IKnownFolderManager, nCsidl: s32, pfid: *KNOWNFOLDERID) -> HRESULT #cpp_method;

    FolderIdToCsidl: (this: *IKnownFolderManager, rfid: *KNOWNFOLDERID, pnCsidl: *s32) -> HRESULT #cpp_method;

    GetFolderIds: (this: *IKnownFolderManager, ppKFId: **KNOWNFOLDERID, pCount: *u32) -> HRESULT #cpp_method;

    GetFolder: (this: *IKnownFolderManager, rfid: *KNOWNFOLDERID, ppkf: **IKnownFolder) -> HRESULT #cpp_method;

    GetFolderByName: (this: *IKnownFolderManager, pszCanonicalName: *s16, ppkf: **IKnownFolder) -> HRESULT #cpp_method;

    RegisterFolder: (this: *IKnownFolderManager, rfid: *KNOWNFOLDERID, pKFD: *KNOWNFOLDER_DEFINITION) -> HRESULT #cpp_method;

    UnregisterFolder: (this: *IKnownFolderManager, rfid: *KNOWNFOLDERID) -> HRESULT #cpp_method;

    FindFolderFromPath: (this: *IKnownFolderManager, pszPath: *s16, mode: FFFP_MODE, ppkf: **IKnownFolder) -> HRESULT #cpp_method;

    FindFolderFromIDList: (this: *IKnownFolderManager, pidl: LPCITEMIDLIST, ppkf: **IKnownFolder) -> HRESULT #cpp_method;

    Redirect: (this: *IKnownFolderManager, rfid: *KNOWNFOLDERID, hwnd: HWND, flags: KF_REDIRECT_FLAGS, pszTargetPath: *s16, cFolders: u32, pExclusion: *KNOWNFOLDERID, ppszError: **s16) -> HRESULT #cpp_method;
}

IKnownFolderManager_FolderIdFromCsidl :: inline (this: *IKnownFolderManager, nCsidl: s32, pfid: *KNOWNFOLDERID) -> HRESULT { return this.iknownfoldermanager_vtable.FolderIdFromCsidl(this, nCsidl, pfid); }

IKnownFolderManager_FolderIdToCsidl :: inline (this: *IKnownFolderManager, rfid: *KNOWNFOLDERID, pnCsidl: *s32) -> HRESULT { return this.iknownfoldermanager_vtable.FolderIdToCsidl(this, rfid, pnCsidl); }

IKnownFolderManager_GetFolderIds :: inline (this: *IKnownFolderManager, ppKFId: **KNOWNFOLDERID, pCount: *u32) -> HRESULT { return this.iknownfoldermanager_vtable.GetFolderIds(this, ppKFId, pCount); }

IKnownFolderManager_GetFolder :: inline (this: *IKnownFolderManager, rfid: *KNOWNFOLDERID, ppkf: **IKnownFolder) -> HRESULT { return this.iknownfoldermanager_vtable.GetFolder(this, rfid, ppkf); }

IKnownFolderManager_GetFolderByName :: inline (this: *IKnownFolderManager, pszCanonicalName: *s16, ppkf: **IKnownFolder) -> HRESULT { return this.iknownfoldermanager_vtable.GetFolderByName(this, pszCanonicalName, ppkf); }

IKnownFolderManager_RegisterFolder :: inline (this: *IKnownFolderManager, rfid: *KNOWNFOLDERID, pKFD: *KNOWNFOLDER_DEFINITION) -> HRESULT { return this.iknownfoldermanager_vtable.RegisterFolder(this, rfid, pKFD); }

IKnownFolderManager_UnregisterFolder :: inline (this: *IKnownFolderManager, rfid: *KNOWNFOLDERID) -> HRESULT { return this.iknownfoldermanager_vtable.UnregisterFolder(this, rfid); }

IKnownFolderManager_FindFolderFromPath :: inline (this: *IKnownFolderManager, pszPath: *s16, mode: FFFP_MODE, ppkf: **IKnownFolder) -> HRESULT { return this.iknownfoldermanager_vtable.FindFolderFromPath(this, pszPath, mode, ppkf); }

IKnownFolderManager_FindFolderFromIDList :: inline (this: *IKnownFolderManager, pidl: LPCITEMIDLIST, ppkf: **IKnownFolder) -> HRESULT { return this.iknownfoldermanager_vtable.FindFolderFromIDList(this, pidl, ppkf); }

IKnownFolderManager_Redirect :: inline (this: *IKnownFolderManager, rfid: *KNOWNFOLDERID, hwnd: HWND, flags: KF_REDIRECT_FLAGS, pszTargetPath: *s16, cFolders: u32, pExclusion: *KNOWNFOLDERID, ppszError: **s16) -> HRESULT { return this.iknownfoldermanager_vtable.Redirect(this, rfid, hwnd, flags, pszTargetPath, cFolders, pExclusion, ppszError); }

vtable :: (obj: *IKnownFolderManager) -> *IKnownFolderManager_VTable { return obj.iknownfoldermanager_vtable; }


SHARE_ROLE :: enum s32 {
    INVALID     :: -1;
    READER      :: 0;
    CONTRIBUTOR :: 1;
    CO_OWNER    :: 2;
    OWNER       :: 3;
    CUSTOM      :: 4;
    MIXED       :: 5;

    SHARE_ROLE_INVALID     :: INVALID;
    SHARE_ROLE_READER      :: READER;
    SHARE_ROLE_CONTRIBUTOR :: CONTRIBUTOR;
    SHARE_ROLE_CO_OWNER    :: CO_OWNER;
    SHARE_ROLE_OWNER       :: OWNER;
    SHARE_ROLE_CUSTOM      :: CUSTOM;
    SHARE_ROLE_MIXED       :: MIXED;
}

DEF_SHARE_ID :: enum s32 {
    USERS  :: 1;
    PUBLIC :: 2;

    DEFSHAREID_USERS  :: USERS;
    DEFSHAREID_PUBLIC :: PUBLIC;
}


ISharingConfigurationManager_UUID :: "B4CD448A-9C86-4466-9201-2E62105B87AE";
ISharingConfigurationManager :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; isharingconfigurationmanager_vtable: *ISharingConfigurationManager_VTable;
}
ISharingConfigurationManager_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    CreateShare: (this: *ISharingConfigurationManager, dsid: DEF_SHARE_ID, role: SHARE_ROLE) -> HRESULT #cpp_method;

    DeleteShare: (this: *ISharingConfigurationManager, dsid: DEF_SHARE_ID) -> HRESULT #cpp_method;

    ShareExists: (this: *ISharingConfigurationManager, dsid: DEF_SHARE_ID) -> HRESULT #cpp_method;

    GetSharePermissions: (this: *ISharingConfigurationManager, dsid: DEF_SHARE_ID, pRole: *SHARE_ROLE) -> HRESULT #cpp_method;

    SharePrinters: (this: *ISharingConfigurationManager) -> HRESULT #cpp_method;

    StopSharingPrinters: (this: *ISharingConfigurationManager) -> HRESULT #cpp_method;

    ArePrintersShared: (this: *ISharingConfigurationManager) -> HRESULT #cpp_method;
}

ISharingConfigurationManager_CreateShare :: inline (this: *ISharingConfigurationManager, dsid: DEF_SHARE_ID, role: SHARE_ROLE) -> HRESULT { return this.isharingconfigurationmanager_vtable.CreateShare(this, dsid, role); }

ISharingConfigurationManager_DeleteShare :: inline (this: *ISharingConfigurationManager, dsid: DEF_SHARE_ID) -> HRESULT { return this.isharingconfigurationmanager_vtable.DeleteShare(this, dsid); }

ISharingConfigurationManager_ShareExists :: inline (this: *ISharingConfigurationManager, dsid: DEF_SHARE_ID) -> HRESULT { return this.isharingconfigurationmanager_vtable.ShareExists(this, dsid); }

ISharingConfigurationManager_GetSharePermissions :: inline (this: *ISharingConfigurationManager, dsid: DEF_SHARE_ID, pRole: *SHARE_ROLE) -> HRESULT { return this.isharingconfigurationmanager_vtable.GetSharePermissions(this, dsid, pRole); }

ISharingConfigurationManager_SharePrinters :: inline (this: *ISharingConfigurationManager) -> HRESULT { return this.isharingconfigurationmanager_vtable.SharePrinters(this); }

ISharingConfigurationManager_StopSharingPrinters :: inline (this: *ISharingConfigurationManager) -> HRESULT { return this.isharingconfigurationmanager_vtable.StopSharingPrinters(this); }

ISharingConfigurationManager_ArePrintersShared :: inline (this: *ISharingConfigurationManager) -> HRESULT { return this.isharingconfigurationmanager_vtable.ArePrintersShared(this); }

vtable :: (obj: *ISharingConfigurationManager) -> *ISharingConfigurationManager_VTable { return obj.isharingconfigurationmanager_vtable; }



IRelatedItem_UUID :: "a73ce67a-8ab1-44f1-8d43-d2fcbf6b1cd0";
IRelatedItem :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; irelateditem_vtable: *IRelatedItem_VTable;
}
IRelatedItem_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetItemIDList: (this: *IRelatedItem, ppidl: *LPITEMIDLIST) -> HRESULT #cpp_method;

    GetItem: (this: *IRelatedItem, ppsi: **IShellItem) -> HRESULT #cpp_method;
}

IRelatedItem_GetItemIDList :: inline (this: *IRelatedItem, ppidl: *LPITEMIDLIST) -> HRESULT { return this.irelateditem_vtable.GetItemIDList(this, ppidl); }

IRelatedItem_GetItem :: inline (this: *IRelatedItem, ppsi: **IShellItem) -> HRESULT { return this.irelateditem_vtable.GetItem(this, ppsi); }

vtable :: (obj: *IRelatedItem) -> *IRelatedItem_VTable { return obj.irelateditem_vtable; }



IIdentityName_UUID :: "7d903fca-d6f9-4810-8332-946c0177e247";
IIdentityName :: struct {
    #as using irelateditem: IRelatedItem;
}


IDelegateItem_UUID :: "3c5a1c94-c951-4cb7-bb6d-3b93f30cce93";
IDelegateItem :: struct {
    #as using irelateditem: IRelatedItem;
}


ICurrentItem_UUID :: "240a7174-d653-4a1d-a6d3-d4943cfbfe3d";
ICurrentItem :: struct {
    #as using irelateditem: IRelatedItem;
}


ITransferMediumItem_UUID :: "77f295d5-2d6f-4e19-b8ae-322f3e721ab5";
ITransferMediumItem :: struct {
    #as using irelateditem: IRelatedItem;
}


IDisplayItem_UUID :: "c6fd5997-9f6b-4888-8703-94e80e8cde3f";
IDisplayItem :: struct {
    #as using irelateditem: IRelatedItem;
}


IViewStateIdentityItem_UUID :: "9D264146-A94F-4195-9F9F-3BB12CE0C955";
IViewStateIdentityItem :: struct {
    #as using irelateditem: IRelatedItem;
}


IPreviewItem_UUID :: "36149969-0A8F-49c8-8B00-4AECB20222FB";
IPreviewItem :: struct {
    #as using irelateditem: IRelatedItem;
}


IDestinationStreamFactory_UUID :: "8a87781b-39a7-4a1f-aab3-a39b9c34a7d9";
IDestinationStreamFactory :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; idestinationstreamfactory_vtable: *IDestinationStreamFactory_VTable;
}
IDestinationStreamFactory_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetDestinationStream: (this: *IDestinationStreamFactory, ppstm: **IStream) -> HRESULT #cpp_method;
}
IDestinationStreamFactory_GetDestinationStream :: inline (this: *IDestinationStreamFactory, ppstm: **IStream) -> HRESULT { return this.idestinationstreamfactory_vtable.GetDestinationStream(this, ppstm); }

vtable :: (obj: *IDestinationStreamFactory) -> *IDestinationStreamFactory_VTable { return obj.idestinationstreamfactory_vtable; }



ICreateProcessInputs_UUID :: "F6EF6140-E26F-4D82-bAC4-E9BA5FD239A8";
ICreateProcessInputs :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; icreateprocessinputs_vtable: *ICreateProcessInputs_VTable;
}
ICreateProcessInputs_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetCreateFlags: (this: *ICreateProcessInputs, pdwCreationFlags: *u32) -> HRESULT #cpp_method;

    SetCreateFlags: (this: *ICreateProcessInputs, dwCreationFlags: u32) -> HRESULT #cpp_method;

    AddCreateFlags: (this: *ICreateProcessInputs, dwCreationFlags: u32) -> HRESULT #cpp_method;

    SetHotKey: (this: *ICreateProcessInputs, wHotKey: u16) -> HRESULT #cpp_method;

    AddStartupFlags: (this: *ICreateProcessInputs, dwStartupInfoFlags: u32) -> HRESULT #cpp_method;

    SetTitle: (this: *ICreateProcessInputs, pszTitle: *s16) -> HRESULT #cpp_method;

    SetEnvironmentVariableA: (this: *ICreateProcessInputs, pszName: *s16, pszValue: *s16) -> HRESULT #cpp_method;
}

ICreateProcessInputs_GetCreateFlags :: inline (this: *ICreateProcessInputs, pdwCreationFlags: *u32) -> HRESULT { return this.icreateprocessinputs_vtable.GetCreateFlags(this, pdwCreationFlags); }

ICreateProcessInputs_SetCreateFlags :: inline (this: *ICreateProcessInputs, dwCreationFlags: u32) -> HRESULT { return this.icreateprocessinputs_vtable.SetCreateFlags(this, dwCreationFlags); }

ICreateProcessInputs_AddCreateFlags :: inline (this: *ICreateProcessInputs, dwCreationFlags: u32) -> HRESULT { return this.icreateprocessinputs_vtable.AddCreateFlags(this, dwCreationFlags); }

ICreateProcessInputs_SetHotKey :: inline (this: *ICreateProcessInputs, wHotKey: u16) -> HRESULT { return this.icreateprocessinputs_vtable.SetHotKey(this, wHotKey); }

ICreateProcessInputs_AddStartupFlags :: inline (this: *ICreateProcessInputs, dwStartupInfoFlags: u32) -> HRESULT { return this.icreateprocessinputs_vtable.AddStartupFlags(this, dwStartupInfoFlags); }

ICreateProcessInputs_SetTitle :: inline (this: *ICreateProcessInputs, pszTitle: *s16) -> HRESULT { return this.icreateprocessinputs_vtable.SetTitle(this, pszTitle); }

ICreateProcessInputs_SetEnvironmentVariableA :: inline (this: *ICreateProcessInputs, pszName: *s16, pszValue: *s16) -> HRESULT { return this.icreateprocessinputs_vtable.SetEnvironmentVariableA(this, pszName, pszValue); }

vtable :: (obj: *ICreateProcessInputs) -> *ICreateProcessInputs_VTable { return obj.icreateprocessinputs_vtable; }



ICreatingProcess_UUID :: "c2b937a9-3110-4398-8a56-f34c6342d244";
ICreatingProcess :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; icreatingprocess_vtable: *ICreatingProcess_VTable;
}
ICreatingProcess_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    OnCreating: (this: *ICreatingProcess, pcpi: *ICreateProcessInputs) -> HRESULT #cpp_method;
}
ICreatingProcess_OnCreating :: inline (this: *ICreatingProcess, pcpi: *ICreateProcessInputs) -> HRESULT { return this.icreatingprocess_vtable.OnCreating(this, pcpi); }

vtable :: (obj: *ICreatingProcess) -> *ICreatingProcess_VTable { return obj.icreatingprocess_vtable; }



ILaunchUIContext_UUID :: "1791e8f6-21c7-4340-882a-a6a93e3fd73b";
ILaunchUIContext :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ilaunchuicontext_vtable: *ILaunchUIContext_VTable;
}
ILaunchUIContext_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SetAssociatedWindow: (this: *ILaunchUIContext, value: HWND) -> HRESULT #cpp_method;

    SetTabGroupingPreference: (this: *ILaunchUIContext, value: u32) -> HRESULT #cpp_method;
}

ILaunchUIContext_SetAssociatedWindow :: inline (this: *ILaunchUIContext, value: HWND) -> HRESULT { return this.ilaunchuicontext_vtable.SetAssociatedWindow(this, value); }

ILaunchUIContext_SetTabGroupingPreference :: inline (this: *ILaunchUIContext, value: u32) -> HRESULT { return this.ilaunchuicontext_vtable.SetTabGroupingPreference(this, value); }

vtable :: (obj: *ILaunchUIContext) -> *ILaunchUIContext_VTable { return obj.ilaunchuicontext_vtable; }



ILaunchUIContextProvider_UUID :: "0d12c4c8-a3d9-4e24-94c1-0e20c5a956c4";
ILaunchUIContextProvider :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ilaunchuicontextprovider_vtable: *ILaunchUIContextProvider_VTable;
}
ILaunchUIContextProvider_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    UpdateContext: (this: *ILaunchUIContextProvider, _context: *ILaunchUIContext) -> HRESULT #cpp_method;
}
ILaunchUIContextProvider_UpdateContext :: inline (this: *ILaunchUIContextProvider, _context: *ILaunchUIContext) -> HRESULT { return this.ilaunchuicontextprovider_vtable.UpdateContext(this, _context); }

vtable :: (obj: *ILaunchUIContextProvider) -> *ILaunchUIContextProvider_VTable { return obj.ilaunchuicontextprovider_vtable; }


NMCII_FLAGS :: enum s32 {
    NONE    :: 0;
    ITEMS   :: 1;
    FOLDERS :: 2;

    NMCII_NONE    :: NONE;
    NMCII_ITEMS   :: ITEMS;
    NMCII_FOLDERS :: FOLDERS;
}

NMCII_FLAGS :: s32;

NMCSAEI_FLAGS :: enum s32 {
    SELECT :: 0;
    EDIT   :: 1;

    NMCSAEI_SELECT :: SELECT;
    NMCSAEI_EDIT   :: EDIT;
}

NMCSAEI_FLAGS :: s32;


INewMenuClient_UUID :: "dcb07fdc-3bb5-451c-90be-966644fed7b0";
INewMenuClient :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; inewmenuclient_vtable: *INewMenuClient_VTable;
}
INewMenuClient_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    IncludeItems: (this: *INewMenuClient, pflags: *NMCII_FLAGS) -> HRESULT #cpp_method;

    SelectAndEditItem: (this: *INewMenuClient, pidlItem: LPCITEMIDLIST, flags: NMCSAEI_FLAGS) -> HRESULT #cpp_method;
}

INewMenuClient_IncludeItems :: inline (this: *INewMenuClient, pflags: *NMCII_FLAGS) -> HRESULT { return this.inewmenuclient_vtable.IncludeItems(this, pflags); }

INewMenuClient_SelectAndEditItem :: inline (this: *INewMenuClient, pidlItem: LPCITEMIDLIST, flags: NMCSAEI_FLAGS) -> HRESULT { return this.inewmenuclient_vtable.SelectAndEditItem(this, pidlItem, flags); }

vtable :: (obj: *INewMenuClient) -> *INewMenuClient_VTable { return obj.inewmenuclient_vtable; }



IInitializeWithBindCtx_UUID :: "71c0d2bc-726d-45cc-a6c0-2e31c1db2159";
IInitializeWithBindCtx :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iinitializewithbindctx_vtable: *IInitializeWithBindCtx_VTable;
}
IInitializeWithBindCtx_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Initialize: (this: *IInitializeWithBindCtx, pbc: *IBindCtx) -> HRESULT #cpp_method;
}
IInitializeWithBindCtx_Initialize :: inline (this: *IInitializeWithBindCtx, pbc: *IBindCtx) -> HRESULT { return this.iinitializewithbindctx_vtable.Initialize(this, pbc); }

vtable :: (obj: *IInitializeWithBindCtx) -> *IInitializeWithBindCtx_VTable { return obj.iinitializewithbindctx_vtable; }



IShellItemFilter_UUID :: "2659B475-EEB8-48b7-8F07-B378810F48CF";
IShellItemFilter :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ishellitemfilter_vtable: *IShellItemFilter_VTable;
}
IShellItemFilter_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    IncludeItem: (this: *IShellItemFilter, psi: *IShellItem) -> HRESULT #cpp_method;

    GetEnumFlagsForItem: (this: *IShellItemFilter, psi: *IShellItem, pgrfFlags: *SHCONTF) -> HRESULT #cpp_method;
}

IShellItemFilter_IncludeItem :: inline (this: *IShellItemFilter, psi: *IShellItem) -> HRESULT { return this.ishellitemfilter_vtable.IncludeItem(this, psi); }

IShellItemFilter_GetEnumFlagsForItem :: inline (this: *IShellItemFilter, psi: *IShellItem, pgrfFlags: *SHCONTF) -> HRESULT { return this.ishellitemfilter_vtable.GetEnumFlagsForItem(this, psi, pgrfFlags); }

vtable :: (obj: *IShellItemFilter) -> *IShellItemFilter_VTable { return obj.ishellitemfilter_vtable; }


NSTCSTYLE :: enum s32 {
    HASEXPANDOS         :: 1;
    HASLINES            :: 2;
    SINGLECLICKEXPAND   :: 4;
    FULLROWSELECT       :: 8;
    SPRINGEXPAND        :: 16;
    HORIZONTALSCROLL    :: 32;
    ROOTHASEXPANDO      :: 64;
    SHOWSELECTIONALWAYS :: 128;
    NOINFOTIP           :: 512;
    EVENHEIGHT          :: 1024;
    NOREPLACEOPEN       :: 2048;
    DISABLEDRAGDROP     :: 4096;
    NOORDERSTREAM       :: 8192;
    RICHTOOLTIP         :: 16384;
    BORDER              :: 32768;
    NOEDITLABELS        :: 65536;
    TABSTOP             :: 131072;
    FAVORITESMODE       :: 524288;
    AUTOHSCROLL         :: 1048576;
    FADEINOUTEXPANDOS   :: 2097152;
    EMPTYTEXT           :: 4194304;
    CHECKBOXES          :: 8388608;
    PARTIALCHECKBOXES   :: 16777216;
    EXCLUSIONCHECKBOXES :: 33554432;
    DIMMEDCHECKBOXES    :: 67108864;
    NOINDENTCHECKS      :: 134217728;
    ALLOWJUNCTIONS      :: 268435456;
    SHOWTABSBUTTON      :: 536870912;
    SHOWDELETEBUTTON    :: 1073741824;
    SHOWREFRESHBUTTON   :: -2147483648;

    NSTCS_HASEXPANDOS         :: HASEXPANDOS;
    NSTCS_HASLINES            :: HASLINES;
    NSTCS_SINGLECLICKEXPAND   :: SINGLECLICKEXPAND;
    NSTCS_FULLROWSELECT       :: FULLROWSELECT;
    NSTCS_SPRINGEXPAND        :: SPRINGEXPAND;
    NSTCS_HORIZONTALSCROLL    :: HORIZONTALSCROLL;
    NSTCS_ROOTHASEXPANDO      :: ROOTHASEXPANDO;
    NSTCS_SHOWSELECTIONALWAYS :: SHOWSELECTIONALWAYS;
    NSTCS_NOINFOTIP           :: NOINFOTIP;
    NSTCS_EVENHEIGHT          :: EVENHEIGHT;
    NSTCS_NOREPLACEOPEN       :: NOREPLACEOPEN;
    NSTCS_DISABLEDRAGDROP     :: DISABLEDRAGDROP;
    NSTCS_NOORDERSTREAM       :: NOORDERSTREAM;
    NSTCS_RICHTOOLTIP         :: RICHTOOLTIP;
    NSTCS_BORDER              :: BORDER;
    NSTCS_NOEDITLABELS        :: NOEDITLABELS;
    NSTCS_TABSTOP             :: TABSTOP;
    NSTCS_FAVORITESMODE       :: FAVORITESMODE;
    NSTCS_AUTOHSCROLL         :: AUTOHSCROLL;
    NSTCS_FADEINOUTEXPANDOS   :: FADEINOUTEXPANDOS;
    NSTCS_EMPTYTEXT           :: EMPTYTEXT;
    NSTCS_CHECKBOXES          :: CHECKBOXES;
    NSTCS_PARTIALCHECKBOXES   :: PARTIALCHECKBOXES;
    NSTCS_EXCLUSIONCHECKBOXES :: EXCLUSIONCHECKBOXES;
    NSTCS_DIMMEDCHECKBOXES    :: DIMMEDCHECKBOXES;
    NSTCS_NOINDENTCHECKS      :: NOINDENTCHECKS;
    NSTCS_ALLOWJUNCTIONS      :: ALLOWJUNCTIONS;
    NSTCS_SHOWTABSBUTTON      :: SHOWTABSBUTTON;
    NSTCS_SHOWDELETEBUTTON    :: SHOWDELETEBUTTON;
    NSTCS_SHOWREFRESHBUTTON   :: SHOWREFRESHBUTTON;
}

NSTCSTYLE :: u32;

NSTCROOTSTYLE :: enum s32 {
    VISIBLE  :: 0;
    HIDDEN   :: 1;
    EXPANDED :: 2;

    NSTCRS_VISIBLE  :: VISIBLE;
    NSTCRS_HIDDEN   :: HIDDEN;
    NSTCRS_EXPANDED :: EXPANDED;
}

NSTCROOTSTYLE :: u32;

NSTCITEMSTATE :: enum s32 {
    NONE             :: 0;
    SELECTED         :: 1;
    EXPANDED         :: 2;
    BOLD             :: 4;
    DISABLED         :: 8;
    SELECTEDNOEXPAND :: 16;

    NSTCIS_NONE             :: NONE;
    NSTCIS_SELECTED         :: SELECTED;
    NSTCIS_EXPANDED         :: EXPANDED;
    NSTCIS_BOLD             :: BOLD;
    NSTCIS_DISABLED         :: DISABLED;
    NSTCIS_SELECTEDNOEXPAND :: SELECTEDNOEXPAND;
}

NSTCITEMSTATE :: u32;

NSTCGNI :: enum s32 {
    NEXT         :: 0;
    NEXTVISIBLE  :: 1;
    PREV         :: 2;
    PREVVISIBLE  :: 3;
    PARENT       :: 4;
    CHILD        :: 5;
    FIRSTVISIBLE :: 6;
    LASTVISIBLE  :: 7;

    NSTCGNI_NEXT         :: NEXT;
    NSTCGNI_NEXTVISIBLE  :: NEXTVISIBLE;
    NSTCGNI_PREV         :: PREV;
    NSTCGNI_PREVVISIBLE  :: PREVVISIBLE;
    NSTCGNI_PARENT       :: PARENT;
    NSTCGNI_CHILD        :: CHILD;
    NSTCGNI_FIRSTVISIBLE :: FIRSTVISIBLE;
    NSTCGNI_LASTVISIBLE  :: LASTVISIBLE;
}


INameSpaceTreeControl_UUID :: "028212A3-B627-47e9-8856-C14265554E4F";
INameSpaceTreeControl :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; inamespacetreecontrol_vtable: *INameSpaceTreeControl_VTable;
}
INameSpaceTreeControl_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Initialize: (this: *INameSpaceTreeControl, hwndParent: HWND, prc: *RECT, nsctsFlags: NSTCSTYLE) -> HRESULT #cpp_method;

    TreeAdvise: (this: *INameSpaceTreeControl, punk: *IUnknown, pdwCookie: *u32) -> HRESULT #cpp_method;

    TreeUnadvise: (this: *INameSpaceTreeControl, dwCookie: u32) -> HRESULT #cpp_method;

    AppendRoot: (this: *INameSpaceTreeControl, psiRoot: *IShellItem, grfEnumFlags: SHCONTF, grfRootStyle: NSTCROOTSTYLE, pif: *IShellItemFilter) -> HRESULT #cpp_method;

    InsertRoot: (this: *INameSpaceTreeControl, iIndex: s32, psiRoot: *IShellItem, grfEnumFlags: SHCONTF, grfRootStyle: NSTCROOTSTYLE, pif: *IShellItemFilter) -> HRESULT #cpp_method;

    RemoveRoot: (this: *INameSpaceTreeControl, psiRoot: *IShellItem) -> HRESULT #cpp_method;

    RemoveAllRoots: (this: *INameSpaceTreeControl) -> HRESULT #cpp_method;

    GetRootItems: (this: *INameSpaceTreeControl, ppsiaRootItems: **IShellItemArray) -> HRESULT #cpp_method;

    SetItemState: (this: *INameSpaceTreeControl, psi: *IShellItem, nstcisMask: NSTCITEMSTATE, nstcisFlags: NSTCITEMSTATE) -> HRESULT #cpp_method;

    GetItemState: (this: *INameSpaceTreeControl, psi: *IShellItem, nstcisMask: NSTCITEMSTATE, pnstcisFlags: *NSTCITEMSTATE) -> HRESULT #cpp_method;

    GetSelectedItems: (this: *INameSpaceTreeControl, psiaItems: **IShellItemArray) -> HRESULT #cpp_method;

    GetItemCustomState: (this: *INameSpaceTreeControl, psi: *IShellItem, piStateNumber: *s32) -> HRESULT #cpp_method;

    SetItemCustomState: (this: *INameSpaceTreeControl, psi: *IShellItem, iStateNumber: s32) -> HRESULT #cpp_method;

    EnsureItemVisible: (this: *INameSpaceTreeControl, psi: *IShellItem) -> HRESULT #cpp_method;

    SetTheme: (this: *INameSpaceTreeControl, pszTheme: *s16) -> HRESULT #cpp_method;

    GetNextItem: (this: *INameSpaceTreeControl, psi: *IShellItem, nstcgi: NSTCGNI, ppsiNext: **IShellItem) -> HRESULT #cpp_method;

    HitTest: (this: *INameSpaceTreeControl, ppt: *POINT, ppsiOut: **IShellItem) -> HRESULT #cpp_method;

    GetItemRect: (this: *INameSpaceTreeControl, psi: *IShellItem, prect: *RECT) -> HRESULT #cpp_method;

    CollapseAll: (this: *INameSpaceTreeControl) -> HRESULT #cpp_method;
}

INameSpaceTreeControl_Initialize :: inline (this: *INameSpaceTreeControl, hwndParent: HWND, prc: *RECT, nsctsFlags: NSTCSTYLE) -> HRESULT { return this.inamespacetreecontrol_vtable.Initialize(this, hwndParent, prc, nsctsFlags); }

INameSpaceTreeControl_TreeAdvise :: inline (this: *INameSpaceTreeControl, punk: *IUnknown, pdwCookie: *u32) -> HRESULT { return this.inamespacetreecontrol_vtable.TreeAdvise(this, punk, pdwCookie); }

INameSpaceTreeControl_TreeUnadvise :: inline (this: *INameSpaceTreeControl, dwCookie: u32) -> HRESULT { return this.inamespacetreecontrol_vtable.TreeUnadvise(this, dwCookie); }

INameSpaceTreeControl_AppendRoot :: inline (this: *INameSpaceTreeControl, psiRoot: *IShellItem, grfEnumFlags: SHCONTF, grfRootStyle: NSTCROOTSTYLE, pif: *IShellItemFilter) -> HRESULT { return this.inamespacetreecontrol_vtable.AppendRoot(this, psiRoot, grfEnumFlags, grfRootStyle, pif); }

INameSpaceTreeControl_InsertRoot :: inline (this: *INameSpaceTreeControl, iIndex: s32, psiRoot: *IShellItem, grfEnumFlags: SHCONTF, grfRootStyle: NSTCROOTSTYLE, pif: *IShellItemFilter) -> HRESULT { return this.inamespacetreecontrol_vtable.InsertRoot(this, iIndex, psiRoot, grfEnumFlags, grfRootStyle, pif); }

INameSpaceTreeControl_RemoveRoot :: inline (this: *INameSpaceTreeControl, psiRoot: *IShellItem) -> HRESULT { return this.inamespacetreecontrol_vtable.RemoveRoot(this, psiRoot); }

INameSpaceTreeControl_RemoveAllRoots :: inline (this: *INameSpaceTreeControl) -> HRESULT { return this.inamespacetreecontrol_vtable.RemoveAllRoots(this); }

INameSpaceTreeControl_GetRootItems :: inline (this: *INameSpaceTreeControl, ppsiaRootItems: **IShellItemArray) -> HRESULT { return this.inamespacetreecontrol_vtable.GetRootItems(this, ppsiaRootItems); }

INameSpaceTreeControl_SetItemState :: inline (this: *INameSpaceTreeControl, psi: *IShellItem, nstcisMask: NSTCITEMSTATE, nstcisFlags: NSTCITEMSTATE) -> HRESULT { return this.inamespacetreecontrol_vtable.SetItemState(this, psi, nstcisMask, nstcisFlags); }

INameSpaceTreeControl_GetItemState :: inline (this: *INameSpaceTreeControl, psi: *IShellItem, nstcisMask: NSTCITEMSTATE, pnstcisFlags: *NSTCITEMSTATE) -> HRESULT { return this.inamespacetreecontrol_vtable.GetItemState(this, psi, nstcisMask, pnstcisFlags); }

INameSpaceTreeControl_GetSelectedItems :: inline (this: *INameSpaceTreeControl, psiaItems: **IShellItemArray) -> HRESULT { return this.inamespacetreecontrol_vtable.GetSelectedItems(this, psiaItems); }

INameSpaceTreeControl_GetItemCustomState :: inline (this: *INameSpaceTreeControl, psi: *IShellItem, piStateNumber: *s32) -> HRESULT { return this.inamespacetreecontrol_vtable.GetItemCustomState(this, psi, piStateNumber); }

INameSpaceTreeControl_SetItemCustomState :: inline (this: *INameSpaceTreeControl, psi: *IShellItem, iStateNumber: s32) -> HRESULT { return this.inamespacetreecontrol_vtable.SetItemCustomState(this, psi, iStateNumber); }

INameSpaceTreeControl_EnsureItemVisible :: inline (this: *INameSpaceTreeControl, psi: *IShellItem) -> HRESULT { return this.inamespacetreecontrol_vtable.EnsureItemVisible(this, psi); }

INameSpaceTreeControl_SetTheme :: inline (this: *INameSpaceTreeControl, pszTheme: *s16) -> HRESULT { return this.inamespacetreecontrol_vtable.SetTheme(this, pszTheme); }

INameSpaceTreeControl_GetNextItem :: inline (this: *INameSpaceTreeControl, psi: *IShellItem, nstcgi: NSTCGNI, ppsiNext: **IShellItem) -> HRESULT { return this.inamespacetreecontrol_vtable.GetNextItem(this, psi, nstcgi, ppsiNext); }

INameSpaceTreeControl_HitTest :: inline (this: *INameSpaceTreeControl, ppt: *POINT, ppsiOut: **IShellItem) -> HRESULT { return this.inamespacetreecontrol_vtable.HitTest(this, ppt, ppsiOut); }

INameSpaceTreeControl_GetItemRect :: inline (this: *INameSpaceTreeControl, psi: *IShellItem, prect: *RECT) -> HRESULT { return this.inamespacetreecontrol_vtable.GetItemRect(this, psi, prect); }

INameSpaceTreeControl_CollapseAll :: inline (this: *INameSpaceTreeControl) -> HRESULT { return this.inamespacetreecontrol_vtable.CollapseAll(this); }

vtable :: (obj: *INameSpaceTreeControl) -> *INameSpaceTreeControl_VTable { return obj.inamespacetreecontrol_vtable; }


NSTCFOLDERCAPABILITIES :: enum s32 {
    NONE                  :: 0;
    PINNEDITEMFILTERING   :: 1;
    DELAY_REGISTER_NOTIFY :: 2;

    NSTCFC_NONE                  :: NONE;
    NSTCFC_PINNEDITEMFILTERING   :: PINNEDITEMFILTERING;
    NSTCFC_DELAY_REGISTER_NOTIFY :: DELAY_REGISTER_NOTIFY;
}


INameSpaceTreeControlFolderCapabilities_UUID :: "e9701183-e6b3-4ff2-8568-813615fec7be";
INameSpaceTreeControlFolderCapabilities :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; inamespacetreecontrolfoldercapabilities_vtable: *INameSpaceTreeControlFolderCapabilities_VTable;
}
INameSpaceTreeControlFolderCapabilities_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetFolderCapabilities: (this: *INameSpaceTreeControlFolderCapabilities, nfcMask: NSTCFOLDERCAPABILITIES, pnfcValue: *NSTCFOLDERCAPABILITIES) -> HRESULT #cpp_method;
}
INameSpaceTreeControlFolderCapabilities_GetFolderCapabilities :: inline (this: *INameSpaceTreeControlFolderCapabilities, nfcMask: NSTCFOLDERCAPABILITIES, pnfcValue: *NSTCFOLDERCAPABILITIES) -> HRESULT { return this.inamespacetreecontrolfoldercapabilities_vtable.GetFolderCapabilities(this, nfcMask, pnfcValue); }

vtable :: (obj: *INameSpaceTreeControlFolderCapabilities) -> *INameSpaceTreeControlFolderCapabilities_VTable { return obj.inamespacetreecontrolfoldercapabilities_vtable; }



IPreviewHandler_UUID :: "8895b1c6-b41f-4c1c-a562-0d564250836f";
IPreviewHandler :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ipreviewhandler_vtable: *IPreviewHandler_VTable;
}
IPreviewHandler_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SetWindow: (this: *IPreviewHandler, hwnd: HWND, prc: *RECT) -> HRESULT #cpp_method;

    SetRect: (this: *IPreviewHandler, prc: *RECT) -> HRESULT #cpp_method;

    DoPreview: (this: *IPreviewHandler) -> HRESULT #cpp_method;

    Unload: (this: *IPreviewHandler) -> HRESULT #cpp_method;

    SetFocus: (this: *IPreviewHandler) -> HRESULT #cpp_method;

    QueryFocus: (this: *IPreviewHandler, phwnd: *HWND) -> HRESULT #cpp_method;

    TranslateAcceleratorA: (this: *IPreviewHandler, pmsg: *MSG) -> HRESULT #cpp_method;
}

IPreviewHandler_SetWindow :: inline (this: *IPreviewHandler, hwnd: HWND, prc: *RECT) -> HRESULT { return this.ipreviewhandler_vtable.SetWindow(this, hwnd, prc); }

IPreviewHandler_SetRect :: inline (this: *IPreviewHandler, prc: *RECT) -> HRESULT { return this.ipreviewhandler_vtable.SetRect(this, prc); }

IPreviewHandler_DoPreview :: inline (this: *IPreviewHandler) -> HRESULT { return this.ipreviewhandler_vtable.DoPreview(this); }

IPreviewHandler_Unload :: inline (this: *IPreviewHandler) -> HRESULT { return this.ipreviewhandler_vtable.Unload(this); }

IPreviewHandler_SetFocus :: inline (this: *IPreviewHandler) -> HRESULT { return this.ipreviewhandler_vtable.SetFocus(this); }

IPreviewHandler_QueryFocus :: inline (this: *IPreviewHandler, phwnd: *HWND) -> HRESULT { return this.ipreviewhandler_vtable.QueryFocus(this, phwnd); }

IPreviewHandler_TranslateAcceleratorA :: inline (this: *IPreviewHandler, pmsg: *MSG) -> HRESULT { return this.ipreviewhandler_vtable.TranslateAcceleratorA(this, pmsg); }

vtable :: (obj: *IPreviewHandler) -> *IPreviewHandler_VTable { return obj.ipreviewhandler_vtable; }


PREVIEWHANDLERFRAMEINFO :: struct {
    haccel:        HACCEL;
    cAccelEntries: u32;
}


IPreviewHandlerFrame_UUID :: "fec87aaf-35f9-447a-adb7-20234491401a";
IPreviewHandlerFrame :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ipreviewhandlerframe_vtable: *IPreviewHandlerFrame_VTable;
}
IPreviewHandlerFrame_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetWindowContext: (this: *IPreviewHandlerFrame, pinfo: *PREVIEWHANDLERFRAMEINFO) -> HRESULT #cpp_method;

    TranslateAcceleratorA: (this: *IPreviewHandlerFrame, pmsg: *MSG) -> HRESULT #cpp_method;
}

IPreviewHandlerFrame_GetWindowContext :: inline (this: *IPreviewHandlerFrame, pinfo: *PREVIEWHANDLERFRAMEINFO) -> HRESULT { return this.ipreviewhandlerframe_vtable.GetWindowContext(this, pinfo); }

IPreviewHandlerFrame_TranslateAcceleratorA :: inline (this: *IPreviewHandlerFrame, pmsg: *MSG) -> HRESULT { return this.ipreviewhandlerframe_vtable.TranslateAcceleratorA(this, pmsg); }

vtable :: (obj: *IPreviewHandlerFrame) -> *IPreviewHandlerFrame_VTable { return obj.ipreviewhandlerframe_vtable; }


EXPLORERPANE :: GUID;

EXPLORERPANESTATE :: enum s32 {
    DONTCARE     :: 0;
    DEFAULT_ON   :: 1;
    DEFAULT_OFF  :: 2;
    STATEMASK    :: 65535;
    INITIALSTATE :: 65536;
    FORCE        :: 131072;

    EPS_DONTCARE     :: DONTCARE;
    EPS_DEFAULT_ON   :: DEFAULT_ON;
    EPS_DEFAULT_OFF  :: DEFAULT_OFF;
    EPS_STATEMASK    :: STATEMASK;
    EPS_INITIALSTATE :: INITIALSTATE;
    EPS_FORCE        :: FORCE;
}

EXPLORERPANESTATE :: u32;


IExplorerPaneVisibility_UUID :: "e07010ec-bc17-44c0-97b0-46c7c95b9edc";
IExplorerPaneVisibility :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iexplorerpanevisibility_vtable: *IExplorerPaneVisibility_VTable;
}
IExplorerPaneVisibility_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetPaneState: (this: *IExplorerPaneVisibility, ep: *EXPLORERPANE, peps: *EXPLORERPANESTATE) -> HRESULT #cpp_method;
}
IExplorerPaneVisibility_GetPaneState :: inline (this: *IExplorerPaneVisibility, ep: *EXPLORERPANE, peps: *EXPLORERPANESTATE) -> HRESULT { return this.iexplorerpanevisibility_vtable.GetPaneState(this, ep, peps); }

vtable :: (obj: *IExplorerPaneVisibility) -> *IExplorerPaneVisibility_VTable { return obj.iexplorerpanevisibility_vtable; }



IContextMenuCB_UUID :: "3409E930-5A39-11d1-83FA-00A0C90DC849";
IContextMenuCB :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; icontextmenucb_vtable: *IContextMenuCB_VTable;
}
IContextMenuCB_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    CallBack: (this: *IContextMenuCB, psf: *IShellFolder, hwndOwner: HWND, pdtobj: *IDataObject, uMsg: u32, wParam: WPARAM, lParam: LPARAM) -> HRESULT #cpp_method;
}
IContextMenuCB_CallBack :: inline (this: *IContextMenuCB, psf: *IShellFolder, hwndOwner: HWND, pdtobj: *IDataObject, uMsg: u32, wParam: WPARAM, lParam: LPARAM) -> HRESULT { return this.icontextmenucb_vtable.CallBack(this, psf, hwndOwner, pdtobj, uMsg, wParam, lParam); }

vtable :: (obj: *IContextMenuCB) -> *IContextMenuCB_VTable { return obj.icontextmenucb_vtable; }



IDefaultExtractIconInit_UUID :: "41ded17d-d6b3-4261-997d-88c60e4b1d58";
IDefaultExtractIconInit :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; idefaultextracticoninit_vtable: *IDefaultExtractIconInit_VTable;
}
IDefaultExtractIconInit_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SetFlags: (this: *IDefaultExtractIconInit, uFlags: u32) -> HRESULT #cpp_method;

    SetKey: (this: *IDefaultExtractIconInit, hkey: HKEY) -> HRESULT #cpp_method;

    SetNormalIcon: (this: *IDefaultExtractIconInit, pszFile: *s16, iIcon: s32) -> HRESULT #cpp_method;

    SetOpenIcon: (this: *IDefaultExtractIconInit, pszFile: *s16, iIcon: s32) -> HRESULT #cpp_method;

    SetShortcutIcon: (this: *IDefaultExtractIconInit, pszFile: *s16, iIcon: s32) -> HRESULT #cpp_method;

    SetDefaultIcon: (this: *IDefaultExtractIconInit, pszFile: *s16, iIcon: s32) -> HRESULT #cpp_method;
}

IDefaultExtractIconInit_SetFlags :: inline (this: *IDefaultExtractIconInit, uFlags: u32) -> HRESULT { return this.idefaultextracticoninit_vtable.SetFlags(this, uFlags); }

IDefaultExtractIconInit_SetKey :: inline (this: *IDefaultExtractIconInit, hkey: HKEY) -> HRESULT { return this.idefaultextracticoninit_vtable.SetKey(this, hkey); }

IDefaultExtractIconInit_SetNormalIcon :: inline (this: *IDefaultExtractIconInit, pszFile: *s16, iIcon: s32) -> HRESULT { return this.idefaultextracticoninit_vtable.SetNormalIcon(this, pszFile, iIcon); }

IDefaultExtractIconInit_SetOpenIcon :: inline (this: *IDefaultExtractIconInit, pszFile: *s16, iIcon: s32) -> HRESULT { return this.idefaultextracticoninit_vtable.SetOpenIcon(this, pszFile, iIcon); }

IDefaultExtractIconInit_SetShortcutIcon :: inline (this: *IDefaultExtractIconInit, pszFile: *s16, iIcon: s32) -> HRESULT { return this.idefaultextracticoninit_vtable.SetShortcutIcon(this, pszFile, iIcon); }

IDefaultExtractIconInit_SetDefaultIcon :: inline (this: *IDefaultExtractIconInit, pszFile: *s16, iIcon: s32) -> HRESULT { return this.idefaultextracticoninit_vtable.SetDefaultIcon(this, pszFile, iIcon); }

vtable :: (obj: *IDefaultExtractIconInit) -> *IDefaultExtractIconInit_VTable { return obj.idefaultextracticoninit_vtable; }


SHCreateDefaultExtractIcon :: (riid: *IID, ppv: **void) -> HRESULT #foreign shell32;
SHCreateDefaultExtractIcon :: (riid: IID, ppv: **void) -> HRESULT #no_context {
    return SHCreateDefaultExtractIcon(*riid, ppv);
}

EXPCMDSTATE :: enum s32 {
    ENABLED    :: 0;
    DISABLED   :: 1;
    HIDDEN     :: 2;
    CHECKBOX   :: 4;
    CHECKED    :: 8;
    RADIOCHECK :: 16;

    ECS_ENABLED    :: ENABLED;
    ECS_DISABLED   :: DISABLED;
    ECS_HIDDEN     :: HIDDEN;
    ECS_CHECKBOX   :: CHECKBOX;
    ECS_CHECKED    :: CHECKED;
    ECS_RADIOCHECK :: RADIOCHECK;
}

EXPCMDSTATE :: u32;

EXPCMDFLAGS :: enum s32 {
    DEFAULT         :: 0;
    HASSUBCOMMANDS  :: 1;
    HASSPLITBUTTON  :: 2;
    HIDELABEL       :: 4;
    ISSEPARATOR     :: 8;
    HASLUASHIELD    :: 16;
    SEPARATORBEFORE :: 32;
    SEPARATORAFTER  :: 64;
    ISDROPDOWN      :: 128;
    TOGGLEABLE      :: 256;
    AUTOMENUICONS   :: 512;

    ECF_DEFAULT         :: DEFAULT;
    ECF_HASSUBCOMMANDS  :: HASSUBCOMMANDS;
    ECF_HASSPLITBUTTON  :: HASSPLITBUTTON;
    ECF_HIDELABEL       :: HIDELABEL;
    ECF_ISSEPARATOR     :: ISSEPARATOR;
    ECF_HASLUASHIELD    :: HASLUASHIELD;
    ECF_SEPARATORBEFORE :: SEPARATORBEFORE;
    ECF_SEPARATORAFTER  :: SEPARATORAFTER;
    ECF_ISDROPDOWN      :: ISDROPDOWN;
    ECF_TOGGLEABLE      :: TOGGLEABLE;
    ECF_AUTOMENUICONS   :: AUTOMENUICONS;
}

EXPCMDFLAGS :: u32;


IExplorerCommand_UUID :: "a08ce4d0-fa25-44ab-b57c-c7b1c323e0b9";
IExplorerCommand :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iexplorercommand_vtable: *IExplorerCommand_VTable;
}
IExplorerCommand_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetTitle: (this: *IExplorerCommand, psiItemArray: *IShellItemArray, ppszName: **s16) -> HRESULT #cpp_method;

    GetIcon: (this: *IExplorerCommand, psiItemArray: *IShellItemArray, ppszIcon: **s16) -> HRESULT #cpp_method;

    GetToolTip: (this: *IExplorerCommand, psiItemArray: *IShellItemArray, ppszInfotip: **s16) -> HRESULT #cpp_method;

    GetCanonicalName: (this: *IExplorerCommand, pguidCommandName: *GUID) -> HRESULT #cpp_method;

    GetState: (this: *IExplorerCommand, psiItemArray: *IShellItemArray, fOkToBeSlow: BOOL, pCmdState: *EXPCMDSTATE) -> HRESULT #cpp_method;

    Invoke: (this: *IExplorerCommand, psiItemArray: *IShellItemArray, pbc: *IBindCtx) -> HRESULT #cpp_method;

    GetFlags: (this: *IExplorerCommand, pFlags: *EXPCMDFLAGS) -> HRESULT #cpp_method;

    EnumSubCommands: (this: *IExplorerCommand, ppEnum: **IEnumExplorerCommand) -> HRESULT #cpp_method;
}

IExplorerCommand_GetTitle :: inline (this: *IExplorerCommand, psiItemArray: *IShellItemArray, ppszName: **s16) -> HRESULT { return this.iexplorercommand_vtable.GetTitle(this, psiItemArray, ppszName); }

IExplorerCommand_GetIcon :: inline (this: *IExplorerCommand, psiItemArray: *IShellItemArray, ppszIcon: **s16) -> HRESULT { return this.iexplorercommand_vtable.GetIcon(this, psiItemArray, ppszIcon); }

IExplorerCommand_GetToolTip :: inline (this: *IExplorerCommand, psiItemArray: *IShellItemArray, ppszInfotip: **s16) -> HRESULT { return this.iexplorercommand_vtable.GetToolTip(this, psiItemArray, ppszInfotip); }

IExplorerCommand_GetCanonicalName :: inline (this: *IExplorerCommand, pguidCommandName: *GUID) -> HRESULT { return this.iexplorercommand_vtable.GetCanonicalName(this, pguidCommandName); }

IExplorerCommand_GetState :: inline (this: *IExplorerCommand, psiItemArray: *IShellItemArray, fOkToBeSlow: BOOL, pCmdState: *EXPCMDSTATE) -> HRESULT { return this.iexplorercommand_vtable.GetState(this, psiItemArray, fOkToBeSlow, pCmdState); }

IExplorerCommand_Invoke :: inline (this: *IExplorerCommand, psiItemArray: *IShellItemArray, pbc: *IBindCtx) -> HRESULT { return this.iexplorercommand_vtable.Invoke(this, psiItemArray, pbc); }

IExplorerCommand_GetFlags :: inline (this: *IExplorerCommand, pFlags: *EXPCMDFLAGS) -> HRESULT { return this.iexplorercommand_vtable.GetFlags(this, pFlags); }

IExplorerCommand_EnumSubCommands :: inline (this: *IExplorerCommand, ppEnum: **IEnumExplorerCommand) -> HRESULT { return this.iexplorercommand_vtable.EnumSubCommands(this, ppEnum); }

vtable :: (obj: *IExplorerCommand) -> *IExplorerCommand_VTable { return obj.iexplorercommand_vtable; }



IExplorerCommandState_UUID :: "bddacb60-7657-47ae-8445-d23e1acf82ae";
IExplorerCommandState :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iexplorercommandstate_vtable: *IExplorerCommandState_VTable;
}
IExplorerCommandState_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetState: (this: *IExplorerCommandState, psiItemArray: *IShellItemArray, fOkToBeSlow: BOOL, pCmdState: *EXPCMDSTATE) -> HRESULT #cpp_method;
}
IExplorerCommandState_GetState :: inline (this: *IExplorerCommandState, psiItemArray: *IShellItemArray, fOkToBeSlow: BOOL, pCmdState: *EXPCMDSTATE) -> HRESULT { return this.iexplorercommandstate_vtable.GetState(this, psiItemArray, fOkToBeSlow, pCmdState); }

vtable :: (obj: *IExplorerCommandState) -> *IExplorerCommandState_VTable { return obj.iexplorercommandstate_vtable; }



IInitializeCommand_UUID :: "85075acf-231f-40ea-9610-d26b7b58f638";
IInitializeCommand :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iinitializecommand_vtable: *IInitializeCommand_VTable;
}
IInitializeCommand_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Initialize: (this: *IInitializeCommand, pszCommandName: *s16, ppb: *IPropertyBag) -> HRESULT #cpp_method;
}
IInitializeCommand_Initialize :: inline (this: *IInitializeCommand, pszCommandName: *s16, ppb: *IPropertyBag) -> HRESULT { return this.iinitializecommand_vtable.Initialize(this, pszCommandName, ppb); }

vtable :: (obj: *IInitializeCommand) -> *IInitializeCommand_VTable { return obj.iinitializecommand_vtable; }



IEnumExplorerCommand_UUID :: "a88826f8-186f-4987-aade-ea0cef8fbfe8";
IEnumExplorerCommand :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ienumexplorercommand_vtable: *IEnumExplorerCommand_VTable;
}
IEnumExplorerCommand_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Next: (this: *IEnumExplorerCommand, celt: u32, pUICommand: **IExplorerCommand, pceltFetched: *u32) -> HRESULT #cpp_method;

    Skip: (this: *IEnumExplorerCommand, celt: u32) -> HRESULT #cpp_method;

    Reset: (this: *IEnumExplorerCommand) -> HRESULT #cpp_method;

    Clone: (this: *IEnumExplorerCommand, ppenum: **IEnumExplorerCommand) -> HRESULT #cpp_method;
}

IEnumExplorerCommand_Next :: inline (this: *IEnumExplorerCommand, celt: u32, pUICommand: **IExplorerCommand, pceltFetched: *u32) -> HRESULT { return this.ienumexplorercommand_vtable.Next(this, celt, pUICommand, pceltFetched); }

IEnumExplorerCommand_Skip :: inline (this: *IEnumExplorerCommand, celt: u32) -> HRESULT { return this.ienumexplorercommand_vtable.Skip(this, celt); }

IEnumExplorerCommand_Reset :: inline (this: *IEnumExplorerCommand) -> HRESULT { return this.ienumexplorercommand_vtable.Reset(this); }

IEnumExplorerCommand_Clone :: inline (this: *IEnumExplorerCommand, ppenum: **IEnumExplorerCommand) -> HRESULT { return this.ienumexplorercommand_vtable.Clone(this, ppenum); }

vtable :: (obj: *IEnumExplorerCommand) -> *IEnumExplorerCommand_VTable { return obj.ienumexplorercommand_vtable; }



IExplorerCommandProvider_UUID :: "64961751-0835-43c0-8ffe-d57686530e64";
IExplorerCommandProvider :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iexplorercommandprovider_vtable: *IExplorerCommandProvider_VTable;
}
IExplorerCommandProvider_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetCommands: (this: *IExplorerCommandProvider, punkSite: *IUnknown, riid: *IID, ppv: **void) -> HRESULT #cpp_method;

    GetCommand: (this: *IExplorerCommandProvider, rguidCommandId: *GUID, riid: *IID, ppv: **void) -> HRESULT #cpp_method;
}

IExplorerCommandProvider_GetCommands :: inline (this: *IExplorerCommandProvider, punkSite: *IUnknown, riid: *IID, ppv: **void) -> HRESULT { return this.iexplorercommandprovider_vtable.GetCommands(this, punkSite, riid, ppv); }

IExplorerCommandProvider_GetCommand :: inline (this: *IExplorerCommandProvider, rguidCommandId: *GUID, riid: *IID, ppv: **void) -> HRESULT { return this.iexplorercommandprovider_vtable.GetCommand(this, rguidCommandId, riid, ppv); }

vtable :: (obj: *IExplorerCommandProvider) -> *IExplorerCommandProvider_VTable { return obj.iexplorercommandprovider_vtable; }


HTHEME :: HANDLE;

CPVIEW :: enum s32 {
    CLASSIC  :: 0;
    ALLITEMS :: 0;
    CATEGORY :: 1;
    HOME     :: 1;

    CPVIEW_CLASSIC  :: CLASSIC;
    CPVIEW_ALLITEMS :: ALLITEMS;
    CPVIEW_CATEGORY :: CATEGORY;
    CPVIEW_HOME     :: HOME;
}


IOpenControlPanel_UUID :: "D11AD862-66DE-4DF4-BF6C-1F5621996AF1";
IOpenControlPanel :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iopencontrolpanel_vtable: *IOpenControlPanel_VTable;
}
IOpenControlPanel_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Open: (this: *IOpenControlPanel, pszName: *s16, pszPage: *s16, punkSite: *IUnknown) -> HRESULT #cpp_method;

    GetPath: (this: *IOpenControlPanel, pszName: *s16, pszPath: *s16, cchPath: u32) -> HRESULT #cpp_method;

    GetCurrentView: (this: *IOpenControlPanel, pView: *CPVIEW) -> HRESULT #cpp_method;
}

IOpenControlPanel_Open :: inline (this: *IOpenControlPanel, pszName: *s16, pszPage: *s16, punkSite: *IUnknown) -> HRESULT { return this.iopencontrolpanel_vtable.Open(this, pszName, pszPage, punkSite); }

IOpenControlPanel_GetPath :: inline (this: *IOpenControlPanel, pszName: *s16, pszPath: *s16, cchPath: u32) -> HRESULT { return this.iopencontrolpanel_vtable.GetPath(this, pszName, pszPath, cchPath); }

IOpenControlPanel_GetCurrentView :: inline (this: *IOpenControlPanel, pView: *CPVIEW) -> HRESULT { return this.iopencontrolpanel_vtable.GetCurrentView(this, pView); }

vtable :: (obj: *IOpenControlPanel) -> *IOpenControlPanel_VTable { return obj.iopencontrolpanel_vtable; }



IFileSystemBindData_UUID :: "01E18D10-4D8B-11d2-855D-006008059367";
IFileSystemBindData :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ifilesystembinddata_vtable: *IFileSystemBindData_VTable;
}
IFileSystemBindData_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SetFindData: (this: *IFileSystemBindData, pfd: *WIN32_FIND_DATAW) -> HRESULT #cpp_method;

    GetFindData: (this: *IFileSystemBindData, pfd: *WIN32_FIND_DATAW) -> HRESULT #cpp_method;
}

IFileSystemBindData_SetFindData :: inline (this: *IFileSystemBindData, pfd: *WIN32_FIND_DATAW) -> HRESULT { return this.ifilesystembinddata_vtable.SetFindData(this, pfd); }

IFileSystemBindData_GetFindData :: inline (this: *IFileSystemBindData, pfd: *WIN32_FIND_DATAW) -> HRESULT { return this.ifilesystembinddata_vtable.GetFindData(this, pfd); }

vtable :: (obj: *IFileSystemBindData) -> *IFileSystemBindData_VTable { return obj.ifilesystembinddata_vtable; }



IFileSystemBindData2_UUID :: "3acf075f-71db-4afa-81f0-3fc4fdf2a5b8";
IFileSystemBindData2 :: struct {
    #as using ifilesystembinddata: IFileSystemBindData;
    #place ifilesystembinddata; ifilesystembinddata2_vtable: *IFileSystemBindData2_VTable;
}
IFileSystemBindData2_VTable :: struct #type_info_none {
    using ifilesystembinddata: IFileSystemBindData_VTable;
    SetFileID: (this: *IFileSystemBindData2, liFileID: LARGE_INTEGER) -> HRESULT #cpp_method;

    GetFileID: (this: *IFileSystemBindData2, pliFileID: *LARGE_INTEGER) -> HRESULT #cpp_method;

    SetJunctionCLSID: (this: *IFileSystemBindData2, clsid: *IID) -> HRESULT #cpp_method;

    GetJunctionCLSID: (this: *IFileSystemBindData2, pclsid: *CLSID) -> HRESULT #cpp_method;
}

IFileSystemBindData2_SetFileID :: inline (this: *IFileSystemBindData2, liFileID: LARGE_INTEGER) -> HRESULT { return this.ifilesystembinddata2_vtable.SetFileID(this, liFileID); }

IFileSystemBindData2_GetFileID :: inline (this: *IFileSystemBindData2, pliFileID: *LARGE_INTEGER) -> HRESULT { return this.ifilesystembinddata2_vtable.GetFileID(this, pliFileID); }

IFileSystemBindData2_SetJunctionCLSID :: inline (this: *IFileSystemBindData2, clsid: *IID) -> HRESULT { return this.ifilesystembinddata2_vtable.SetJunctionCLSID(this, clsid); }

IFileSystemBindData2_GetJunctionCLSID :: inline (this: *IFileSystemBindData2, pclsid: *CLSID) -> HRESULT { return this.ifilesystembinddata2_vtable.GetJunctionCLSID(this, pclsid); }

vtable :: (obj: *IFileSystemBindData2) -> *IFileSystemBindData2_VTable { return obj.ifilesystembinddata2_vtable; }


KNOWNDESTCATEGORY :: enum s32 {
    FREQUENT :: 1;
    RECENT   :: 2;

    KDC_FREQUENT :: FREQUENT;
    KDC_RECENT   :: RECENT;
}


ICustomDestinationList_UUID :: "6332debf-87b5-4670-90c0-5e57b408a49e";
ICustomDestinationList :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; icustomdestinationlist_vtable: *ICustomDestinationList_VTable;
}
ICustomDestinationList_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SetAppID: (this: *ICustomDestinationList, pszAppID: *s16) -> HRESULT #cpp_method;

    BeginList: (this: *ICustomDestinationList, pcMinSlots: *u32, riid: *IID, ppv: **void) -> HRESULT #cpp_method;

    AppendCategory: (this: *ICustomDestinationList, pszCategory: *s16, poa: *IObjectArray) -> HRESULT #cpp_method;

    AppendKnownCategory: (this: *ICustomDestinationList, category: KNOWNDESTCATEGORY) -> HRESULT #cpp_method;

    AddUserTasks: (this: *ICustomDestinationList, poa: *IObjectArray) -> HRESULT #cpp_method;

    CommitList: (this: *ICustomDestinationList) -> HRESULT #cpp_method;

    GetRemovedDestinations: (this: *ICustomDestinationList, riid: *IID, ppv: **void) -> HRESULT #cpp_method;

    DeleteList: (this: *ICustomDestinationList, pszAppID: *s16) -> HRESULT #cpp_method;

    AbortList: (this: *ICustomDestinationList) -> HRESULT #cpp_method;
}

ICustomDestinationList_SetAppID :: inline (this: *ICustomDestinationList, pszAppID: *s16) -> HRESULT { return this.icustomdestinationlist_vtable.SetAppID(this, pszAppID); }

ICustomDestinationList_BeginList :: inline (this: *ICustomDestinationList, pcMinSlots: *u32, riid: *IID, ppv: **void) -> HRESULT { return this.icustomdestinationlist_vtable.BeginList(this, pcMinSlots, riid, ppv); }

ICustomDestinationList_AppendCategory :: inline (this: *ICustomDestinationList, pszCategory: *s16, poa: *IObjectArray) -> HRESULT { return this.icustomdestinationlist_vtable.AppendCategory(this, pszCategory, poa); }

ICustomDestinationList_AppendKnownCategory :: inline (this: *ICustomDestinationList, category: KNOWNDESTCATEGORY) -> HRESULT { return this.icustomdestinationlist_vtable.AppendKnownCategory(this, category); }

ICustomDestinationList_AddUserTasks :: inline (this: *ICustomDestinationList, poa: *IObjectArray) -> HRESULT { return this.icustomdestinationlist_vtable.AddUserTasks(this, poa); }

ICustomDestinationList_CommitList :: inline (this: *ICustomDestinationList) -> HRESULT { return this.icustomdestinationlist_vtable.CommitList(this); }

ICustomDestinationList_GetRemovedDestinations :: inline (this: *ICustomDestinationList, riid: *IID, ppv: **void) -> HRESULT { return this.icustomdestinationlist_vtable.GetRemovedDestinations(this, riid, ppv); }

ICustomDestinationList_DeleteList :: inline (this: *ICustomDestinationList, pszAppID: *s16) -> HRESULT { return this.icustomdestinationlist_vtable.DeleteList(this, pszAppID); }

ICustomDestinationList_AbortList :: inline (this: *ICustomDestinationList) -> HRESULT { return this.icustomdestinationlist_vtable.AbortList(this); }

vtable :: (obj: *ICustomDestinationList) -> *ICustomDestinationList_VTable { return obj.icustomdestinationlist_vtable; }



IApplicationDestinations_UUID :: "12337d35-94c6-48a0-bce7-6a9c69d4d600";
IApplicationDestinations :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iapplicationdestinations_vtable: *IApplicationDestinations_VTable;
}
IApplicationDestinations_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SetAppID: (this: *IApplicationDestinations, pszAppID: *s16) -> HRESULT #cpp_method;

    RemoveDestination: (this: *IApplicationDestinations, punk: *IUnknown) -> HRESULT #cpp_method;

    RemoveAllDestinations: (this: *IApplicationDestinations) -> HRESULT #cpp_method;
}

IApplicationDestinations_SetAppID :: inline (this: *IApplicationDestinations, pszAppID: *s16) -> HRESULT { return this.iapplicationdestinations_vtable.SetAppID(this, pszAppID); }

IApplicationDestinations_RemoveDestination :: inline (this: *IApplicationDestinations, punk: *IUnknown) -> HRESULT { return this.iapplicationdestinations_vtable.RemoveDestination(this, punk); }

IApplicationDestinations_RemoveAllDestinations :: inline (this: *IApplicationDestinations) -> HRESULT { return this.iapplicationdestinations_vtable.RemoveAllDestinations(this); }

vtable :: (obj: *IApplicationDestinations) -> *IApplicationDestinations_VTable { return obj.iapplicationdestinations_vtable; }


APPDOCLISTTYPE :: enum s32 {
    RECENT   :: 0;
    FREQUENT :: 1;

    ADLT_RECENT   :: RECENT;
    ADLT_FREQUENT :: FREQUENT;
}


IApplicationDocumentLists_UUID :: "3c594f9f-9f30-47a1-979a-c9e83d3d0a06";
IApplicationDocumentLists :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iapplicationdocumentlists_vtable: *IApplicationDocumentLists_VTable;
}
IApplicationDocumentLists_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SetAppID: (this: *IApplicationDocumentLists, pszAppID: *s16) -> HRESULT #cpp_method;

    GetList: (this: *IApplicationDocumentLists, listtype: APPDOCLISTTYPE, cItemsDesired: u32, riid: *IID, ppv: **void) -> HRESULT #cpp_method;
}

IApplicationDocumentLists_SetAppID :: inline (this: *IApplicationDocumentLists, pszAppID: *s16) -> HRESULT { return this.iapplicationdocumentlists_vtable.SetAppID(this, pszAppID); }

IApplicationDocumentLists_GetList :: inline (this: *IApplicationDocumentLists, listtype: APPDOCLISTTYPE, cItemsDesired: u32, riid: *IID, ppv: **void) -> HRESULT { return this.iapplicationdocumentlists_vtable.GetList(this, listtype, cItemsDesired, riid, ppv); }

vtable :: (obj: *IApplicationDocumentLists) -> *IApplicationDocumentLists_VTable { return obj.iapplicationdocumentlists_vtable; }



IObjectWithAppUserModelID_UUID :: "36db0196-9665-46d1-9ba7-d3709eecf9ed";
IObjectWithAppUserModelID :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iobjectwithappusermodelid_vtable: *IObjectWithAppUserModelID_VTable;
}
IObjectWithAppUserModelID_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SetAppID: (this: *IObjectWithAppUserModelID, pszAppID: *s16) -> HRESULT #cpp_method;

    GetAppID: (this: *IObjectWithAppUserModelID, ppszAppID: **s16) -> HRESULT #cpp_method;
}

IObjectWithAppUserModelID_SetAppID :: inline (this: *IObjectWithAppUserModelID, pszAppID: *s16) -> HRESULT { return this.iobjectwithappusermodelid_vtable.SetAppID(this, pszAppID); }

IObjectWithAppUserModelID_GetAppID :: inline (this: *IObjectWithAppUserModelID, ppszAppID: **s16) -> HRESULT { return this.iobjectwithappusermodelid_vtable.GetAppID(this, ppszAppID); }

vtable :: (obj: *IObjectWithAppUserModelID) -> *IObjectWithAppUserModelID_VTable { return obj.iobjectwithappusermodelid_vtable; }



IObjectWithProgID_UUID :: "71e806fb-8dee-46fc-bf8c-7748a8a1ae13";
IObjectWithProgID :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iobjectwithprogid_vtable: *IObjectWithProgID_VTable;
}
IObjectWithProgID_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SetProgID: (this: *IObjectWithProgID, pszProgID: *s16) -> HRESULT #cpp_method;

    GetProgID: (this: *IObjectWithProgID, ppszProgID: **s16) -> HRESULT #cpp_method;
}

IObjectWithProgID_SetProgID :: inline (this: *IObjectWithProgID, pszProgID: *s16) -> HRESULT { return this.iobjectwithprogid_vtable.SetProgID(this, pszProgID); }

IObjectWithProgID_GetProgID :: inline (this: *IObjectWithProgID, ppszProgID: **s16) -> HRESULT { return this.iobjectwithprogid_vtable.GetProgID(this, ppszProgID); }

vtable :: (obj: *IObjectWithProgID) -> *IObjectWithProgID_VTable { return obj.iobjectwithprogid_vtable; }



IUpdateIDList_UUID :: "6589b6d2-5f8d-4b9e-b7e0-23cdd9717d8c";
IUpdateIDList :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iupdateidlist_vtable: *IUpdateIDList_VTable;
}
IUpdateIDList_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Update: (this: *IUpdateIDList, pbc: *IBindCtx, pidlIn: LPCITEMIDLIST, ppidlOut: *LPITEMIDLIST) -> HRESULT #cpp_method;
}
IUpdateIDList_Update :: inline (this: *IUpdateIDList, pbc: *IBindCtx, pidlIn: LPCITEMIDLIST, ppidlOut: *LPITEMIDLIST) -> HRESULT { return this.iupdateidlist_vtable.Update(this, pbc, pidlIn, ppidlOut); }

vtable :: (obj: *IUpdateIDList) -> *IUpdateIDList_VTable { return obj.iupdateidlist_vtable; }


SetCurrentProcessExplicitAppUserModelID :: (AppID: PCWSTR) -> HRESULT #foreign shell32;
GetCurrentProcessExplicitAppUserModelID :: (AppID: **s16) -> HRESULT #foreign shell32;

DESKTOP_SLIDESHOW_OPTIONS :: enum s32 {
    DSO_SHUFFLEIMAGES :: 1;
}

DESKTOP_SLIDESHOW_STATE :: enum s32 {
    ENABLED                    :: 1;
    SLIDESHOW                  :: 2;
    DISABLED_BY_REMOTE_SESSION :: 4;

    DSS_ENABLED                    :: ENABLED;
    DSS_SLIDESHOW                  :: SLIDESHOW;
    DSS_DISABLED_BY_REMOTE_SESSION :: DISABLED_BY_REMOTE_SESSION;
}

DESKTOP_SLIDESHOW_DIRECTION :: enum s32 {
    FORWARD  :: 0;
    BACKWARD :: 1;

    DSD_FORWARD  :: FORWARD;
    DSD_BACKWARD :: BACKWARD;
}

DESKTOP_WALLPAPER_POSITION :: enum s32 {
    CENTER  :: 0;
    TILE    :: 1;
    STRETCH :: 2;
    FIT     :: 3;
    FILL    :: 4;
    SPAN    :: 5;

    DWPOS_CENTER  :: CENTER;
    DWPOS_TILE    :: TILE;
    DWPOS_STRETCH :: STRETCH;
    DWPOS_FIT     :: FIT;
    DWPOS_FILL    :: FILL;
    DWPOS_SPAN    :: SPAN;
}


IDesktopWallpaper_UUID :: "B92B56A9-8B55-4E14-9A89-0199BBB6F93B";
IDesktopWallpaper :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; idesktopwallpaper_vtable: *IDesktopWallpaper_VTable;
}
IDesktopWallpaper_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SetWallpaper: (this: *IDesktopWallpaper, monitorID: *s16, wallpaper: *s16) -> HRESULT #cpp_method;

    GetWallpaper: (this: *IDesktopWallpaper, monitorID: *s16, wallpaper: **s16) -> HRESULT #cpp_method;

    GetMonitorDevicePathAt: (this: *IDesktopWallpaper, monitorIndex: u32, monitorID: **s16) -> HRESULT #cpp_method;

    GetMonitorDevicePathCount: (this: *IDesktopWallpaper, count: *u32) -> HRESULT #cpp_method;

    GetMonitorRECT: (this: *IDesktopWallpaper, monitorID: *s16, displayRect: *RECT) -> HRESULT #cpp_method;

    SetBackgroundColor: (this: *IDesktopWallpaper, color: COLORREF) -> HRESULT #cpp_method;

    GetBackgroundColor: (this: *IDesktopWallpaper, color: *COLORREF) -> HRESULT #cpp_method;

    SetPosition: (this: *IDesktopWallpaper, position: DESKTOP_WALLPAPER_POSITION) -> HRESULT #cpp_method;

    GetPosition: (this: *IDesktopWallpaper, position: *DESKTOP_WALLPAPER_POSITION) -> HRESULT #cpp_method;

    SetSlideshow: (this: *IDesktopWallpaper, items: *IShellItemArray) -> HRESULT #cpp_method;

    GetSlideshow: (this: *IDesktopWallpaper, items: **IShellItemArray) -> HRESULT #cpp_method;

    SetSlideshowOptions: (this: *IDesktopWallpaper, options: DESKTOP_SLIDESHOW_OPTIONS, slideshowTick: u32) -> HRESULT #cpp_method;

    GetSlideshowOptions: (this: *IDesktopWallpaper, options: *DESKTOP_SLIDESHOW_OPTIONS, slideshowTick: *u32) -> HRESULT #cpp_method;

    AdvanceSlideshow: (this: *IDesktopWallpaper, monitorID: *s16, direction: DESKTOP_SLIDESHOW_DIRECTION) -> HRESULT #cpp_method;

    GetStatus: (this: *IDesktopWallpaper, state: *DESKTOP_SLIDESHOW_STATE) -> HRESULT #cpp_method;

    Enable: (this: *IDesktopWallpaper, enable: BOOL) -> HRESULT #cpp_method;
}

IDesktopWallpaper_SetWallpaper :: inline (this: *IDesktopWallpaper, monitorID: *s16, wallpaper: *s16) -> HRESULT { return this.idesktopwallpaper_vtable.SetWallpaper(this, monitorID, wallpaper); }

IDesktopWallpaper_GetWallpaper :: inline (this: *IDesktopWallpaper, monitorID: *s16, wallpaper: **s16) -> HRESULT { return this.idesktopwallpaper_vtable.GetWallpaper(this, monitorID, wallpaper); }

IDesktopWallpaper_GetMonitorDevicePathAt :: inline (this: *IDesktopWallpaper, monitorIndex: u32, monitorID: **s16) -> HRESULT { return this.idesktopwallpaper_vtable.GetMonitorDevicePathAt(this, monitorIndex, monitorID); }

IDesktopWallpaper_GetMonitorDevicePathCount :: inline (this: *IDesktopWallpaper, count: *u32) -> HRESULT { return this.idesktopwallpaper_vtable.GetMonitorDevicePathCount(this, count); }

IDesktopWallpaper_GetMonitorRECT :: inline (this: *IDesktopWallpaper, monitorID: *s16, displayRect: *RECT) -> HRESULT { return this.idesktopwallpaper_vtable.GetMonitorRECT(this, monitorID, displayRect); }

IDesktopWallpaper_SetBackgroundColor :: inline (this: *IDesktopWallpaper, color: COLORREF) -> HRESULT { return this.idesktopwallpaper_vtable.SetBackgroundColor(this, color); }

IDesktopWallpaper_GetBackgroundColor :: inline (this: *IDesktopWallpaper, color: *COLORREF) -> HRESULT { return this.idesktopwallpaper_vtable.GetBackgroundColor(this, color); }

IDesktopWallpaper_SetPosition :: inline (this: *IDesktopWallpaper, position: DESKTOP_WALLPAPER_POSITION) -> HRESULT { return this.idesktopwallpaper_vtable.SetPosition(this, position); }

IDesktopWallpaper_GetPosition :: inline (this: *IDesktopWallpaper, position: *DESKTOP_WALLPAPER_POSITION) -> HRESULT { return this.idesktopwallpaper_vtable.GetPosition(this, position); }

IDesktopWallpaper_SetSlideshow :: inline (this: *IDesktopWallpaper, items: *IShellItemArray) -> HRESULT { return this.idesktopwallpaper_vtable.SetSlideshow(this, items); }

IDesktopWallpaper_GetSlideshow :: inline (this: *IDesktopWallpaper, items: **IShellItemArray) -> HRESULT { return this.idesktopwallpaper_vtable.GetSlideshow(this, items); }

IDesktopWallpaper_SetSlideshowOptions :: inline (this: *IDesktopWallpaper, options: DESKTOP_SLIDESHOW_OPTIONS, slideshowTick: u32) -> HRESULT { return this.idesktopwallpaper_vtable.SetSlideshowOptions(this, options, slideshowTick); }

IDesktopWallpaper_GetSlideshowOptions :: inline (this: *IDesktopWallpaper, options: *DESKTOP_SLIDESHOW_OPTIONS, slideshowTick: *u32) -> HRESULT { return this.idesktopwallpaper_vtable.GetSlideshowOptions(this, options, slideshowTick); }

IDesktopWallpaper_AdvanceSlideshow :: inline (this: *IDesktopWallpaper, monitorID: *s16, direction: DESKTOP_SLIDESHOW_DIRECTION) -> HRESULT { return this.idesktopwallpaper_vtable.AdvanceSlideshow(this, monitorID, direction); }

IDesktopWallpaper_GetStatus :: inline (this: *IDesktopWallpaper, state: *DESKTOP_SLIDESHOW_STATE) -> HRESULT { return this.idesktopwallpaper_vtable.GetStatus(this, state); }

IDesktopWallpaper_Enable :: inline (this: *IDesktopWallpaper, enable: BOOL) -> HRESULT { return this.idesktopwallpaper_vtable.Enable(this, enable); }

vtable :: (obj: *IDesktopWallpaper) -> *IDesktopWallpaper_VTable { return obj.idesktopwallpaper_vtable; }


HOMEGROUPSHARINGCHOICES :: enum s32 {
    NONE             :: 0;
    MUSICLIBRARY     :: 1;
    PICTURESLIBRARY  :: 2;
    VIDEOSLIBRARY    :: 4;
    DOCUMENTSLIBRARY :: 8;
    PRINTERS         :: 16;

    HGSC_NONE             :: NONE;
    HGSC_MUSICLIBRARY     :: MUSICLIBRARY;
    HGSC_PICTURESLIBRARY  :: PICTURESLIBRARY;
    HGSC_VIDEOSLIBRARY    :: VIDEOSLIBRARY;
    HGSC_DOCUMENTSLIBRARY :: DOCUMENTSLIBRARY;
    HGSC_PRINTERS         :: PRINTERS;
}


IHomeGroup_UUID :: "7a3bd1d9-35a9-4fb3-a467-f48cac35e2d0";
IHomeGroup :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ihomegroup_vtable: *IHomeGroup_VTable;
}
IHomeGroup_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    IsMember: (this: *IHomeGroup, member: *BOOL) -> HRESULT #cpp_method;

    ShowSharingWizard: (this: *IHomeGroup, owner: HWND, sharingchoices: *HOMEGROUPSHARINGCHOICES) -> HRESULT #cpp_method;
}

IHomeGroup_IsMember :: inline (this: *IHomeGroup, member: *BOOL) -> HRESULT { return this.ihomegroup_vtable.IsMember(this, member); }

IHomeGroup_ShowSharingWizard :: inline (this: *IHomeGroup, owner: HWND, sharingchoices: *HOMEGROUPSHARINGCHOICES) -> HRESULT { return this.ihomegroup_vtable.ShowSharingWizard(this, owner, sharingchoices); }

vtable :: (obj: *IHomeGroup) -> *IHomeGroup_VTable { return obj.ihomegroup_vtable; }



IInitializeWithPropertyStore_UUID :: "C3E12EB5-7D8D-44f8-B6DD-0E77B34D6DE4";
IInitializeWithPropertyStore :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iinitializewithpropertystore_vtable: *IInitializeWithPropertyStore_VTable;
}
IInitializeWithPropertyStore_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Initialize: (this: *IInitializeWithPropertyStore, pps: *IPropertyStore) -> HRESULT #cpp_method;
}
IInitializeWithPropertyStore_Initialize :: inline (this: *IInitializeWithPropertyStore, pps: *IPropertyStore) -> HRESULT { return this.iinitializewithpropertystore_vtable.Initialize(this, pps); }

vtable :: (obj: *IInitializeWithPropertyStore) -> *IInitializeWithPropertyStore_VTable { return obj.iinitializewithpropertystore_vtable; }



IOpenSearchSource_UUID :: "F0EE7333-E6FC-479b-9F25-A860C234A38E";
IOpenSearchSource :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iopensearchsource_vtable: *IOpenSearchSource_VTable;
}
IOpenSearchSource_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetResults: (this: *IOpenSearchSource, hwnd: HWND, pszQuery: *s16, dwStartIndex: u32, dwCount: u32, riid: *IID, ppv: **void) -> HRESULT #cpp_method;
}
IOpenSearchSource_GetResults :: inline (this: *IOpenSearchSource, hwnd: HWND, pszQuery: *s16, dwStartIndex: u32, dwCount: u32, riid: *IID, ppv: **void) -> HRESULT { return this.iopensearchsource_vtable.GetResults(this, hwnd, pszQuery, dwStartIndex, dwCount, riid, ppv); }

vtable :: (obj: *IOpenSearchSource) -> *IOpenSearchSource_VTable { return obj.iopensearchsource_vtable; }


LIBRARYFOLDERFILTER :: enum s32 {
    FORCEFILESYSTEM :: 1;
    STORAGEITEMS    :: 2;
    ALLITEMS        :: 3;

    LFF_FORCEFILESYSTEM :: FORCEFILESYSTEM;
    LFF_STORAGEITEMS    :: STORAGEITEMS;
    LFF_ALLITEMS        :: ALLITEMS;
}

LIBRARYOPTIONFLAGS :: enum s32 {
    DEFAULT         :: 0;
    PINNEDTONAVPANE :: 1;
    MASK_ALL        :: 1;

    LOF_DEFAULT         :: DEFAULT;
    LOF_PINNEDTONAVPANE :: PINNEDTONAVPANE;
    LOF_MASK_ALL        :: MASK_ALL;
}

DEFAULTSAVEFOLDERTYPE :: enum s32 {
    DETECT  :: 1;
    PRIVATE :: 2;
    PUBLIC  :: 3;

    DSFT_DETECT  :: DETECT;
    DSFT_PRIVATE :: PRIVATE;
    DSFT_PUBLIC  :: PUBLIC;
}

LIBRARYSAVEFLAGS :: enum s32 {
    FAILIFTHERE      :: 0;
    OVERRIDEEXISTING :: 1;
    MAKEUNIQUENAME   :: 2;

    LSF_FAILIFTHERE      :: FAILIFTHERE;
    LSF_OVERRIDEEXISTING :: OVERRIDEEXISTING;
    LSF_MAKEUNIQUENAME   :: MAKEUNIQUENAME;
}


IShellLibrary_UUID :: "11a66efa-382e-451a-9234-1e0e12ef3085";
IShellLibrary :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ishelllibrary_vtable: *IShellLibrary_VTable;
}
IShellLibrary_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    LoadLibraryFromItem: (this: *IShellLibrary, psiLibrary: *IShellItem, grfMode: u32) -> HRESULT #cpp_method;

    LoadLibraryFromKnownFolder: (this: *IShellLibrary, kfidLibrary: *KNOWNFOLDERID, grfMode: u32) -> HRESULT #cpp_method;

    AddFolder: (this: *IShellLibrary, psiLocation: *IShellItem) -> HRESULT #cpp_method;

    RemoveFolder: (this: *IShellLibrary, psiLocation: *IShellItem) -> HRESULT #cpp_method;

    GetFolders: (this: *IShellLibrary, lff: LIBRARYFOLDERFILTER, riid: *IID, ppv: **void) -> HRESULT #cpp_method;

    ResolveFolder: (this: *IShellLibrary, psiFolderToResolve: *IShellItem, dwTimeout: u32, riid: *IID, ppv: **void) -> HRESULT #cpp_method;

    GetDefaultSaveFolder: (this: *IShellLibrary, dsft: DEFAULTSAVEFOLDERTYPE, riid: *IID, ppv: **void) -> HRESULT #cpp_method;

    SetDefaultSaveFolder: (this: *IShellLibrary, dsft: DEFAULTSAVEFOLDERTYPE, psi: *IShellItem) -> HRESULT #cpp_method;

    GetOptions: (this: *IShellLibrary, plofOptions: *LIBRARYOPTIONFLAGS) -> HRESULT #cpp_method;

    SetOptions: (this: *IShellLibrary, lofMask: LIBRARYOPTIONFLAGS, lofOptions: LIBRARYOPTIONFLAGS) -> HRESULT #cpp_method;

    GetFolderType: (this: *IShellLibrary, pftid: *FOLDERTYPEID) -> HRESULT #cpp_method;

    SetFolderType: (this: *IShellLibrary, ftid: *FOLDERTYPEID) -> HRESULT #cpp_method;

    GetIcon: (this: *IShellLibrary, ppszIcon: **s16) -> HRESULT #cpp_method;

    SetIcon: (this: *IShellLibrary, pszIcon: *s16) -> HRESULT #cpp_method;

    Commit: (this: *IShellLibrary) -> HRESULT #cpp_method;

    Save: (this: *IShellLibrary, psiFolderToSaveIn: *IShellItem, pszLibraryName: *s16, lsf: LIBRARYSAVEFLAGS, ppsiSavedTo: **IShellItem) -> HRESULT #cpp_method;

    SaveInKnownFolder: (this: *IShellLibrary, kfidToSaveIn: *KNOWNFOLDERID, pszLibraryName: *s16, lsf: LIBRARYSAVEFLAGS, ppsiSavedTo: **IShellItem) -> HRESULT #cpp_method;
}

IShellLibrary_LoadLibraryFromItem :: inline (this: *IShellLibrary, psiLibrary: *IShellItem, grfMode: u32) -> HRESULT { return this.ishelllibrary_vtable.LoadLibraryFromItem(this, psiLibrary, grfMode); }

IShellLibrary_LoadLibraryFromKnownFolder :: inline (this: *IShellLibrary, kfidLibrary: *KNOWNFOLDERID, grfMode: u32) -> HRESULT { return this.ishelllibrary_vtable.LoadLibraryFromKnownFolder(this, kfidLibrary, grfMode); }

IShellLibrary_AddFolder :: inline (this: *IShellLibrary, psiLocation: *IShellItem) -> HRESULT { return this.ishelllibrary_vtable.AddFolder(this, psiLocation); }

IShellLibrary_RemoveFolder :: inline (this: *IShellLibrary, psiLocation: *IShellItem) -> HRESULT { return this.ishelllibrary_vtable.RemoveFolder(this, psiLocation); }

IShellLibrary_GetFolders :: inline (this: *IShellLibrary, lff: LIBRARYFOLDERFILTER, riid: *IID, ppv: **void) -> HRESULT { return this.ishelllibrary_vtable.GetFolders(this, lff, riid, ppv); }

IShellLibrary_ResolveFolder :: inline (this: *IShellLibrary, psiFolderToResolve: *IShellItem, dwTimeout: u32, riid: *IID, ppv: **void) -> HRESULT { return this.ishelllibrary_vtable.ResolveFolder(this, psiFolderToResolve, dwTimeout, riid, ppv); }

IShellLibrary_GetDefaultSaveFolder :: inline (this: *IShellLibrary, dsft: DEFAULTSAVEFOLDERTYPE, riid: *IID, ppv: **void) -> HRESULT { return this.ishelllibrary_vtable.GetDefaultSaveFolder(this, dsft, riid, ppv); }

IShellLibrary_SetDefaultSaveFolder :: inline (this: *IShellLibrary, dsft: DEFAULTSAVEFOLDERTYPE, psi: *IShellItem) -> HRESULT { return this.ishelllibrary_vtable.SetDefaultSaveFolder(this, dsft, psi); }

IShellLibrary_GetOptions :: inline (this: *IShellLibrary, plofOptions: *LIBRARYOPTIONFLAGS) -> HRESULT { return this.ishelllibrary_vtable.GetOptions(this, plofOptions); }

IShellLibrary_SetOptions :: inline (this: *IShellLibrary, lofMask: LIBRARYOPTIONFLAGS, lofOptions: LIBRARYOPTIONFLAGS) -> HRESULT { return this.ishelllibrary_vtable.SetOptions(this, lofMask, lofOptions); }

IShellLibrary_GetFolderType :: inline (this: *IShellLibrary, pftid: *FOLDERTYPEID) -> HRESULT { return this.ishelllibrary_vtable.GetFolderType(this, pftid); }

IShellLibrary_SetFolderType :: inline (this: *IShellLibrary, ftid: *FOLDERTYPEID) -> HRESULT { return this.ishelllibrary_vtable.SetFolderType(this, ftid); }

IShellLibrary_GetIcon :: inline (this: *IShellLibrary, ppszIcon: **s16) -> HRESULT { return this.ishelllibrary_vtable.GetIcon(this, ppszIcon); }

IShellLibrary_SetIcon :: inline (this: *IShellLibrary, pszIcon: *s16) -> HRESULT { return this.ishelllibrary_vtable.SetIcon(this, pszIcon); }

IShellLibrary_Commit :: inline (this: *IShellLibrary) -> HRESULT { return this.ishelllibrary_vtable.Commit(this); }

IShellLibrary_Save :: inline (this: *IShellLibrary, psiFolderToSaveIn: *IShellItem, pszLibraryName: *s16, lsf: LIBRARYSAVEFLAGS, ppsiSavedTo: **IShellItem) -> HRESULT { return this.ishelllibrary_vtable.Save(this, psiFolderToSaveIn, pszLibraryName, lsf, ppsiSavedTo); }

IShellLibrary_SaveInKnownFolder :: inline (this: *IShellLibrary, kfidToSaveIn: *KNOWNFOLDERID, pszLibraryName: *s16, lsf: LIBRARYSAVEFLAGS, ppsiSavedTo: **IShellItem) -> HRESULT { return this.ishelllibrary_vtable.SaveInKnownFolder(this, kfidToSaveIn, pszLibraryName, lsf, ppsiSavedTo); }

vtable :: (obj: *IShellLibrary) -> *IShellLibrary_VTable { return obj.ishelllibrary_vtable; }


DEFAULT_FOLDER_MENU_RESTRICTIONS :: enum s32 {
    DEFAULT                        :: 0;
    NO_STATIC_VERBS                :: 8;
    STATIC_VERBS_ONLY              :: 16;
    NO_RESOURCE_VERBS              :: 32;
    OPTIN_HANDLERS_ONLY            :: 64;
    RESOURCE_AND_FOLDER_VERBS_ONLY :: 128;
    USE_SPECIFIED_HANDLERS         :: 256;
    USE_SPECIFIED_VERBS            :: 512;
    NO_ASYNC_VERBS                 :: 1024;
    NO_NATIVECPU_VERBS             :: 2048;
    NO_NONWOW_VERBS                :: 4096;

    DFMR_DEFAULT                        :: DEFAULT;
    DFMR_NO_STATIC_VERBS                :: NO_STATIC_VERBS;
    DFMR_STATIC_VERBS_ONLY              :: STATIC_VERBS_ONLY;
    DFMR_NO_RESOURCE_VERBS              :: NO_RESOURCE_VERBS;
    DFMR_OPTIN_HANDLERS_ONLY            :: OPTIN_HANDLERS_ONLY;
    DFMR_RESOURCE_AND_FOLDER_VERBS_ONLY :: RESOURCE_AND_FOLDER_VERBS_ONLY;
    DFMR_USE_SPECIFIED_HANDLERS         :: USE_SPECIFIED_HANDLERS;
    DFMR_USE_SPECIFIED_VERBS            :: USE_SPECIFIED_VERBS;
    DFMR_NO_ASYNC_VERBS                 :: NO_ASYNC_VERBS;
    DFMR_NO_NATIVECPU_VERBS             :: NO_NATIVECPU_VERBS;
    DFMR_NO_NONWOW_VERBS                :: NO_NONWOW_VERBS;
}


IDefaultFolderMenuInitialize_UUID :: "7690aa79-f8fc-4615-a327-36f7d18f5d91";
IDefaultFolderMenuInitialize :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; idefaultfoldermenuinitialize_vtable: *IDefaultFolderMenuInitialize_VTable;
}
IDefaultFolderMenuInitialize_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Initialize: (this: *IDefaultFolderMenuInitialize, hwnd: HWND, pcmcb: *IContextMenuCB, pidlFolder: LPCITEMIDLIST, psf: *IShellFolder, cidl: u32, apidl: *LPCITEMIDLIST, punkAssociation: *IUnknown, cKeys: u32, aKeys: *HKEY) -> HRESULT #cpp_method;

    SetMenuRestrictions: (this: *IDefaultFolderMenuInitialize, dfmrValues: DEFAULT_FOLDER_MENU_RESTRICTIONS) -> HRESULT #cpp_method;

    GetMenuRestrictions: (this: *IDefaultFolderMenuInitialize, dfmrMask: DEFAULT_FOLDER_MENU_RESTRICTIONS, pdfmrValues: *DEFAULT_FOLDER_MENU_RESTRICTIONS) -> HRESULT #cpp_method;

    SetHandlerClsid: (this: *IDefaultFolderMenuInitialize, rclsid: *IID) -> HRESULT #cpp_method;
}

IDefaultFolderMenuInitialize_Initialize :: inline (this: *IDefaultFolderMenuInitialize, hwnd: HWND, pcmcb: *IContextMenuCB, pidlFolder: LPCITEMIDLIST, psf: *IShellFolder, cidl: u32, apidl: *LPCITEMIDLIST, punkAssociation: *IUnknown, cKeys: u32, aKeys: *HKEY) -> HRESULT { return this.idefaultfoldermenuinitialize_vtable.Initialize(this, hwnd, pcmcb, pidlFolder, psf, cidl, apidl, punkAssociation, cKeys, aKeys); }

IDefaultFolderMenuInitialize_SetMenuRestrictions :: inline (this: *IDefaultFolderMenuInitialize, dfmrValues: DEFAULT_FOLDER_MENU_RESTRICTIONS) -> HRESULT { return this.idefaultfoldermenuinitialize_vtable.SetMenuRestrictions(this, dfmrValues); }

IDefaultFolderMenuInitialize_GetMenuRestrictions :: inline (this: *IDefaultFolderMenuInitialize, dfmrMask: DEFAULT_FOLDER_MENU_RESTRICTIONS, pdfmrValues: *DEFAULT_FOLDER_MENU_RESTRICTIONS) -> HRESULT { return this.idefaultfoldermenuinitialize_vtable.GetMenuRestrictions(this, dfmrMask, pdfmrValues); }

IDefaultFolderMenuInitialize_SetHandlerClsid :: inline (this: *IDefaultFolderMenuInitialize, rclsid: *IID) -> HRESULT { return this.idefaultfoldermenuinitialize_vtable.SetHandlerClsid(this, rclsid); }

vtable :: (obj: *IDefaultFolderMenuInitialize) -> *IDefaultFolderMenuInitialize_VTable { return obj.idefaultfoldermenuinitialize_vtable; }


ACTIVATEOPTIONS :: enum s32 {
    NONE           :: 0;
    DESIGNMODE     :: 1;
    NOERRORUI      :: 2;
    NOSPLASHSCREEN :: 4;
    PRELAUNCH      :: 33554432;

    AO_NONE           :: NONE;
    AO_DESIGNMODE     :: DESIGNMODE;
    AO_NOERRORUI      :: NOERRORUI;
    AO_NOSPLASHSCREEN :: NOSPLASHSCREEN;
    AO_PRELAUNCH      :: PRELAUNCH;
}


IApplicationActivationManager_UUID :: "2e941141-7f97-4756-ba1d-9decde894a3d";
IApplicationActivationManager :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iapplicationactivationmanager_vtable: *IApplicationActivationManager_VTable;
}
IApplicationActivationManager_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    ActivateApplication: (this: *IApplicationActivationManager, appUserModelId: *s16, arguments: *s16, options: ACTIVATEOPTIONS, processId: *u32) -> HRESULT #cpp_method;

    ActivateForFile: (this: *IApplicationActivationManager, appUserModelId: *s16, itemArray: *IShellItemArray, verb: *s16, processId: *u32) -> HRESULT #cpp_method;

    ActivateForProtocol: (this: *IApplicationActivationManager, appUserModelId: *s16, itemArray: *IShellItemArray, processId: *u32) -> HRESULT #cpp_method;
}

IApplicationActivationManager_ActivateApplication :: inline (this: *IApplicationActivationManager, appUserModelId: *s16, arguments: *s16, options: ACTIVATEOPTIONS, processId: *u32) -> HRESULT { return this.iapplicationactivationmanager_vtable.ActivateApplication(this, appUserModelId, arguments, options, processId); }

IApplicationActivationManager_ActivateForFile :: inline (this: *IApplicationActivationManager, appUserModelId: *s16, itemArray: *IShellItemArray, verb: *s16, processId: *u32) -> HRESULT { return this.iapplicationactivationmanager_vtable.ActivateForFile(this, appUserModelId, itemArray, verb, processId); }

IApplicationActivationManager_ActivateForProtocol :: inline (this: *IApplicationActivationManager, appUserModelId: *s16, itemArray: *IShellItemArray, processId: *u32) -> HRESULT { return this.iapplicationactivationmanager_vtable.ActivateForProtocol(this, appUserModelId, itemArray, processId); }

vtable :: (obj: *IApplicationActivationManager) -> *IApplicationActivationManager_VTable { return obj.iapplicationactivationmanager_vtable; }



IVirtualDesktopManager_UUID :: "a5cd92ff-29be-454c-8d04-d82879fb3f1b";
IVirtualDesktopManager :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ivirtualdesktopmanager_vtable: *IVirtualDesktopManager_VTable;
}
IVirtualDesktopManager_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    IsWindowOnCurrentVirtualDesktop: (this: *IVirtualDesktopManager, topLevelWindow: HWND, onCurrentDesktop: *BOOL) -> HRESULT #cpp_method;

    GetWindowDesktopId: (this: *IVirtualDesktopManager, topLevelWindow: HWND, desktopId: *GUID) -> HRESULT #cpp_method;

    MoveWindowToDesktop: (this: *IVirtualDesktopManager, topLevelWindow: HWND, desktopId: *GUID) -> HRESULT #cpp_method;
}

IVirtualDesktopManager_IsWindowOnCurrentVirtualDesktop :: inline (this: *IVirtualDesktopManager, topLevelWindow: HWND, onCurrentDesktop: *BOOL) -> HRESULT { return this.ivirtualdesktopmanager_vtable.IsWindowOnCurrentVirtualDesktop(this, topLevelWindow, onCurrentDesktop); }

IVirtualDesktopManager_GetWindowDesktopId :: inline (this: *IVirtualDesktopManager, topLevelWindow: HWND, desktopId: *GUID) -> HRESULT { return this.ivirtualdesktopmanager_vtable.GetWindowDesktopId(this, topLevelWindow, desktopId); }

IVirtualDesktopManager_MoveWindowToDesktop :: inline (this: *IVirtualDesktopManager, topLevelWindow: HWND, desktopId: *GUID) -> HRESULT { return this.ivirtualdesktopmanager_vtable.MoveWindowToDesktop(this, topLevelWindow, desktopId); }

vtable :: (obj: *IVirtualDesktopManager) -> *IVirtualDesktopManager_VTable { return obj.ivirtualdesktopmanager_vtable; }


LIBID_ShellCoreObjects: IID;

CLSID_DesktopWallpaper: CLSID;

CLSID_ShellDesktop: CLSID;

CLSID_ShellFSFolder: CLSID;

CLSID_NetworkPlaces: CLSID;

CLSID_ShellLink: CLSID;

CLSID_DriveSizeCategorizer: CLSID;

CLSID_DriveTypeCategorizer: CLSID;

CLSID_FreeSpaceCategorizer: CLSID;

CLSID_SizeCategorizer: CLSID;

CLSID_PropertiesUI: CLSID;

CLSID_UserNotification: CLSID;

CLSID_TaskbarList: CLSID;

CLSID_ShellItem: CLSID;

CLSID_NamespaceWalker: CLSID;

CLSID_FileOperation: CLSID;

CLSID_FileOpenDialog: CLSID;

CLSID_FileSaveDialog: CLSID;

CLSID_KnownFolderManager: CLSID;

CLSID_SharingConfigurationManager: CLSID;

CLSID_NetworkConnections: CLSID;

CLSID_ScheduledTasks: CLSID;

CLSID_ApplicationAssociationRegistration: CLSID;

CLSID_SearchFolderItemFactory: CLSID;

CLSID_OpenControlPanel: CLSID;

CLSID_MailRecipient: CLSID;

CLSID_NetworkExplorerFolder: CLSID;

CLSID_DestinationList: CLSID;

CLSID_ApplicationDestinations: CLSID;

CLSID_ApplicationDocumentLists: CLSID;

CLSID_HomeGroup: CLSID;

CLSID_ShellLibrary: CLSID;

CLSID_AppStartupLink: CLSID;

CLSID_EnumerableObjectCollection: CLSID;

CLSID_FrameworkInputPane: CLSID;

CLSID_DefFolderMenu: CLSID;

CLSID_AppVisibility: CLSID;

CLSID_AppShellVerbHandler: CLSID;

CLSID_ExecuteUnknown: CLSID;

CLSID_PackageDebugSettings: CLSID;

CLSID_SuspensionDependencyManager: CLSID;

CLSID_ApplicationActivationManager: CLSID;

CLSID_ApplicationDesignModeSettings: CLSID;

SHGetTemporaryPropertyForItem :: (psi: *IShellItem, propkey: *PROPERTYKEY, ppropvar: *PROPVARIANT) -> HRESULT #foreign shell32;
SHGetTemporaryPropertyForItem :: (psi: *IShellItem, propkey: PROPERTYKEY, ppropvar: *PROPVARIANT) -> HRESULT #no_context {
    return SHGetTemporaryPropertyForItem(psi, *propkey, ppropvar);
}
SHSetTemporaryPropertyForItem :: (psi: *IShellItem, propkey: *PROPERTYKEY, propvar: *PROPVARIANT) -> HRESULT #foreign shell32;
SHSetTemporaryPropertyForItem :: (psi: *IShellItem, propkey: PROPERTYKEY, propvar: PROPVARIANT) -> HRESULT #no_context {
    return SHSetTemporaryPropertyForItem(psi, *propkey, *propvar);
}

LIBRARYMANAGEDIALOGOPTIONS :: enum s32 {
    DEFAULT                          :: 0;
    ALLOWUNINDEXABLENETWORKLOCATIONS :: 1;

    LMD_DEFAULT                          :: DEFAULT;
    LMD_ALLOWUNINDEXABLENETWORKLOCATIONS :: ALLOWUNINDEXABLENETWORKLOCATIONS;
}

SHShowManageLibraryUI :: (psiLibrary: *IShellItem, hwndOwner: HWND, pszTitle: *s16, pszInstruction: *s16, lmdOptions: LIBRARYMANAGEDIALOGOPTIONS) -> HRESULT #foreign shell32;
SHResolveLibrary :: (psiLibrary: *IShellItem) -> HRESULT #foreign shell32;


IAssocHandlerInvoker_UUID :: "92218CAB-ECAA-4335-8133-807FD234C2EE";
IAssocHandlerInvoker :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iassochandlerinvoker_vtable: *IAssocHandlerInvoker_VTable;
}
IAssocHandlerInvoker_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SupportsSelection: (this: *IAssocHandlerInvoker) -> HRESULT #cpp_method;

    Invoke: (this: *IAssocHandlerInvoker) -> HRESULT #cpp_method;
}

IAssocHandlerInvoker_SupportsSelection :: inline (this: *IAssocHandlerInvoker) -> HRESULT { return this.iassochandlerinvoker_vtable.SupportsSelection(this); }

IAssocHandlerInvoker_Invoke :: inline (this: *IAssocHandlerInvoker) -> HRESULT { return this.iassochandlerinvoker_vtable.Invoke(this); }

vtable :: (obj: *IAssocHandlerInvoker) -> *IAssocHandlerInvoker_VTable { return obj.iassochandlerinvoker_vtable; }


AHTYPE :: enum s32 {
    UNDEFINED         :: 0;
    USER_APPLICATION  :: 8;
    ANY_APPLICATION   :: 16;
    MACHINEDEFAULT    :: 32;
    PROGID            :: 64;
    APPLICATION       :: 128;
    CLASS_APPLICATION :: 256;
    ANY_PROGID        :: 512;

    AHTYPE_UNDEFINED         :: UNDEFINED;
    AHTYPE_USER_APPLICATION  :: USER_APPLICATION;
    AHTYPE_ANY_APPLICATION   :: ANY_APPLICATION;
    AHTYPE_MACHINEDEFAULT    :: MACHINEDEFAULT;
    AHTYPE_PROGID            :: PROGID;
    AHTYPE_APPLICATION       :: APPLICATION;
    AHTYPE_CLASS_APPLICATION :: CLASS_APPLICATION;
    AHTYPE_ANY_PROGID        :: ANY_PROGID;
}


IAssocHandler_UUID :: "F04061AC-1659-4a3f-A954-775AA57FC083";
IAssocHandler :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iassochandler_vtable: *IAssocHandler_VTable;
}
IAssocHandler_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetName: (this: *IAssocHandler, ppsz: **s16) -> HRESULT #cpp_method;

    GetUIName: (this: *IAssocHandler, ppsz: **s16) -> HRESULT #cpp_method;

    GetIconLocation: (this: *IAssocHandler, ppszPath: **s16, pIndex: *s32) -> HRESULT #cpp_method;

    IsRecommended: (this: *IAssocHandler) -> HRESULT #cpp_method;

    MakeDefault: (this: *IAssocHandler, pszDescription: *s16) -> HRESULT #cpp_method;

    Invoke: (this: *IAssocHandler, pdo: *IDataObject) -> HRESULT #cpp_method;

    CreateInvoker: (this: *IAssocHandler, pdo: *IDataObject, ppInvoker: **IAssocHandlerInvoker) -> HRESULT #cpp_method;
}

IAssocHandler_GetName :: inline (this: *IAssocHandler, ppsz: **s16) -> HRESULT { return this.iassochandler_vtable.GetName(this, ppsz); }

IAssocHandler_GetUIName :: inline (this: *IAssocHandler, ppsz: **s16) -> HRESULT { return this.iassochandler_vtable.GetUIName(this, ppsz); }

IAssocHandler_GetIconLocation :: inline (this: *IAssocHandler, ppszPath: **s16, pIndex: *s32) -> HRESULT { return this.iassochandler_vtable.GetIconLocation(this, ppszPath, pIndex); }

IAssocHandler_IsRecommended :: inline (this: *IAssocHandler) -> HRESULT { return this.iassochandler_vtable.IsRecommended(this); }

IAssocHandler_MakeDefault :: inline (this: *IAssocHandler, pszDescription: *s16) -> HRESULT { return this.iassochandler_vtable.MakeDefault(this, pszDescription); }

IAssocHandler_Invoke :: inline (this: *IAssocHandler, pdo: *IDataObject) -> HRESULT { return this.iassochandler_vtable.Invoke(this, pdo); }

IAssocHandler_CreateInvoker :: inline (this: *IAssocHandler, pdo: *IDataObject, ppInvoker: **IAssocHandlerInvoker) -> HRESULT { return this.iassochandler_vtable.CreateInvoker(this, pdo, ppInvoker); }

vtable :: (obj: *IAssocHandler) -> *IAssocHandler_VTable { return obj.iassochandler_vtable; }



IEnumAssocHandlers_UUID :: "973810ae-9599-4b88-9e4d-6ee98c9552da";
IEnumAssocHandlers :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ienumassochandlers_vtable: *IEnumAssocHandlers_VTable;
}
IEnumAssocHandlers_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Next: (this: *IEnumAssocHandlers, celt: u32, rgelt: **IAssocHandler, pceltFetched: *u32) -> HRESULT #cpp_method;
}
IEnumAssocHandlers_Next :: inline (this: *IEnumAssocHandlers, celt: u32, rgelt: **IAssocHandler, pceltFetched: *u32) -> HRESULT { return this.ienumassochandlers_vtable.Next(this, celt, rgelt, pceltFetched); }

vtable :: (obj: *IEnumAssocHandlers) -> *IEnumAssocHandlers_VTable { return obj.ienumassochandlers_vtable; }


ASSOC_FILTER :: enum s32 {
    NONE        :: 0;
    RECOMMENDED :: 1;

    ASSOC_FILTER_NONE        :: NONE;
    ASSOC_FILTER_RECOMMENDED :: RECOMMENDED;
}

SHAssocEnumHandlers :: (pszExtra: PCWSTR, afFilter: ASSOC_FILTER, ppEnumHandler: **IEnumAssocHandlers) -> HRESULT #foreign shell32;

SHAssocEnumHandlersForProtocolByApplication :: (protocol: PCWSTR, riid: *IID, enumHandlers: **void) -> HRESULT #foreign shell32;
SHAssocEnumHandlersForProtocolByApplication :: (protocol: PCWSTR, riid: IID, enumHandlers: **void) -> HRESULT #no_context {
    return SHAssocEnumHandlersForProtocolByApplication(protocol, *riid, enumHandlers);
}


IDataObjectProvider_UUID :: "3D25F6D6-4B2A-433c-9184-7C33AD35D001";
IDataObjectProvider :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; idataobjectprovider_vtable: *IDataObjectProvider_VTable;
}
IDataObjectProvider_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetDataObject: (this: *IDataObjectProvider, dataObject: **IDataObject) -> HRESULT #cpp_method;

    SetDataObject: (this: *IDataObjectProvider, dataObject: *IDataObject) -> HRESULT #cpp_method;
}

IDataObjectProvider_GetDataObject :: inline (this: *IDataObjectProvider, dataObject: **IDataObject) -> HRESULT { return this.idataobjectprovider_vtable.GetDataObject(this, dataObject); }

IDataObjectProvider_SetDataObject :: inline (this: *IDataObjectProvider, dataObject: *IDataObject) -> HRESULT { return this.idataobjectprovider_vtable.SetDataObject(this, dataObject); }

vtable :: (obj: *IDataObjectProvider) -> *IDataObjectProvider_VTable { return obj.idataobjectprovider_vtable; }



IDataTransferManagerInterop_UUID :: "3A3DCD6C-3EAB-43DC-BCDE-45671CE800C8";
IDataTransferManagerInterop :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; idatatransfermanagerinterop_vtable: *IDataTransferManagerInterop_VTable;
}
IDataTransferManagerInterop_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetForWindow: (this: *IDataTransferManagerInterop, appWindow: HWND, riid: *IID, dataTransferManager: **void) -> HRESULT #cpp_method;

    ShowShareUIForWindow: (this: *IDataTransferManagerInterop, appWindow: HWND) -> HRESULT #cpp_method;
}

IDataTransferManagerInterop_GetForWindow :: inline (this: *IDataTransferManagerInterop, appWindow: HWND, riid: *IID, dataTransferManager: **void) -> HRESULT { return this.idatatransfermanagerinterop_vtable.GetForWindow(this, appWindow, riid, dataTransferManager); }

IDataTransferManagerInterop_ShowShareUIForWindow :: inline (this: *IDataTransferManagerInterop, appWindow: HWND) -> HRESULT { return this.idatatransfermanagerinterop_vtable.ShowShareUIForWindow(this, appWindow); }

vtable :: (obj: *IDataTransferManagerInterop) -> *IDataTransferManagerInterop_VTable { return obj.idatatransfermanagerinterop_vtable; }



IFrameworkInputPaneHandler_UUID :: "226C537B-1E76-4D9E-A760-33DB29922F18";
IFrameworkInputPaneHandler :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iframeworkinputpanehandler_vtable: *IFrameworkInputPaneHandler_VTable;
}
IFrameworkInputPaneHandler_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Showing: (this: *IFrameworkInputPaneHandler, prcInputPaneScreenLocation: *RECT, fEnsureFocusedElementInView: BOOL) -> HRESULT #cpp_method;

    Hiding: (this: *IFrameworkInputPaneHandler, fEnsureFocusedElementInView: BOOL) -> HRESULT #cpp_method;
}

IFrameworkInputPaneHandler_Showing :: inline (this: *IFrameworkInputPaneHandler, prcInputPaneScreenLocation: *RECT, fEnsureFocusedElementInView: BOOL) -> HRESULT { return this.iframeworkinputpanehandler_vtable.Showing(this, prcInputPaneScreenLocation, fEnsureFocusedElementInView); }

IFrameworkInputPaneHandler_Hiding :: inline (this: *IFrameworkInputPaneHandler, fEnsureFocusedElementInView: BOOL) -> HRESULT { return this.iframeworkinputpanehandler_vtable.Hiding(this, fEnsureFocusedElementInView); }

vtable :: (obj: *IFrameworkInputPaneHandler) -> *IFrameworkInputPaneHandler_VTable { return obj.iframeworkinputpanehandler_vtable; }



IFrameworkInputPane_UUID :: "5752238B-24F0-495A-82F1-2FD593056796";
IFrameworkInputPane :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iframeworkinputpane_vtable: *IFrameworkInputPane_VTable;
}
IFrameworkInputPane_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Advise: (this: *IFrameworkInputPane, pWindow: *IUnknown, pHandler: *IFrameworkInputPaneHandler, pdwCookie: *u32) -> HRESULT #cpp_method;

    AdviseWithHWND: (this: *IFrameworkInputPane, hwnd: HWND, pHandler: *IFrameworkInputPaneHandler, pdwCookie: *u32) -> HRESULT #cpp_method;

    Unadvise: (this: *IFrameworkInputPane, dwCookie: u32) -> HRESULT #cpp_method;

    Location: (this: *IFrameworkInputPane, prcInputPaneScreenLocation: *RECT) -> HRESULT #cpp_method;
}

IFrameworkInputPane_Advise :: inline (this: *IFrameworkInputPane, pWindow: *IUnknown, pHandler: *IFrameworkInputPaneHandler, pdwCookie: *u32) -> HRESULT { return this.iframeworkinputpane_vtable.Advise(this, pWindow, pHandler, pdwCookie); }

IFrameworkInputPane_AdviseWithHWND :: inline (this: *IFrameworkInputPane, hwnd: HWND, pHandler: *IFrameworkInputPaneHandler, pdwCookie: *u32) -> HRESULT { return this.iframeworkinputpane_vtable.AdviseWithHWND(this, hwnd, pHandler, pdwCookie); }

IFrameworkInputPane_Unadvise :: inline (this: *IFrameworkInputPane, dwCookie: u32) -> HRESULT { return this.iframeworkinputpane_vtable.Unadvise(this, dwCookie); }

IFrameworkInputPane_Location :: inline (this: *IFrameworkInputPane, prcInputPaneScreenLocation: *RECT) -> HRESULT { return this.iframeworkinputpane_vtable.Location(this, prcInputPaneScreenLocation); }

vtable :: (obj: *IFrameworkInputPane) -> *IFrameworkInputPane_VTable { return obj.iframeworkinputpane_vtable; }


MONITOR_APP_VISIBILITY :: enum s32 {
    UNKNOWN        :: 0;
    NO_APP_VISIBLE :: 1;
    APP_VISIBLE    :: 2;

    MAV_UNKNOWN        :: UNKNOWN;
    MAV_NO_APP_VISIBLE :: NO_APP_VISIBLE;
    MAV_APP_VISIBLE    :: APP_VISIBLE;
}


IAppVisibilityEvents_UUID :: "6584CE6B-7D82-49C2-89C9-C6BC02BA8C38";
IAppVisibilityEvents :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iappvisibilityevents_vtable: *IAppVisibilityEvents_VTable;
}
IAppVisibilityEvents_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    AppVisibilityOnMonitorChanged: (this: *IAppVisibilityEvents, hMonitor: HMONITOR, previousMode: MONITOR_APP_VISIBILITY, currentMode: MONITOR_APP_VISIBILITY) -> HRESULT #cpp_method;

    LauncherVisibilityChange: (this: *IAppVisibilityEvents, currentVisibleState: BOOL) -> HRESULT #cpp_method;
}

IAppVisibilityEvents_AppVisibilityOnMonitorChanged :: inline (this: *IAppVisibilityEvents, hMonitor: HMONITOR, previousMode: MONITOR_APP_VISIBILITY, currentMode: MONITOR_APP_VISIBILITY) -> HRESULT { return this.iappvisibilityevents_vtable.AppVisibilityOnMonitorChanged(this, hMonitor, previousMode, currentMode); }

IAppVisibilityEvents_LauncherVisibilityChange :: inline (this: *IAppVisibilityEvents, currentVisibleState: BOOL) -> HRESULT { return this.iappvisibilityevents_vtable.LauncherVisibilityChange(this, currentVisibleState); }

vtable :: (obj: *IAppVisibilityEvents) -> *IAppVisibilityEvents_VTable { return obj.iappvisibilityevents_vtable; }



IAppVisibility_UUID :: "2246EA2D-CAEA-4444-A3C4-6DE827E44313";
IAppVisibility :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iappvisibility_vtable: *IAppVisibility_VTable;
}
IAppVisibility_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetAppVisibilityOnMonitor: (this: *IAppVisibility, hMonitor: HMONITOR, pMode: *MONITOR_APP_VISIBILITY) -> HRESULT #cpp_method;

    IsLauncherVisible: (this: *IAppVisibility, pfVisible: *BOOL) -> HRESULT #cpp_method;

    Advise: (this: *IAppVisibility, pCallback: *IAppVisibilityEvents, pdwCookie: *u32) -> HRESULT #cpp_method;

    Unadvise: (this: *IAppVisibility, dwCookie: u32) -> HRESULT #cpp_method;
}

IAppVisibility_GetAppVisibilityOnMonitor :: inline (this: *IAppVisibility, hMonitor: HMONITOR, pMode: *MONITOR_APP_VISIBILITY) -> HRESULT { return this.iappvisibility_vtable.GetAppVisibilityOnMonitor(this, hMonitor, pMode); }

IAppVisibility_IsLauncherVisible :: inline (this: *IAppVisibility, pfVisible: *BOOL) -> HRESULT { return this.iappvisibility_vtable.IsLauncherVisible(this, pfVisible); }

IAppVisibility_Advise :: inline (this: *IAppVisibility, pCallback: *IAppVisibilityEvents, pdwCookie: *u32) -> HRESULT { return this.iappvisibility_vtable.Advise(this, pCallback, pdwCookie); }

IAppVisibility_Unadvise :: inline (this: *IAppVisibility, dwCookie: u32) -> HRESULT { return this.iappvisibility_vtable.Unadvise(this, dwCookie); }

vtable :: (obj: *IAppVisibility) -> *IAppVisibility_VTable { return obj.iappvisibility_vtable; }


PACKAGE_EXECUTION_STATE :: enum s32 {
    UNKNOWN    :: 0;
    RUNNING    :: 1;
    SUSPENDING :: 2;
    SUSPENDED  :: 3;
    TERMINATED :: 4;

    PES_UNKNOWN    :: UNKNOWN;
    PES_RUNNING    :: RUNNING;
    PES_SUSPENDING :: SUSPENDING;
    PES_SUSPENDED  :: SUSPENDED;
    PES_TERMINATED :: TERMINATED;
}


IPackageExecutionStateChangeNotification_UUID :: "1BB12A62-2AD8-432B-8CCF-0C2C52AFCD5B";
IPackageExecutionStateChangeNotification :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ipackageexecutionstatechangenotification_vtable: *IPackageExecutionStateChangeNotification_VTable;
}
IPackageExecutionStateChangeNotification_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    OnStateChanged: (this: *IPackageExecutionStateChangeNotification, pszPackageFullName: *s16, pesNewState: PACKAGE_EXECUTION_STATE) -> HRESULT #cpp_method;
}
IPackageExecutionStateChangeNotification_OnStateChanged :: inline (this: *IPackageExecutionStateChangeNotification, pszPackageFullName: *s16, pesNewState: PACKAGE_EXECUTION_STATE) -> HRESULT { return this.ipackageexecutionstatechangenotification_vtable.OnStateChanged(this, pszPackageFullName, pesNewState); }

vtable :: (obj: *IPackageExecutionStateChangeNotification) -> *IPackageExecutionStateChangeNotification_VTable { return obj.ipackageexecutionstatechangenotification_vtable; }



IPackageDebugSettings_UUID :: "F27C3930-8029-4AD1-94E3-3DBA417810C1";
IPackageDebugSettings :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ipackagedebugsettings_vtable: *IPackageDebugSettings_VTable;
}
IPackageDebugSettings_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    EnableDebugging: (this: *IPackageDebugSettings, packageFullName: *s16, debuggerCommandLine: *s16, environment: PZZWSTR) -> HRESULT #cpp_method;

    DisableDebugging: (this: *IPackageDebugSettings, packageFullName: *s16) -> HRESULT #cpp_method;

    Suspend: (this: *IPackageDebugSettings, packageFullName: *s16) -> HRESULT #cpp_method;

    Resume: (this: *IPackageDebugSettings, packageFullName: *s16) -> HRESULT #cpp_method;

    TerminateAllProcesses: (this: *IPackageDebugSettings, packageFullName: *s16) -> HRESULT #cpp_method;

    SetTargetSessionId: (this: *IPackageDebugSettings, sessionId: u32) -> HRESULT #cpp_method;

    EnumerateBackgroundTasks: (this: *IPackageDebugSettings, packageFullName: *s16, taskCount: *u32, taskIds: *LPCGUID, taskNames: ***s16) -> HRESULT #cpp_method;

    ActivateBackgroundTask: (this: *IPackageDebugSettings, taskId: LPCGUID) -> HRESULT #cpp_method;

    StartServicing: (this: *IPackageDebugSettings, packageFullName: *s16) -> HRESULT #cpp_method;

    StopServicing: (this: *IPackageDebugSettings, packageFullName: *s16) -> HRESULT #cpp_method;

    StartSessionRedirection: (this: *IPackageDebugSettings, packageFullName: *s16, sessionId: u32) -> HRESULT #cpp_method;

    StopSessionRedirection: (this: *IPackageDebugSettings, packageFullName: *s16) -> HRESULT #cpp_method;

    GetPackageExecutionState: (this: *IPackageDebugSettings, packageFullName: *s16, packageExecutionState: *PACKAGE_EXECUTION_STATE) -> HRESULT #cpp_method;

    RegisterForPackageStateChanges: (this: *IPackageDebugSettings, packageFullName: *s16, pPackageExecutionStateChangeNotification: *IPackageExecutionStateChangeNotification, pdwCookie: *u32) -> HRESULT #cpp_method;

    UnregisterForPackageStateChanges: (this: *IPackageDebugSettings, dwCookie: u32) -> HRESULT #cpp_method;
}

IPackageDebugSettings_EnableDebugging :: inline (this: *IPackageDebugSettings, packageFullName: *s16, debuggerCommandLine: *s16, environment: PZZWSTR) -> HRESULT { return this.ipackagedebugsettings_vtable.EnableDebugging(this, packageFullName, debuggerCommandLine, environment); }

IPackageDebugSettings_DisableDebugging :: inline (this: *IPackageDebugSettings, packageFullName: *s16) -> HRESULT { return this.ipackagedebugsettings_vtable.DisableDebugging(this, packageFullName); }

IPackageDebugSettings_Suspend :: inline (this: *IPackageDebugSettings, packageFullName: *s16) -> HRESULT { return this.ipackagedebugsettings_vtable.Suspend(this, packageFullName); }

IPackageDebugSettings_Resume :: inline (this: *IPackageDebugSettings, packageFullName: *s16) -> HRESULT { return this.ipackagedebugsettings_vtable.Resume(this, packageFullName); }

IPackageDebugSettings_TerminateAllProcesses :: inline (this: *IPackageDebugSettings, packageFullName: *s16) -> HRESULT { return this.ipackagedebugsettings_vtable.TerminateAllProcesses(this, packageFullName); }

IPackageDebugSettings_SetTargetSessionId :: inline (this: *IPackageDebugSettings, sessionId: u32) -> HRESULT { return this.ipackagedebugsettings_vtable.SetTargetSessionId(this, sessionId); }

IPackageDebugSettings_EnumerateBackgroundTasks :: inline (this: *IPackageDebugSettings, packageFullName: *s16, taskCount: *u32, taskIds: *LPCGUID, taskNames: ***s16) -> HRESULT { return this.ipackagedebugsettings_vtable.EnumerateBackgroundTasks(this, packageFullName, taskCount, taskIds, taskNames); }

IPackageDebugSettings_ActivateBackgroundTask :: inline (this: *IPackageDebugSettings, taskId: LPCGUID) -> HRESULT { return this.ipackagedebugsettings_vtable.ActivateBackgroundTask(this, taskId); }

IPackageDebugSettings_StartServicing :: inline (this: *IPackageDebugSettings, packageFullName: *s16) -> HRESULT { return this.ipackagedebugsettings_vtable.StartServicing(this, packageFullName); }

IPackageDebugSettings_StopServicing :: inline (this: *IPackageDebugSettings, packageFullName: *s16) -> HRESULT { return this.ipackagedebugsettings_vtable.StopServicing(this, packageFullName); }

IPackageDebugSettings_StartSessionRedirection :: inline (this: *IPackageDebugSettings, packageFullName: *s16, sessionId: u32) -> HRESULT { return this.ipackagedebugsettings_vtable.StartSessionRedirection(this, packageFullName, sessionId); }

IPackageDebugSettings_StopSessionRedirection :: inline (this: *IPackageDebugSettings, packageFullName: *s16) -> HRESULT { return this.ipackagedebugsettings_vtable.StopSessionRedirection(this, packageFullName); }

IPackageDebugSettings_GetPackageExecutionState :: inline (this: *IPackageDebugSettings, packageFullName: *s16, packageExecutionState: *PACKAGE_EXECUTION_STATE) -> HRESULT { return this.ipackagedebugsettings_vtable.GetPackageExecutionState(this, packageFullName, packageExecutionState); }

IPackageDebugSettings_RegisterForPackageStateChanges :: inline (this: *IPackageDebugSettings, packageFullName: *s16, pPackageExecutionStateChangeNotification: *IPackageExecutionStateChangeNotification, pdwCookie: *u32) -> HRESULT { return this.ipackagedebugsettings_vtable.RegisterForPackageStateChanges(this, packageFullName, pPackageExecutionStateChangeNotification, pdwCookie); }

IPackageDebugSettings_UnregisterForPackageStateChanges :: inline (this: *IPackageDebugSettings, dwCookie: u32) -> HRESULT { return this.ipackagedebugsettings_vtable.UnregisterForPackageStateChanges(this, dwCookie); }

vtable :: (obj: *IPackageDebugSettings) -> *IPackageDebugSettings_VTable { return obj.ipackagedebugsettings_vtable; }



IPackageDebugSettings2_UUID :: "6E3194BB-AB82-4D22-93F5-FABDA40E7B16";
IPackageDebugSettings2 :: struct {
    #as using ipackagedebugsettings: IPackageDebugSettings;
    #place ipackagedebugsettings; ipackagedebugsettings2_vtable: *IPackageDebugSettings2_VTable;
}
IPackageDebugSettings2_VTable :: struct #type_info_none {
    using ipackagedebugsettings: IPackageDebugSettings_VTable;
    EnumerateApps: (this: *IPackageDebugSettings2, packageFullName: *s16, appCount: *u32, appUserModelIds: ***s16, appDisplayNames: ***s16) -> HRESULT #cpp_method;
}
IPackageDebugSettings2_EnumerateApps :: inline (this: *IPackageDebugSettings2, packageFullName: *s16, appCount: *u32, appUserModelIds: ***s16, appDisplayNames: ***s16) -> HRESULT { return this.ipackagedebugsettings2_vtable.EnumerateApps(this, packageFullName, appCount, appUserModelIds, appDisplayNames); }

vtable :: (obj: *IPackageDebugSettings2) -> *IPackageDebugSettings2_VTable { return obj.ipackagedebugsettings2_vtable; }



ISuspensionDependencyManager_UUID :: "52B83A42-2543-416A-81D9-C0DE7969C8B3";
ISuspensionDependencyManager :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; isuspensiondependencymanager_vtable: *ISuspensionDependencyManager_VTable;
}
ISuspensionDependencyManager_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    RegisterAsChild: (this: *ISuspensionDependencyManager, processHandle: HANDLE) -> HRESULT #cpp_method;

    GroupChildWithParent: (this: *ISuspensionDependencyManager, childProcessHandle: HANDLE) -> HRESULT #cpp_method;

    UngroupChildFromParent: (this: *ISuspensionDependencyManager, childProcessHandle: HANDLE) -> HRESULT #cpp_method;
}

ISuspensionDependencyManager_RegisterAsChild :: inline (this: *ISuspensionDependencyManager, processHandle: HANDLE) -> HRESULT { return this.isuspensiondependencymanager_vtable.RegisterAsChild(this, processHandle); }

ISuspensionDependencyManager_GroupChildWithParent :: inline (this: *ISuspensionDependencyManager, childProcessHandle: HANDLE) -> HRESULT { return this.isuspensiondependencymanager_vtable.GroupChildWithParent(this, childProcessHandle); }

ISuspensionDependencyManager_UngroupChildFromParent :: inline (this: *ISuspensionDependencyManager, childProcessHandle: HANDLE) -> HRESULT { return this.isuspensiondependencymanager_vtable.UngroupChildFromParent(this, childProcessHandle); }

vtable :: (obj: *ISuspensionDependencyManager) -> *ISuspensionDependencyManager_VTable { return obj.isuspensiondependencymanager_vtable; }


AHE_TYPE :: enum s32 {
    DESKTOP   :: 0;
    IMMERSIVE :: 1;

    AHE_DESKTOP   :: DESKTOP;
    AHE_IMMERSIVE :: IMMERSIVE;
}


IExecuteCommandApplicationHostEnvironment_UUID :: "18B21AA9-E184-4FF0-9F5E-F882D03771B3";
IExecuteCommandApplicationHostEnvironment :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iexecutecommandapplicationhostenvironment_vtable: *IExecuteCommandApplicationHostEnvironment_VTable;
}
IExecuteCommandApplicationHostEnvironment_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetValue: (this: *IExecuteCommandApplicationHostEnvironment, pahe: *AHE_TYPE) -> HRESULT #cpp_method;
}
IExecuteCommandApplicationHostEnvironment_GetValue :: inline (this: *IExecuteCommandApplicationHostEnvironment, pahe: *AHE_TYPE) -> HRESULT { return this.iexecutecommandapplicationhostenvironment_vtable.GetValue(this, pahe); }

vtable :: (obj: *IExecuteCommandApplicationHostEnvironment) -> *IExecuteCommandApplicationHostEnvironment_VTable { return obj.iexecutecommandapplicationhostenvironment_vtable; }


EC_HOST_UI_MODE :: enum s32 {
    DESKTOP         :: 0;
    IMMERSIVE       :: 1;
    SYSTEM_LAUNCHER :: 2;

    ECHUIM_DESKTOP         :: DESKTOP;
    ECHUIM_IMMERSIVE       :: IMMERSIVE;
    ECHUIM_SYSTEM_LAUNCHER :: SYSTEM_LAUNCHER;
}


IExecuteCommandHost_UUID :: "4b6832a2-5f04-4c9d-b89d-727a15d103e7";
IExecuteCommandHost :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iexecutecommandhost_vtable: *IExecuteCommandHost_VTable;
}
IExecuteCommandHost_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetUIMode: (this: *IExecuteCommandHost, pUIMode: *EC_HOST_UI_MODE) -> HRESULT #cpp_method;
}
IExecuteCommandHost_GetUIMode :: inline (this: *IExecuteCommandHost, pUIMode: *EC_HOST_UI_MODE) -> HRESULT { return this.iexecutecommandhost_vtable.GetUIMode(this, pUIMode); }

vtable :: (obj: *IExecuteCommandHost) -> *IExecuteCommandHost_VTable { return obj.iexecutecommandhost_vtable; }


APPLICATION_VIEW_STATE :: enum s32 {
    FULLSCREEN_LANDSCAPE :: 0;
    FILLED               :: 1;
    SNAPPED              :: 2;
    FULLSCREEN_PORTRAIT  :: 3;

    AVS_FULLSCREEN_LANDSCAPE :: FULLSCREEN_LANDSCAPE;
    AVS_FILLED               :: FILLED;
    AVS_SNAPPED              :: SNAPPED;
    AVS_FULLSCREEN_PORTRAIT  :: FULLSCREEN_PORTRAIT;
}

EDGE_GESTURE_KIND :: enum s32 {
    TOUCH    :: 0;
    KEYBOARD :: 1;
    MOUSE    :: 2;

    EGK_TOUCH    :: TOUCH;
    EGK_KEYBOARD :: KEYBOARD;
    EGK_MOUSE    :: MOUSE;
}


IApplicationDesignModeSettings_UUID :: "2A3DEE9A-E31D-46D6-8508-BCC597DB3557";
IApplicationDesignModeSettings :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iapplicationdesignmodesettings_vtable: *IApplicationDesignModeSettings_VTable;
}
IApplicationDesignModeSettings_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SetNativeDisplaySize: (this: *IApplicationDesignModeSettings, nativeDisplaySizePixels: SIZE) -> HRESULT #cpp_method;

    SetScaleFactor: (this: *IApplicationDesignModeSettings, scaleFactor: DEVICE_SCALE_FACTOR) -> HRESULT #cpp_method;

    SetApplicationViewState: (this: *IApplicationDesignModeSettings, viewState: APPLICATION_VIEW_STATE) -> HRESULT #cpp_method;

    ComputeApplicationSize: (this: *IApplicationDesignModeSettings, applicationSizePixels: *SIZE) -> HRESULT #cpp_method;

    IsApplicationViewStateSupported: (this: *IApplicationDesignModeSettings, viewState: APPLICATION_VIEW_STATE, nativeDisplaySizePixels: SIZE, scaleFactor: DEVICE_SCALE_FACTOR, supported: *BOOL) -> HRESULT #cpp_method;

    TriggerEdgeGesture: (this: *IApplicationDesignModeSettings, edgeGestureKind: EDGE_GESTURE_KIND) -> HRESULT #cpp_method;
}

IApplicationDesignModeSettings_SetNativeDisplaySize :: inline (this: *IApplicationDesignModeSettings, nativeDisplaySizePixels: SIZE) -> HRESULT { return this.iapplicationdesignmodesettings_vtable.SetNativeDisplaySize(this, nativeDisplaySizePixels); }

IApplicationDesignModeSettings_SetScaleFactor :: inline (this: *IApplicationDesignModeSettings, scaleFactor: DEVICE_SCALE_FACTOR) -> HRESULT { return this.iapplicationdesignmodesettings_vtable.SetScaleFactor(this, scaleFactor); }

IApplicationDesignModeSettings_SetApplicationViewState :: inline (this: *IApplicationDesignModeSettings, viewState: APPLICATION_VIEW_STATE) -> HRESULT { return this.iapplicationdesignmodesettings_vtable.SetApplicationViewState(this, viewState); }

IApplicationDesignModeSettings_ComputeApplicationSize :: inline (this: *IApplicationDesignModeSettings, applicationSizePixels: *SIZE) -> HRESULT { return this.iapplicationdesignmodesettings_vtable.ComputeApplicationSize(this, applicationSizePixels); }

IApplicationDesignModeSettings_IsApplicationViewStateSupported :: inline (this: *IApplicationDesignModeSettings, viewState: APPLICATION_VIEW_STATE, nativeDisplaySizePixels: SIZE, scaleFactor: DEVICE_SCALE_FACTOR, supported: *BOOL) -> HRESULT { return this.iapplicationdesignmodesettings_vtable.IsApplicationViewStateSupported(this, viewState, nativeDisplaySizePixels, scaleFactor, supported); }

IApplicationDesignModeSettings_TriggerEdgeGesture :: inline (this: *IApplicationDesignModeSettings, edgeGestureKind: EDGE_GESTURE_KIND) -> HRESULT { return this.iapplicationdesignmodesettings_vtable.TriggerEdgeGesture(this, edgeGestureKind); }

vtable :: (obj: *IApplicationDesignModeSettings) -> *IApplicationDesignModeSettings_VTable { return obj.iapplicationdesignmodesettings_vtable; }


NATIVE_DISPLAY_ORIENTATION :: enum s32 {
    LANDSCAPE :: 0;
    PORTRAIT  :: 1;

    NDO_LANDSCAPE :: LANDSCAPE;
    NDO_PORTRAIT  :: PORTRAIT;
}

APPLICATION_VIEW_ORIENTATION :: enum s32 {
    LANDSCAPE :: 0;
    PORTRAIT  :: 1;

    AVO_LANDSCAPE :: LANDSCAPE;
    AVO_PORTRAIT  :: PORTRAIT;
}

ADJACENT_DISPLAY_EDGES :: enum s32 {
    NONE  :: 0;
    LEFT  :: 1;
    RIGHT :: 2;

    ADE_NONE  :: NONE;
    ADE_LEFT  :: LEFT;
    ADE_RIGHT :: RIGHT;
}

APPLICATION_VIEW_MIN_WIDTH :: enum s32 {
    DEFAULT :: 0;
    _320    :: 1;
    _500    :: 2;

    AVMW_DEFAULT :: DEFAULT;
    AVMW_320     :: _320;
    AVMW_500     :: _500;
}


IApplicationDesignModeSettings2_UUID :: "490514E1-675A-4D6E-A58D-E54901B4CA2F";
IApplicationDesignModeSettings2 :: struct {
    #as using iapplicationdesignmodesettings: IApplicationDesignModeSettings;
    #place iapplicationdesignmodesettings; iapplicationdesignmodesettings2_vtable: *IApplicationDesignModeSettings2_VTable;
}
IApplicationDesignModeSettings2_VTable :: struct #type_info_none {
    using iapplicationdesignmodesettings: IApplicationDesignModeSettings_VTable;
    SetNativeDisplayOrientation: (this: *IApplicationDesignModeSettings2, nativeDisplayOrientation: NATIVE_DISPLAY_ORIENTATION) -> HRESULT #cpp_method;

    SetApplicationViewOrientation: (this: *IApplicationDesignModeSettings2, viewOrientation: APPLICATION_VIEW_ORIENTATION) -> HRESULT #cpp_method;

    SetAdjacentDisplayEdges: (this: *IApplicationDesignModeSettings2, adjacentDisplayEdges: ADJACENT_DISPLAY_EDGES) -> HRESULT #cpp_method;

    SetIsOnLockScreen: (this: *IApplicationDesignModeSettings2, isOnLockScreen: BOOL) -> HRESULT #cpp_method;

    SetApplicationViewMinWidth: (this: *IApplicationDesignModeSettings2, viewMinWidth: APPLICATION_VIEW_MIN_WIDTH) -> HRESULT #cpp_method;

    GetApplicationSizeBounds: (this: *IApplicationDesignModeSettings2, minApplicationSizePixels: *SIZE, maxApplicationSizePixels: *SIZE) -> HRESULT #cpp_method;

    GetApplicationViewOrientation: (this: *IApplicationDesignModeSettings2, applicationSizePixels: SIZE, viewOrientation: *APPLICATION_VIEW_ORIENTATION) -> HRESULT #cpp_method;
}

IApplicationDesignModeSettings2_SetNativeDisplayOrientation :: inline (this: *IApplicationDesignModeSettings2, nativeDisplayOrientation: NATIVE_DISPLAY_ORIENTATION) -> HRESULT { return this.iapplicationdesignmodesettings2_vtable.SetNativeDisplayOrientation(this, nativeDisplayOrientation); }

IApplicationDesignModeSettings2_SetApplicationViewOrientation :: inline (this: *IApplicationDesignModeSettings2, viewOrientation: APPLICATION_VIEW_ORIENTATION) -> HRESULT { return this.iapplicationdesignmodesettings2_vtable.SetApplicationViewOrientation(this, viewOrientation); }

IApplicationDesignModeSettings2_SetAdjacentDisplayEdges :: inline (this: *IApplicationDesignModeSettings2, adjacentDisplayEdges: ADJACENT_DISPLAY_EDGES) -> HRESULT { return this.iapplicationdesignmodesettings2_vtable.SetAdjacentDisplayEdges(this, adjacentDisplayEdges); }

IApplicationDesignModeSettings2_SetIsOnLockScreen :: inline (this: *IApplicationDesignModeSettings2, isOnLockScreen: BOOL) -> HRESULT { return this.iapplicationdesignmodesettings2_vtable.SetIsOnLockScreen(this, isOnLockScreen); }

IApplicationDesignModeSettings2_SetApplicationViewMinWidth :: inline (this: *IApplicationDesignModeSettings2, viewMinWidth: APPLICATION_VIEW_MIN_WIDTH) -> HRESULT { return this.iapplicationdesignmodesettings2_vtable.SetApplicationViewMinWidth(this, viewMinWidth); }

IApplicationDesignModeSettings2_GetApplicationSizeBounds :: inline (this: *IApplicationDesignModeSettings2, minApplicationSizePixels: *SIZE, maxApplicationSizePixels: *SIZE) -> HRESULT { return this.iapplicationdesignmodesettings2_vtable.GetApplicationSizeBounds(this, minApplicationSizePixels, maxApplicationSizePixels); }

IApplicationDesignModeSettings2_GetApplicationViewOrientation :: inline (this: *IApplicationDesignModeSettings2, applicationSizePixels: SIZE, viewOrientation: *APPLICATION_VIEW_ORIENTATION) -> HRESULT { return this.iapplicationdesignmodesettings2_vtable.GetApplicationViewOrientation(this, applicationSizePixels, viewOrientation); }

vtable :: (obj: *IApplicationDesignModeSettings2) -> *IApplicationDesignModeSettings2_VTable { return obj.iapplicationdesignmodesettings2_vtable; }


SID_URLExecutionContext: GUID;


ILaunchTargetMonitor_UUID :: "266FBC7E-490D-46ED-A96B-2274DB252003";
ILaunchTargetMonitor :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ilaunchtargetmonitor_vtable: *ILaunchTargetMonitor_VTable;
}
ILaunchTargetMonitor_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetMonitor: (this: *ILaunchTargetMonitor, monitor: *HMONITOR) -> HRESULT #cpp_method;
}
ILaunchTargetMonitor_GetMonitor :: inline (this: *ILaunchTargetMonitor, monitor: *HMONITOR) -> HRESULT { return this.ilaunchtargetmonitor_vtable.GetMonitor(this, monitor); }

vtable :: (obj: *ILaunchTargetMonitor) -> *ILaunchTargetMonitor_VTable { return obj.ilaunchtargetmonitor_vtable; }


APPLICATION_VIEW_SIZE_PREFERENCE :: enum s32 {
    DEFAULT     :: 0;
    USE_LESS    :: 1;
    USE_HALF    :: 2;
    USE_MORE    :: 3;
    USE_MINIMUM :: 4;
    USE_NONE    :: 5;
    CUSTOM      :: 6;

    AVSP_DEFAULT     :: DEFAULT;
    AVSP_USE_LESS    :: USE_LESS;
    AVSP_USE_HALF    :: USE_HALF;
    AVSP_USE_MORE    :: USE_MORE;
    AVSP_USE_MINIMUM :: USE_MINIMUM;
    AVSP_USE_NONE    :: USE_NONE;
    AVSP_CUSTOM      :: CUSTOM;
}


ILaunchSourceViewSizePreference_UUID :: "E5AA01F7-1FB8-4830-8720-4E6734CBD5F3";
ILaunchSourceViewSizePreference :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ilaunchsourceviewsizepreference_vtable: *ILaunchSourceViewSizePreference_VTable;
}
ILaunchSourceViewSizePreference_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetSourceViewToPosition: (this: *ILaunchSourceViewSizePreference, hwnd: *HWND) -> HRESULT #cpp_method;

    GetSourceViewSizePreference: (this: *ILaunchSourceViewSizePreference, sourceSizeAfterLaunch: *APPLICATION_VIEW_SIZE_PREFERENCE) -> HRESULT #cpp_method;
}

ILaunchSourceViewSizePreference_GetSourceViewToPosition :: inline (this: *ILaunchSourceViewSizePreference, hwnd: *HWND) -> HRESULT { return this.ilaunchsourceviewsizepreference_vtable.GetSourceViewToPosition(this, hwnd); }

ILaunchSourceViewSizePreference_GetSourceViewSizePreference :: inline (this: *ILaunchSourceViewSizePreference, sourceSizeAfterLaunch: *APPLICATION_VIEW_SIZE_PREFERENCE) -> HRESULT { return this.ilaunchsourceviewsizepreference_vtable.GetSourceViewSizePreference(this, sourceSizeAfterLaunch); }

vtable :: (obj: *ILaunchSourceViewSizePreference) -> *ILaunchSourceViewSizePreference_VTable { return obj.ilaunchsourceviewsizepreference_vtable; }


SID_LaunchSourceViewSizePreference: GUID;


ILaunchTargetViewSizePreference_UUID :: "2F0666C6-12F7-4360-B511-A394A0553725";
ILaunchTargetViewSizePreference :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ilaunchtargetviewsizepreference_vtable: *ILaunchTargetViewSizePreference_VTable;
}
ILaunchTargetViewSizePreference_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetTargetViewSizePreference: (this: *ILaunchTargetViewSizePreference, targetSizeOnLaunch: *APPLICATION_VIEW_SIZE_PREFERENCE) -> HRESULT #cpp_method;
}
ILaunchTargetViewSizePreference_GetTargetViewSizePreference :: inline (this: *ILaunchTargetViewSizePreference, targetSizeOnLaunch: *APPLICATION_VIEW_SIZE_PREFERENCE) -> HRESULT { return this.ilaunchtargetviewsizepreference_vtable.GetTargetViewSizePreference(this, targetSizeOnLaunch); }

vtable :: (obj: *ILaunchTargetViewSizePreference) -> *ILaunchTargetViewSizePreference_VTable { return obj.ilaunchtargetviewsizepreference_vtable; }


SID_LaunchTargetViewSizePreference: GUID;


ILaunchSourceAppUserModelId_UUID :: "989191AC-28FF-4CF0-9584-E0D078BC2396";
ILaunchSourceAppUserModelId :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ilaunchsourceappusermodelid_vtable: *ILaunchSourceAppUserModelId_VTable;
}
ILaunchSourceAppUserModelId_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetAppUserModelId: (this: *ILaunchSourceAppUserModelId, launchingApp: **s16) -> HRESULT #cpp_method;
}
ILaunchSourceAppUserModelId_GetAppUserModelId :: inline (this: *ILaunchSourceAppUserModelId, launchingApp: **s16) -> HRESULT { return this.ilaunchsourceappusermodelid_vtable.GetAppUserModelId(this, launchingApp); }

vtable :: (obj: *ILaunchSourceAppUserModelId) -> *ILaunchSourceAppUserModelId_VTable { return obj.ilaunchsourceappusermodelid_vtable; }


SID_LaunchSourceAppUserModelId: GUID;


IInitializeWithWindow_UUID :: "3E68D4BD-7135-4D10-8018-9FB6D9F33FA1";
IInitializeWithWindow :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iinitializewithwindow_vtable: *IInitializeWithWindow_VTable;
}
IInitializeWithWindow_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Initialize: (this: *IInitializeWithWindow, hwnd: HWND) -> HRESULT #cpp_method;
}
IInitializeWithWindow_Initialize :: inline (this: *IInitializeWithWindow, hwnd: HWND) -> HRESULT { return this.iinitializewithwindow_vtable.Initialize(this, hwnd); }

vtable :: (obj: *IInitializeWithWindow) -> *IInitializeWithWindow_VTable { return obj.iinitializewithwindow_vtable; }



IHandlerInfo_UUID :: "997706ef-f880-453b-8118-39e1a2d2655a";
IHandlerInfo :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ihandlerinfo_vtable: *IHandlerInfo_VTable;
}
IHandlerInfo_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetApplicationDisplayName: (this: *IHandlerInfo, value: **s16) -> HRESULT #cpp_method;

    GetApplicationPublisher: (this: *IHandlerInfo, value: **s16) -> HRESULT #cpp_method;

    GetApplicationIconReference: (this: *IHandlerInfo, value: **s16) -> HRESULT #cpp_method;
}

IHandlerInfo_GetApplicationDisplayName :: inline (this: *IHandlerInfo, value: **s16) -> HRESULT { return this.ihandlerinfo_vtable.GetApplicationDisplayName(this, value); }

IHandlerInfo_GetApplicationPublisher :: inline (this: *IHandlerInfo, value: **s16) -> HRESULT { return this.ihandlerinfo_vtable.GetApplicationPublisher(this, value); }

IHandlerInfo_GetApplicationIconReference :: inline (this: *IHandlerInfo, value: **s16) -> HRESULT { return this.ihandlerinfo_vtable.GetApplicationIconReference(this, value); }

vtable :: (obj: *IHandlerInfo) -> *IHandlerInfo_VTable { return obj.ihandlerinfo_vtable; }



IHandlerInfo2_UUID :: "31cca04c-04d3-4ea9-90de-97b15e87a532";
IHandlerInfo2 :: struct {
    #as using ihandlerinfo: IHandlerInfo;
    #place ihandlerinfo; ihandlerinfo2_vtable: *IHandlerInfo2_VTable;
}
IHandlerInfo2_VTable :: struct #type_info_none {
    using ihandlerinfo: IHandlerInfo_VTable;
    GetApplicationId: (this: *IHandlerInfo2, value: **s16) -> HRESULT #cpp_method;
}
IHandlerInfo2_GetApplicationId :: inline (this: *IHandlerInfo2, value: **s16) -> HRESULT { return this.ihandlerinfo2_vtable.GetApplicationId(this, value); }

vtable :: (obj: *IHandlerInfo2) -> *IHandlerInfo2_VTable { return obj.ihandlerinfo2_vtable; }



IHandlerActivationHost_UUID :: "35094a87-8bb1-4237-96c6-c417eebdb078";
IHandlerActivationHost :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ihandleractivationhost_vtable: *IHandlerActivationHost_VTable;
}
IHandlerActivationHost_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    BeforeCoCreateInstance: (this: *IHandlerActivationHost, clsidHandler: *IID, itemsBeingActivated: *IShellItemArray, handlerInfo: *IHandlerInfo) -> HRESULT #cpp_method;

    BeforeCreateProcess: (this: *IHandlerActivationHost, applicationPath: *s16, commandLine: *s16, handlerInfo: *IHandlerInfo) -> HRESULT #cpp_method;
}

IHandlerActivationHost_BeforeCoCreateInstance :: inline (this: *IHandlerActivationHost, clsidHandler: *IID, itemsBeingActivated: *IShellItemArray, handlerInfo: *IHandlerInfo) -> HRESULT { return this.ihandleractivationhost_vtable.BeforeCoCreateInstance(this, clsidHandler, itemsBeingActivated, handlerInfo); }

IHandlerActivationHost_BeforeCreateProcess :: inline (this: *IHandlerActivationHost, applicationPath: *s16, commandLine: *s16, handlerInfo: *IHandlerInfo) -> HRESULT { return this.ihandleractivationhost_vtable.BeforeCreateProcess(this, applicationPath, commandLine, handlerInfo); }

vtable :: (obj: *IHandlerActivationHost) -> *IHandlerActivationHost_VTable { return obj.ihandleractivationhost_vtable; }



IAppActivationUIInfo_UUID :: "abad189d-9fa3-4278-b3ca-8ca448a88dcb";
IAppActivationUIInfo :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iappactivationuiinfo_vtable: *IAppActivationUIInfo_VTable;
}
IAppActivationUIInfo_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetMonitor: (this: *IAppActivationUIInfo, value: *HMONITOR) -> HRESULT #cpp_method;

    GetInvokePoint: (this: *IAppActivationUIInfo, value: *POINT) -> HRESULT #cpp_method;

    GetShowCommand: (this: *IAppActivationUIInfo, value: *s32) -> HRESULT #cpp_method;

    GetShowUI: (this: *IAppActivationUIInfo, value: *BOOL) -> HRESULT #cpp_method;

    GetKeyState: (this: *IAppActivationUIInfo, value: *u32) -> HRESULT #cpp_method;
}

IAppActivationUIInfo_GetMonitor :: inline (this: *IAppActivationUIInfo, value: *HMONITOR) -> HRESULT { return this.iappactivationuiinfo_vtable.GetMonitor(this, value); }

IAppActivationUIInfo_GetInvokePoint :: inline (this: *IAppActivationUIInfo, value: *POINT) -> HRESULT { return this.iappactivationuiinfo_vtable.GetInvokePoint(this, value); }

IAppActivationUIInfo_GetShowCommand :: inline (this: *IAppActivationUIInfo, value: *s32) -> HRESULT { return this.iappactivationuiinfo_vtable.GetShowCommand(this, value); }

IAppActivationUIInfo_GetShowUI :: inline (this: *IAppActivationUIInfo, value: *BOOL) -> HRESULT { return this.iappactivationuiinfo_vtable.GetShowUI(this, value); }

IAppActivationUIInfo_GetKeyState :: inline (this: *IAppActivationUIInfo, value: *u32) -> HRESULT { return this.iappactivationuiinfo_vtable.GetKeyState(this, value); }

vtable :: (obj: *IAppActivationUIInfo) -> *IAppActivationUIInfo_VTable { return obj.iappactivationuiinfo_vtable; }


SID_ShellExecuteNamedPropertyStore: GUID;

FLYOUT_PLACEMENT :: enum s32 {
    DEFAULT :: 0;
    ABOVE   :: 1;
    BELOW   :: 2;
    LEFT    :: 3;
    RIGHT   :: 4;

    FP_DEFAULT :: DEFAULT;
    FP_ABOVE   :: ABOVE;
    FP_BELOW   :: BELOW;
    FP_LEFT    :: LEFT;
    FP_RIGHT   :: RIGHT;
}


IContactManagerInterop_UUID :: "99eacba7-e073-43b6-a896-55afe48a0833";
IContactManagerInterop :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; icontactmanagerinterop_vtable: *IContactManagerInterop_VTable;
}
IContactManagerInterop_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    ShowContactCardForWindow: (this: *IContactManagerInterop, appWindow: HWND, contact: *IUnknown, selection: *RECT, preferredPlacement: FLYOUT_PLACEMENT) -> HRESULT #cpp_method;
}
IContactManagerInterop_ShowContactCardForWindow :: inline (this: *IContactManagerInterop, appWindow: HWND, contact: *IUnknown, selection: *RECT, preferredPlacement: FLYOUT_PLACEMENT) -> HRESULT { return this.icontactmanagerinterop_vtable.ShowContactCardForWindow(this, appWindow, contact, selection, preferredPlacement); }

vtable :: (obj: *IContactManagerInterop) -> *IContactManagerInterop_VTable { return obj.icontactmanagerinterop_vtable; }



IShellIconOverlayIdentifier_UUID :: "0c6c4200-c589-11d0-999a-00c04fd655e1";
IShellIconOverlayIdentifier :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ishelliconoverlayidentifier_vtable: *IShellIconOverlayIdentifier_VTable;
}
IShellIconOverlayIdentifier_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    IsMemberOf: (this: *IShellIconOverlayIdentifier, pwszPath: *s16, dwAttrib: u32) -> HRESULT #cpp_method;

    GetOverlayInfo: (this: *IShellIconOverlayIdentifier, pwszIconFile: *s16, cchMax: s32, pIndex: *s32, pdwFlags: *u32) -> HRESULT #cpp_method;

    GetPriority: (this: *IShellIconOverlayIdentifier, pPriority: *s32) -> HRESULT #cpp_method;
}

IShellIconOverlayIdentifier_IsMemberOf :: inline (this: *IShellIconOverlayIdentifier, pwszPath: *s16, dwAttrib: u32) -> HRESULT { return this.ishelliconoverlayidentifier_vtable.IsMemberOf(this, pwszPath, dwAttrib); }

IShellIconOverlayIdentifier_GetOverlayInfo :: inline (this: *IShellIconOverlayIdentifier, pwszIconFile: *s16, cchMax: s32, pIndex: *s32, pdwFlags: *u32) -> HRESULT { return this.ishelliconoverlayidentifier_vtable.GetOverlayInfo(this, pwszIconFile, cchMax, pIndex, pdwFlags); }

IShellIconOverlayIdentifier_GetPriority :: inline (this: *IShellIconOverlayIdentifier, pPriority: *s32) -> HRESULT { return this.ishelliconoverlayidentifier_vtable.GetPriority(this, pPriority); }

vtable :: (obj: *IShellIconOverlayIdentifier) -> *IShellIconOverlayIdentifier_VTable { return obj.ishelliconoverlayidentifier_vtable; }


BANNER_NOTIFICATION_EVENT :: enum s32 {
    Rendered       :: 0;
    Hovered        :: 1;
    Closed         :: 2;
    Dismissed      :: 3;
    Button1Clicked :: 4;
    Button2Clicked :: 5;

    BNE_Rendered       :: Rendered;
    BNE_Hovered        :: Hovered;
    BNE_Closed         :: Closed;
    BNE_Dismissed      :: Dismissed;
    BNE_Button1Clicked :: Button1Clicked;
    BNE_Button2Clicked :: Button2Clicked;
}

BANNER_NOTIFICATION :: struct {
    event:            BANNER_NOTIFICATION_EVENT;
    providerIdentity: *s16;
    contentId:        *s16;
}


IBannerNotificationHandler_UUID :: "8d7b2ba7-db05-46a8-823c-d2b6de08ee91";
IBannerNotificationHandler :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ibannernotificationhandler_vtable: *IBannerNotificationHandler_VTable;
}
IBannerNotificationHandler_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    OnBannerEvent: (this: *IBannerNotificationHandler, notification: *BANNER_NOTIFICATION) -> HRESULT #cpp_method;
}
IBannerNotificationHandler_OnBannerEvent :: inline (this: *IBannerNotificationHandler, notification: *BANNER_NOTIFICATION) -> HRESULT { return this.ibannernotificationhandler_vtable.OnBannerEvent(this, notification); }

vtable :: (obj: *IBannerNotificationHandler) -> *IBannerNotificationHandler_VTable { return obj.ibannernotificationhandler_vtable; }


SORT_ORDER_TYPE :: enum s32 {
    DEFAULT           :: 0;
    IGNORE_FOLDERNESS :: 1;

    SOT_DEFAULT           :: DEFAULT;
    SOT_IGNORE_FOLDERNESS :: IGNORE_FOLDERNESS;
}


ISortColumnArray_UUID :: "6dfc60fb-f2e9-459b-beb5-288f1a7c7d54";
ISortColumnArray :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; isortcolumnarray_vtable: *ISortColumnArray_VTable;
}
ISortColumnArray_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetCount: (this: *ISortColumnArray, columnCount: *u32) -> HRESULT #cpp_method;

    GetAt: (this: *ISortColumnArray, index: u32, sortcolumn: *SORTCOLUMN) -> HRESULT #cpp_method;

    GetSortType: (this: *ISortColumnArray, type: *SORT_ORDER_TYPE) -> HRESULT #cpp_method;
}

ISortColumnArray_GetCount :: inline (this: *ISortColumnArray, columnCount: *u32) -> HRESULT { return this.isortcolumnarray_vtable.GetCount(this, columnCount); }

ISortColumnArray_GetAt :: inline (this: *ISortColumnArray, index: u32, sortcolumn: *SORTCOLUMN) -> HRESULT { return this.isortcolumnarray_vtable.GetAt(this, index, sortcolumn); }

ISortColumnArray_GetSortType :: inline (this: *ISortColumnArray, type: *SORT_ORDER_TYPE) -> HRESULT { return this.isortcolumnarray_vtable.GetSortType(this, type); }

vtable :: (obj: *ISortColumnArray) -> *ISortColumnArray_VTable { return obj.isortcolumnarray_vtable; }



IPropertyKeyStore_UUID :: "75BD59AA-F23B-4963-ABA4-0B355752A91B";
IPropertyKeyStore :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ipropertykeystore_vtable: *IPropertyKeyStore_VTable;
}
IPropertyKeyStore_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetKeyCount: (this: *IPropertyKeyStore, keyCount: *s32) -> HRESULT #cpp_method;

    GetKeyAt: (this: *IPropertyKeyStore, index: s32, pkey: *PROPERTYKEY) -> HRESULT #cpp_method;

    AppendKey: (this: *IPropertyKeyStore, key: *PROPERTYKEY) -> HRESULT #cpp_method;

    DeleteKey: (this: *IPropertyKeyStore, index: s32) -> HRESULT #cpp_method;

    IsKeyInStore: (this: *IPropertyKeyStore, key: *PROPERTYKEY) -> HRESULT #cpp_method;

    RemoveKey: (this: *IPropertyKeyStore, key: *PROPERTYKEY) -> HRESULT #cpp_method;
}

IPropertyKeyStore_GetKeyCount :: inline (this: *IPropertyKeyStore, keyCount: *s32) -> HRESULT { return this.ipropertykeystore_vtable.GetKeyCount(this, keyCount); }

IPropertyKeyStore_GetKeyAt :: inline (this: *IPropertyKeyStore, index: s32, pkey: *PROPERTYKEY) -> HRESULT { return this.ipropertykeystore_vtable.GetKeyAt(this, index, pkey); }

IPropertyKeyStore_AppendKey :: inline (this: *IPropertyKeyStore, key: *PROPERTYKEY) -> HRESULT { return this.ipropertykeystore_vtable.AppendKey(this, key); }

IPropertyKeyStore_DeleteKey :: inline (this: *IPropertyKeyStore, index: s32) -> HRESULT { return this.ipropertykeystore_vtable.DeleteKey(this, index); }

IPropertyKeyStore_IsKeyInStore :: inline (this: *IPropertyKeyStore, key: *PROPERTYKEY) -> HRESULT { return this.ipropertykeystore_vtable.IsKeyInStore(this, key); }

IPropertyKeyStore_RemoveKey :: inline (this: *IPropertyKeyStore, key: *PROPERTYKEY) -> HRESULT { return this.ipropertykeystore_vtable.RemoveKey(this, key); }

vtable :: (obj: *IPropertyKeyStore) -> *IPropertyKeyStore_VTable { return obj.ipropertykeystore_vtable; }



IQueryCodePage_UUID :: "C7B236CE-EE80-11D0-985F-006008059382";
IQueryCodePage :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iquerycodepage_vtable: *IQueryCodePage_VTable;
}
IQueryCodePage_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetCodePage: (this: *IQueryCodePage, puiCodePage: *u32) -> HRESULT #cpp_method;

    SetCodePage: (this: *IQueryCodePage, uiCodePage: u32) -> HRESULT #cpp_method;
}

IQueryCodePage_GetCodePage :: inline (this: *IQueryCodePage, puiCodePage: *u32) -> HRESULT { return this.iquerycodepage_vtable.GetCodePage(this, puiCodePage); }

IQueryCodePage_SetCodePage :: inline (this: *IQueryCodePage, uiCodePage: u32) -> HRESULT { return this.iquerycodepage_vtable.SetCodePage(this, uiCodePage); }

vtable :: (obj: *IQueryCodePage) -> *IQueryCodePage_VTable { return obj.iquerycodepage_vtable; }


SYNC_ENGINE_STATE_FLAGS :: enum s32 {
    NONE                          :: 0;
    SERVICE_QUOTA_NEARING_LIMIT   :: 1;
    SERVICE_QUOTA_EXCEEDED_LIMIT  :: 2;
    AUTHENTICATION_ERROR          :: 4;
    PAUSED_DUE_TO_METERED_NETWORK :: 8;
    PAUSED_DUE_TO_DISK_SPACE_FULL :: 16;
    PAUSED_DUE_TO_CLIENT_POLICY   :: 32;
    PAUSED_DUE_TO_SERVICE_POLICY  :: 64;
    SERVICE_UNAVAILABLE           :: 128;
    PAUSED_DUE_TO_USER_REQUEST    :: 256;
    ALL_FLAGS                     :: 511;

    SESF_NONE                          :: NONE;
    SESF_SERVICE_QUOTA_NEARING_LIMIT   :: SERVICE_QUOTA_NEARING_LIMIT;
    SESF_SERVICE_QUOTA_EXCEEDED_LIMIT  :: SERVICE_QUOTA_EXCEEDED_LIMIT;
    SESF_AUTHENTICATION_ERROR          :: AUTHENTICATION_ERROR;
    SESF_PAUSED_DUE_TO_METERED_NETWORK :: PAUSED_DUE_TO_METERED_NETWORK;
    SESF_PAUSED_DUE_TO_DISK_SPACE_FULL :: PAUSED_DUE_TO_DISK_SPACE_FULL;
    SESF_PAUSED_DUE_TO_CLIENT_POLICY   :: PAUSED_DUE_TO_CLIENT_POLICY;
    SESF_PAUSED_DUE_TO_SERVICE_POLICY  :: PAUSED_DUE_TO_SERVICE_POLICY;
    SESF_SERVICE_UNAVAILABLE           :: SERVICE_UNAVAILABLE;
    SESF_PAUSED_DUE_TO_USER_REQUEST    :: PAUSED_DUE_TO_USER_REQUEST;
    SESF_ALL_FLAGS                     :: ALL_FLAGS;
}

FOLDERVIEWOPTIONS :: enum s32 {
    DEFAULT           :: 0;
    VISTALAYOUT       :: 1;
    CUSTOMPOSITION    :: 2;
    CUSTOMORDERING    :: 4;
    SUPPORTHYPERLINKS :: 8;
    NOANIMATIONS      :: 16;
    NOSCROLLTIPS      :: 32;

    FVO_DEFAULT           :: DEFAULT;
    FVO_VISTALAYOUT       :: VISTALAYOUT;
    FVO_CUSTOMPOSITION    :: CUSTOMPOSITION;
    FVO_CUSTOMORDERING    :: CUSTOMORDERING;
    FVO_SUPPORTHYPERLINKS :: SUPPORTHYPERLINKS;
    FVO_NOANIMATIONS      :: NOANIMATIONS;
    FVO_NOSCROLLTIPS      :: NOSCROLLTIPS;
}


IFolderViewOptions_UUID :: "3cc974d2-b302-4d36-ad3e-06d93f695d3f";
IFolderViewOptions :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ifolderviewoptions_vtable: *IFolderViewOptions_VTable;
}
IFolderViewOptions_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SetFolderViewOptions: (this: *IFolderViewOptions, fvoMask: FOLDERVIEWOPTIONS, fvoFlags: FOLDERVIEWOPTIONS) -> HRESULT #cpp_method;

    GetFolderViewOptions: (this: *IFolderViewOptions, pfvoFlags: *FOLDERVIEWOPTIONS) -> HRESULT #cpp_method;
}

IFolderViewOptions_SetFolderViewOptions :: inline (this: *IFolderViewOptions, fvoMask: FOLDERVIEWOPTIONS, fvoFlags: FOLDERVIEWOPTIONS) -> HRESULT { return this.ifolderviewoptions_vtable.SetFolderViewOptions(this, fvoMask, fvoFlags); }

IFolderViewOptions_GetFolderViewOptions :: inline (this: *IFolderViewOptions, pfvoFlags: *FOLDERVIEWOPTIONS) -> HRESULT { return this.ifolderviewoptions_vtable.GetFolderViewOptions(this, pfvoFlags); }

vtable :: (obj: *IFolderViewOptions) -> *IFolderViewOptions_VTable { return obj.ifolderviewoptions_vtable; }


SV3CVW3_FLAGS :: enum s32 {
    DEFAULT          :: 0;
    NONINTERACTIVE   :: 1;
    FORCEVIEWMODE    :: 2;
    FORCEFOLDERFLAGS :: 4;

    SV3CVW3_DEFAULT          :: DEFAULT;
    SV3CVW3_NONINTERACTIVE   :: NONINTERACTIVE;
    SV3CVW3_FORCEVIEWMODE    :: FORCEVIEWMODE;
    SV3CVW3_FORCEFOLDERFLAGS :: FORCEFOLDERFLAGS;
}

SV3CVW3_FLAGS :: u32;


IShellView3_UUID :: "ec39fa88-f8af-41c5-8421-38bed28f4673";
IShellView3 :: struct {
    #as using ishellview2: IShellView2;
    #place ishellview2; ishellview3_vtable: *IShellView3_VTable;
}
IShellView3_VTable :: struct #type_info_none {
    using ishellview2: IShellView2_VTable;
    CreateViewWindow3: (this: *IShellView3, psbOwner: *IShellBrowser, psvPrev: *IShellView, dwViewFlags: SV3CVW3_FLAGS, dwMask: FOLDERFLAGS, dwFlags: FOLDERFLAGS, fvMode: FOLDERVIEWMODE, pvid: *SHELLVIEWID, prcView: *RECT, phwndView: *HWND) -> HRESULT #cpp_method;
}
IShellView3_CreateViewWindow3 :: inline (this: *IShellView3, psbOwner: *IShellBrowser, psvPrev: *IShellView, dwViewFlags: SV3CVW3_FLAGS, dwMask: FOLDERFLAGS, dwFlags: FOLDERFLAGS, fvMode: FOLDERVIEWMODE, pvid: *SHELLVIEWID, prcView: *RECT, phwndView: *HWND) -> HRESULT { return this.ishellview3_vtable.CreateViewWindow3(this, psbOwner, psvPrev, dwViewFlags, dwMask, dwFlags, fvMode, pvid, prcView, phwndView); }

vtable :: (obj: *IShellView3) -> *IShellView3_VTable { return obj.ishellview3_vtable; }



ISearchBoxInfo_UUID :: "6af6e03f-d664-4ef4-9626-f7e0ed36755e";
ISearchBoxInfo :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; isearchboxinfo_vtable: *ISearchBoxInfo_VTable;
}
ISearchBoxInfo_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetCondition: (this: *ISearchBoxInfo, riid: *IID, ppv: **void) -> HRESULT #cpp_method;

    GetText: (this: *ISearchBoxInfo, ppsz: **s16) -> HRESULT #cpp_method;
}

ISearchBoxInfo_GetCondition :: inline (this: *ISearchBoxInfo, riid: *IID, ppv: **void) -> HRESULT { return this.isearchboxinfo_vtable.GetCondition(this, riid, ppv); }

ISearchBoxInfo_GetText :: inline (this: *ISearchBoxInfo, ppsz: **s16) -> HRESULT { return this.isearchboxinfo_vtable.GetText(this, ppsz); }

vtable :: (obj: *ISearchBoxInfo) -> *ISearchBoxInfo_VTable { return obj.isearchboxinfo_vtable; }


VPWATERMARKFLAGS :: enum s32 {
    DEFAULT    :: 0;
    ALPHABLEND :: 1;

    VPWF_DEFAULT    :: DEFAULT;
    VPWF_ALPHABLEND :: ALPHABLEND;
}

VPCOLORFLAGS :: enum s32 {
    TEXT           :: 1;
    BACKGROUND     :: 2;
    SORTCOLUMN     :: 3;
    SUBTEXT        :: 4;
    TEXTBACKGROUND :: 5;

    VPCF_TEXT           :: TEXT;
    VPCF_BACKGROUND     :: BACKGROUND;
    VPCF_SORTCOLUMN     :: SORTCOLUMN;
    VPCF_SUBTEXT        :: SUBTEXT;
    VPCF_TEXTBACKGROUND :: TEXTBACKGROUND;
}


IVisualProperties_UUID :: "e693cf68-d967-4112-8763-99172aee5e5a";
IVisualProperties :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ivisualproperties_vtable: *IVisualProperties_VTable;
}
IVisualProperties_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SetWatermark: (this: *IVisualProperties, hbmp: HBITMAP, vpwf: VPWATERMARKFLAGS) -> HRESULT #cpp_method;

    SetColor: (this: *IVisualProperties, vpcf: VPCOLORFLAGS, cr: COLORREF) -> HRESULT #cpp_method;

    GetColor: (this: *IVisualProperties, vpcf: VPCOLORFLAGS, pcr: *COLORREF) -> HRESULT #cpp_method;

    SetItemHeight: (this: *IVisualProperties, cyItemInPixels: s32) -> HRESULT #cpp_method;

    GetItemHeight: (this: *IVisualProperties, cyItemInPixels: *s32) -> HRESULT #cpp_method;

    SetFont: (this: *IVisualProperties, plf: *LOGFONTW, bRedraw: BOOL) -> HRESULT #cpp_method;

    GetFont: (this: *IVisualProperties, plf: *LOGFONTW) -> HRESULT #cpp_method;

    SetTheme: (this: *IVisualProperties, pszSubAppName: *s16, pszSubIdList: *s16) -> HRESULT #cpp_method;
}

IVisualProperties_SetWatermark :: inline (this: *IVisualProperties, hbmp: HBITMAP, vpwf: VPWATERMARKFLAGS) -> HRESULT { return this.ivisualproperties_vtable.SetWatermark(this, hbmp, vpwf); }

IVisualProperties_SetColor :: inline (this: *IVisualProperties, vpcf: VPCOLORFLAGS, cr: COLORREF) -> HRESULT { return this.ivisualproperties_vtable.SetColor(this, vpcf, cr); }

IVisualProperties_GetColor :: inline (this: *IVisualProperties, vpcf: VPCOLORFLAGS, pcr: *COLORREF) -> HRESULT { return this.ivisualproperties_vtable.GetColor(this, vpcf, pcr); }

IVisualProperties_SetItemHeight :: inline (this: *IVisualProperties, cyItemInPixels: s32) -> HRESULT { return this.ivisualproperties_vtable.SetItemHeight(this, cyItemInPixels); }

IVisualProperties_GetItemHeight :: inline (this: *IVisualProperties, cyItemInPixels: *s32) -> HRESULT { return this.ivisualproperties_vtable.GetItemHeight(this, cyItemInPixels); }

IVisualProperties_SetFont :: inline (this: *IVisualProperties, plf: *LOGFONTW, bRedraw: BOOL) -> HRESULT { return this.ivisualproperties_vtable.SetFont(this, plf, bRedraw); }

IVisualProperties_GetFont :: inline (this: *IVisualProperties, plf: *LOGFONTW) -> HRESULT { return this.ivisualproperties_vtable.GetFont(this, plf); }

IVisualProperties_SetTheme :: inline (this: *IVisualProperties, pszSubAppName: *s16, pszSubIdList: *s16) -> HRESULT { return this.ivisualproperties_vtable.SetTheme(this, pszSubAppName, pszSubIdList); }

vtable :: (obj: *IVisualProperties) -> *IVisualProperties_VTable { return obj.ivisualproperties_vtable; }



ICommDlgBrowser3_UUID :: "c8ad25a1-3294-41ee-8165-71174bd01c57";
ICommDlgBrowser3 :: struct {
    #as using icommdlgbrowser2: ICommDlgBrowser2;
    #place icommdlgbrowser2; icommdlgbrowser3_vtable: *ICommDlgBrowser3_VTable;
}
ICommDlgBrowser3_VTable :: struct #type_info_none {
    using icommdlgbrowser2: ICommDlgBrowser2_VTable;
    OnColumnClicked: (this: *ICommDlgBrowser3, ppshv: *IShellView, iColumn: s32) -> HRESULT #cpp_method;

    GetCurrentFilter: (this: *ICommDlgBrowser3, pszFileSpec: *s16, cchFileSpec: s32) -> HRESULT #cpp_method;

    OnPreViewCreated: (this: *ICommDlgBrowser3, ppshv: *IShellView) -> HRESULT #cpp_method;
}

ICommDlgBrowser3_OnColumnClicked :: inline (this: *ICommDlgBrowser3, ppshv: *IShellView, iColumn: s32) -> HRESULT { return this.icommdlgbrowser3_vtable.OnColumnClicked(this, ppshv, iColumn); }

ICommDlgBrowser3_GetCurrentFilter :: inline (this: *ICommDlgBrowser3, pszFileSpec: *s16, cchFileSpec: s32) -> HRESULT { return this.icommdlgbrowser3_vtable.GetCurrentFilter(this, pszFileSpec, cchFileSpec); }

ICommDlgBrowser3_OnPreViewCreated :: inline (this: *ICommDlgBrowser3, ppshv: *IShellView) -> HRESULT { return this.icommdlgbrowser3_vtable.OnPreViewCreated(this, ppshv); }

vtable :: (obj: *ICommDlgBrowser3) -> *ICommDlgBrowser3_VTable { return obj.icommdlgbrowser3_vtable; }



IUserAccountChangeCallback_UUID :: "a561e69a-b4b8-4113-91a5-64c6bcca3430";
IUserAccountChangeCallback :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iuseraccountchangecallback_vtable: *IUserAccountChangeCallback_VTable;
}
IUserAccountChangeCallback_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    OnPictureChange: (this: *IUserAccountChangeCallback, pszUserName: *s16) -> HRESULT #cpp_method;
}
IUserAccountChangeCallback_OnPictureChange :: inline (this: *IUserAccountChangeCallback, pszUserName: *s16) -> HRESULT { return this.iuseraccountchangecallback_vtable.OnPictureChange(this, pszUserName); }

vtable :: (obj: *IUserAccountChangeCallback) -> *IUserAccountChangeCallback_VTable { return obj.iuseraccountchangecallback_vtable; }



IStreamAsync_UUID :: "fe0b6665-e0ca-49b9-a178-2b5cb48d92a5";
IStreamAsync :: struct {
    #as using istream: IStream;
    #place istream; istreamasync_vtable: *IStreamAsync_VTable;
}
IStreamAsync_VTable :: struct #type_info_none {
    using istream: IStream_VTable;
    ReadAsync: (this: *IStreamAsync, pv: *void, cb: u32, pcbRead: *u32, lpOverlapped: LPOVERLAPPED) -> HRESULT #cpp_method;

    WriteAsync: (this: *IStreamAsync, lpBuffer: *void, cb: u32, pcbWritten: *u32, lpOverlapped: LPOVERLAPPED) -> HRESULT #cpp_method;

    OverlappedResult: (this: *IStreamAsync, lpOverlapped: LPOVERLAPPED, lpNumberOfBytesTransferred: *u32, bWait: BOOL) -> HRESULT #cpp_method;

    CancelIo: (this: *IStreamAsync) -> HRESULT #cpp_method;
}

IStreamAsync_ReadAsync :: inline (this: *IStreamAsync, pv: *void, cb: u32, pcbRead: *u32, lpOverlapped: LPOVERLAPPED) -> HRESULT { return this.istreamasync_vtable.ReadAsync(this, pv, cb, pcbRead, lpOverlapped); }

IStreamAsync_WriteAsync :: inline (this: *IStreamAsync, lpBuffer: *void, cb: u32, pcbWritten: *u32, lpOverlapped: LPOVERLAPPED) -> HRESULT { return this.istreamasync_vtable.WriteAsync(this, lpBuffer, cb, pcbWritten, lpOverlapped); }

IStreamAsync_OverlappedResult :: inline (this: *IStreamAsync, lpOverlapped: LPOVERLAPPED, lpNumberOfBytesTransferred: *u32, bWait: BOOL) -> HRESULT { return this.istreamasync_vtable.OverlappedResult(this, lpOverlapped, lpNumberOfBytesTransferred, bWait); }

IStreamAsync_CancelIo :: inline (this: *IStreamAsync) -> HRESULT { return this.istreamasync_vtable.CancelIo(this); }

vtable :: (obj: *IStreamAsync) -> *IStreamAsync_VTable { return obj.istreamasync_vtable; }



IStreamUnbufferedInfo_UUID :: "8a68fdda-1fdc-4c20-8ceb-416643b5a625";
IStreamUnbufferedInfo :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; istreamunbufferedinfo_vtable: *IStreamUnbufferedInfo_VTable;
}
IStreamUnbufferedInfo_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetSectorSize: (this: *IStreamUnbufferedInfo, pcbSectorSize: *u32) -> HRESULT #cpp_method;
}
IStreamUnbufferedInfo_GetSectorSize :: inline (this: *IStreamUnbufferedInfo, pcbSectorSize: *u32) -> HRESULT { return this.istreamunbufferedinfo_vtable.GetSectorSize(this, pcbSectorSize); }

vtable :: (obj: *IStreamUnbufferedInfo) -> *IStreamUnbufferedInfo_VTable { return obj.istreamunbufferedinfo_vtable; }


SHAddDefaultPropertiesByExt :: (pszExt: PCWSTR, pPropStore: *IPropertyStore) -> HRESULT #foreign shell32;
SHCreateDefaultPropertiesOp :: (psi: *IShellItem, ppFileOp: **IFileOperation) -> HRESULT #foreign shell32;
SHSetDefaultProperties :: (hwnd: HWND, psi: *IShellItem, dwFileOpFlags: u32, pfops: *IFileOperationProgressSink) -> HRESULT #foreign shell32;

DSH_FLAGS :: enum s32 {
    DSH_ALLOWDROPDESCRIPTIONTEXT :: 1;
}


IDragSourceHelper2_UUID :: "83E07D0D-0C5F-4163-BF1A-60B274051E40";
IDragSourceHelper2 :: struct {
    #as using idragsourcehelper: IDragSourceHelper;
    #place idragsourcehelper; idragsourcehelper2_vtable: *IDragSourceHelper2_VTable;
}
IDragSourceHelper2_VTable :: struct #type_info_none {
    using idragsourcehelper: IDragSourceHelper_VTable;
    SetFlags: (this: *IDragSourceHelper2, dwFlags: u32) -> HRESULT #cpp_method;
}
IDragSourceHelper2_SetFlags :: inline (this: *IDragSourceHelper2, dwFlags: u32) -> HRESULT { return this.idragsourcehelper2_vtable.SetFlags(this, dwFlags); }

vtable :: (obj: *IDragSourceHelper2) -> *IDragSourceHelper2_VTable { return obj.idragsourcehelper2_vtable; }



IHWEventHandler_UUID :: "C1FB73D0-EC3A-4ba2-B512-8CDB9187B6D1";
IHWEventHandler :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ihweventhandler_vtable: *IHWEventHandler_VTable;
}
IHWEventHandler_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Initialize: (this: *IHWEventHandler, pszParams: *s16) -> HRESULT #cpp_method;

    HandleEvent: (this: *IHWEventHandler, pszDeviceID: *s16, pszAltDeviceID: *s16, pszEventType: *s16) -> HRESULT #cpp_method;

    HandleEventWithContent: (this: *IHWEventHandler, pszDeviceID: *s16, pszAltDeviceID: *s16, pszEventType: *s16, pszContentTypeHandler: *s16, pdataobject: *IDataObject) -> HRESULT #cpp_method;
}

IHWEventHandler_Initialize :: inline (this: *IHWEventHandler, pszParams: *s16) -> HRESULT { return this.ihweventhandler_vtable.Initialize(this, pszParams); }

IHWEventHandler_HandleEvent :: inline (this: *IHWEventHandler, pszDeviceID: *s16, pszAltDeviceID: *s16, pszEventType: *s16) -> HRESULT { return this.ihweventhandler_vtable.HandleEvent(this, pszDeviceID, pszAltDeviceID, pszEventType); }

IHWEventHandler_HandleEventWithContent :: inline (this: *IHWEventHandler, pszDeviceID: *s16, pszAltDeviceID: *s16, pszEventType: *s16, pszContentTypeHandler: *s16, pdataobject: *IDataObject) -> HRESULT { return this.ihweventhandler_vtable.HandleEventWithContent(this, pszDeviceID, pszAltDeviceID, pszEventType, pszContentTypeHandler, pdataobject); }

vtable :: (obj: *IHWEventHandler) -> *IHWEventHandler_VTable { return obj.ihweventhandler_vtable; }



IHWEventHandler2_UUID :: "CFCC809F-295D-42e8-9FFC-424B33C487E6";
IHWEventHandler2 :: struct {
    #as using ihweventhandler: IHWEventHandler;
    #place ihweventhandler; ihweventhandler2_vtable: *IHWEventHandler2_VTable;
}
IHWEventHandler2_VTable :: struct #type_info_none {
    using ihweventhandler: IHWEventHandler_VTable;
    HandleEventWithHWND: (this: *IHWEventHandler2, pszDeviceID: *s16, pszAltDeviceID: *s16, pszEventType: *s16, hwndOwner: HWND) -> HRESULT #cpp_method;
}
IHWEventHandler2_HandleEventWithHWND :: inline (this: *IHWEventHandler2, pszDeviceID: *s16, pszAltDeviceID: *s16, pszEventType: *s16, hwndOwner: HWND) -> HRESULT { return this.ihweventhandler2_vtable.HandleEventWithHWND(this, pszDeviceID, pszAltDeviceID, pszEventType, hwndOwner); }

vtable :: (obj: *IHWEventHandler2) -> *IHWEventHandler2_VTable { return obj.ihweventhandler2_vtable; }



IQueryCancelAutoPlay_UUID :: "DDEFE873-6997-4e68-BE26-39B633ADBE12";
IQueryCancelAutoPlay :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iquerycancelautoplay_vtable: *IQueryCancelAutoPlay_VTable;
}
IQueryCancelAutoPlay_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    AllowAutoPlay: (this: *IQueryCancelAutoPlay, pszPath: *s16, dwContentType: u32, pszLabel: *s16, dwSerialNumber: u32) -> HRESULT #cpp_method;
}
IQueryCancelAutoPlay_AllowAutoPlay :: inline (this: *IQueryCancelAutoPlay, pszPath: *s16, dwContentType: u32, pszLabel: *s16, dwSerialNumber: u32) -> HRESULT { return this.iquerycancelautoplay_vtable.AllowAutoPlay(this, pszPath, dwContentType, pszLabel, dwSerialNumber); }

vtable :: (obj: *IQueryCancelAutoPlay) -> *IQueryCancelAutoPlay_VTable { return obj.iquerycancelautoplay_vtable; }



IDynamicHWHandler_UUID :: "DC2601D7-059E-42fc-A09D-2AFD21B6D5F7";
IDynamicHWHandler :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; idynamichwhandler_vtable: *IDynamicHWHandler_VTable;
}
IDynamicHWHandler_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetDynamicInfo: (this: *IDynamicHWHandler, pszDeviceID: *s16, dwContentType: u32, ppszAction: **s16) -> HRESULT #cpp_method;
}
IDynamicHWHandler_GetDynamicInfo :: inline (this: *IDynamicHWHandler, pszDeviceID: *s16, dwContentType: u32, ppszAction: **s16) -> HRESULT { return this.idynamichwhandler_vtable.GetDynamicInfo(this, pszDeviceID, dwContentType, ppszAction); }

vtable :: (obj: *IDynamicHWHandler) -> *IDynamicHWHandler_VTable { return obj.idynamichwhandler_vtable; }



IUserNotificationCallback_UUID :: "19108294-0441-4AFF-8013-FA0A730B0BEA";
IUserNotificationCallback :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iusernotificationcallback_vtable: *IUserNotificationCallback_VTable;
}
IUserNotificationCallback_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    OnBalloonUserClick: (this: *IUserNotificationCallback, pt: *POINT) -> HRESULT #cpp_method;

    OnLeftClick: (this: *IUserNotificationCallback, pt: *POINT) -> HRESULT #cpp_method;

    OnContextMenu: (this: *IUserNotificationCallback, pt: *POINT) -> HRESULT #cpp_method;
}

IUserNotificationCallback_OnBalloonUserClick :: inline (this: *IUserNotificationCallback, pt: *POINT) -> HRESULT { return this.iusernotificationcallback_vtable.OnBalloonUserClick(this, pt); }

IUserNotificationCallback_OnLeftClick :: inline (this: *IUserNotificationCallback, pt: *POINT) -> HRESULT { return this.iusernotificationcallback_vtable.OnLeftClick(this, pt); }

IUserNotificationCallback_OnContextMenu :: inline (this: *IUserNotificationCallback, pt: *POINT) -> HRESULT { return this.iusernotificationcallback_vtable.OnContextMenu(this, pt); }

vtable :: (obj: *IUserNotificationCallback) -> *IUserNotificationCallback_VTable { return obj.iusernotificationcallback_vtable; }



IUserNotification2_UUID :: "215913CC-57EB-4FAB-AB5A-E5FA7BEA2A6C";
IUserNotification2 :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iusernotification2_vtable: *IUserNotification2_VTable;
}
IUserNotification2_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SetBalloonInfo: (this: *IUserNotification2, pszTitle: *s16, pszText: *s16, dwInfoFlags: u32) -> HRESULT #cpp_method;

    SetBalloonRetry: (this: *IUserNotification2, dwShowTime: u32, dwInterval: u32, cRetryCount: u32) -> HRESULT #cpp_method;

    SetIconInfo: (this: *IUserNotification2, hIcon: HICON, pszToolTip: *s16) -> HRESULT #cpp_method;

    Show: (this: *IUserNotification2, pqc: *IQueryContinue, dwContinuePollInterval: u32, pSink: *IUserNotificationCallback) -> HRESULT #cpp_method;

    PlaySound: (this: *IUserNotification2, pszSoundName: *s16) -> HRESULT #cpp_method;
}

IUserNotification2_SetBalloonInfo :: inline (this: *IUserNotification2, pszTitle: *s16, pszText: *s16, dwInfoFlags: u32) -> HRESULT { return this.iusernotification2_vtable.SetBalloonInfo(this, pszTitle, pszText, dwInfoFlags); }

IUserNotification2_SetBalloonRetry :: inline (this: *IUserNotification2, dwShowTime: u32, dwInterval: u32, cRetryCount: u32) -> HRESULT { return this.iusernotification2_vtable.SetBalloonRetry(this, dwShowTime, dwInterval, cRetryCount); }

IUserNotification2_SetIconInfo :: inline (this: *IUserNotification2, hIcon: HICON, pszToolTip: *s16) -> HRESULT { return this.iusernotification2_vtable.SetIconInfo(this, hIcon, pszToolTip); }

IUserNotification2_Show :: inline (this: *IUserNotification2, pqc: *IQueryContinue, dwContinuePollInterval: u32, pSink: *IUserNotificationCallback) -> HRESULT { return this.iusernotification2_vtable.Show(this, pqc, dwContinuePollInterval, pSink); }

IUserNotification2_PlaySound :: inline (this: *IUserNotification2, pszSoundName: *s16) -> HRESULT { return this.iusernotification2_vtable.PlaySound(this, pszSoundName); }

vtable :: (obj: *IUserNotification2) -> *IUserNotification2_VTable { return obj.iusernotification2_vtable; }



IDeskBand2_UUID :: "79D16DE4-ABEE-4021-8D9D-9169B261D657";
IDeskBand2 :: struct {
    #as using ideskband: IDeskBand;
    #place ideskband; ideskband2_vtable: *IDeskBand2_VTable;
}
IDeskBand2_VTable :: struct #type_info_none {
    using ideskband: IDeskBand_VTable;
    CanRenderComposited: (this: *IDeskBand2, pfCanRenderComposited: *BOOL) -> HRESULT #cpp_method;

    SetCompositionState: (this: *IDeskBand2, fCompositionEnabled: BOOL) -> HRESULT #cpp_method;

    GetCompositionState: (this: *IDeskBand2, pfCompositionEnabled: *BOOL) -> HRESULT #cpp_method;
}

IDeskBand2_CanRenderComposited :: inline (this: *IDeskBand2, pfCanRenderComposited: *BOOL) -> HRESULT { return this.ideskband2_vtable.CanRenderComposited(this, pfCanRenderComposited); }

IDeskBand2_SetCompositionState :: inline (this: *IDeskBand2, fCompositionEnabled: BOOL) -> HRESULT { return this.ideskband2_vtable.SetCompositionState(this, fCompositionEnabled); }

IDeskBand2_GetCompositionState :: inline (this: *IDeskBand2, pfCompositionEnabled: *BOOL) -> HRESULT { return this.ideskband2_vtable.GetCompositionState(this, pfCompositionEnabled); }

vtable :: (obj: *IDeskBand2) -> *IDeskBand2_VTable { return obj.ideskband2_vtable; }



IStartMenuPinnedList_UUID :: "4CD19ADA-25A5-4A32-B3B7-347BEE5BE36B";
IStartMenuPinnedList :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; istartmenupinnedlist_vtable: *IStartMenuPinnedList_VTable;
}
IStartMenuPinnedList_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    RemoveFromList: (this: *IStartMenuPinnedList, pitem: *IShellItem) -> HRESULT #cpp_method;
}
IStartMenuPinnedList_RemoveFromList :: inline (this: *IStartMenuPinnedList, pitem: *IShellItem) -> HRESULT { return this.istartmenupinnedlist_vtable.RemoveFromList(this, pitem); }

vtable :: (obj: *IStartMenuPinnedList) -> *IStartMenuPinnedList_VTable { return obj.istartmenupinnedlist_vtable; }



ICDBurn_UUID :: "3d73a659-e5d0-4d42-afc0-5121ba425c8d";
ICDBurn :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; icdburn_vtable: *ICDBurn_VTable;
}
ICDBurn_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetRecorderDriveLetter: (this: *ICDBurn, pszDrive: *s16, cch: u32) -> HRESULT #cpp_method;

    Burn: (this: *ICDBurn, hwnd: HWND) -> HRESULT #cpp_method;

    HasRecordableDrive: (this: *ICDBurn, pfHasRecorder: *BOOL) -> HRESULT #cpp_method;
}

ICDBurn_GetRecorderDriveLetter :: inline (this: *ICDBurn, pszDrive: *s16, cch: u32) -> HRESULT { return this.icdburn_vtable.GetRecorderDriveLetter(this, pszDrive, cch); }

ICDBurn_Burn :: inline (this: *ICDBurn, hwnd: HWND) -> HRESULT { return this.icdburn_vtable.Burn(this, hwnd); }

ICDBurn_HasRecordableDrive :: inline (this: *ICDBurn, pfHasRecorder: *BOOL) -> HRESULT { return this.icdburn_vtable.HasRecordableDrive(this, pfHasRecorder); }

vtable :: (obj: *ICDBurn) -> *ICDBurn_VTable { return obj.icdburn_vtable; }



IWizardSite_UUID :: "88960f5b-422f-4e7b-8013-73415381c3c3";
IWizardSite :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iwizardsite_vtable: *IWizardSite_VTable;
}
IWizardSite_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetPreviousPage: (this: *IWizardSite, phpage: *HPROPSHEETPAGE) -> HRESULT #cpp_method;

    GetNextPage: (this: *IWizardSite, phpage: *HPROPSHEETPAGE) -> HRESULT #cpp_method;

    GetCancelledPage: (this: *IWizardSite, phpage: *HPROPSHEETPAGE) -> HRESULT #cpp_method;
}

IWizardSite_GetPreviousPage :: inline (this: *IWizardSite, phpage: *HPROPSHEETPAGE) -> HRESULT { return this.iwizardsite_vtable.GetPreviousPage(this, phpage); }

IWizardSite_GetNextPage :: inline (this: *IWizardSite, phpage: *HPROPSHEETPAGE) -> HRESULT { return this.iwizardsite_vtable.GetNextPage(this, phpage); }

IWizardSite_GetCancelledPage :: inline (this: *IWizardSite, phpage: *HPROPSHEETPAGE) -> HRESULT { return this.iwizardsite_vtable.GetCancelledPage(this, phpage); }

vtable :: (obj: *IWizardSite) -> *IWizardSite_VTable { return obj.iwizardsite_vtable; }



IWizardExtension_UUID :: "c02ea696-86cc-491e-9b23-74394a0444a8";
IWizardExtension :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iwizardextension_vtable: *IWizardExtension_VTable;
}
IWizardExtension_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    AddPages: (this: *IWizardExtension, aPages: *HPROPSHEETPAGE, cPages: u32, pnPagesAdded: *u32) -> HRESULT #cpp_method;

    GetFirstPage: (this: *IWizardExtension, phpage: *HPROPSHEETPAGE) -> HRESULT #cpp_method;

    GetLastPage: (this: *IWizardExtension, phpage: *HPROPSHEETPAGE) -> HRESULT #cpp_method;
}

IWizardExtension_AddPages :: inline (this: *IWizardExtension, aPages: *HPROPSHEETPAGE, cPages: u32, pnPagesAdded: *u32) -> HRESULT { return this.iwizardextension_vtable.AddPages(this, aPages, cPages, pnPagesAdded); }

IWizardExtension_GetFirstPage :: inline (this: *IWizardExtension, phpage: *HPROPSHEETPAGE) -> HRESULT { return this.iwizardextension_vtable.GetFirstPage(this, phpage); }

IWizardExtension_GetLastPage :: inline (this: *IWizardExtension, phpage: *HPROPSHEETPAGE) -> HRESULT { return this.iwizardextension_vtable.GetLastPage(this, phpage); }

vtable :: (obj: *IWizardExtension) -> *IWizardExtension_VTable { return obj.iwizardextension_vtable; }



IWebWizardExtension_UUID :: "0e6b3f66-98d1-48c0-a222-fbde74e2fbc5";
IWebWizardExtension :: struct {
    #as using iwizardextension: IWizardExtension;
    #place iwizardextension; iwebwizardextension_vtable: *IWebWizardExtension_VTable;
}
IWebWizardExtension_VTable :: struct #type_info_none {
    using iwizardextension: IWizardExtension_VTable;
    SetInitialURL: (this: *IWebWizardExtension, pszURL: *s16) -> HRESULT #cpp_method;

    SetErrorURL: (this: *IWebWizardExtension, pszErrorURL: *s16) -> HRESULT #cpp_method;
}

IWebWizardExtension_SetInitialURL :: inline (this: *IWebWizardExtension, pszURL: *s16) -> HRESULT { return this.iwebwizardextension_vtable.SetInitialURL(this, pszURL); }

IWebWizardExtension_SetErrorURL :: inline (this: *IWebWizardExtension, pszErrorURL: *s16) -> HRESULT { return this.iwebwizardextension_vtable.SetErrorURL(this, pszErrorURL); }

vtable :: (obj: *IWebWizardExtension) -> *IWebWizardExtension_VTable { return obj.iwebwizardextension_vtable; }



IPublishingWizard_UUID :: "aa9198bb-ccec-472d-beed-19a4f6733f7a";
IPublishingWizard :: struct {
    #as using iwizardextension: IWizardExtension;
    #place iwizardextension; ipublishingwizard_vtable: *IPublishingWizard_VTable;
}
IPublishingWizard_VTable :: struct #type_info_none {
    using iwizardextension: IWizardExtension_VTable;
    Initialize: (this: *IPublishingWizard, pdo: *IDataObject, dwOptions: u32, pszServiceScope: *s16) -> HRESULT #cpp_method;

    GetTransferManifest: (this: *IPublishingWizard, phrFromTransfer: *HRESULT, pdocManifest: **IXMLDOMDocument) -> HRESULT #cpp_method;
}

IPublishingWizard_Initialize :: inline (this: *IPublishingWizard, pdo: *IDataObject, dwOptions: u32, pszServiceScope: *s16) -> HRESULT { return this.ipublishingwizard_vtable.Initialize(this, pdo, dwOptions, pszServiceScope); }

IPublishingWizard_GetTransferManifest :: inline (this: *IPublishingWizard, phrFromTransfer: *HRESULT, pdocManifest: **IXMLDOMDocument) -> HRESULT { return this.ipublishingwizard_vtable.GetTransferManifest(this, phrFromTransfer, pdocManifest); }

vtable :: (obj: *IPublishingWizard) -> *IPublishingWizard_VTable { return obj.ipublishingwizard_vtable; }



IFolderViewHost_UUID :: "1ea58f02-d55a-411d-b09e-9e65ac21605b";
IFolderViewHost :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ifolderviewhost_vtable: *IFolderViewHost_VTable;
}
IFolderViewHost_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Initialize: (this: *IFolderViewHost, hwndParent: HWND, pdo: *IDataObject, prc: *RECT) -> HRESULT #cpp_method;
}
IFolderViewHost_Initialize :: inline (this: *IFolderViewHost, hwndParent: HWND, pdo: *IDataObject, prc: *RECT) -> HRESULT { return this.ifolderviewhost_vtable.Initialize(this, hwndParent, pdo, prc); }

vtable :: (obj: *IFolderViewHost) -> *IFolderViewHost_VTable { return obj.ifolderviewhost_vtable; }



IAccessibleObject_UUID :: "95A391C5-9ED4-4c28-8401-AB9E06719E11";
IAccessibleObject :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iaccessibleobject_vtable: *IAccessibleObject_VTable;
}
IAccessibleObject_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SetAccessibleName: (this: *IAccessibleObject, pszName: *s16) -> HRESULT #cpp_method;
}
IAccessibleObject_SetAccessibleName :: inline (this: *IAccessibleObject, pszName: *s16) -> HRESULT { return this.iaccessibleobject_vtable.SetAccessibleName(this, pszName); }

vtable :: (obj: *IAccessibleObject) -> *IAccessibleObject_VTable { return obj.iaccessibleobject_vtable; }



IResultsFolder_UUID :: "96E5AE6D-6AE1-4b1c-900C-C6480EAA8828";
IResultsFolder :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iresultsfolder_vtable: *IResultsFolder_VTable;
}
IResultsFolder_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    AddItem: (this: *IResultsFolder, psi: *IShellItem) -> HRESULT #cpp_method;

    AddIDList: (this: *IResultsFolder, pidl: LPCITEMIDLIST, ppidlAdded: *LPITEMIDLIST) -> HRESULT #cpp_method;

    RemoveItem: (this: *IResultsFolder, psi: *IShellItem) -> HRESULT #cpp_method;

    RemoveIDList: (this: *IResultsFolder, pidl: LPCITEMIDLIST) -> HRESULT #cpp_method;

    RemoveAll: (this: *IResultsFolder) -> HRESULT #cpp_method;
}

IResultsFolder_AddItem :: inline (this: *IResultsFolder, psi: *IShellItem) -> HRESULT { return this.iresultsfolder_vtable.AddItem(this, psi); }

IResultsFolder_AddIDList :: inline (this: *IResultsFolder, pidl: LPCITEMIDLIST, ppidlAdded: *LPITEMIDLIST) -> HRESULT { return this.iresultsfolder_vtable.AddIDList(this, pidl, ppidlAdded); }

IResultsFolder_RemoveItem :: inline (this: *IResultsFolder, psi: *IShellItem) -> HRESULT { return this.iresultsfolder_vtable.RemoveItem(this, psi); }

IResultsFolder_RemoveIDList :: inline (this: *IResultsFolder, pidl: LPCITEMIDLIST) -> HRESULT { return this.iresultsfolder_vtable.RemoveIDList(this, pidl); }

IResultsFolder_RemoveAll :: inline (this: *IResultsFolder) -> HRESULT { return this.iresultsfolder_vtable.RemoveAll(this); }

vtable :: (obj: *IResultsFolder) -> *IResultsFolder_VTable { return obj.iresultsfolder_vtable; }



IAutoCompleteDropDown_UUID :: "3CD141F4-3C6A-11d2-BCAA-00C04FD929DB";
IAutoCompleteDropDown :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iautocompletedropdown_vtable: *IAutoCompleteDropDown_VTable;
}
IAutoCompleteDropDown_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetDropDownStatus: (this: *IAutoCompleteDropDown, pdwFlags: *u32, ppwszString: **s16) -> HRESULT #cpp_method;

    ResetEnumerator: (this: *IAutoCompleteDropDown) -> HRESULT #cpp_method;
}

IAutoCompleteDropDown_GetDropDownStatus :: inline (this: *IAutoCompleteDropDown, pdwFlags: *u32, ppwszString: **s16) -> HRESULT { return this.iautocompletedropdown_vtable.GetDropDownStatus(this, pdwFlags, ppwszString); }

IAutoCompleteDropDown_ResetEnumerator :: inline (this: *IAutoCompleteDropDown) -> HRESULT { return this.iautocompletedropdown_vtable.ResetEnumerator(this); }

vtable :: (obj: *IAutoCompleteDropDown) -> *IAutoCompleteDropDown_VTable { return obj.iautocompletedropdown_vtable; }


tagCDBURNINGEXTENSIONRET :: enum s32 {
    DEFAULT          :: 0;
    DONTRUNOTHEREXTS :: 1;
    STOPWIZARD       :: 2;

    CDBE_RET_DEFAULT          :: DEFAULT;
    CDBE_RET_DONTRUNOTHEREXTS :: DONTRUNOTHEREXTS;
    CDBE_RET_STOPWIZARD       :: STOPWIZARD;
}

CDBE_ACTIONS :: enum s32 {
    MUSIC :: 1;
    DATA  :: 2;
    ALL   :: -1;

    CDBE_TYPE_MUSIC :: MUSIC;
    CDBE_TYPE_DATA  :: DATA;
    CDBE_TYPE_ALL   :: ALL;
}

CDBE_ACTIONS :: u32;


ICDBurnExt_UUID :: "2271dcca-74fc-4414-8fb7-c56b05ace2d7";
ICDBurnExt :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; icdburnext_vtable: *ICDBurnExt_VTable;
}
ICDBurnExt_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetSupportedActionTypes: (this: *ICDBurnExt, pdwActions: *CDBE_ACTIONS) -> HRESULT #cpp_method;
}
ICDBurnExt_GetSupportedActionTypes :: inline (this: *ICDBurnExt, pdwActions: *CDBE_ACTIONS) -> HRESULT { return this.icdburnext_vtable.GetSupportedActionTypes(this, pdwActions); }

vtable :: (obj: *ICDBurnExt) -> *ICDBurnExt_VTable { return obj.icdburnext_vtable; }



IEnumReadyCallback_UUID :: "61E00D45-8FFF-4e60-924E-6537B61612DD";
IEnumReadyCallback :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ienumreadycallback_vtable: *IEnumReadyCallback_VTable;
}
IEnumReadyCallback_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    EnumReady: (this: *IEnumReadyCallback) -> HRESULT #cpp_method;
}
IEnumReadyCallback_EnumReady :: inline (this: *IEnumReadyCallback) -> HRESULT { return this.ienumreadycallback_vtable.EnumReady(this); }

vtable :: (obj: *IEnumReadyCallback) -> *IEnumReadyCallback_VTable { return obj.ienumreadycallback_vtable; }



IEnumerableView_UUID :: "8C8BF236-1AEC-495f-9894-91D57C3C686F";
IEnumerableView :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ienumerableview_vtable: *IEnumerableView_VTable;
}
IEnumerableView_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SetEnumReadyCallback: (this: *IEnumerableView, percb: *IEnumReadyCallback) -> HRESULT #cpp_method;

    CreateEnumIDListFromContents: (this: *IEnumerableView, pidlFolder: LPCITEMIDLIST, dwEnumFlags: u32, ppEnumIDList: **IEnumIDList) -> HRESULT #cpp_method;
}

IEnumerableView_SetEnumReadyCallback :: inline (this: *IEnumerableView, percb: *IEnumReadyCallback) -> HRESULT { return this.ienumerableview_vtable.SetEnumReadyCallback(this, percb); }

IEnumerableView_CreateEnumIDListFromContents :: inline (this: *IEnumerableView, pidlFolder: LPCITEMIDLIST, dwEnumFlags: u32, ppEnumIDList: **IEnumIDList) -> HRESULT { return this.ienumerableview_vtable.CreateEnumIDListFromContents(this, pidlFolder, dwEnumFlags, ppEnumIDList); }

vtable :: (obj: *IEnumerableView) -> *IEnumerableView_VTable { return obj.ienumerableview_vtable; }



IInsertItem_UUID :: "D2B57227-3D23-4b95-93C0-492BD454C356";
IInsertItem :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iinsertitem_vtable: *IInsertItem_VTable;
}
IInsertItem_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    InsertItem: (this: *IInsertItem, pidl: LPCITEMIDLIST) -> HRESULT #cpp_method;
}
IInsertItem_InsertItem :: inline (this: *IInsertItem, pidl: LPCITEMIDLIST) -> HRESULT { return this.iinsertitem_vtable.InsertItem(this, pidl); }

vtable :: (obj: *IInsertItem) -> *IInsertItem_VTable { return obj.iinsertitem_vtable; }



IFolderBandPriv_UUID :: "47c01f95-e185-412c-b5c5-4f27df965aea";
IFolderBandPriv :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ifolderbandpriv_vtable: *IFolderBandPriv_VTable;
}
IFolderBandPriv_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SetCascade: (this: *IFolderBandPriv, fCascade: BOOL) -> HRESULT #cpp_method;

    SetAccelerators: (this: *IFolderBandPriv, fAccelerators: BOOL) -> HRESULT #cpp_method;

    SetNoIcons: (this: *IFolderBandPriv, fNoIcons: BOOL) -> HRESULT #cpp_method;

    SetNoText: (this: *IFolderBandPriv, fNoText: BOOL) -> HRESULT #cpp_method;
}

IFolderBandPriv_SetCascade :: inline (this: *IFolderBandPriv, fCascade: BOOL) -> HRESULT { return this.ifolderbandpriv_vtable.SetCascade(this, fCascade); }

IFolderBandPriv_SetAccelerators :: inline (this: *IFolderBandPriv, fAccelerators: BOOL) -> HRESULT { return this.ifolderbandpriv_vtable.SetAccelerators(this, fAccelerators); }

IFolderBandPriv_SetNoIcons :: inline (this: *IFolderBandPriv, fNoIcons: BOOL) -> HRESULT { return this.ifolderbandpriv_vtable.SetNoIcons(this, fNoIcons); }

IFolderBandPriv_SetNoText :: inline (this: *IFolderBandPriv, fNoText: BOOL) -> HRESULT { return this.ifolderbandpriv_vtable.SetNoText(this, fNoText); }

vtable :: (obj: *IFolderBandPriv) -> *IFolderBandPriv_VTable { return obj.ifolderbandpriv_vtable; }



IImageRecompress_UUID :: "505f1513-6b3e-4892-a272-59f8889a4d3e";
IImageRecompress :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iimagerecompress_vtable: *IImageRecompress_VTable;
}
IImageRecompress_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    RecompressImage: (this: *IImageRecompress, psi: *IShellItem, cx: s32, cy: s32, iQuality: s32, pstg: *IStorage, ppstrmOut: **IStream) -> HRESULT #cpp_method;
}
IImageRecompress_RecompressImage :: inline (this: *IImageRecompress, psi: *IShellItem, cx: s32, cy: s32, iQuality: s32, pstg: *IStorage, ppstrmOut: **IStream) -> HRESULT { return this.iimagerecompress_vtable.RecompressImage(this, psi, cx, cy, iQuality, pstg, ppstrmOut); }

vtable :: (obj: *IImageRecompress) -> *IImageRecompress_VTable { return obj.iimagerecompress_vtable; }



IFileDialogControlEvents_UUID :: "36116642-D713-4b97-9B83-7484A9D00433";
IFileDialogControlEvents :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ifiledialogcontrolevents_vtable: *IFileDialogControlEvents_VTable;
}
IFileDialogControlEvents_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    OnItemSelected: (this: *IFileDialogControlEvents, pfdc: *IFileDialogCustomize, dwIDCtl: u32, dwIDItem: u32) -> HRESULT #cpp_method;

    OnButtonClicked: (this: *IFileDialogControlEvents, pfdc: *IFileDialogCustomize, dwIDCtl: u32) -> HRESULT #cpp_method;

    OnCheckButtonToggled: (this: *IFileDialogControlEvents, pfdc: *IFileDialogCustomize, dwIDCtl: u32, bChecked: BOOL) -> HRESULT #cpp_method;

    OnControlActivating: (this: *IFileDialogControlEvents, pfdc: *IFileDialogCustomize, dwIDCtl: u32) -> HRESULT #cpp_method;
}

IFileDialogControlEvents_OnItemSelected :: inline (this: *IFileDialogControlEvents, pfdc: *IFileDialogCustomize, dwIDCtl: u32, dwIDItem: u32) -> HRESULT { return this.ifiledialogcontrolevents_vtable.OnItemSelected(this, pfdc, dwIDCtl, dwIDItem); }

IFileDialogControlEvents_OnButtonClicked :: inline (this: *IFileDialogControlEvents, pfdc: *IFileDialogCustomize, dwIDCtl: u32) -> HRESULT { return this.ifiledialogcontrolevents_vtable.OnButtonClicked(this, pfdc, dwIDCtl); }

IFileDialogControlEvents_OnCheckButtonToggled :: inline (this: *IFileDialogControlEvents, pfdc: *IFileDialogCustomize, dwIDCtl: u32, bChecked: BOOL) -> HRESULT { return this.ifiledialogcontrolevents_vtable.OnCheckButtonToggled(this, pfdc, dwIDCtl, bChecked); }

IFileDialogControlEvents_OnControlActivating :: inline (this: *IFileDialogControlEvents, pfdc: *IFileDialogCustomize, dwIDCtl: u32) -> HRESULT { return this.ifiledialogcontrolevents_vtable.OnControlActivating(this, pfdc, dwIDCtl); }

vtable :: (obj: *IFileDialogControlEvents) -> *IFileDialogControlEvents_VTable { return obj.ifiledialogcontrolevents_vtable; }



IFileDialog2_UUID :: "61744fc7-85b5-4791-a9b0-272276309b13";
IFileDialog2 :: struct {
    #as using ifiledialog: IFileDialog;
    #place ifiledialog; ifiledialog2_vtable: *IFileDialog2_VTable;
}
IFileDialog2_VTable :: struct #type_info_none {
    using ifiledialog: IFileDialog_VTable;
    SetCancelButtonLabel: (this: *IFileDialog2, pszLabel: *s16) -> HRESULT #cpp_method;

    SetNavigationRoot: (this: *IFileDialog2, psi: *IShellItem) -> HRESULT #cpp_method;
}

IFileDialog2_SetCancelButtonLabel :: inline (this: *IFileDialog2, pszLabel: *s16) -> HRESULT { return this.ifiledialog2_vtable.SetCancelButtonLabel(this, pszLabel); }

IFileDialog2_SetNavigationRoot :: inline (this: *IFileDialog2, psi: *IShellItem) -> HRESULT { return this.ifiledialog2_vtable.SetNavigationRoot(this, psi); }

vtable :: (obj: *IFileDialog2) -> *IFileDialog2_VTable { return obj.ifiledialog2_vtable; }



IApplicationAssociationRegistrationUI_UUID :: "1f76a169-f994-40ac-8fc8-0959e8874710";
IApplicationAssociationRegistrationUI :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iapplicationassociationregistrationui_vtable: *IApplicationAssociationRegistrationUI_VTable;
}
IApplicationAssociationRegistrationUI_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    LaunchAdvancedAssociationUI: (this: *IApplicationAssociationRegistrationUI, pszAppRegistryName: *s16) -> HRESULT #cpp_method;
}
IApplicationAssociationRegistrationUI_LaunchAdvancedAssociationUI :: inline (this: *IApplicationAssociationRegistrationUI, pszAppRegistryName: *s16) -> HRESULT { return this.iapplicationassociationregistrationui_vtable.LaunchAdvancedAssociationUI(this, pszAppRegistryName); }

vtable :: (obj: *IApplicationAssociationRegistrationUI) -> *IApplicationAssociationRegistrationUI_VTable { return obj.iapplicationassociationregistrationui_vtable; }



IShellRunDll_UUID :: "fce4bde0-4b68-4b80-8e9c-7426315a7388";
IShellRunDll :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ishellrundll_vtable: *IShellRunDll_VTable;
}
IShellRunDll_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Run: (this: *IShellRunDll, pszArgs: *s16) -> HRESULT #cpp_method;
}
IShellRunDll_Run :: inline (this: *IShellRunDll, pszArgs: *s16) -> HRESULT { return this.ishellrundll_vtable.Run(this, pszArgs); }

vtable :: (obj: *IShellRunDll) -> *IShellRunDll_VTable { return obj.ishellrundll_vtable; }



IPreviousVersionsInfo_UUID :: "76e54780-ad74-48e3-a695-3ba9a0aff10d";
IPreviousVersionsInfo :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ipreviousversionsinfo_vtable: *IPreviousVersionsInfo_VTable;
}
IPreviousVersionsInfo_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    AreSnapshotsAvailable: (this: *IPreviousVersionsInfo, pszPath: *s16, fOkToBeSlow: BOOL, pfAvailable: *BOOL) -> HRESULT #cpp_method;
}
IPreviousVersionsInfo_AreSnapshotsAvailable :: inline (this: *IPreviousVersionsInfo, pszPath: *s16, fOkToBeSlow: BOOL, pfAvailable: *BOOL) -> HRESULT { return this.ipreviousversionsinfo_vtable.AreSnapshotsAvailable(this, pszPath, fOkToBeSlow, pfAvailable); }

vtable :: (obj: *IPreviousVersionsInfo) -> *IPreviousVersionsInfo_VTable { return obj.ipreviousversionsinfo_vtable; }



IUseToBrowseItem_UUID :: "05edda5c-98a3-4717-8adb-c5e7da991eb1";
IUseToBrowseItem :: struct {
    #as using irelateditem: IRelatedItem;
}

SID_SCommandBarState: GUID;

NSTCSTYLE2 :: enum s32 {
    STCS2_DEFAULT                  :: 0;
    STCS2_INTERRUPTNOTIFICATIONS   :: 1;
    STCS2_SHOWNULLSPACEMENU        :: 2;
    STCS2_DISPLAYPADDING           :: 4;
    STCS2_DISPLAYPINNEDONLY        :: 8;
    TSCS2_NOSINGLETONAUTOEXPAND    :: 16;
    TSCS2_NEVERINSERTNONENUMERATED :: 32;

    NSTCS2_DEFAULT                  :: STCS2_DEFAULT;
    NSTCS2_INTERRUPTNOTIFICATIONS   :: STCS2_INTERRUPTNOTIFICATIONS;
    NSTCS2_SHOWNULLSPACEMENU        :: STCS2_SHOWNULLSPACEMENU;
    NSTCS2_DISPLAYPADDING           :: STCS2_DISPLAYPADDING;
    NSTCS2_DISPLAYPINNEDONLY        :: STCS2_DISPLAYPINNEDONLY;
    NTSCS2_NOSINGLETONAUTOEXPAND    :: TSCS2_NOSINGLETONAUTOEXPAND;
    NTSCS2_NEVERINSERTNONENUMERATED :: TSCS2_NEVERINSERTNONENUMERATED;
}


INameSpaceTreeControl2_UUID :: "7cc7aed8-290e-49bc-8945-c1401cc9306c";
INameSpaceTreeControl2 :: struct {
    #as using inamespacetreecontrol: INameSpaceTreeControl;
    #place inamespacetreecontrol; inamespacetreecontrol2_vtable: *INameSpaceTreeControl2_VTable;
}
INameSpaceTreeControl2_VTable :: struct #type_info_none {
    using inamespacetreecontrol: INameSpaceTreeControl_VTable;
    SetControlStyle: (this: *INameSpaceTreeControl2, nstcsMask: NSTCSTYLE, nstcsStyle: NSTCSTYLE) -> HRESULT #cpp_method;

    GetControlStyle: (this: *INameSpaceTreeControl2, nstcsMask: NSTCSTYLE, pnstcsStyle: *NSTCSTYLE) -> HRESULT #cpp_method;

    SetControlStyle2: (this: *INameSpaceTreeControl2, nstcsMask: NSTCSTYLE2, nstcsStyle: NSTCSTYLE2) -> HRESULT #cpp_method;

    GetControlStyle2: (this: *INameSpaceTreeControl2, nstcsMask: NSTCSTYLE2, pnstcsStyle: *NSTCSTYLE2) -> HRESULT #cpp_method;
}

INameSpaceTreeControl2_SetControlStyle :: inline (this: *INameSpaceTreeControl2, nstcsMask: NSTCSTYLE, nstcsStyle: NSTCSTYLE) -> HRESULT { return this.inamespacetreecontrol2_vtable.SetControlStyle(this, nstcsMask, nstcsStyle); }

INameSpaceTreeControl2_GetControlStyle :: inline (this: *INameSpaceTreeControl2, nstcsMask: NSTCSTYLE, pnstcsStyle: *NSTCSTYLE) -> HRESULT { return this.inamespacetreecontrol2_vtable.GetControlStyle(this, nstcsMask, pnstcsStyle); }

INameSpaceTreeControl2_SetControlStyle2 :: inline (this: *INameSpaceTreeControl2, nstcsMask: NSTCSTYLE2, nstcsStyle: NSTCSTYLE2) -> HRESULT { return this.inamespacetreecontrol2_vtable.SetControlStyle2(this, nstcsMask, nstcsStyle); }

INameSpaceTreeControl2_GetControlStyle2 :: inline (this: *INameSpaceTreeControl2, nstcsMask: NSTCSTYLE2, pnstcsStyle: *NSTCSTYLE2) -> HRESULT { return this.inamespacetreecontrol2_vtable.GetControlStyle2(this, nstcsMask, pnstcsStyle); }

vtable :: (obj: *INameSpaceTreeControl2) -> *INameSpaceTreeControl2_VTable { return obj.inamespacetreecontrol2_vtable; }


NSTCEHITTEST :: enum s32 {
    NOWHERE         :: 1;
    ONITEMICON      :: 2;
    ONITEMLABEL     :: 4;
    ONITEMINDENT    :: 8;
    ONITEMBUTTON    :: 16;
    ONITEMRIGHT     :: 32;
    ONITEMSTATEICON :: 64;
    ONITEM          :: 70;
    ONITEMTABBUTTON :: 4096;

    NSTCEHT_NOWHERE         :: NOWHERE;
    NSTCEHT_ONITEMICON      :: ONITEMICON;
    NSTCEHT_ONITEMLABEL     :: ONITEMLABEL;
    NSTCEHT_ONITEMINDENT    :: ONITEMINDENT;
    NSTCEHT_ONITEMBUTTON    :: ONITEMBUTTON;
    NSTCEHT_ONITEMRIGHT     :: ONITEMRIGHT;
    NSTCEHT_ONITEMSTATEICON :: ONITEMSTATEICON;
    NSTCEHT_ONITEM          :: ONITEM;
    NSTCEHT_ONITEMTABBUTTON :: ONITEMTABBUTTON;
}

NSTCEHITTEST :: u32;

NSTCECLICKTYPE :: enum s32 {
    LBUTTON  :: 1;
    MBUTTON  :: 2;
    RBUTTON  :: 3;
    BUTTON   :: 3;
    DBLCLICK :: 4;

    NSTCECT_LBUTTON  :: LBUTTON;
    NSTCECT_MBUTTON  :: MBUTTON;
    NSTCECT_RBUTTON  :: RBUTTON;
    NSTCECT_BUTTON   :: BUTTON;
    NSTCECT_DBLCLICK :: DBLCLICK;
}

NSTCECLICKTYPE :: u32;


INameSpaceTreeControlEvents_UUID :: "93D77985-B3D8-4484-8318-672CDDA002CE";
INameSpaceTreeControlEvents :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; inamespacetreecontrolevents_vtable: *INameSpaceTreeControlEvents_VTable;
}
INameSpaceTreeControlEvents_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    OnItemClick: (this: *INameSpaceTreeControlEvents, psi: *IShellItem, nstceHitTest: NSTCEHITTEST, nstceClickType: NSTCECLICKTYPE) -> HRESULT #cpp_method;

    OnPropertyItemCommit: (this: *INameSpaceTreeControlEvents, psi: *IShellItem) -> HRESULT #cpp_method;

    OnItemStateChanging: (this: *INameSpaceTreeControlEvents, psi: *IShellItem, nstcisMask: NSTCITEMSTATE, nstcisState: NSTCITEMSTATE) -> HRESULT #cpp_method;

    OnItemStateChanged: (this: *INameSpaceTreeControlEvents, psi: *IShellItem, nstcisMask: NSTCITEMSTATE, nstcisState: NSTCITEMSTATE) -> HRESULT #cpp_method;

    OnSelectionChanged: (this: *INameSpaceTreeControlEvents, psiaSelection: *IShellItemArray) -> HRESULT #cpp_method;

    OnKeyboardInput: (this: *INameSpaceTreeControlEvents, uMsg: u32, wParam: WPARAM, lParam: LPARAM) -> HRESULT #cpp_method;

    OnBeforeExpand: (this: *INameSpaceTreeControlEvents, psi: *IShellItem) -> HRESULT #cpp_method;

    OnAfterExpand: (this: *INameSpaceTreeControlEvents, psi: *IShellItem) -> HRESULT #cpp_method;

    OnBeginLabelEdit: (this: *INameSpaceTreeControlEvents, psi: *IShellItem) -> HRESULT #cpp_method;

    OnEndLabelEdit: (this: *INameSpaceTreeControlEvents, psi: *IShellItem) -> HRESULT #cpp_method;

    OnGetToolTip: (this: *INameSpaceTreeControlEvents, psi: *IShellItem, pszTip: *s16, cchTip: s32) -> HRESULT #cpp_method;

    OnBeforeItemDelete: (this: *INameSpaceTreeControlEvents, psi: *IShellItem) -> HRESULT #cpp_method;

    OnItemAdded: (this: *INameSpaceTreeControlEvents, psi: *IShellItem, fIsRoot: BOOL) -> HRESULT #cpp_method;

    OnItemDeleted: (this: *INameSpaceTreeControlEvents, psi: *IShellItem, fIsRoot: BOOL) -> HRESULT #cpp_method;

    OnBeforeContextMenu: (this: *INameSpaceTreeControlEvents, psi: *IShellItem, riid: *IID, ppv: **void) -> HRESULT #cpp_method;

    OnAfterContextMenu: (this: *INameSpaceTreeControlEvents, psi: *IShellItem, pcmIn: *IContextMenu, riid: *IID, ppv: **void) -> HRESULT #cpp_method;

    OnBeforeStateImageChange: (this: *INameSpaceTreeControlEvents, psi: *IShellItem) -> HRESULT #cpp_method;

    OnGetDefaultIconIndex: (this: *INameSpaceTreeControlEvents, psi: *IShellItem, piDefaultIcon: *s32, piOpenIcon: *s32) -> HRESULT #cpp_method;
}

INameSpaceTreeControlEvents_OnItemClick :: inline (this: *INameSpaceTreeControlEvents, psi: *IShellItem, nstceHitTest: NSTCEHITTEST, nstceClickType: NSTCECLICKTYPE) -> HRESULT { return this.inamespacetreecontrolevents_vtable.OnItemClick(this, psi, nstceHitTest, nstceClickType); }

INameSpaceTreeControlEvents_OnPropertyItemCommit :: inline (this: *INameSpaceTreeControlEvents, psi: *IShellItem) -> HRESULT { return this.inamespacetreecontrolevents_vtable.OnPropertyItemCommit(this, psi); }

INameSpaceTreeControlEvents_OnItemStateChanging :: inline (this: *INameSpaceTreeControlEvents, psi: *IShellItem, nstcisMask: NSTCITEMSTATE, nstcisState: NSTCITEMSTATE) -> HRESULT { return this.inamespacetreecontrolevents_vtable.OnItemStateChanging(this, psi, nstcisMask, nstcisState); }

INameSpaceTreeControlEvents_OnItemStateChanged :: inline (this: *INameSpaceTreeControlEvents, psi: *IShellItem, nstcisMask: NSTCITEMSTATE, nstcisState: NSTCITEMSTATE) -> HRESULT { return this.inamespacetreecontrolevents_vtable.OnItemStateChanged(this, psi, nstcisMask, nstcisState); }

INameSpaceTreeControlEvents_OnSelectionChanged :: inline (this: *INameSpaceTreeControlEvents, psiaSelection: *IShellItemArray) -> HRESULT { return this.inamespacetreecontrolevents_vtable.OnSelectionChanged(this, psiaSelection); }

INameSpaceTreeControlEvents_OnKeyboardInput :: inline (this: *INameSpaceTreeControlEvents, uMsg: u32, wParam: WPARAM, lParam: LPARAM) -> HRESULT { return this.inamespacetreecontrolevents_vtable.OnKeyboardInput(this, uMsg, wParam, lParam); }

INameSpaceTreeControlEvents_OnBeforeExpand :: inline (this: *INameSpaceTreeControlEvents, psi: *IShellItem) -> HRESULT { return this.inamespacetreecontrolevents_vtable.OnBeforeExpand(this, psi); }

INameSpaceTreeControlEvents_OnAfterExpand :: inline (this: *INameSpaceTreeControlEvents, psi: *IShellItem) -> HRESULT { return this.inamespacetreecontrolevents_vtable.OnAfterExpand(this, psi); }

INameSpaceTreeControlEvents_OnBeginLabelEdit :: inline (this: *INameSpaceTreeControlEvents, psi: *IShellItem) -> HRESULT { return this.inamespacetreecontrolevents_vtable.OnBeginLabelEdit(this, psi); }

INameSpaceTreeControlEvents_OnEndLabelEdit :: inline (this: *INameSpaceTreeControlEvents, psi: *IShellItem) -> HRESULT { return this.inamespacetreecontrolevents_vtable.OnEndLabelEdit(this, psi); }

INameSpaceTreeControlEvents_OnGetToolTip :: inline (this: *INameSpaceTreeControlEvents, psi: *IShellItem, pszTip: *s16, cchTip: s32) -> HRESULT { return this.inamespacetreecontrolevents_vtable.OnGetToolTip(this, psi, pszTip, cchTip); }

INameSpaceTreeControlEvents_OnBeforeItemDelete :: inline (this: *INameSpaceTreeControlEvents, psi: *IShellItem) -> HRESULT { return this.inamespacetreecontrolevents_vtable.OnBeforeItemDelete(this, psi); }

INameSpaceTreeControlEvents_OnItemAdded :: inline (this: *INameSpaceTreeControlEvents, psi: *IShellItem, fIsRoot: BOOL) -> HRESULT { return this.inamespacetreecontrolevents_vtable.OnItemAdded(this, psi, fIsRoot); }

INameSpaceTreeControlEvents_OnItemDeleted :: inline (this: *INameSpaceTreeControlEvents, psi: *IShellItem, fIsRoot: BOOL) -> HRESULT { return this.inamespacetreecontrolevents_vtable.OnItemDeleted(this, psi, fIsRoot); }

INameSpaceTreeControlEvents_OnBeforeContextMenu :: inline (this: *INameSpaceTreeControlEvents, psi: *IShellItem, riid: *IID, ppv: **void) -> HRESULT { return this.inamespacetreecontrolevents_vtable.OnBeforeContextMenu(this, psi, riid, ppv); }

INameSpaceTreeControlEvents_OnAfterContextMenu :: inline (this: *INameSpaceTreeControlEvents, psi: *IShellItem, pcmIn: *IContextMenu, riid: *IID, ppv: **void) -> HRESULT { return this.inamespacetreecontrolevents_vtable.OnAfterContextMenu(this, psi, pcmIn, riid, ppv); }

INameSpaceTreeControlEvents_OnBeforeStateImageChange :: inline (this: *INameSpaceTreeControlEvents, psi: *IShellItem) -> HRESULT { return this.inamespacetreecontrolevents_vtable.OnBeforeStateImageChange(this, psi); }

INameSpaceTreeControlEvents_OnGetDefaultIconIndex :: inline (this: *INameSpaceTreeControlEvents, psi: *IShellItem, piDefaultIcon: *s32, piOpenIcon: *s32) -> HRESULT { return this.inamespacetreecontrolevents_vtable.OnGetDefaultIconIndex(this, psi, piDefaultIcon, piOpenIcon); }

vtable :: (obj: *INameSpaceTreeControlEvents) -> *INameSpaceTreeControlEvents_VTable { return obj.inamespacetreecontrolevents_vtable; }



INameSpaceTreeControlDropHandler_UUID :: "F9C665D6-C2F2-4c19-BF33-8322D7352F51";
INameSpaceTreeControlDropHandler :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; inamespacetreecontroldrophandler_vtable: *INameSpaceTreeControlDropHandler_VTable;
}
INameSpaceTreeControlDropHandler_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    OnDragEnter: (this: *INameSpaceTreeControlDropHandler, psiOver: *IShellItem, psiaData: *IShellItemArray, fOutsideSource: BOOL, grfKeyState: u32, pdwEffect: *u32) -> HRESULT #cpp_method;

    OnDragOver: (this: *INameSpaceTreeControlDropHandler, psiOver: *IShellItem, psiaData: *IShellItemArray, grfKeyState: u32, pdwEffect: *u32) -> HRESULT #cpp_method;

    OnDragPosition: (this: *INameSpaceTreeControlDropHandler, psiOver: *IShellItem, psiaData: *IShellItemArray, iNewPosition: s32, iOldPosition: s32) -> HRESULT #cpp_method;

    OnDrop: (this: *INameSpaceTreeControlDropHandler, psiOver: *IShellItem, psiaData: *IShellItemArray, iPosition: s32, grfKeyState: u32, pdwEffect: *u32) -> HRESULT #cpp_method;

    OnDropPosition: (this: *INameSpaceTreeControlDropHandler, psiOver: *IShellItem, psiaData: *IShellItemArray, iNewPosition: s32, iOldPosition: s32) -> HRESULT #cpp_method;

    OnDragLeave: (this: *INameSpaceTreeControlDropHandler, psiOver: *IShellItem) -> HRESULT #cpp_method;
}

INameSpaceTreeControlDropHandler_OnDragEnter :: inline (this: *INameSpaceTreeControlDropHandler, psiOver: *IShellItem, psiaData: *IShellItemArray, fOutsideSource: BOOL, grfKeyState: u32, pdwEffect: *u32) -> HRESULT { return this.inamespacetreecontroldrophandler_vtable.OnDragEnter(this, psiOver, psiaData, fOutsideSource, grfKeyState, pdwEffect); }

INameSpaceTreeControlDropHandler_OnDragOver :: inline (this: *INameSpaceTreeControlDropHandler, psiOver: *IShellItem, psiaData: *IShellItemArray, grfKeyState: u32, pdwEffect: *u32) -> HRESULT { return this.inamespacetreecontroldrophandler_vtable.OnDragOver(this, psiOver, psiaData, grfKeyState, pdwEffect); }

INameSpaceTreeControlDropHandler_OnDragPosition :: inline (this: *INameSpaceTreeControlDropHandler, psiOver: *IShellItem, psiaData: *IShellItemArray, iNewPosition: s32, iOldPosition: s32) -> HRESULT { return this.inamespacetreecontroldrophandler_vtable.OnDragPosition(this, psiOver, psiaData, iNewPosition, iOldPosition); }

INameSpaceTreeControlDropHandler_OnDrop :: inline (this: *INameSpaceTreeControlDropHandler, psiOver: *IShellItem, psiaData: *IShellItemArray, iPosition: s32, grfKeyState: u32, pdwEffect: *u32) -> HRESULT { return this.inamespacetreecontroldrophandler_vtable.OnDrop(this, psiOver, psiaData, iPosition, grfKeyState, pdwEffect); }

INameSpaceTreeControlDropHandler_OnDropPosition :: inline (this: *INameSpaceTreeControlDropHandler, psiOver: *IShellItem, psiaData: *IShellItemArray, iNewPosition: s32, iOldPosition: s32) -> HRESULT { return this.inamespacetreecontroldrophandler_vtable.OnDropPosition(this, psiOver, psiaData, iNewPosition, iOldPosition); }

INameSpaceTreeControlDropHandler_OnDragLeave :: inline (this: *INameSpaceTreeControlDropHandler, psiOver: *IShellItem) -> HRESULT { return this.inamespacetreecontroldrophandler_vtable.OnDragLeave(this, psiOver); }

vtable :: (obj: *INameSpaceTreeControlDropHandler) -> *INameSpaceTreeControlDropHandler_VTable { return obj.inamespacetreecontroldrophandler_vtable; }



INameSpaceTreeAccessible_UUID :: "71f312de-43ed-4190-8477-e9536b82350b";
INameSpaceTreeAccessible :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; inamespacetreeaccessible_vtable: *INameSpaceTreeAccessible_VTable;
}
INameSpaceTreeAccessible_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    OnGetDefaultAccessibilityAction: (this: *INameSpaceTreeAccessible, psi: *IShellItem, pbstrDefaultAction: *BSTR) -> HRESULT #cpp_method;

    OnDoDefaultAccessibilityAction: (this: *INameSpaceTreeAccessible, psi: *IShellItem) -> HRESULT #cpp_method;

    OnGetAccessibilityRole: (this: *INameSpaceTreeAccessible, psi: *IShellItem, pvarRole: *VARIANT) -> HRESULT #cpp_method;
}

INameSpaceTreeAccessible_OnGetDefaultAccessibilityAction :: inline (this: *INameSpaceTreeAccessible, psi: *IShellItem, pbstrDefaultAction: *BSTR) -> HRESULT { return this.inamespacetreeaccessible_vtable.OnGetDefaultAccessibilityAction(this, psi, pbstrDefaultAction); }

INameSpaceTreeAccessible_OnDoDefaultAccessibilityAction :: inline (this: *INameSpaceTreeAccessible, psi: *IShellItem) -> HRESULT { return this.inamespacetreeaccessible_vtable.OnDoDefaultAccessibilityAction(this, psi); }

INameSpaceTreeAccessible_OnGetAccessibilityRole :: inline (this: *INameSpaceTreeAccessible, psi: *IShellItem, pvarRole: *VARIANT) -> HRESULT { return this.inamespacetreeaccessible_vtable.OnGetAccessibilityRole(this, psi, pvarRole); }

vtable :: (obj: *INameSpaceTreeAccessible) -> *INameSpaceTreeAccessible_VTable { return obj.inamespacetreeaccessible_vtable; }


NSTCCUSTOMDRAW :: struct {
    psi:        *IShellItem;
    uItemState: u32;
    nstcis:     NSTCITEMSTATE;
    pszText:    *s16;
    iImage:     s32;
    himl:       HIMAGELIST;
    iLevel:     s32;
    iIndent:    s32;
}


INameSpaceTreeControlCustomDraw_UUID :: "2D3BA758-33EE-42d5-BB7B-5F3431D86C78";
INameSpaceTreeControlCustomDraw :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; inamespacetreecontrolcustomdraw_vtable: *INameSpaceTreeControlCustomDraw_VTable;
}
INameSpaceTreeControlCustomDraw_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    PrePaint: (this: *INameSpaceTreeControlCustomDraw, hdc: HDC, prc: *RECT, plres: *LRESULT) -> HRESULT #cpp_method;

    PostPaint: (this: *INameSpaceTreeControlCustomDraw, hdc: HDC, prc: *RECT) -> HRESULT #cpp_method;

    ItemPrePaint: (this: *INameSpaceTreeControlCustomDraw, hdc: HDC, prc: *RECT, pnstccdItem: *NSTCCUSTOMDRAW, pclrText: *COLORREF, pclrTextBk: *COLORREF, plres: *LRESULT) -> HRESULT #cpp_method;

    ItemPostPaint: (this: *INameSpaceTreeControlCustomDraw, hdc: HDC, prc: *RECT, pnstccdItem: *NSTCCUSTOMDRAW) -> HRESULT #cpp_method;
}

INameSpaceTreeControlCustomDraw_PrePaint :: inline (this: *INameSpaceTreeControlCustomDraw, hdc: HDC, prc: *RECT, plres: *LRESULT) -> HRESULT { return this.inamespacetreecontrolcustomdraw_vtable.PrePaint(this, hdc, prc, plres); }

INameSpaceTreeControlCustomDraw_PostPaint :: inline (this: *INameSpaceTreeControlCustomDraw, hdc: HDC, prc: *RECT) -> HRESULT { return this.inamespacetreecontrolcustomdraw_vtable.PostPaint(this, hdc, prc); }

INameSpaceTreeControlCustomDraw_ItemPrePaint :: inline (this: *INameSpaceTreeControlCustomDraw, hdc: HDC, prc: *RECT, pnstccdItem: *NSTCCUSTOMDRAW, pclrText: *COLORREF, pclrTextBk: *COLORREF, plres: *LRESULT) -> HRESULT { return this.inamespacetreecontrolcustomdraw_vtable.ItemPrePaint(this, hdc, prc, pnstccdItem, pclrText, pclrTextBk, plres); }

INameSpaceTreeControlCustomDraw_ItemPostPaint :: inline (this: *INameSpaceTreeControlCustomDraw, hdc: HDC, prc: *RECT, pnstccdItem: *NSTCCUSTOMDRAW) -> HRESULT { return this.inamespacetreecontrolcustomdraw_vtable.ItemPostPaint(this, hdc, prc, pnstccdItem); }

vtable :: (obj: *INameSpaceTreeControlCustomDraw) -> *INameSpaceTreeControlCustomDraw_VTable { return obj.inamespacetreecontrolcustomdraw_vtable; }



ITrayDeskBand_UUID :: "6D67E846-5B9C-4db8-9CBC-DDE12F4254F1";
ITrayDeskBand :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; itraydeskband_vtable: *ITrayDeskBand_VTable;
}
ITrayDeskBand_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    ShowDeskBand: (this: *ITrayDeskBand, clsid: *IID) -> HRESULT #cpp_method;

    HideDeskBand: (this: *ITrayDeskBand, clsid: *IID) -> HRESULT #cpp_method;

    IsDeskBandShown: (this: *ITrayDeskBand, clsid: *IID) -> HRESULT #cpp_method;

    DeskBandRegistrationChanged: (this: *ITrayDeskBand) -> HRESULT #cpp_method;
}

ITrayDeskBand_ShowDeskBand :: inline (this: *ITrayDeskBand, clsid: *IID) -> HRESULT { return this.itraydeskband_vtable.ShowDeskBand(this, clsid); }

ITrayDeskBand_HideDeskBand :: inline (this: *ITrayDeskBand, clsid: *IID) -> HRESULT { return this.itraydeskband_vtable.HideDeskBand(this, clsid); }

ITrayDeskBand_IsDeskBandShown :: inline (this: *ITrayDeskBand, clsid: *IID) -> HRESULT { return this.itraydeskband_vtable.IsDeskBandShown(this, clsid); }

ITrayDeskBand_DeskBandRegistrationChanged :: inline (this: *ITrayDeskBand) -> HRESULT { return this.itraydeskband_vtable.DeskBandRegistrationChanged(this); }

vtable :: (obj: *ITrayDeskBand) -> *ITrayDeskBand_VTable { return obj.itraydeskband_vtable; }



IBandHost_UUID :: "B9075C7C-D48E-403f-AB99-D6C77A1084AC";
IBandHost :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ibandhost_vtable: *IBandHost_VTable;
}
IBandHost_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    CreateBand: (this: *IBandHost, rclsidBand: *IID, fAvailable: BOOL, fVisible: BOOL, riid: *IID, ppv: **void) -> HRESULT #cpp_method;

    SetBandAvailability: (this: *IBandHost, rclsidBand: *IID, fAvailable: BOOL) -> HRESULT #cpp_method;

    DestroyBand: (this: *IBandHost, rclsidBand: *IID) -> HRESULT #cpp_method;
}

IBandHost_CreateBand :: inline (this: *IBandHost, rclsidBand: *IID, fAvailable: BOOL, fVisible: BOOL, riid: *IID, ppv: **void) -> HRESULT { return this.ibandhost_vtable.CreateBand(this, rclsidBand, fAvailable, fVisible, riid, ppv); }

IBandHost_SetBandAvailability :: inline (this: *IBandHost, rclsidBand: *IID, fAvailable: BOOL) -> HRESULT { return this.ibandhost_vtable.SetBandAvailability(this, rclsidBand, fAvailable); }

IBandHost_DestroyBand :: inline (this: *IBandHost, rclsidBand: *IID) -> HRESULT { return this.ibandhost_vtable.DestroyBand(this, rclsidBand); }

vtable :: (obj: *IBandHost) -> *IBandHost_VTable { return obj.ibandhost_vtable; }



IComputerInfoChangeNotify_UUID :: "0DF60D92-6818-46d6-B358-D66170DDE466";
IComputerInfoChangeNotify :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; icomputerinfochangenotify_vtable: *IComputerInfoChangeNotify_VTable;
}
IComputerInfoChangeNotify_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    ComputerInfoChanged: (this: *IComputerInfoChangeNotify) -> HRESULT #cpp_method;
}
IComputerInfoChangeNotify_ComputerInfoChanged :: inline (this: *IComputerInfoChangeNotify) -> HRESULT { return this.icomputerinfochangenotify_vtable.ComputerInfoChanged(this); }

vtable :: (obj: *IComputerInfoChangeNotify) -> *IComputerInfoChangeNotify_VTable { return obj.icomputerinfochangenotify_vtable; }



IDesktopGadget_UUID :: "c1646bc4-f298-4f91-a204-eb2dd1709d1a";
IDesktopGadget :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; idesktopgadget_vtable: *IDesktopGadget_VTable;
}
IDesktopGadget_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    RunGadget: (this: *IDesktopGadget, gadgetPath: *s16) -> HRESULT #cpp_method;
}
IDesktopGadget_RunGadget :: inline (this: *IDesktopGadget, gadgetPath: *s16) -> HRESULT { return this.idesktopgadget_vtable.RunGadget(this, gadgetPath); }

vtable :: (obj: *IDesktopGadget) -> *IDesktopGadget_VTable { return obj.idesktopgadget_vtable; }


LIBID_ShellObjects: IID;

CLSID_QueryCancelAutoPlay: CLSID;

CLSID_TimeCategorizer: CLSID;

CLSID_AlphabeticalCategorizer: CLSID;

CLSID_MergedCategorizer: CLSID;

CLSID_ImageProperties: CLSID;

CLSID_CDBurn: CLSID;

CLSID_StartMenuPin: CLSID;

CLSID_WebWizardHost: CLSID;

CLSID_PublishDropTarget: CLSID;

CLSID_PublishingWizard: CLSID;

CLSID_InternetPrintOrdering: CLSID;

CLSID_FolderViewHost: CLSID;

CLSID_ExplorerBrowser: CLSID;

CLSID_ImageRecompress: CLSID;

CLSID_TrayBandSiteService: CLSID;

CLSID_TrayDeskBand: CLSID;

CLSID_AttachmentServices: CLSID;

CLSID_DocPropShellExtension: CLSID;

CLSID_FSCopyHandler: CLSID;

CLSID_PreviousVersions: CLSID;

CLSID_NamespaceTreeControl: CLSID;

CLSID_IENamespaceTreeControl: CLSID;

CLSID_ApplicationAssociationRegistrationUI: CLSID;

CLSID_DesktopGadget: CLSID;

CLSID_AccessibilityDockingService: CLSID;

CLSID_ExecuteFolder: CLSID;

CLSID_VirtualDesktopManager: CLSID;

CLSID_StorageProviderBanners: CLSID;

UNDOCK_REASON :: enum s32 {
    RESOLUTION_CHANGE  :: 0;
    MONITOR_DISCONNECT :: 1;

    UR_RESOLUTION_CHANGE  :: RESOLUTION_CHANGE;
    UR_MONITOR_DISCONNECT :: MONITOR_DISCONNECT;
}


IAccessibilityDockingServiceCallback_UUID :: "157733FD-A592-42E5-B594-248468C5A81B";
IAccessibilityDockingServiceCallback :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iaccessibilitydockingservicecallback_vtable: *IAccessibilityDockingServiceCallback_VTable;
}
IAccessibilityDockingServiceCallback_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Undocked: (this: *IAccessibilityDockingServiceCallback, undockReason: UNDOCK_REASON) -> HRESULT #cpp_method;
}
IAccessibilityDockingServiceCallback_Undocked :: inline (this: *IAccessibilityDockingServiceCallback, undockReason: UNDOCK_REASON) -> HRESULT { return this.iaccessibilitydockingservicecallback_vtable.Undocked(this, undockReason); }

vtable :: (obj: *IAccessibilityDockingServiceCallback) -> *IAccessibilityDockingServiceCallback_VTable { return obj.iaccessibilitydockingservicecallback_vtable; }



IAccessibilityDockingService_UUID :: "8849DC22-CEDF-4C95-998D-051419DD3F76";
IAccessibilityDockingService :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iaccessibilitydockingservice_vtable: *IAccessibilityDockingService_VTable;
}
IAccessibilityDockingService_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetAvailableSize: (this: *IAccessibilityDockingService, hMonitor: HMONITOR, pcxFixed: *u32, pcyMax: *u32) -> HRESULT #cpp_method;

    DockWindow: (this: *IAccessibilityDockingService, hwnd: HWND, hMonitor: HMONITOR, cyRequested: u32, pCallback: *IAccessibilityDockingServiceCallback) -> HRESULT #cpp_method;

    UndockWindow: (this: *IAccessibilityDockingService, hwnd: HWND) -> HRESULT #cpp_method;
}

IAccessibilityDockingService_GetAvailableSize :: inline (this: *IAccessibilityDockingService, hMonitor: HMONITOR, pcxFixed: *u32, pcyMax: *u32) -> HRESULT { return this.iaccessibilitydockingservice_vtable.GetAvailableSize(this, hMonitor, pcxFixed, pcyMax); }

IAccessibilityDockingService_DockWindow :: inline (this: *IAccessibilityDockingService, hwnd: HWND, hMonitor: HMONITOR, cyRequested: u32, pCallback: *IAccessibilityDockingServiceCallback) -> HRESULT { return this.iaccessibilitydockingservice_vtable.DockWindow(this, hwnd, hMonitor, cyRequested, pCallback); }

IAccessibilityDockingService_UndockWindow :: inline (this: *IAccessibilityDockingService, hwnd: HWND) -> HRESULT { return this.iaccessibilitydockingservice_vtable.UndockWindow(this, hwnd); }

vtable :: (obj: *IAccessibilityDockingService) -> *IAccessibilityDockingService_VTable { return obj.iaccessibilitydockingservice_vtable; }



IStorageProviderBanners_UUID :: "5efb46d7-47C0-4b68-acda-ded47c90ec91";
IStorageProviderBanners :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; istorageproviderbanners_vtable: *IStorageProviderBanners_VTable;
}
IStorageProviderBanners_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SetBanner: (this: *IStorageProviderBanners, providerIdentity: *s16, subscriptionId: *s16, contentId: *s16) -> HRESULT #cpp_method;

    ClearBanner: (this: *IStorageProviderBanners, providerIdentity: *s16, subscriptionId: *s16) -> HRESULT #cpp_method;

    ClearAllBanners: (this: *IStorageProviderBanners, providerIdentity: *s16) -> HRESULT #cpp_method;

    GetBanner: (this: *IStorageProviderBanners, providerIdentity: *s16, subscriptionId: *s16, contentId: **s16) -> HRESULT #cpp_method;
}

IStorageProviderBanners_SetBanner :: inline (this: *IStorageProviderBanners, providerIdentity: *s16, subscriptionId: *s16, contentId: *s16) -> HRESULT { return this.istorageproviderbanners_vtable.SetBanner(this, providerIdentity, subscriptionId, contentId); }

IStorageProviderBanners_ClearBanner :: inline (this: *IStorageProviderBanners, providerIdentity: *s16, subscriptionId: *s16) -> HRESULT { return this.istorageproviderbanners_vtable.ClearBanner(this, providerIdentity, subscriptionId); }

IStorageProviderBanners_ClearAllBanners :: inline (this: *IStorageProviderBanners, providerIdentity: *s16) -> HRESULT { return this.istorageproviderbanners_vtable.ClearAllBanners(this, providerIdentity); }

IStorageProviderBanners_GetBanner :: inline (this: *IStorageProviderBanners, providerIdentity: *s16, subscriptionId: *s16, contentId: **s16) -> HRESULT { return this.istorageproviderbanners_vtable.GetBanner(this, providerIdentity, subscriptionId, contentId); }

vtable :: (obj: *IStorageProviderBanners) -> *IStorageProviderBanners_VTable { return obj.istorageproviderbanners_vtable; }



IStorageProviderCopyHook_UUID :: "7bf992a9-af7a-4dba-b2e5-4d080b1ecbc6";
IStorageProviderCopyHook :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; istorageprovidercopyhook_vtable: *IStorageProviderCopyHook_VTable;
}
IStorageProviderCopyHook_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    CopyCallback: (this: *IStorageProviderCopyHook, hwnd: HWND, operation: u32, flags: u32, srcFile: *s16, srcAttribs: u32, destFile: *s16, destAttribs: u32, result: *u32) -> HRESULT #cpp_method;
}
IStorageProviderCopyHook_CopyCallback :: inline (this: *IStorageProviderCopyHook, hwnd: HWND, operation: u32, flags: u32, srcFile: *s16, srcAttribs: u32, destFile: *s16, destAttribs: u32, result: *u32) -> HRESULT { return this.istorageprovidercopyhook_vtable.CopyCallback(this, hwnd, operation, flags, srcFile, srcAttribs, destFile, destAttribs, result); }

vtable :: (obj: *IStorageProviderCopyHook) -> *IStorageProviderCopyHook_VTable { return obj.istorageprovidercopyhook_vtable; }


WebBrowser_V1 :: struct {}

WebBrowser :: struct {}

InternetExplorer :: struct {}

InternetExplorerMedium :: struct {}

ShellBrowserWindow :: struct {}

ShellWindows :: struct {}

ShellUIHelper :: struct {}

ShellNameSpace :: struct {}

CScriptErrorList :: struct {}

CommandStateChangeConstants :: enum s32 {
    UPDATECOMMANDS  :: -1;
    NAVIGATEFORWARD :: 1;
    NAVIGATEBACK    :: 2;

    CSC_UPDATECOMMANDS  :: UPDATECOMMANDS;
    CSC_NAVIGATEFORWARD :: NAVIGATEFORWARD;
    CSC_NAVIGATEBACK    :: NAVIGATEBACK;
}

SecureLockIconConstants :: enum s32 {
    Unsecure          :: 0;
    Mixed             :: 1;
    SecureUnknownBits :: 2;
    Secure40Bit       :: 3;
    Secure56Bit       :: 4;
    SecureFortezza    :: 5;
    Secure128Bit      :: 6;

    secureLockIconUnsecure          :: Unsecure;
    secureLockIconMixed             :: Mixed;
    secureLockIconSecureUnknownBits :: SecureUnknownBits;
    secureLockIconSecure40Bit       :: Secure40Bit;
    secureLockIconSecure56Bit       :: Secure56Bit;
    secureLockIconSecureFortezza    :: SecureFortezza;
    secureLockIconSecure128Bit      :: Secure128Bit;
}

NewProcessCauseConstants :: enum s32 {
    ProtectedModeRedirect :: 1;
}

ShellWindowTypeConstants :: enum s32 {
    EXPLORER  :: 0;
    BROWSER   :: 1;
    _3RDPARTY :: 2;
    CALLBACK  :: 4;
    DESKTOP   :: 8;

    SWC_EXPLORER :: EXPLORER;
    SWC_BROWSER  :: BROWSER;
    SWC_3RDPARTY :: _3RDPARTY;
    SWC_CALLBACK :: CALLBACK;
    SWC_DESKTOP  :: DESKTOP;
}

ShellWindowFindWindowOptions :: enum s32 {
    NEEDDISPATCH   :: 1;
    INCLUDEPENDING :: 2;
    COOKIEPASSED   :: 4;

    SWFO_NEEDDISPATCH   :: NEEDDISPATCH;
    SWFO_INCLUDEPENDING :: INCLUDEPENDING;
    SWFO_COOKIEPASSED   :: COOKIEPASSED;
}

LIBID_SHDocVw: IID;

BrowserNavConstants :: enum s32 {
    OpenInNewWindow       :: 1;
    NoHistory             :: 2;
    NoReadFromCache       :: 4;
    NoWriteToCache        :: 8;
    AllowAutosearch       :: 16;
    BrowserBar            :: 32;
    Hyperlink             :: 64;
    EnforceRestricted     :: 128;
    NewWindowsManaged     :: 256;
    UntrustedForDownload  :: 512;
    TrustedForActiveX     :: 1024;
    OpenInNewTab          :: 2048;
    OpenInBackgroundTab   :: 4096;
    KeepWordWheelText     :: 8192;
    VirtualTab            :: 16384;
    BlockRedirectsXDomain :: 32768;
    OpenNewForegroundTab  :: 65536;
    TravelLogScreenshot   :: 131072;
    DeferUnload           :: 262144;
    Speculative           :: 524288;
    SuggestNewWindow      :: 1048576;
    SuggestNewTab         :: 2097152;
    Reserved1             :: 4194304;
    HomepageNavigate      :: 8388608;
    Refresh               :: 16777216;
    HostNavigation        :: 33554432;
    Reserved2             :: 67108864;
    Reserved3             :: 134217728;
    Reserved4             :: 268435456;
    Reserved5             :: 536870912;
    Reserved6             :: 1073741824;
    Reserved7             :: -2147483648;

    navOpenInNewWindow       :: OpenInNewWindow;
    navNoHistory             :: NoHistory;
    navNoReadFromCache       :: NoReadFromCache;
    navNoWriteToCache        :: NoWriteToCache;
    navAllowAutosearch       :: AllowAutosearch;
    navBrowserBar            :: BrowserBar;
    navHyperlink             :: Hyperlink;
    navEnforceRestricted     :: EnforceRestricted;
    navNewWindowsManaged     :: NewWindowsManaged;
    navUntrustedForDownload  :: UntrustedForDownload;
    navTrustedForActiveX     :: TrustedForActiveX;
    navOpenInNewTab          :: OpenInNewTab;
    navOpenInBackgroundTab   :: OpenInBackgroundTab;
    navKeepWordWheelText     :: KeepWordWheelText;
    navVirtualTab            :: VirtualTab;
    navBlockRedirectsXDomain :: BlockRedirectsXDomain;
    navOpenNewForegroundTab  :: OpenNewForegroundTab;
    navTravelLogScreenshot   :: TravelLogScreenshot;
    navDeferUnload           :: DeferUnload;
    navSpeculative           :: Speculative;
    navSuggestNewWindow      :: SuggestNewWindow;
    navSuggestNewTab         :: SuggestNewTab;
    navReserved1             :: Reserved1;
    navHomepageNavigate      :: HomepageNavigate;
    navRefresh               :: Refresh;
    navHostNavigation        :: HostNavigation;
    navReserved2             :: Reserved2;
    navReserved3             :: Reserved3;
    navReserved4             :: Reserved4;
    navReserved5             :: Reserved5;
    navReserved6             :: Reserved6;
    navReserved7             :: Reserved7;
}

RefreshConstants :: enum s32 {
    NORMAL     :: 0;
    IFEXPIRED  :: 1;
    COMPLETELY :: 3;

    REFRESH_NORMAL     :: NORMAL;
    REFRESH_IFEXPIRED  :: IFEXPIRED;
    REFRESH_COMPLETELY :: COMPLETELY;
}


IWebBrowser_UUID :: "EAB22AC1-30C1-11CF-A7EB-0000C05BAE0B";
IWebBrowser :: struct {
    #as using idispatch: IDispatch;
    #place idispatch; iwebbrowser_vtable: *IWebBrowser_VTable;
}
IWebBrowser_VTable :: struct #type_info_none {
    using idispatch: IDispatch_VTable;
    GoBack: (this: *IWebBrowser) -> HRESULT #cpp_method;

    GoForward: (this: *IWebBrowser) -> HRESULT #cpp_method;

    GoHome: (this: *IWebBrowser) -> HRESULT #cpp_method;

    GoSearch: (this: *IWebBrowser) -> HRESULT #cpp_method;

    Navigate: (this: *IWebBrowser, URL: BSTR, Flags: *VARIANT, TargetFrameName: *VARIANT, PostData: *VARIANT, Headers: *VARIANT) -> HRESULT #cpp_method;

    Refresh: (this: *IWebBrowser) -> HRESULT #cpp_method;

    Refresh2: (this: *IWebBrowser, Level: *VARIANT) -> HRESULT #cpp_method;

    Stop: (this: *IWebBrowser) -> HRESULT #cpp_method;

    get_Application: (this: *IWebBrowser, ppDisp: **IDispatch) -> HRESULT #cpp_method;

    get_Parent: (this: *IWebBrowser, ppDisp: **IDispatch) -> HRESULT #cpp_method;

    get_Container: (this: *IWebBrowser, ppDisp: **IDispatch) -> HRESULT #cpp_method;

    get_Document: (this: *IWebBrowser, ppDisp: **IDispatch) -> HRESULT #cpp_method;

    get_TopLevelContainer: (this: *IWebBrowser, pBool: *VARIANT_BOOL) -> HRESULT #cpp_method;

    get_Type: (this: *IWebBrowser, Type: *BSTR) -> HRESULT #cpp_method;

    get_Left: (this: *IWebBrowser, pl: *s32) -> HRESULT #cpp_method;

    put_Left: (this: *IWebBrowser, Left: s32) -> HRESULT #cpp_method;

    get_Top: (this: *IWebBrowser, pl: *s32) -> HRESULT #cpp_method;

    put_Top: (this: *IWebBrowser, Top: s32) -> HRESULT #cpp_method;

    get_Width: (this: *IWebBrowser, pl: *s32) -> HRESULT #cpp_method;

    put_Width: (this: *IWebBrowser, Width: s32) -> HRESULT #cpp_method;

    get_Height: (this: *IWebBrowser, pl: *s32) -> HRESULT #cpp_method;

    put_Height: (this: *IWebBrowser, Height: s32) -> HRESULT #cpp_method;

    get_LocationName: (this: *IWebBrowser, LocationName: *BSTR) -> HRESULT #cpp_method;

    get_LocationURL: (this: *IWebBrowser, LocationURL: *BSTR) -> HRESULT #cpp_method;

    get_Busy: (this: *IWebBrowser, pBool: *VARIANT_BOOL) -> HRESULT #cpp_method;
}

IWebBrowser_GoBack :: inline (this: *IWebBrowser) -> HRESULT { return this.iwebbrowser_vtable.GoBack(this); }

IWebBrowser_GoForward :: inline (this: *IWebBrowser) -> HRESULT { return this.iwebbrowser_vtable.GoForward(this); }

IWebBrowser_GoHome :: inline (this: *IWebBrowser) -> HRESULT { return this.iwebbrowser_vtable.GoHome(this); }

IWebBrowser_GoSearch :: inline (this: *IWebBrowser) -> HRESULT { return this.iwebbrowser_vtable.GoSearch(this); }

IWebBrowser_Navigate :: inline (this: *IWebBrowser, URL: BSTR, Flags: *VARIANT, TargetFrameName: *VARIANT, PostData: *VARIANT, Headers: *VARIANT) -> HRESULT { return this.iwebbrowser_vtable.Navigate(this, URL, Flags, TargetFrameName, PostData, Headers); }

IWebBrowser_Refresh :: inline (this: *IWebBrowser) -> HRESULT { return this.iwebbrowser_vtable.Refresh(this); }

IWebBrowser_Refresh2 :: inline (this: *IWebBrowser, Level: *VARIANT) -> HRESULT { return this.iwebbrowser_vtable.Refresh2(this, Level); }

IWebBrowser_Stop :: inline (this: *IWebBrowser) -> HRESULT { return this.iwebbrowser_vtable.Stop(this); }

IWebBrowser_get_Application :: inline (this: *IWebBrowser, ppDisp: **IDispatch) -> HRESULT { return this.iwebbrowser_vtable.get_Application(this, ppDisp); }

IWebBrowser_get_Parent :: inline (this: *IWebBrowser, ppDisp: **IDispatch) -> HRESULT { return this.iwebbrowser_vtable.get_Parent(this, ppDisp); }

IWebBrowser_get_Container :: inline (this: *IWebBrowser, ppDisp: **IDispatch) -> HRESULT { return this.iwebbrowser_vtable.get_Container(this, ppDisp); }

IWebBrowser_get_Document :: inline (this: *IWebBrowser, ppDisp: **IDispatch) -> HRESULT { return this.iwebbrowser_vtable.get_Document(this, ppDisp); }

IWebBrowser_get_TopLevelContainer :: inline (this: *IWebBrowser, pBool: *VARIANT_BOOL) -> HRESULT { return this.iwebbrowser_vtable.get_TopLevelContainer(this, pBool); }

IWebBrowser_get_Type :: inline (this: *IWebBrowser, Type: *BSTR) -> HRESULT { return this.iwebbrowser_vtable.get_Type(this, Type); }

IWebBrowser_get_Left :: inline (this: *IWebBrowser, pl: *s32) -> HRESULT { return this.iwebbrowser_vtable.get_Left(this, pl); }

IWebBrowser_put_Left :: inline (this: *IWebBrowser, Left: s32) -> HRESULT { return this.iwebbrowser_vtable.put_Left(this, Left); }

IWebBrowser_get_Top :: inline (this: *IWebBrowser, pl: *s32) -> HRESULT { return this.iwebbrowser_vtable.get_Top(this, pl); }

IWebBrowser_put_Top :: inline (this: *IWebBrowser, Top: s32) -> HRESULT { return this.iwebbrowser_vtable.put_Top(this, Top); }

IWebBrowser_get_Width :: inline (this: *IWebBrowser, pl: *s32) -> HRESULT { return this.iwebbrowser_vtable.get_Width(this, pl); }

IWebBrowser_put_Width :: inline (this: *IWebBrowser, Width: s32) -> HRESULT { return this.iwebbrowser_vtable.put_Width(this, Width); }

IWebBrowser_get_Height :: inline (this: *IWebBrowser, pl: *s32) -> HRESULT { return this.iwebbrowser_vtable.get_Height(this, pl); }

IWebBrowser_put_Height :: inline (this: *IWebBrowser, Height: s32) -> HRESULT { return this.iwebbrowser_vtable.put_Height(this, Height); }

IWebBrowser_get_LocationName :: inline (this: *IWebBrowser, LocationName: *BSTR) -> HRESULT { return this.iwebbrowser_vtable.get_LocationName(this, LocationName); }

IWebBrowser_get_LocationURL :: inline (this: *IWebBrowser, LocationURL: *BSTR) -> HRESULT { return this.iwebbrowser_vtable.get_LocationURL(this, LocationURL); }

IWebBrowser_get_Busy :: inline (this: *IWebBrowser, pBool: *VARIANT_BOOL) -> HRESULT { return this.iwebbrowser_vtable.get_Busy(this, pBool); }

vtable :: (obj: *IWebBrowser) -> *IWebBrowser_VTable { return obj.iwebbrowser_vtable; }


DIID_DWebBrowserEvents: IID;


DWebBrowserEvents_UUID :: "EAB22AC2-30C1-11CF-A7EB-0000C05BAE0B";
DWebBrowserEvents :: struct {
    #as using idispatch: IDispatch;
}


IWebBrowserApp_UUID :: "0002DF05-0000-0000-C000-000000000046";
IWebBrowserApp :: struct {
    #as using iwebbrowser: IWebBrowser;
    #place iwebbrowser; iwebbrowserapp_vtable: *IWebBrowserApp_VTable;
}
IWebBrowserApp_VTable :: struct #type_info_none {
    using iwebbrowser: IWebBrowser_VTable;
    Quit: (this: *IWebBrowserApp) -> HRESULT #cpp_method;

    ClientToWindow: (this: *IWebBrowserApp, pcx: *s32, pcy: *s32) -> HRESULT #cpp_method;

    PutProperty: (this: *IWebBrowserApp, Property: BSTR, vtValue: VARIANT) -> HRESULT #cpp_method;

    GetProperty: (this: *IWebBrowserApp, Property: BSTR, pvtValue: *VARIANT) -> HRESULT #cpp_method;

    get_Name: (this: *IWebBrowserApp, Name: *BSTR) -> HRESULT #cpp_method;

    get_HWND: (this: *IWebBrowserApp, pHWND: *SHANDLE_PTR) -> HRESULT #cpp_method;

    get_FullName: (this: *IWebBrowserApp, FullName: *BSTR) -> HRESULT #cpp_method;

    get_Path: (this: *IWebBrowserApp, Path: *BSTR) -> HRESULT #cpp_method;

    get_Visible: (this: *IWebBrowserApp, pBool: *VARIANT_BOOL) -> HRESULT #cpp_method;

    put_Visible: (this: *IWebBrowserApp, Value: VARIANT_BOOL) -> HRESULT #cpp_method;

    get_StatusBar: (this: *IWebBrowserApp, pBool: *VARIANT_BOOL) -> HRESULT #cpp_method;

    put_StatusBar: (this: *IWebBrowserApp, Value: VARIANT_BOOL) -> HRESULT #cpp_method;

    get_StatusText: (this: *IWebBrowserApp, StatusText: *BSTR) -> HRESULT #cpp_method;

    put_StatusText: (this: *IWebBrowserApp, StatusText: BSTR) -> HRESULT #cpp_method;

    get_ToolBar: (this: *IWebBrowserApp, Value: *s32) -> HRESULT #cpp_method;

    put_ToolBar: (this: *IWebBrowserApp, Value: s32) -> HRESULT #cpp_method;

    get_MenuBar: (this: *IWebBrowserApp, Value: *VARIANT_BOOL) -> HRESULT #cpp_method;

    put_MenuBar: (this: *IWebBrowserApp, Value: VARIANT_BOOL) -> HRESULT #cpp_method;

    get_FullScreen: (this: *IWebBrowserApp, pbFullScreen: *VARIANT_BOOL) -> HRESULT #cpp_method;

    put_FullScreen: (this: *IWebBrowserApp, bFullScreen: VARIANT_BOOL) -> HRESULT #cpp_method;
}

IWebBrowserApp_Quit :: inline (this: *IWebBrowserApp) -> HRESULT { return this.iwebbrowserapp_vtable.Quit(this); }

IWebBrowserApp_ClientToWindow :: inline (this: *IWebBrowserApp, pcx: *s32, pcy: *s32) -> HRESULT { return this.iwebbrowserapp_vtable.ClientToWindow(this, pcx, pcy); }

IWebBrowserApp_PutProperty :: inline (this: *IWebBrowserApp, Property: BSTR, vtValue: VARIANT) -> HRESULT { return this.iwebbrowserapp_vtable.PutProperty(this, Property, vtValue); }

IWebBrowserApp_GetProperty :: inline (this: *IWebBrowserApp, Property: BSTR, pvtValue: *VARIANT) -> HRESULT { return this.iwebbrowserapp_vtable.GetProperty(this, Property, pvtValue); }

IWebBrowserApp_get_Name :: inline (this: *IWebBrowserApp, Name: *BSTR) -> HRESULT { return this.iwebbrowserapp_vtable.get_Name(this, Name); }

IWebBrowserApp_get_HWND :: inline (this: *IWebBrowserApp, pHWND: *SHANDLE_PTR) -> HRESULT { return this.iwebbrowserapp_vtable.get_HWND(this, pHWND); }

IWebBrowserApp_get_FullName :: inline (this: *IWebBrowserApp, FullName: *BSTR) -> HRESULT { return this.iwebbrowserapp_vtable.get_FullName(this, FullName); }

IWebBrowserApp_get_Path :: inline (this: *IWebBrowserApp, Path: *BSTR) -> HRESULT { return this.iwebbrowserapp_vtable.get_Path(this, Path); }

IWebBrowserApp_get_Visible :: inline (this: *IWebBrowserApp, pBool: *VARIANT_BOOL) -> HRESULT { return this.iwebbrowserapp_vtable.get_Visible(this, pBool); }

IWebBrowserApp_put_Visible :: inline (this: *IWebBrowserApp, Value: VARIANT_BOOL) -> HRESULT { return this.iwebbrowserapp_vtable.put_Visible(this, Value); }

IWebBrowserApp_get_StatusBar :: inline (this: *IWebBrowserApp, pBool: *VARIANT_BOOL) -> HRESULT { return this.iwebbrowserapp_vtable.get_StatusBar(this, pBool); }

IWebBrowserApp_put_StatusBar :: inline (this: *IWebBrowserApp, Value: VARIANT_BOOL) -> HRESULT { return this.iwebbrowserapp_vtable.put_StatusBar(this, Value); }

IWebBrowserApp_get_StatusText :: inline (this: *IWebBrowserApp, StatusText: *BSTR) -> HRESULT { return this.iwebbrowserapp_vtable.get_StatusText(this, StatusText); }

IWebBrowserApp_put_StatusText :: inline (this: *IWebBrowserApp, StatusText: BSTR) -> HRESULT { return this.iwebbrowserapp_vtable.put_StatusText(this, StatusText); }

IWebBrowserApp_get_ToolBar :: inline (this: *IWebBrowserApp, Value: *s32) -> HRESULT { return this.iwebbrowserapp_vtable.get_ToolBar(this, Value); }

IWebBrowserApp_put_ToolBar :: inline (this: *IWebBrowserApp, Value: s32) -> HRESULT { return this.iwebbrowserapp_vtable.put_ToolBar(this, Value); }

IWebBrowserApp_get_MenuBar :: inline (this: *IWebBrowserApp, Value: *VARIANT_BOOL) -> HRESULT { return this.iwebbrowserapp_vtable.get_MenuBar(this, Value); }

IWebBrowserApp_put_MenuBar :: inline (this: *IWebBrowserApp, Value: VARIANT_BOOL) -> HRESULT { return this.iwebbrowserapp_vtable.put_MenuBar(this, Value); }

IWebBrowserApp_get_FullScreen :: inline (this: *IWebBrowserApp, pbFullScreen: *VARIANT_BOOL) -> HRESULT { return this.iwebbrowserapp_vtable.get_FullScreen(this, pbFullScreen); }

IWebBrowserApp_put_FullScreen :: inline (this: *IWebBrowserApp, bFullScreen: VARIANT_BOOL) -> HRESULT { return this.iwebbrowserapp_vtable.put_FullScreen(this, bFullScreen); }

vtable :: (obj: *IWebBrowserApp) -> *IWebBrowserApp_VTable { return obj.iwebbrowserapp_vtable; }



IWebBrowser2_UUID :: "D30C1661-CDAF-11d0-8A3E-00C04FC9E26E";
IWebBrowser2 :: struct {
    #as using iwebbrowserapp: IWebBrowserApp;
    #place iwebbrowserapp; iwebbrowser2_vtable: *IWebBrowser2_VTable;
}
IWebBrowser2_VTable :: struct #type_info_none {
    using iwebbrowserapp: IWebBrowserApp_VTable;
    Navigate2: (this: *IWebBrowser2, URL: *VARIANT, Flags: *VARIANT, TargetFrameName: *VARIANT, PostData: *VARIANT, Headers: *VARIANT) -> HRESULT #cpp_method;

    QueryStatusWB: (this: *IWebBrowser2, cmdID: OLECMDID, pcmdf: *OLECMDF) -> HRESULT #cpp_method;

    ExecWB: (this: *IWebBrowser2, cmdID: OLECMDID, cmdexecopt: OLECMDEXECOPT, pvaIn: *VARIANT, pvaOut: *VARIANT) -> HRESULT #cpp_method;

    ShowBrowserBar: (this: *IWebBrowser2, pvaClsid: *VARIANT, pvarShow: *VARIANT, pvarSize: *VARIANT) -> HRESULT #cpp_method;

    get_ReadyState: (this: *IWebBrowser2, plReadyState: *READYSTATE) -> HRESULT #cpp_method;

    get_Offline: (this: *IWebBrowser2, pbOffline: *VARIANT_BOOL) -> HRESULT #cpp_method;

    put_Offline: (this: *IWebBrowser2, bOffline: VARIANT_BOOL) -> HRESULT #cpp_method;

    get_Silent: (this: *IWebBrowser2, pbSilent: *VARIANT_BOOL) -> HRESULT #cpp_method;

    put_Silent: (this: *IWebBrowser2, bSilent: VARIANT_BOOL) -> HRESULT #cpp_method;

    get_RegisterAsBrowser: (this: *IWebBrowser2, pbRegister: *VARIANT_BOOL) -> HRESULT #cpp_method;

    put_RegisterAsBrowser: (this: *IWebBrowser2, bRegister: VARIANT_BOOL) -> HRESULT #cpp_method;

    get_RegisterAsDropTarget: (this: *IWebBrowser2, pbRegister: *VARIANT_BOOL) -> HRESULT #cpp_method;

    put_RegisterAsDropTarget: (this: *IWebBrowser2, bRegister: VARIANT_BOOL) -> HRESULT #cpp_method;

    get_TheaterMode: (this: *IWebBrowser2, pbRegister: *VARIANT_BOOL) -> HRESULT #cpp_method;

    put_TheaterMode: (this: *IWebBrowser2, bRegister: VARIANT_BOOL) -> HRESULT #cpp_method;

    get_AddressBar: (this: *IWebBrowser2, Value: *VARIANT_BOOL) -> HRESULT #cpp_method;

    put_AddressBar: (this: *IWebBrowser2, Value: VARIANT_BOOL) -> HRESULT #cpp_method;

    get_Resizable: (this: *IWebBrowser2, Value: *VARIANT_BOOL) -> HRESULT #cpp_method;

    put_Resizable: (this: *IWebBrowser2, Value: VARIANT_BOOL) -> HRESULT #cpp_method;
}

IWebBrowser2_Navigate2 :: inline (this: *IWebBrowser2, URL: *VARIANT, Flags: *VARIANT, TargetFrameName: *VARIANT, PostData: *VARIANT, Headers: *VARIANT) -> HRESULT { return this.iwebbrowser2_vtable.Navigate2(this, URL, Flags, TargetFrameName, PostData, Headers); }

IWebBrowser2_QueryStatusWB :: inline (this: *IWebBrowser2, cmdID: OLECMDID, pcmdf: *OLECMDF) -> HRESULT { return this.iwebbrowser2_vtable.QueryStatusWB(this, cmdID, pcmdf); }

IWebBrowser2_ExecWB :: inline (this: *IWebBrowser2, cmdID: OLECMDID, cmdexecopt: OLECMDEXECOPT, pvaIn: *VARIANT, pvaOut: *VARIANT) -> HRESULT { return this.iwebbrowser2_vtable.ExecWB(this, cmdID, cmdexecopt, pvaIn, pvaOut); }

IWebBrowser2_ShowBrowserBar :: inline (this: *IWebBrowser2, pvaClsid: *VARIANT, pvarShow: *VARIANT, pvarSize: *VARIANT) -> HRESULT { return this.iwebbrowser2_vtable.ShowBrowserBar(this, pvaClsid, pvarShow, pvarSize); }

IWebBrowser2_get_ReadyState :: inline (this: *IWebBrowser2, plReadyState: *READYSTATE) -> HRESULT { return this.iwebbrowser2_vtable.get_ReadyState(this, plReadyState); }

IWebBrowser2_get_Offline :: inline (this: *IWebBrowser2, pbOffline: *VARIANT_BOOL) -> HRESULT { return this.iwebbrowser2_vtable.get_Offline(this, pbOffline); }

IWebBrowser2_put_Offline :: inline (this: *IWebBrowser2, bOffline: VARIANT_BOOL) -> HRESULT { return this.iwebbrowser2_vtable.put_Offline(this, bOffline); }

IWebBrowser2_get_Silent :: inline (this: *IWebBrowser2, pbSilent: *VARIANT_BOOL) -> HRESULT { return this.iwebbrowser2_vtable.get_Silent(this, pbSilent); }

IWebBrowser2_put_Silent :: inline (this: *IWebBrowser2, bSilent: VARIANT_BOOL) -> HRESULT { return this.iwebbrowser2_vtable.put_Silent(this, bSilent); }

IWebBrowser2_get_RegisterAsBrowser :: inline (this: *IWebBrowser2, pbRegister: *VARIANT_BOOL) -> HRESULT { return this.iwebbrowser2_vtable.get_RegisterAsBrowser(this, pbRegister); }

IWebBrowser2_put_RegisterAsBrowser :: inline (this: *IWebBrowser2, bRegister: VARIANT_BOOL) -> HRESULT { return this.iwebbrowser2_vtable.put_RegisterAsBrowser(this, bRegister); }

IWebBrowser2_get_RegisterAsDropTarget :: inline (this: *IWebBrowser2, pbRegister: *VARIANT_BOOL) -> HRESULT { return this.iwebbrowser2_vtable.get_RegisterAsDropTarget(this, pbRegister); }

IWebBrowser2_put_RegisterAsDropTarget :: inline (this: *IWebBrowser2, bRegister: VARIANT_BOOL) -> HRESULT { return this.iwebbrowser2_vtable.put_RegisterAsDropTarget(this, bRegister); }

IWebBrowser2_get_TheaterMode :: inline (this: *IWebBrowser2, pbRegister: *VARIANT_BOOL) -> HRESULT { return this.iwebbrowser2_vtable.get_TheaterMode(this, pbRegister); }

IWebBrowser2_put_TheaterMode :: inline (this: *IWebBrowser2, bRegister: VARIANT_BOOL) -> HRESULT { return this.iwebbrowser2_vtable.put_TheaterMode(this, bRegister); }

IWebBrowser2_get_AddressBar :: inline (this: *IWebBrowser2, Value: *VARIANT_BOOL) -> HRESULT { return this.iwebbrowser2_vtable.get_AddressBar(this, Value); }

IWebBrowser2_put_AddressBar :: inline (this: *IWebBrowser2, Value: VARIANT_BOOL) -> HRESULT { return this.iwebbrowser2_vtable.put_AddressBar(this, Value); }

IWebBrowser2_get_Resizable :: inline (this: *IWebBrowser2, Value: *VARIANT_BOOL) -> HRESULT { return this.iwebbrowser2_vtable.get_Resizable(this, Value); }

IWebBrowser2_put_Resizable :: inline (this: *IWebBrowser2, Value: VARIANT_BOOL) -> HRESULT { return this.iwebbrowser2_vtable.put_Resizable(this, Value); }

vtable :: (obj: *IWebBrowser2) -> *IWebBrowser2_VTable { return obj.iwebbrowser2_vtable; }


DIID_DWebBrowserEvents2: IID;


DWebBrowserEvents2_UUID :: "34A715A0-6587-11D0-924A-0020AFC7AC4D";
DWebBrowserEvents2 :: struct {
    #as using idispatch: IDispatch;
}

CLSID_WebBrowser_V1: CLSID;

CLSID_WebBrowser: CLSID;

CLSID_InternetExplorer: CLSID;

CLSID_InternetExplorerMedium: CLSID;

CLSID_ShellBrowserWindow: CLSID;

DIID_DShellWindowsEvents: IID;


DShellWindowsEvents_UUID :: "fe4106e0-399a-11d0-a48c-00a0c90a8f39";
DShellWindowsEvents :: struct {
    #as using idispatch: IDispatch;
}


IShellWindows_UUID :: "85CB6900-4D95-11CF-960C-0080C7F4EE85";
IShellWindows :: struct {
    #as using idispatch: IDispatch;
    #place idispatch; ishellwindows_vtable: *IShellWindows_VTable;
}
IShellWindows_VTable :: struct #type_info_none {
    using idispatch: IDispatch_VTable;
    get_Count: (this: *IShellWindows, Count: *s32) -> HRESULT #cpp_method;

    Item: (this: *IShellWindows, index: VARIANT, Folder: **IDispatch) -> HRESULT #cpp_method;

    _NewEnum: (this: *IShellWindows, ppunk: **IUnknown) -> HRESULT #cpp_method;

    Register: (this: *IShellWindows, pid: *IDispatch, hwnd: s32, swClass: s32, plCookie: *s32) -> HRESULT #cpp_method;

    RegisterPending: (this: *IShellWindows, lThreadId: s32, pvarloc: *VARIANT, pvarlocRoot: *VARIANT, swClass: s32, plCookie: *s32) -> HRESULT #cpp_method;

    Revoke: (this: *IShellWindows, lCookie: s32) -> HRESULT #cpp_method;

    OnNavigate: (this: *IShellWindows, lCookie: s32, pvarLoc: *VARIANT) -> HRESULT #cpp_method;

    OnActivated: (this: *IShellWindows, lCookie: s32, fActive: VARIANT_BOOL) -> HRESULT #cpp_method;

    FindWindowSW: (this: *IShellWindows, pvarLoc: *VARIANT, pvarLocRoot: *VARIANT, swClass: s32, phwnd: *s32, swfwOptions: s32, ppdispOut: **IDispatch) -> HRESULT #cpp_method;

    OnCreated: (this: *IShellWindows, lCookie: s32, punk: *IUnknown) -> HRESULT #cpp_method;

    ProcessAttachDetach: (this: *IShellWindows, fAttach: VARIANT_BOOL) -> HRESULT #cpp_method;
}

IShellWindows_get_Count :: inline (this: *IShellWindows, Count: *s32) -> HRESULT { return this.ishellwindows_vtable.get_Count(this, Count); }

IShellWindows_Item :: inline (this: *IShellWindows, index: VARIANT, Folder: **IDispatch) -> HRESULT { return this.ishellwindows_vtable.Item(this, index, Folder); }

IShellWindows__NewEnum :: inline (this: *IShellWindows, ppunk: **IUnknown) -> HRESULT { return this.ishellwindows_vtable._NewEnum(this, ppunk); }

IShellWindows_Register :: inline (this: *IShellWindows, pid: *IDispatch, hwnd: s32, swClass: s32, plCookie: *s32) -> HRESULT { return this.ishellwindows_vtable.Register(this, pid, hwnd, swClass, plCookie); }

IShellWindows_RegisterPending :: inline (this: *IShellWindows, lThreadId: s32, pvarloc: *VARIANT, pvarlocRoot: *VARIANT, swClass: s32, plCookie: *s32) -> HRESULT { return this.ishellwindows_vtable.RegisterPending(this, lThreadId, pvarloc, pvarlocRoot, swClass, plCookie); }

IShellWindows_Revoke :: inline (this: *IShellWindows, lCookie: s32) -> HRESULT { return this.ishellwindows_vtable.Revoke(this, lCookie); }

IShellWindows_OnNavigate :: inline (this: *IShellWindows, lCookie: s32, pvarLoc: *VARIANT) -> HRESULT { return this.ishellwindows_vtable.OnNavigate(this, lCookie, pvarLoc); }

IShellWindows_OnActivated :: inline (this: *IShellWindows, lCookie: s32, fActive: VARIANT_BOOL) -> HRESULT { return this.ishellwindows_vtable.OnActivated(this, lCookie, fActive); }

IShellWindows_FindWindowSW :: inline (this: *IShellWindows, pvarLoc: *VARIANT, pvarLocRoot: *VARIANT, swClass: s32, phwnd: *s32, swfwOptions: s32, ppdispOut: **IDispatch) -> HRESULT { return this.ishellwindows_vtable.FindWindowSW(this, pvarLoc, pvarLocRoot, swClass, phwnd, swfwOptions, ppdispOut); }

IShellWindows_OnCreated :: inline (this: *IShellWindows, lCookie: s32, punk: *IUnknown) -> HRESULT { return this.ishellwindows_vtable.OnCreated(this, lCookie, punk); }

IShellWindows_ProcessAttachDetach :: inline (this: *IShellWindows, fAttach: VARIANT_BOOL) -> HRESULT { return this.ishellwindows_vtable.ProcessAttachDetach(this, fAttach); }

vtable :: (obj: *IShellWindows) -> *IShellWindows_VTable { return obj.ishellwindows_vtable; }


CLSID_ShellWindows: CLSID;


IShellUIHelper_UUID :: "729FE2F8-1EA8-11d1-8F85-00C04FC2FBE1";
IShellUIHelper :: struct {
    #as using idispatch: IDispatch;
    #place idispatch; ishelluihelper_vtable: *IShellUIHelper_VTable;
}
IShellUIHelper_VTable :: struct #type_info_none {
    using idispatch: IDispatch_VTable;
    ResetFirstBootMode: (this: *IShellUIHelper) -> HRESULT #cpp_method;

    ResetSafeMode: (this: *IShellUIHelper) -> HRESULT #cpp_method;

    RefreshOfflineDesktop: (this: *IShellUIHelper) -> HRESULT #cpp_method;

    AddFavorite: (this: *IShellUIHelper, URL: BSTR, Title: *VARIANT) -> HRESULT #cpp_method;

    AddChannel: (this: *IShellUIHelper, URL: BSTR) -> HRESULT #cpp_method;

    AddDesktopComponent: (this: *IShellUIHelper, URL: BSTR, Type: BSTR, Left: *VARIANT, Top: *VARIANT, Width: *VARIANT, Height: *VARIANT) -> HRESULT #cpp_method;

    IsSubscribed: (this: *IShellUIHelper, URL: BSTR, pBool: *VARIANT_BOOL) -> HRESULT #cpp_method;

    NavigateAndFind: (this: *IShellUIHelper, URL: BSTR, strQuery: BSTR, varTargetFrame: *VARIANT) -> HRESULT #cpp_method;

    ImportExportFavorites: (this: *IShellUIHelper, fImport: VARIANT_BOOL, strImpExpPath: BSTR) -> HRESULT #cpp_method;

    AutoCompleteSaveForm: (this: *IShellUIHelper, Form: *VARIANT) -> HRESULT #cpp_method;

    AutoScan: (this: *IShellUIHelper, strSearch: BSTR, strFailureUrl: BSTR, pvarTargetFrame: *VARIANT) -> HRESULT #cpp_method;

    AutoCompleteAttach: (this: *IShellUIHelper, Reserved: *VARIANT) -> HRESULT #cpp_method;

    ShowBrowserUI: (this: *IShellUIHelper, bstrName: BSTR, pvarIn: *VARIANT, pvarOut: *VARIANT) -> HRESULT #cpp_method;
}

IShellUIHelper_ResetFirstBootMode :: inline (this: *IShellUIHelper) -> HRESULT { return this.ishelluihelper_vtable.ResetFirstBootMode(this); }

IShellUIHelper_ResetSafeMode :: inline (this: *IShellUIHelper) -> HRESULT { return this.ishelluihelper_vtable.ResetSafeMode(this); }

IShellUIHelper_RefreshOfflineDesktop :: inline (this: *IShellUIHelper) -> HRESULT { return this.ishelluihelper_vtable.RefreshOfflineDesktop(this); }

IShellUIHelper_AddFavorite :: inline (this: *IShellUIHelper, URL: BSTR, Title: *VARIANT) -> HRESULT { return this.ishelluihelper_vtable.AddFavorite(this, URL, Title); }

IShellUIHelper_AddChannel :: inline (this: *IShellUIHelper, URL: BSTR) -> HRESULT { return this.ishelluihelper_vtable.AddChannel(this, URL); }

IShellUIHelper_AddDesktopComponent :: inline (this: *IShellUIHelper, URL: BSTR, Type: BSTR, Left: *VARIANT, Top: *VARIANT, Width: *VARIANT, Height: *VARIANT) -> HRESULT { return this.ishelluihelper_vtable.AddDesktopComponent(this, URL, Type, Left, Top, Width, Height); }

IShellUIHelper_IsSubscribed :: inline (this: *IShellUIHelper, URL: BSTR, pBool: *VARIANT_BOOL) -> HRESULT { return this.ishelluihelper_vtable.IsSubscribed(this, URL, pBool); }

IShellUIHelper_NavigateAndFind :: inline (this: *IShellUIHelper, URL: BSTR, strQuery: BSTR, varTargetFrame: *VARIANT) -> HRESULT { return this.ishelluihelper_vtable.NavigateAndFind(this, URL, strQuery, varTargetFrame); }

IShellUIHelper_ImportExportFavorites :: inline (this: *IShellUIHelper, fImport: VARIANT_BOOL, strImpExpPath: BSTR) -> HRESULT { return this.ishelluihelper_vtable.ImportExportFavorites(this, fImport, strImpExpPath); }

IShellUIHelper_AutoCompleteSaveForm :: inline (this: *IShellUIHelper, Form: *VARIANT) -> HRESULT { return this.ishelluihelper_vtable.AutoCompleteSaveForm(this, Form); }

IShellUIHelper_AutoScan :: inline (this: *IShellUIHelper, strSearch: BSTR, strFailureUrl: BSTR, pvarTargetFrame: *VARIANT) -> HRESULT { return this.ishelluihelper_vtable.AutoScan(this, strSearch, strFailureUrl, pvarTargetFrame); }

IShellUIHelper_AutoCompleteAttach :: inline (this: *IShellUIHelper, Reserved: *VARIANT) -> HRESULT { return this.ishelluihelper_vtable.AutoCompleteAttach(this, Reserved); }

IShellUIHelper_ShowBrowserUI :: inline (this: *IShellUIHelper, bstrName: BSTR, pvarIn: *VARIANT, pvarOut: *VARIANT) -> HRESULT { return this.ishelluihelper_vtable.ShowBrowserUI(this, bstrName, pvarIn, pvarOut); }

vtable :: (obj: *IShellUIHelper) -> *IShellUIHelper_VTable { return obj.ishelluihelper_vtable; }



IShellUIHelper2_UUID :: "a7fe6eda-1932-4281-b881-87b31b8bc52c";
IShellUIHelper2 :: struct {
    #as using ishelluihelper: IShellUIHelper;
    #place ishelluihelper; ishelluihelper2_vtable: *IShellUIHelper2_VTable;
}
IShellUIHelper2_VTable :: struct #type_info_none {
    using ishelluihelper: IShellUIHelper_VTable;
    AddSearchProvider: (this: *IShellUIHelper2, URL: BSTR) -> HRESULT #cpp_method;

    RunOnceShown: (this: *IShellUIHelper2) -> HRESULT #cpp_method;

    SkipRunOnce: (this: *IShellUIHelper2) -> HRESULT #cpp_method;

    CustomizeSettings: (this: *IShellUIHelper2, fSQM: VARIANT_BOOL, fPhishing: VARIANT_BOOL, bstrLocale: BSTR) -> HRESULT #cpp_method;

    SqmEnabled: (this: *IShellUIHelper2, pfEnabled: *VARIANT_BOOL) -> HRESULT #cpp_method;

    PhishingEnabled: (this: *IShellUIHelper2, pfEnabled: *VARIANT_BOOL) -> HRESULT #cpp_method;

    BrandImageUri: (this: *IShellUIHelper2, pbstrUri: *BSTR) -> HRESULT #cpp_method;

    SkipTabsWelcome: (this: *IShellUIHelper2) -> HRESULT #cpp_method;

    DiagnoseConnection: (this: *IShellUIHelper2) -> HRESULT #cpp_method;

    CustomizeClearType: (this: *IShellUIHelper2, fSet: VARIANT_BOOL) -> HRESULT #cpp_method;

    IsSearchProviderInstalled: (this: *IShellUIHelper2, URL: BSTR, pdwResult: *u32) -> HRESULT #cpp_method;

    IsSearchMigrated: (this: *IShellUIHelper2, pfMigrated: *VARIANT_BOOL) -> HRESULT #cpp_method;

    DefaultSearchProvider: (this: *IShellUIHelper2, pbstrName: *BSTR) -> HRESULT #cpp_method;

    RunOnceRequiredSettingsComplete: (this: *IShellUIHelper2, fComplete: VARIANT_BOOL) -> HRESULT #cpp_method;

    RunOnceHasShown: (this: *IShellUIHelper2, pfShown: *VARIANT_BOOL) -> HRESULT #cpp_method;

    SearchGuideUrl: (this: *IShellUIHelper2, pbstrUrl: *BSTR) -> HRESULT #cpp_method;
}

IShellUIHelper2_AddSearchProvider :: inline (this: *IShellUIHelper2, URL: BSTR) -> HRESULT { return this.ishelluihelper2_vtable.AddSearchProvider(this, URL); }

IShellUIHelper2_RunOnceShown :: inline (this: *IShellUIHelper2) -> HRESULT { return this.ishelluihelper2_vtable.RunOnceShown(this); }

IShellUIHelper2_SkipRunOnce :: inline (this: *IShellUIHelper2) -> HRESULT { return this.ishelluihelper2_vtable.SkipRunOnce(this); }

IShellUIHelper2_CustomizeSettings :: inline (this: *IShellUIHelper2, fSQM: VARIANT_BOOL, fPhishing: VARIANT_BOOL, bstrLocale: BSTR) -> HRESULT { return this.ishelluihelper2_vtable.CustomizeSettings(this, fSQM, fPhishing, bstrLocale); }

IShellUIHelper2_SqmEnabled :: inline (this: *IShellUIHelper2, pfEnabled: *VARIANT_BOOL) -> HRESULT { return this.ishelluihelper2_vtable.SqmEnabled(this, pfEnabled); }

IShellUIHelper2_PhishingEnabled :: inline (this: *IShellUIHelper2, pfEnabled: *VARIANT_BOOL) -> HRESULT { return this.ishelluihelper2_vtable.PhishingEnabled(this, pfEnabled); }

IShellUIHelper2_BrandImageUri :: inline (this: *IShellUIHelper2, pbstrUri: *BSTR) -> HRESULT { return this.ishelluihelper2_vtable.BrandImageUri(this, pbstrUri); }

IShellUIHelper2_SkipTabsWelcome :: inline (this: *IShellUIHelper2) -> HRESULT { return this.ishelluihelper2_vtable.SkipTabsWelcome(this); }

IShellUIHelper2_DiagnoseConnection :: inline (this: *IShellUIHelper2) -> HRESULT { return this.ishelluihelper2_vtable.DiagnoseConnection(this); }

IShellUIHelper2_CustomizeClearType :: inline (this: *IShellUIHelper2, fSet: VARIANT_BOOL) -> HRESULT { return this.ishelluihelper2_vtable.CustomizeClearType(this, fSet); }

IShellUIHelper2_IsSearchProviderInstalled :: inline (this: *IShellUIHelper2, URL: BSTR, pdwResult: *u32) -> HRESULT { return this.ishelluihelper2_vtable.IsSearchProviderInstalled(this, URL, pdwResult); }

IShellUIHelper2_IsSearchMigrated :: inline (this: *IShellUIHelper2, pfMigrated: *VARIANT_BOOL) -> HRESULT { return this.ishelluihelper2_vtable.IsSearchMigrated(this, pfMigrated); }

IShellUIHelper2_DefaultSearchProvider :: inline (this: *IShellUIHelper2, pbstrName: *BSTR) -> HRESULT { return this.ishelluihelper2_vtable.DefaultSearchProvider(this, pbstrName); }

IShellUIHelper2_RunOnceRequiredSettingsComplete :: inline (this: *IShellUIHelper2, fComplete: VARIANT_BOOL) -> HRESULT { return this.ishelluihelper2_vtable.RunOnceRequiredSettingsComplete(this, fComplete); }

IShellUIHelper2_RunOnceHasShown :: inline (this: *IShellUIHelper2, pfShown: *VARIANT_BOOL) -> HRESULT { return this.ishelluihelper2_vtable.RunOnceHasShown(this, pfShown); }

IShellUIHelper2_SearchGuideUrl :: inline (this: *IShellUIHelper2, pbstrUrl: *BSTR) -> HRESULT { return this.ishelluihelper2_vtable.SearchGuideUrl(this, pbstrUrl); }

vtable :: (obj: *IShellUIHelper2) -> *IShellUIHelper2_VTable { return obj.ishelluihelper2_vtable; }



IShellUIHelper3_UUID :: "528DF2EC-D419-40bc-9B6D-DCDBF9C1B25D";
IShellUIHelper3 :: struct {
    #as using ishelluihelper2: IShellUIHelper2;
    #place ishelluihelper2; ishelluihelper3_vtable: *IShellUIHelper3_VTable;
}
IShellUIHelper3_VTable :: struct #type_info_none {
    using ishelluihelper2: IShellUIHelper2_VTable;
    AddService: (this: *IShellUIHelper3, URL: BSTR) -> HRESULT #cpp_method;

    IsServiceInstalled: (this: *IShellUIHelper3, URL: BSTR, Verb: BSTR, pdwResult: *u32) -> HRESULT #cpp_method;

    InPrivateFilteringEnabled: (this: *IShellUIHelper3, pfEnabled: *VARIANT_BOOL) -> HRESULT #cpp_method;

    AddToFavoritesBar: (this: *IShellUIHelper3, URL: BSTR, Title: BSTR, Type: *VARIANT) -> HRESULT #cpp_method;

    BuildNewTabPage: (this: *IShellUIHelper3) -> HRESULT #cpp_method;

    SetRecentlyClosedVisible: (this: *IShellUIHelper3, fVisible: VARIANT_BOOL) -> HRESULT #cpp_method;

    SetActivitiesVisible: (this: *IShellUIHelper3, fVisible: VARIANT_BOOL) -> HRESULT #cpp_method;

    ContentDiscoveryReset: (this: *IShellUIHelper3) -> HRESULT #cpp_method;

    IsSuggestedSitesEnabled: (this: *IShellUIHelper3, pfEnabled: *VARIANT_BOOL) -> HRESULT #cpp_method;

    EnableSuggestedSites: (this: *IShellUIHelper3, fEnable: VARIANT_BOOL) -> HRESULT #cpp_method;

    NavigateToSuggestedSites: (this: *IShellUIHelper3, bstrRelativeUrl: BSTR) -> HRESULT #cpp_method;

    ShowTabsHelp: (this: *IShellUIHelper3) -> HRESULT #cpp_method;

    ShowInPrivateHelp: (this: *IShellUIHelper3) -> HRESULT #cpp_method;
}

IShellUIHelper3_AddService :: inline (this: *IShellUIHelper3, URL: BSTR) -> HRESULT { return this.ishelluihelper3_vtable.AddService(this, URL); }

IShellUIHelper3_IsServiceInstalled :: inline (this: *IShellUIHelper3, URL: BSTR, Verb: BSTR, pdwResult: *u32) -> HRESULT { return this.ishelluihelper3_vtable.IsServiceInstalled(this, URL, Verb, pdwResult); }

IShellUIHelper3_InPrivateFilteringEnabled :: inline (this: *IShellUIHelper3, pfEnabled: *VARIANT_BOOL) -> HRESULT { return this.ishelluihelper3_vtable.InPrivateFilteringEnabled(this, pfEnabled); }

IShellUIHelper3_AddToFavoritesBar :: inline (this: *IShellUIHelper3, URL: BSTR, Title: BSTR, Type: *VARIANT) -> HRESULT { return this.ishelluihelper3_vtable.AddToFavoritesBar(this, URL, Title, Type); }

IShellUIHelper3_BuildNewTabPage :: inline (this: *IShellUIHelper3) -> HRESULT { return this.ishelluihelper3_vtable.BuildNewTabPage(this); }

IShellUIHelper3_SetRecentlyClosedVisible :: inline (this: *IShellUIHelper3, fVisible: VARIANT_BOOL) -> HRESULT { return this.ishelluihelper3_vtable.SetRecentlyClosedVisible(this, fVisible); }

IShellUIHelper3_SetActivitiesVisible :: inline (this: *IShellUIHelper3, fVisible: VARIANT_BOOL) -> HRESULT { return this.ishelluihelper3_vtable.SetActivitiesVisible(this, fVisible); }

IShellUIHelper3_ContentDiscoveryReset :: inline (this: *IShellUIHelper3) -> HRESULT { return this.ishelluihelper3_vtable.ContentDiscoveryReset(this); }

IShellUIHelper3_IsSuggestedSitesEnabled :: inline (this: *IShellUIHelper3, pfEnabled: *VARIANT_BOOL) -> HRESULT { return this.ishelluihelper3_vtable.IsSuggestedSitesEnabled(this, pfEnabled); }

IShellUIHelper3_EnableSuggestedSites :: inline (this: *IShellUIHelper3, fEnable: VARIANT_BOOL) -> HRESULT { return this.ishelluihelper3_vtable.EnableSuggestedSites(this, fEnable); }

IShellUIHelper3_NavigateToSuggestedSites :: inline (this: *IShellUIHelper3, bstrRelativeUrl: BSTR) -> HRESULT { return this.ishelluihelper3_vtable.NavigateToSuggestedSites(this, bstrRelativeUrl); }

IShellUIHelper3_ShowTabsHelp :: inline (this: *IShellUIHelper3) -> HRESULT { return this.ishelluihelper3_vtable.ShowTabsHelp(this); }

IShellUIHelper3_ShowInPrivateHelp :: inline (this: *IShellUIHelper3) -> HRESULT { return this.ishelluihelper3_vtable.ShowInPrivateHelp(this); }

vtable :: (obj: *IShellUIHelper3) -> *IShellUIHelper3_VTable { return obj.ishelluihelper3_vtable; }



IShellUIHelper4_UUID :: "B36E6A53-8073-499E-824C-D776330A333E";
IShellUIHelper4 :: struct {
    #as using ishelluihelper3: IShellUIHelper3;
    #place ishelluihelper3; ishelluihelper4_vtable: *IShellUIHelper4_VTable;
}
IShellUIHelper4_VTable :: struct #type_info_none {
    using ishelluihelper3: IShellUIHelper3_VTable;
    msIsSiteMode: (this: *IShellUIHelper4, pfSiteMode: *VARIANT_BOOL) -> HRESULT #cpp_method;

    msSiteModeShowThumbBar: (this: *IShellUIHelper4) -> HRESULT #cpp_method;

    msSiteModeAddThumbBarButton: (this: *IShellUIHelper4, bstrIconURL: BSTR, bstrTooltip: BSTR, pvarButtonID: *VARIANT) -> HRESULT #cpp_method;

    msSiteModeUpdateThumbBarButton: (this: *IShellUIHelper4, ButtonID: VARIANT, fEnabled: VARIANT_BOOL, fVisible: VARIANT_BOOL) -> HRESULT #cpp_method;

    msSiteModeSetIconOverlay: (this: *IShellUIHelper4, IconUrl: BSTR, pvarDescription: *VARIANT) -> HRESULT #cpp_method;

    msSiteModeClearIconOverlay: (this: *IShellUIHelper4) -> HRESULT #cpp_method;

    msAddSiteMode: (this: *IShellUIHelper4) -> HRESULT #cpp_method;

    msSiteModeCreateJumpList: (this: *IShellUIHelper4, bstrHeader: BSTR) -> HRESULT #cpp_method;

    msSiteModeAddJumpListItem: (this: *IShellUIHelper4, bstrName: BSTR, bstrActionUri: BSTR, bstrIconUri: BSTR, pvarWindowType: *VARIANT) -> HRESULT #cpp_method;

    msSiteModeClearJumpList: (this: *IShellUIHelper4) -> HRESULT #cpp_method;

    msSiteModeShowJumpList: (this: *IShellUIHelper4) -> HRESULT #cpp_method;

    msSiteModeAddButtonStyle: (this: *IShellUIHelper4, uiButtonID: VARIANT, bstrIconUrl: BSTR, bstrTooltip: BSTR, pvarStyleID: *VARIANT) -> HRESULT #cpp_method;

    msSiteModeShowButtonStyle: (this: *IShellUIHelper4, uiButtonID: VARIANT, uiStyleID: VARIANT) -> HRESULT #cpp_method;

    msSiteModeActivate: (this: *IShellUIHelper4) -> HRESULT #cpp_method;

    msIsSiteModeFirstRun: (this: *IShellUIHelper4, fPreserveState: VARIANT_BOOL, puiFirstRun: *VARIANT) -> HRESULT #cpp_method;

    msAddTrackingProtectionList: (this: *IShellUIHelper4, URL: BSTR, bstrFilterName: BSTR) -> HRESULT #cpp_method;

    msTrackingProtectionEnabled: (this: *IShellUIHelper4, pfEnabled: *VARIANT_BOOL) -> HRESULT #cpp_method;

    msActiveXFilteringEnabled: (this: *IShellUIHelper4, pfEnabled: *VARIANT_BOOL) -> HRESULT #cpp_method;
}

IShellUIHelper4_msIsSiteMode :: inline (this: *IShellUIHelper4, pfSiteMode: *VARIANT_BOOL) -> HRESULT { return this.ishelluihelper4_vtable.msIsSiteMode(this, pfSiteMode); }

IShellUIHelper4_msSiteModeShowThumbBar :: inline (this: *IShellUIHelper4) -> HRESULT { return this.ishelluihelper4_vtable.msSiteModeShowThumbBar(this); }

IShellUIHelper4_msSiteModeAddThumbBarButton :: inline (this: *IShellUIHelper4, bstrIconURL: BSTR, bstrTooltip: BSTR, pvarButtonID: *VARIANT) -> HRESULT { return this.ishelluihelper4_vtable.msSiteModeAddThumbBarButton(this, bstrIconURL, bstrTooltip, pvarButtonID); }

IShellUIHelper4_msSiteModeUpdateThumbBarButton :: inline (this: *IShellUIHelper4, ButtonID: VARIANT, fEnabled: VARIANT_BOOL, fVisible: VARIANT_BOOL) -> HRESULT { return this.ishelluihelper4_vtable.msSiteModeUpdateThumbBarButton(this, ButtonID, fEnabled, fVisible); }

IShellUIHelper4_msSiteModeSetIconOverlay :: inline (this: *IShellUIHelper4, IconUrl: BSTR, pvarDescription: *VARIANT) -> HRESULT { return this.ishelluihelper4_vtable.msSiteModeSetIconOverlay(this, IconUrl, pvarDescription); }

IShellUIHelper4_msSiteModeClearIconOverlay :: inline (this: *IShellUIHelper4) -> HRESULT { return this.ishelluihelper4_vtable.msSiteModeClearIconOverlay(this); }

IShellUIHelper4_msAddSiteMode :: inline (this: *IShellUIHelper4) -> HRESULT { return this.ishelluihelper4_vtable.msAddSiteMode(this); }

IShellUIHelper4_msSiteModeCreateJumpList :: inline (this: *IShellUIHelper4, bstrHeader: BSTR) -> HRESULT { return this.ishelluihelper4_vtable.msSiteModeCreateJumpList(this, bstrHeader); }

IShellUIHelper4_msSiteModeAddJumpListItem :: inline (this: *IShellUIHelper4, bstrName: BSTR, bstrActionUri: BSTR, bstrIconUri: BSTR, pvarWindowType: *VARIANT) -> HRESULT { return this.ishelluihelper4_vtable.msSiteModeAddJumpListItem(this, bstrName, bstrActionUri, bstrIconUri, pvarWindowType); }

IShellUIHelper4_msSiteModeClearJumpList :: inline (this: *IShellUIHelper4) -> HRESULT { return this.ishelluihelper4_vtable.msSiteModeClearJumpList(this); }

IShellUIHelper4_msSiteModeShowJumpList :: inline (this: *IShellUIHelper4) -> HRESULT { return this.ishelluihelper4_vtable.msSiteModeShowJumpList(this); }

IShellUIHelper4_msSiteModeAddButtonStyle :: inline (this: *IShellUIHelper4, uiButtonID: VARIANT, bstrIconUrl: BSTR, bstrTooltip: BSTR, pvarStyleID: *VARIANT) -> HRESULT { return this.ishelluihelper4_vtable.msSiteModeAddButtonStyle(this, uiButtonID, bstrIconUrl, bstrTooltip, pvarStyleID); }

IShellUIHelper4_msSiteModeShowButtonStyle :: inline (this: *IShellUIHelper4, uiButtonID: VARIANT, uiStyleID: VARIANT) -> HRESULT { return this.ishelluihelper4_vtable.msSiteModeShowButtonStyle(this, uiButtonID, uiStyleID); }

IShellUIHelper4_msSiteModeActivate :: inline (this: *IShellUIHelper4) -> HRESULT { return this.ishelluihelper4_vtable.msSiteModeActivate(this); }

IShellUIHelper4_msIsSiteModeFirstRun :: inline (this: *IShellUIHelper4, fPreserveState: VARIANT_BOOL, puiFirstRun: *VARIANT) -> HRESULT { return this.ishelluihelper4_vtable.msIsSiteModeFirstRun(this, fPreserveState, puiFirstRun); }

IShellUIHelper4_msAddTrackingProtectionList :: inline (this: *IShellUIHelper4, URL: BSTR, bstrFilterName: BSTR) -> HRESULT { return this.ishelluihelper4_vtable.msAddTrackingProtectionList(this, URL, bstrFilterName); }

IShellUIHelper4_msTrackingProtectionEnabled :: inline (this: *IShellUIHelper4, pfEnabled: *VARIANT_BOOL) -> HRESULT { return this.ishelluihelper4_vtable.msTrackingProtectionEnabled(this, pfEnabled); }

IShellUIHelper4_msActiveXFilteringEnabled :: inline (this: *IShellUIHelper4, pfEnabled: *VARIANT_BOOL) -> HRESULT { return this.ishelluihelper4_vtable.msActiveXFilteringEnabled(this, pfEnabled); }

vtable :: (obj: *IShellUIHelper4) -> *IShellUIHelper4_VTable { return obj.ishelluihelper4_vtable; }



IShellUIHelper5_UUID :: "A2A08B09-103D-4D3F-B91C-EA455CA82EFA";
IShellUIHelper5 :: struct {
    #as using ishelluihelper4: IShellUIHelper4;
    #place ishelluihelper4; ishelluihelper5_vtable: *IShellUIHelper5_VTable;
}
IShellUIHelper5_VTable :: struct #type_info_none {
    using ishelluihelper4: IShellUIHelper4_VTable;
    msProvisionNetworks: (this: *IShellUIHelper5, bstrProvisioningXml: BSTR, puiResult: *VARIANT) -> HRESULT #cpp_method;

    msReportSafeUrl: (this: *IShellUIHelper5) -> HRESULT #cpp_method;

    msSiteModeRefreshBadge: (this: *IShellUIHelper5) -> HRESULT #cpp_method;

    msSiteModeClearBadge: (this: *IShellUIHelper5) -> HRESULT #cpp_method;

    msDiagnoseConnectionUILess: (this: *IShellUIHelper5) -> HRESULT #cpp_method;

    msLaunchNetworkClientHelp: (this: *IShellUIHelper5) -> HRESULT #cpp_method;

    msChangeDefaultBrowser: (this: *IShellUIHelper5, fChange: VARIANT_BOOL) -> HRESULT #cpp_method;
}

IShellUIHelper5_msProvisionNetworks :: inline (this: *IShellUIHelper5, bstrProvisioningXml: BSTR, puiResult: *VARIANT) -> HRESULT { return this.ishelluihelper5_vtable.msProvisionNetworks(this, bstrProvisioningXml, puiResult); }

IShellUIHelper5_msReportSafeUrl :: inline (this: *IShellUIHelper5) -> HRESULT { return this.ishelluihelper5_vtable.msReportSafeUrl(this); }

IShellUIHelper5_msSiteModeRefreshBadge :: inline (this: *IShellUIHelper5) -> HRESULT { return this.ishelluihelper5_vtable.msSiteModeRefreshBadge(this); }

IShellUIHelper5_msSiteModeClearBadge :: inline (this: *IShellUIHelper5) -> HRESULT { return this.ishelluihelper5_vtable.msSiteModeClearBadge(this); }

IShellUIHelper5_msDiagnoseConnectionUILess :: inline (this: *IShellUIHelper5) -> HRESULT { return this.ishelluihelper5_vtable.msDiagnoseConnectionUILess(this); }

IShellUIHelper5_msLaunchNetworkClientHelp :: inline (this: *IShellUIHelper5) -> HRESULT { return this.ishelluihelper5_vtable.msLaunchNetworkClientHelp(this); }

IShellUIHelper5_msChangeDefaultBrowser :: inline (this: *IShellUIHelper5, fChange: VARIANT_BOOL) -> HRESULT { return this.ishelluihelper5_vtable.msChangeDefaultBrowser(this, fChange); }

vtable :: (obj: *IShellUIHelper5) -> *IShellUIHelper5_VTable { return obj.ishelluihelper5_vtable; }



IShellUIHelper6_UUID :: "987A573E-46EE-4E89-96AB-DDF7F8FDC98C";
IShellUIHelper6 :: struct {
    #as using ishelluihelper5: IShellUIHelper5;
    #place ishelluihelper5; ishelluihelper6_vtable: *IShellUIHelper6_VTable;
}
IShellUIHelper6_VTable :: struct #type_info_none {
    using ishelluihelper5: IShellUIHelper5_VTable;
    msStopPeriodicTileUpdate: (this: *IShellUIHelper6) -> HRESULT #cpp_method;

    msStartPeriodicTileUpdate: (this: *IShellUIHelper6, pollingUris: VARIANT, startTime: VARIANT, uiUpdateRecurrence: VARIANT) -> HRESULT #cpp_method;

    msStartPeriodicTileUpdateBatch: (this: *IShellUIHelper6, pollingUris: VARIANT, startTime: VARIANT, uiUpdateRecurrence: VARIANT) -> HRESULT #cpp_method;

    msClearTile: (this: *IShellUIHelper6) -> HRESULT #cpp_method;

    msEnableTileNotificationQueue: (this: *IShellUIHelper6, fChange: VARIANT_BOOL) -> HRESULT #cpp_method;

    msPinnedSiteState: (this: *IShellUIHelper6, pvarSiteState: *VARIANT) -> HRESULT #cpp_method;

    msEnableTileNotificationQueueForSquare150x150: (this: *IShellUIHelper6, fChange: VARIANT_BOOL) -> HRESULT #cpp_method;

    msEnableTileNotificationQueueForWide310x150: (this: *IShellUIHelper6, fChange: VARIANT_BOOL) -> HRESULT #cpp_method;

    msEnableTileNotificationQueueForSquare310x310: (this: *IShellUIHelper6, fChange: VARIANT_BOOL) -> HRESULT #cpp_method;

    msScheduledTileNotification: (this: *IShellUIHelper6, bstrNotificationXml: BSTR, bstrNotificationId: BSTR, bstrNotificationTag: BSTR, startTime: VARIANT, expirationTime: VARIANT) -> HRESULT #cpp_method;

    msRemoveScheduledTileNotification: (this: *IShellUIHelper6, bstrNotificationId: BSTR) -> HRESULT #cpp_method;

    msStartPeriodicBadgeUpdate: (this: *IShellUIHelper6, pollingUri: BSTR, startTime: VARIANT, uiUpdateRecurrence: VARIANT) -> HRESULT #cpp_method;

    msStopPeriodicBadgeUpdate: (this: *IShellUIHelper6) -> HRESULT #cpp_method;

    msLaunchInternetOptions: (this: *IShellUIHelper6) -> HRESULT #cpp_method;
}

IShellUIHelper6_msStopPeriodicTileUpdate :: inline (this: *IShellUIHelper6) -> HRESULT { return this.ishelluihelper6_vtable.msStopPeriodicTileUpdate(this); }

IShellUIHelper6_msStartPeriodicTileUpdate :: inline (this: *IShellUIHelper6, pollingUris: VARIANT, startTime: VARIANT, uiUpdateRecurrence: VARIANT) -> HRESULT { return this.ishelluihelper6_vtable.msStartPeriodicTileUpdate(this, pollingUris, startTime, uiUpdateRecurrence); }

IShellUIHelper6_msStartPeriodicTileUpdateBatch :: inline (this: *IShellUIHelper6, pollingUris: VARIANT, startTime: VARIANT, uiUpdateRecurrence: VARIANT) -> HRESULT { return this.ishelluihelper6_vtable.msStartPeriodicTileUpdateBatch(this, pollingUris, startTime, uiUpdateRecurrence); }

IShellUIHelper6_msClearTile :: inline (this: *IShellUIHelper6) -> HRESULT { return this.ishelluihelper6_vtable.msClearTile(this); }

IShellUIHelper6_msEnableTileNotificationQueue :: inline (this: *IShellUIHelper6, fChange: VARIANT_BOOL) -> HRESULT { return this.ishelluihelper6_vtable.msEnableTileNotificationQueue(this, fChange); }

IShellUIHelper6_msPinnedSiteState :: inline (this: *IShellUIHelper6, pvarSiteState: *VARIANT) -> HRESULT { return this.ishelluihelper6_vtable.msPinnedSiteState(this, pvarSiteState); }

IShellUIHelper6_msEnableTileNotificationQueueForSquare150x150 :: inline (this: *IShellUIHelper6, fChange: VARIANT_BOOL) -> HRESULT { return this.ishelluihelper6_vtable.msEnableTileNotificationQueueForSquare150x150(this, fChange); }

IShellUIHelper6_msEnableTileNotificationQueueForWide310x150 :: inline (this: *IShellUIHelper6, fChange: VARIANT_BOOL) -> HRESULT { return this.ishelluihelper6_vtable.msEnableTileNotificationQueueForWide310x150(this, fChange); }

IShellUIHelper6_msEnableTileNotificationQueueForSquare310x310 :: inline (this: *IShellUIHelper6, fChange: VARIANT_BOOL) -> HRESULT { return this.ishelluihelper6_vtable.msEnableTileNotificationQueueForSquare310x310(this, fChange); }

IShellUIHelper6_msScheduledTileNotification :: inline (this: *IShellUIHelper6, bstrNotificationXml: BSTR, bstrNotificationId: BSTR, bstrNotificationTag: BSTR, startTime: VARIANT, expirationTime: VARIANT) -> HRESULT { return this.ishelluihelper6_vtable.msScheduledTileNotification(this, bstrNotificationXml, bstrNotificationId, bstrNotificationTag, startTime, expirationTime); }

IShellUIHelper6_msRemoveScheduledTileNotification :: inline (this: *IShellUIHelper6, bstrNotificationId: BSTR) -> HRESULT { return this.ishelluihelper6_vtable.msRemoveScheduledTileNotification(this, bstrNotificationId); }

IShellUIHelper6_msStartPeriodicBadgeUpdate :: inline (this: *IShellUIHelper6, pollingUri: BSTR, startTime: VARIANT, uiUpdateRecurrence: VARIANT) -> HRESULT { return this.ishelluihelper6_vtable.msStartPeriodicBadgeUpdate(this, pollingUri, startTime, uiUpdateRecurrence); }

IShellUIHelper6_msStopPeriodicBadgeUpdate :: inline (this: *IShellUIHelper6) -> HRESULT { return this.ishelluihelper6_vtable.msStopPeriodicBadgeUpdate(this); }

IShellUIHelper6_msLaunchInternetOptions :: inline (this: *IShellUIHelper6) -> HRESULT { return this.ishelluihelper6_vtable.msLaunchInternetOptions(this); }

vtable :: (obj: *IShellUIHelper6) -> *IShellUIHelper6_VTable { return obj.ishelluihelper6_vtable; }



IShellUIHelper7_UUID :: "60E567C8-9573-4AB2-A264-637C6C161CB1";
IShellUIHelper7 :: struct {
    #as using ishelluihelper6: IShellUIHelper6;
    #place ishelluihelper6; ishelluihelper7_vtable: *IShellUIHelper7_VTable;
}
IShellUIHelper7_VTable :: struct #type_info_none {
    using ishelluihelper6: IShellUIHelper6_VTable;
    SetExperimentalFlag: (this: *IShellUIHelper7, bstrFlagString: BSTR, vfFlag: VARIANT_BOOL) -> HRESULT #cpp_method;

    GetExperimentalFlag: (this: *IShellUIHelper7, bstrFlagString: BSTR, vfFlag: *VARIANT_BOOL) -> HRESULT #cpp_method;

    SetExperimentalValue: (this: *IShellUIHelper7, bstrValueString: BSTR, dwValue: u32) -> HRESULT #cpp_method;

    GetExperimentalValue: (this: *IShellUIHelper7, bstrValueString: BSTR, pdwValue: *u32) -> HRESULT #cpp_method;

    ResetAllExperimentalFlagsAndValues: (this: *IShellUIHelper7) -> HRESULT #cpp_method;

    GetNeedIEAutoLaunchFlag: (this: *IShellUIHelper7, bstrUrl: BSTR, flag: *VARIANT_BOOL) -> HRESULT #cpp_method;

    SetNeedIEAutoLaunchFlag: (this: *IShellUIHelper7, bstrUrl: BSTR, flag: VARIANT_BOOL) -> HRESULT #cpp_method;

    HasNeedIEAutoLaunchFlag: (this: *IShellUIHelper7, bstrUrl: BSTR, exists: *VARIANT_BOOL) -> HRESULT #cpp_method;

    LaunchIE: (this: *IShellUIHelper7, bstrUrl: BSTR, automated: VARIANT_BOOL) -> HRESULT #cpp_method;
}

IShellUIHelper7_SetExperimentalFlag :: inline (this: *IShellUIHelper7, bstrFlagString: BSTR, vfFlag: VARIANT_BOOL) -> HRESULT { return this.ishelluihelper7_vtable.SetExperimentalFlag(this, bstrFlagString, vfFlag); }

IShellUIHelper7_GetExperimentalFlag :: inline (this: *IShellUIHelper7, bstrFlagString: BSTR, vfFlag: *VARIANT_BOOL) -> HRESULT { return this.ishelluihelper7_vtable.GetExperimentalFlag(this, bstrFlagString, vfFlag); }

IShellUIHelper7_SetExperimentalValue :: inline (this: *IShellUIHelper7, bstrValueString: BSTR, dwValue: u32) -> HRESULT { return this.ishelluihelper7_vtable.SetExperimentalValue(this, bstrValueString, dwValue); }

IShellUIHelper7_GetExperimentalValue :: inline (this: *IShellUIHelper7, bstrValueString: BSTR, pdwValue: *u32) -> HRESULT { return this.ishelluihelper7_vtable.GetExperimentalValue(this, bstrValueString, pdwValue); }

IShellUIHelper7_ResetAllExperimentalFlagsAndValues :: inline (this: *IShellUIHelper7) -> HRESULT { return this.ishelluihelper7_vtable.ResetAllExperimentalFlagsAndValues(this); }

IShellUIHelper7_GetNeedIEAutoLaunchFlag :: inline (this: *IShellUIHelper7, bstrUrl: BSTR, flag: *VARIANT_BOOL) -> HRESULT { return this.ishelluihelper7_vtable.GetNeedIEAutoLaunchFlag(this, bstrUrl, flag); }

IShellUIHelper7_SetNeedIEAutoLaunchFlag :: inline (this: *IShellUIHelper7, bstrUrl: BSTR, flag: VARIANT_BOOL) -> HRESULT { return this.ishelluihelper7_vtable.SetNeedIEAutoLaunchFlag(this, bstrUrl, flag); }

IShellUIHelper7_HasNeedIEAutoLaunchFlag :: inline (this: *IShellUIHelper7, bstrUrl: BSTR, exists: *VARIANT_BOOL) -> HRESULT { return this.ishelluihelper7_vtable.HasNeedIEAutoLaunchFlag(this, bstrUrl, exists); }

IShellUIHelper7_LaunchIE :: inline (this: *IShellUIHelper7, bstrUrl: BSTR, automated: VARIANT_BOOL) -> HRESULT { return this.ishelluihelper7_vtable.LaunchIE(this, bstrUrl, automated); }

vtable :: (obj: *IShellUIHelper7) -> *IShellUIHelper7_VTable { return obj.ishelluihelper7_vtable; }



IShellUIHelper8_UUID :: "66DEBCF2-05B0-4F07-B49B-B96241A65DB2";
IShellUIHelper8 :: struct {
    #as using ishelluihelper7: IShellUIHelper7;
    #place ishelluihelper7; ishelluihelper8_vtable: *IShellUIHelper8_VTable;
}
IShellUIHelper8_VTable :: struct #type_info_none {
    using ishelluihelper7: IShellUIHelper7_VTable;
    GetCVListData: (this: *IShellUIHelper8, pbstrResult: *BSTR) -> HRESULT #cpp_method;

    GetCVListLocalData: (this: *IShellUIHelper8, pbstrResult: *BSTR) -> HRESULT #cpp_method;

    GetEMIEListData: (this: *IShellUIHelper8, pbstrResult: *BSTR) -> HRESULT #cpp_method;

    GetEMIEListLocalData: (this: *IShellUIHelper8, pbstrResult: *BSTR) -> HRESULT #cpp_method;

    OpenFavoritesPane: (this: *IShellUIHelper8) -> HRESULT #cpp_method;

    OpenFavoritesSettings: (this: *IShellUIHelper8) -> HRESULT #cpp_method;

    LaunchInHVSI: (this: *IShellUIHelper8, bstrUrl: BSTR) -> HRESULT #cpp_method;
}

IShellUIHelper8_GetCVListData :: inline (this: *IShellUIHelper8, pbstrResult: *BSTR) -> HRESULT { return this.ishelluihelper8_vtable.GetCVListData(this, pbstrResult); }

IShellUIHelper8_GetCVListLocalData :: inline (this: *IShellUIHelper8, pbstrResult: *BSTR) -> HRESULT { return this.ishelluihelper8_vtable.GetCVListLocalData(this, pbstrResult); }

IShellUIHelper8_GetEMIEListData :: inline (this: *IShellUIHelper8, pbstrResult: *BSTR) -> HRESULT { return this.ishelluihelper8_vtable.GetEMIEListData(this, pbstrResult); }

IShellUIHelper8_GetEMIEListLocalData :: inline (this: *IShellUIHelper8, pbstrResult: *BSTR) -> HRESULT { return this.ishelluihelper8_vtable.GetEMIEListLocalData(this, pbstrResult); }

IShellUIHelper8_OpenFavoritesPane :: inline (this: *IShellUIHelper8) -> HRESULT { return this.ishelluihelper8_vtable.OpenFavoritesPane(this); }

IShellUIHelper8_OpenFavoritesSettings :: inline (this: *IShellUIHelper8) -> HRESULT { return this.ishelluihelper8_vtable.OpenFavoritesSettings(this); }

IShellUIHelper8_LaunchInHVSI :: inline (this: *IShellUIHelper8, bstrUrl: BSTR) -> HRESULT { return this.ishelluihelper8_vtable.LaunchInHVSI(this, bstrUrl); }

vtable :: (obj: *IShellUIHelper8) -> *IShellUIHelper8_VTable { return obj.ishelluihelper8_vtable; }



IShellUIHelper9_UUID :: "6cdf73b0-7f2f-451f-bc0f-63e0f3284e54";
IShellUIHelper9 :: struct {
    #as using ishelluihelper8: IShellUIHelper8;
    #place ishelluihelper8; ishelluihelper9_vtable: *IShellUIHelper9_VTable;
}
IShellUIHelper9_VTable :: struct #type_info_none {
    using ishelluihelper8: IShellUIHelper8_VTable;
    GetOSSku: (this: *IShellUIHelper9, pdwResult: *u32) -> HRESULT #cpp_method;
}
IShellUIHelper9_GetOSSku :: inline (this: *IShellUIHelper9, pdwResult: *u32) -> HRESULT { return this.ishelluihelper9_vtable.GetOSSku(this, pdwResult); }

vtable :: (obj: *IShellUIHelper9) -> *IShellUIHelper9_VTable { return obj.ishelluihelper9_vtable; }


CLSID_ShellUIHelper: CLSID;

DIID_DShellNameSpaceEvents: IID;


DShellNameSpaceEvents_UUID :: "55136806-B2DE-11D1-B9F2-00A0C98BC547";
DShellNameSpaceEvents :: struct {
    #as using idispatch: IDispatch;
}


IShellFavoritesNameSpace_UUID :: "55136804-B2DE-11D1-B9F2-00A0C98BC547";
IShellFavoritesNameSpace :: struct {
    #as using idispatch: IDispatch;
    #place idispatch; ishellfavoritesnamespace_vtable: *IShellFavoritesNameSpace_VTable;
}
IShellFavoritesNameSpace_VTable :: struct #type_info_none {
    using idispatch: IDispatch_VTable;
    MoveSelectionUp: (this: *IShellFavoritesNameSpace) -> HRESULT #cpp_method;

    MoveSelectionDown: (this: *IShellFavoritesNameSpace) -> HRESULT #cpp_method;

    ResetSort: (this: *IShellFavoritesNameSpace) -> HRESULT #cpp_method;

    NewFolder: (this: *IShellFavoritesNameSpace) -> HRESULT #cpp_method;

    Synchronize: (this: *IShellFavoritesNameSpace) -> HRESULT #cpp_method;

    Import: (this: *IShellFavoritesNameSpace) -> HRESULT #cpp_method;

    Export: (this: *IShellFavoritesNameSpace) -> HRESULT #cpp_method;

    InvokeContextMenuCommand: (this: *IShellFavoritesNameSpace, strCommand: BSTR) -> HRESULT #cpp_method;

    MoveSelectionTo: (this: *IShellFavoritesNameSpace) -> HRESULT #cpp_method;

    get_SubscriptionsEnabled: (this: *IShellFavoritesNameSpace, pBool: *VARIANT_BOOL) -> HRESULT #cpp_method;

    CreateSubscriptionForSelection: (this: *IShellFavoritesNameSpace, pBool: *VARIANT_BOOL) -> HRESULT #cpp_method;

    DeleteSubscriptionForSelection: (this: *IShellFavoritesNameSpace, pBool: *VARIANT_BOOL) -> HRESULT #cpp_method;

    SetRoot: (this: *IShellFavoritesNameSpace, bstrFullPath: BSTR) -> HRESULT #cpp_method;
}

IShellFavoritesNameSpace_MoveSelectionUp :: inline (this: *IShellFavoritesNameSpace) -> HRESULT { return this.ishellfavoritesnamespace_vtable.MoveSelectionUp(this); }

IShellFavoritesNameSpace_MoveSelectionDown :: inline (this: *IShellFavoritesNameSpace) -> HRESULT { return this.ishellfavoritesnamespace_vtable.MoveSelectionDown(this); }

IShellFavoritesNameSpace_ResetSort :: inline (this: *IShellFavoritesNameSpace) -> HRESULT { return this.ishellfavoritesnamespace_vtable.ResetSort(this); }

IShellFavoritesNameSpace_NewFolder :: inline (this: *IShellFavoritesNameSpace) -> HRESULT { return this.ishellfavoritesnamespace_vtable.NewFolder(this); }

IShellFavoritesNameSpace_Synchronize :: inline (this: *IShellFavoritesNameSpace) -> HRESULT { return this.ishellfavoritesnamespace_vtable.Synchronize(this); }

IShellFavoritesNameSpace_Import :: inline (this: *IShellFavoritesNameSpace) -> HRESULT { return this.ishellfavoritesnamespace_vtable.Import(this); }

IShellFavoritesNameSpace_Export :: inline (this: *IShellFavoritesNameSpace) -> HRESULT { return this.ishellfavoritesnamespace_vtable.Export(this); }

IShellFavoritesNameSpace_InvokeContextMenuCommand :: inline (this: *IShellFavoritesNameSpace, strCommand: BSTR) -> HRESULT { return this.ishellfavoritesnamespace_vtable.InvokeContextMenuCommand(this, strCommand); }

IShellFavoritesNameSpace_MoveSelectionTo :: inline (this: *IShellFavoritesNameSpace) -> HRESULT { return this.ishellfavoritesnamespace_vtable.MoveSelectionTo(this); }

IShellFavoritesNameSpace_get_SubscriptionsEnabled :: inline (this: *IShellFavoritesNameSpace, pBool: *VARIANT_BOOL) -> HRESULT { return this.ishellfavoritesnamespace_vtable.get_SubscriptionsEnabled(this, pBool); }

IShellFavoritesNameSpace_CreateSubscriptionForSelection :: inline (this: *IShellFavoritesNameSpace, pBool: *VARIANT_BOOL) -> HRESULT { return this.ishellfavoritesnamespace_vtable.CreateSubscriptionForSelection(this, pBool); }

IShellFavoritesNameSpace_DeleteSubscriptionForSelection :: inline (this: *IShellFavoritesNameSpace, pBool: *VARIANT_BOOL) -> HRESULT { return this.ishellfavoritesnamespace_vtable.DeleteSubscriptionForSelection(this, pBool); }

IShellFavoritesNameSpace_SetRoot :: inline (this: *IShellFavoritesNameSpace, bstrFullPath: BSTR) -> HRESULT { return this.ishellfavoritesnamespace_vtable.SetRoot(this, bstrFullPath); }

vtable :: (obj: *IShellFavoritesNameSpace) -> *IShellFavoritesNameSpace_VTable { return obj.ishellfavoritesnamespace_vtable; }



IShellNameSpace_UUID :: "e572d3c9-37be-4ae2-825d-d521763e3108";
IShellNameSpace :: struct {
    #as using ishellfavoritesnamespace: IShellFavoritesNameSpace;
    #place ishellfavoritesnamespace; ishellnamespace_vtable: *IShellNameSpace_VTable;
}
IShellNameSpace_VTable :: struct #type_info_none {
    using ishellfavoritesnamespace: IShellFavoritesNameSpace_VTable;
    get_EnumOptions: (this: *IShellNameSpace, pgrfEnumFlags: *s32) -> HRESULT #cpp_method;

    put_EnumOptions: (this: *IShellNameSpace, lVal: s32) -> HRESULT #cpp_method;

    get_SelectedItem: (this: *IShellNameSpace, pItem: **IDispatch) -> HRESULT #cpp_method;

    put_SelectedItem: (this: *IShellNameSpace, pItem: *IDispatch) -> HRESULT #cpp_method;

    get_Root: (this: *IShellNameSpace, pvar: *VARIANT) -> HRESULT #cpp_method;

    put_Root: (this: *IShellNameSpace, var: VARIANT) -> HRESULT #cpp_method;

    get_Depth: (this: *IShellNameSpace, piDepth: *s32) -> HRESULT #cpp_method;

    put_Depth: (this: *IShellNameSpace, iDepth: s32) -> HRESULT #cpp_method;

    get_Mode: (this: *IShellNameSpace, puMode: *u32) -> HRESULT #cpp_method;

    put_Mode: (this: *IShellNameSpace, uMode: u32) -> HRESULT #cpp_method;

    get_Flags: (this: *IShellNameSpace, pdwFlags: *u32) -> HRESULT #cpp_method;

    put_Flags: (this: *IShellNameSpace, dwFlags: u32) -> HRESULT #cpp_method;

    put_TVFlags: (this: *IShellNameSpace, dwFlags: u32) -> HRESULT #cpp_method;

    get_TVFlags: (this: *IShellNameSpace, dwFlags: *u32) -> HRESULT #cpp_method;

    get_Columns: (this: *IShellNameSpace, bstrColumns: *BSTR) -> HRESULT #cpp_method;

    put_Columns: (this: *IShellNameSpace, bstrColumns: BSTR) -> HRESULT #cpp_method;

    get_CountViewTypes: (this: *IShellNameSpace, piTypes: *s32) -> HRESULT #cpp_method;

    SetViewType: (this: *IShellNameSpace, iType: s32) -> HRESULT #cpp_method;

    SelectedItems: (this: *IShellNameSpace, ppid: **IDispatch) -> HRESULT #cpp_method;

    Expand: (this: *IShellNameSpace, var: VARIANT, iDepth: s32) -> HRESULT #cpp_method;

    UnselectAll: (this: *IShellNameSpace) -> HRESULT #cpp_method;
}

IShellNameSpace_get_EnumOptions :: inline (this: *IShellNameSpace, pgrfEnumFlags: *s32) -> HRESULT { return this.ishellnamespace_vtable.get_EnumOptions(this, pgrfEnumFlags); }

IShellNameSpace_put_EnumOptions :: inline (this: *IShellNameSpace, lVal: s32) -> HRESULT { return this.ishellnamespace_vtable.put_EnumOptions(this, lVal); }

IShellNameSpace_get_SelectedItem :: inline (this: *IShellNameSpace, pItem: **IDispatch) -> HRESULT { return this.ishellnamespace_vtable.get_SelectedItem(this, pItem); }

IShellNameSpace_put_SelectedItem :: inline (this: *IShellNameSpace, pItem: *IDispatch) -> HRESULT { return this.ishellnamespace_vtable.put_SelectedItem(this, pItem); }

IShellNameSpace_get_Root :: inline (this: *IShellNameSpace, pvar: *VARIANT) -> HRESULT { return this.ishellnamespace_vtable.get_Root(this, pvar); }

IShellNameSpace_put_Root :: inline (this: *IShellNameSpace, var: VARIANT) -> HRESULT { return this.ishellnamespace_vtable.put_Root(this, var); }

IShellNameSpace_get_Depth :: inline (this: *IShellNameSpace, piDepth: *s32) -> HRESULT { return this.ishellnamespace_vtable.get_Depth(this, piDepth); }

IShellNameSpace_put_Depth :: inline (this: *IShellNameSpace, iDepth: s32) -> HRESULT { return this.ishellnamespace_vtable.put_Depth(this, iDepth); }

IShellNameSpace_get_Mode :: inline (this: *IShellNameSpace, puMode: *u32) -> HRESULT { return this.ishellnamespace_vtable.get_Mode(this, puMode); }

IShellNameSpace_put_Mode :: inline (this: *IShellNameSpace, uMode: u32) -> HRESULT { return this.ishellnamespace_vtable.put_Mode(this, uMode); }

IShellNameSpace_get_Flags :: inline (this: *IShellNameSpace, pdwFlags: *u32) -> HRESULT { return this.ishellnamespace_vtable.get_Flags(this, pdwFlags); }

IShellNameSpace_put_Flags :: inline (this: *IShellNameSpace, dwFlags: u32) -> HRESULT { return this.ishellnamespace_vtable.put_Flags(this, dwFlags); }

IShellNameSpace_put_TVFlags :: inline (this: *IShellNameSpace, dwFlags: u32) -> HRESULT { return this.ishellnamespace_vtable.put_TVFlags(this, dwFlags); }

IShellNameSpace_get_TVFlags :: inline (this: *IShellNameSpace, dwFlags: *u32) -> HRESULT { return this.ishellnamespace_vtable.get_TVFlags(this, dwFlags); }

IShellNameSpace_get_Columns :: inline (this: *IShellNameSpace, bstrColumns: *BSTR) -> HRESULT { return this.ishellnamespace_vtable.get_Columns(this, bstrColumns); }

IShellNameSpace_put_Columns :: inline (this: *IShellNameSpace, bstrColumns: BSTR) -> HRESULT { return this.ishellnamespace_vtable.put_Columns(this, bstrColumns); }

IShellNameSpace_get_CountViewTypes :: inline (this: *IShellNameSpace, piTypes: *s32) -> HRESULT { return this.ishellnamespace_vtable.get_CountViewTypes(this, piTypes); }

IShellNameSpace_SetViewType :: inline (this: *IShellNameSpace, iType: s32) -> HRESULT { return this.ishellnamespace_vtable.SetViewType(this, iType); }

IShellNameSpace_SelectedItems :: inline (this: *IShellNameSpace, ppid: **IDispatch) -> HRESULT { return this.ishellnamespace_vtable.SelectedItems(this, ppid); }

IShellNameSpace_Expand :: inline (this: *IShellNameSpace, var: VARIANT, iDepth: s32) -> HRESULT { return this.ishellnamespace_vtable.Expand(this, var, iDepth); }

IShellNameSpace_UnselectAll :: inline (this: *IShellNameSpace) -> HRESULT { return this.ishellnamespace_vtable.UnselectAll(this); }

vtable :: (obj: *IShellNameSpace) -> *IShellNameSpace_VTable { return obj.ishellnamespace_vtable; }


CLSID_ShellNameSpace: CLSID;


IScriptErrorList_UUID :: "F3470F24-15FD-11d2-BB2E-00805FF7EFCA";
IScriptErrorList :: struct {
    #as using idispatch: IDispatch;
    #place idispatch; iscripterrorlist_vtable: *IScriptErrorList_VTable;
}
IScriptErrorList_VTable :: struct #type_info_none {
    using idispatch: IDispatch_VTable;
    advanceError: (this: *IScriptErrorList) -> HRESULT #cpp_method;

    retreatError: (this: *IScriptErrorList) -> HRESULT #cpp_method;

    canAdvanceError: (this: *IScriptErrorList, pfCanAdvance: *BOOL) -> HRESULT #cpp_method;

    canRetreatError: (this: *IScriptErrorList, pfCanRetreat: *BOOL) -> HRESULT #cpp_method;

    getErrorLine: (this: *IScriptErrorList, plLine: *s32) -> HRESULT #cpp_method;

    getErrorChar: (this: *IScriptErrorList, plChar: *s32) -> HRESULT #cpp_method;

    getErrorCode: (this: *IScriptErrorList, plCode: *s32) -> HRESULT #cpp_method;

    getErrorMsg: (this: *IScriptErrorList, pstr: *BSTR) -> HRESULT #cpp_method;

    getErrorUrl: (this: *IScriptErrorList, pstr: *BSTR) -> HRESULT #cpp_method;

    getAlwaysShowLockState: (this: *IScriptErrorList, pfAlwaysShowLocked: *BOOL) -> HRESULT #cpp_method;

    getDetailsPaneOpen: (this: *IScriptErrorList, pfDetailsPaneOpen: *BOOL) -> HRESULT #cpp_method;

    setDetailsPaneOpen: (this: *IScriptErrorList, fDetailsPaneOpen: BOOL) -> HRESULT #cpp_method;

    getPerErrorDisplay: (this: *IScriptErrorList, pfPerErrorDisplay: *BOOL) -> HRESULT #cpp_method;

    setPerErrorDisplay: (this: *IScriptErrorList, fPerErrorDisplay: BOOL) -> HRESULT #cpp_method;
}

IScriptErrorList_advanceError :: inline (this: *IScriptErrorList) -> HRESULT { return this.iscripterrorlist_vtable.advanceError(this); }

IScriptErrorList_retreatError :: inline (this: *IScriptErrorList) -> HRESULT { return this.iscripterrorlist_vtable.retreatError(this); }

IScriptErrorList_canAdvanceError :: inline (this: *IScriptErrorList, pfCanAdvance: *BOOL) -> HRESULT { return this.iscripterrorlist_vtable.canAdvanceError(this, pfCanAdvance); }

IScriptErrorList_canRetreatError :: inline (this: *IScriptErrorList, pfCanRetreat: *BOOL) -> HRESULT { return this.iscripterrorlist_vtable.canRetreatError(this, pfCanRetreat); }

IScriptErrorList_getErrorLine :: inline (this: *IScriptErrorList, plLine: *s32) -> HRESULT { return this.iscripterrorlist_vtable.getErrorLine(this, plLine); }

IScriptErrorList_getErrorChar :: inline (this: *IScriptErrorList, plChar: *s32) -> HRESULT { return this.iscripterrorlist_vtable.getErrorChar(this, plChar); }

IScriptErrorList_getErrorCode :: inline (this: *IScriptErrorList, plCode: *s32) -> HRESULT { return this.iscripterrorlist_vtable.getErrorCode(this, plCode); }

IScriptErrorList_getErrorMsg :: inline (this: *IScriptErrorList, pstr: *BSTR) -> HRESULT { return this.iscripterrorlist_vtable.getErrorMsg(this, pstr); }

IScriptErrorList_getErrorUrl :: inline (this: *IScriptErrorList, pstr: *BSTR) -> HRESULT { return this.iscripterrorlist_vtable.getErrorUrl(this, pstr); }

IScriptErrorList_getAlwaysShowLockState :: inline (this: *IScriptErrorList, pfAlwaysShowLocked: *BOOL) -> HRESULT { return this.iscripterrorlist_vtable.getAlwaysShowLockState(this, pfAlwaysShowLocked); }

IScriptErrorList_getDetailsPaneOpen :: inline (this: *IScriptErrorList, pfDetailsPaneOpen: *BOOL) -> HRESULT { return this.iscripterrorlist_vtable.getDetailsPaneOpen(this, pfDetailsPaneOpen); }

IScriptErrorList_setDetailsPaneOpen :: inline (this: *IScriptErrorList, fDetailsPaneOpen: BOOL) -> HRESULT { return this.iscripterrorlist_vtable.setDetailsPaneOpen(this, fDetailsPaneOpen); }

IScriptErrorList_getPerErrorDisplay :: inline (this: *IScriptErrorList, pfPerErrorDisplay: *BOOL) -> HRESULT { return this.iscripterrorlist_vtable.getPerErrorDisplay(this, pfPerErrorDisplay); }

IScriptErrorList_setPerErrorDisplay :: inline (this: *IScriptErrorList, fPerErrorDisplay: BOOL) -> HRESULT { return this.iscripterrorlist_vtable.setPerErrorDisplay(this, fPerErrorDisplay); }

vtable :: (obj: *IScriptErrorList) -> *IScriptErrorList_VTable { return obj.iscripterrorlist_vtable; }


CLSID_CScriptErrorList: CLSID;

#scope_file

shdocvw :: #system_library "shdocvw";
shell32 :: #system_library "shell32";
