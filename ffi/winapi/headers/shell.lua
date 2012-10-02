require( 'ffi/winapi/headers/windows' )
require( 'ffi/winapi/headers/gdi' )
require( 'ffi/winapi/headers/registry' )
local ffi = require( 'ffi' )
ffi.cdef [[
  typedef void* DFConstraint; //Interface
  typedef void* DFConstraint; //Interface
  typedef void* DShellFolderViewEvents; //Interface
  typedef void* Folder; //Interface
  typedef void* Folder2; //Interface
  typedef void* Folder3; //Interface
  typedef void* FolderItem; //Interface
  typedef void* FolderItem2; //Interface
  typedef void* FolderItems; //Interface
  typedef void* FolderItems2; //Interface
  typedef void* FolderItems3; //Interface
  typedef void* FolderItemVerb; //Interface
  typedef void* FolderItemVerbs; //Interface
  typedef void* IAccessibleObject; //Interface
  typedef void* IACList; //Interface
  typedef void* IACList2; //Interface
  typedef void* IActionProgress; //Interface
  typedef void* IActionProgressDialog; //Interface
  typedef void* IActiveDesktop; //Interface
  typedef void* IActiveDesktopP; //Interface
  typedef void* IADesktopP2; //Interface
  typedef void* IApplicationAssociationRegistration; //Interface
  typedef void* IApplicationAssociationRegistrationUI; //Interface
  typedef void* IApplicationDestinations; //Interface
  typedef void* IApplicationDocumentLists; //Interface
  typedef void* IAssocHandler; //Interface
  typedef void* IAssocHandlerInvoker; //Interface
  typedef void* IAsyncOperation; //Interface
  typedef void* IAttachmentExecute; //Interface
  typedef void* IAutoComplete; //Interface
  typedef void* IAutoComplete2; //Interface
  typedef void* IAutoCompleteDropDown; //Interface
  typedef void* IBandHost; //Interface
  typedef void* IBandSite; //Interface
  typedef void* IBanneredBar; //Interface
  typedef void* IBrowserFrameOptions; //Interface
  typedef void* ICategorizer; //Interface
  typedef void* ICategoryProvider; //Interface
  typedef void* ICDBurn; //Interface
  typedef void* ICDBurnExt; //Interface
  typedef void* IColumnManager; //Interface
  typedef void* IColumnProvider; //Interface
  typedef void* ICommDlgBrowser; //Interface
  typedef void* ICommDlgBrowser2; //Interface
  typedef void* ICommDlgBrowser3; //Interface
  typedef void* IComputerInfoChangeNotify; //Interface
  typedef void* IContextMenu; //Interface
  typedef void* IContextMenu2; //Interface
  typedef void* IContextMenu3; //Interface
  typedef void* IContextMenuCB; //Interface
  typedef void* IContextMenuSite; //Interface
  typedef void* IControlMarkup; //Interface
  typedef void* ICopyHookA; //Interface
  typedef void* ICopyHookW; //Interface
  typedef void* ICreateObject; //Interface
  typedef void* ICurrentItem; //Interface
  typedef void* ICurrentWorkingDirectory; //Interface
  typedef void* ICustomDestinationList; //Interface
  typedef void* IDefaultExtractIconInit; //Interface
  typedef void* IDefViewFrame; //Interface
  typedef void* IDelayedPropertyStoreFactory; //Interface
  typedef void* IDelegateFolder; //Interface
  typedef void* IDelegateItem; //Interface
  typedef void* IDeskBand; //Interface
  typedef void* IDeskBand2; //Interface
  typedef void* IDeskBandInfo; //Interface
  typedef void* IDeskBar; //Interface
  typedef void* IDeskBarClient; //Interface
  typedef void* IDesktopGadget; //Interface
  typedef void* IDestinationStreamFactory; //Interface
  typedef void* IDisplayItem; //Interface
  typedef void* IDockingWindow; //Interface
  typedef void* IDockingWindowFrame; //Interface
  typedef void* IDockingWindowSite; //Interface
  typedef void* IDocViewSite; //Interface
  typedef void* IDragSourceHelper; //Interface
  typedef void* IDragSourceHelper2; //Interface
  typedef void* IDropTargetHelper; //Interface
  typedef void* IDynamicHWHandler; //Interface
  typedef void* IEmptyVolumeCache; //Interface
  typedef void* IEmptyVolumeCache2; //Interface
  typedef void* IEmptyVolumeCacheCallBack; //Interface
  typedef void* IEnumACString; //Interface
  typedef void* IEnumAssocHandlers; //Interface
  typedef void* IEnumerableView; //Interface
  typedef void* IEnumExplorerCommand; //Interface
  typedef void* IEnumExtraSearch; //Interface
  typedef void* IEnumFullIDList; //Interface
  typedef void* IEnumIDList; //Interface
  typedef void* IEnumObjects; //Interface
  typedef void* IEnumReadyCallback; //Interface
  typedef void* IEnumResources; //Interface
  typedef void* IEnumShellImageStore; //Interface
  typedef void* IEnumShellItems; //Interface
  typedef void* IExecuteCommand; //Interface
  typedef void* IExplorerBrowser; //Interface
  typedef void* IExplorerBrowserEvents; //Interface
  typedef void* IExplorerCommand; //Interface
  typedef void* IExplorerCommandProvider; //Interface
  typedef void* IExplorerCommandState; //Interface
  typedef void* IExplorerPaneVisibility; //Interface
  typedef void* IExtractIconA; //Interface
  typedef void* IExtractIconW; //Interface
  typedef void* IExtractImage; //Interface
  typedef void* IExtractImage2; //Interface
  typedef void* IFileDialog; //Interface
  typedef void* IFileDialog2; //Interface
  typedef void* IFileDialogControlEvents; //Interface
  typedef void* IFileDialogCustomize; //Interface
  typedef void* IFileDialogEvents; //Interface
  typedef void* IFileIsInUse; //Interface
  typedef void* IFileOpenDialog; //Interface
  typedef void* IFileOperation; //Interface
  typedef void* IFileOperationProgressSink; //Interface
  typedef void* IFileSaveDialog; //Interface
  typedef void* IFileSearchBand; //Interface
  typedef void* IFileSystemBindData; //Interface
  typedef void* IFileSystemBindData2; //Interface
  typedef void* IFileViewerSite; //Interface
  typedef void* IFolderBandPriv; //Interface
  typedef void* IFolderFilter; //Interface
  typedef void* IFolderFilterSite; //Interface
  typedef void* IFolderView; //Interface
  typedef void* IFolderView2; //Interface
  typedef void* IFolderViewHost; //Interface
  typedef void* IFolderViewOC; //Interface
  typedef void* IFolderViewOptions; //Interface
  typedef void* IFolderViewSettings; //Interface
  typedef void* IHomeGroup; //Interface
  typedef void* IHWEventHandler; //Interface
  typedef void* IHWEventHandler2; //Interface
  typedef void* IIdentityName; //Interface
  typedef void* IImageRecompress; //Interface
  typedef void* IInitializeCommand; //Interface
  typedef void* IInitializeNetworkFolder; //Interface
  typedef void* IInitializeObject; //Interface
  typedef void* IInitializeWithBindCtx; //Interface
  typedef void* IInitializeWithFile; //Interface
  typedef void* IInitializeWithItem; //Interface
  typedef void* IInitializeWithPropertyStore; //Interface
  typedef void* IInitializeWithStream; //Interface
  typedef void* IInputObject; //Interface
  typedef void* IInputObject2; //Interface
  typedef void* IInputObjectSite; //Interface
  typedef void* IInsertItem; //Interface
  typedef void* IIOCancelInformation; //Interface
  typedef void* IItemNameLimits; //Interface
  typedef void* IKnownFolder; //Interface
  typedef void* IKnownFolderManager; //Interface
  typedef void* IMarkupCallback; //Interface
  typedef void* IMenuBand; //Interface
  typedef void* IMenuPopup; //Interface
  typedef void* IModalWindow; //Interface
  typedef void* INamedPropertyBag; //Interface
  typedef void* INamedPropertyStore; //Interface
  typedef void* INameSpaceTreeAccessible; //Interface
  typedef void* INameSpaceTreeControl; //Interface
  typedef void* INameSpaceTreeControl2; //Interface
  typedef void* INameSpaceTreeControlCustomDraw; //Interface
  typedef void* INameSpaceTreeControlDropHandler; //Interface
  typedef void* INameSpaceTreeControlEvents; //Interface
  typedef void* INameSpaceTreeControlFolderCapabilities; //Interface
  typedef void* INamespaceWalk; //Interface
  typedef void* INamespaceWalkCB; //Interface
  typedef void* INamespaceWalkCB2; //Interface
  typedef void* INewMenuClient; //Interface
  typedef void* INewShortcutHookA; //Interface
  typedef void* INewShortcutHookW; //Interface
  typedef void* INewWDEvents; //Interface
  typedef void* INewWindowManager; //Interface
  typedef void* IObjectArray; //Interface
  typedef void* IObjectCollection; //Interface
  typedef void* IObjectProvider; //Interface
  typedef void* IObjectWithAppUserModelID; //Interface
  typedef void* IObjectWithBackReferences; //Interface
  typedef void* IObjectWithCancelEvent; //Interface
  typedef void* IObjectWithFolderEnumMode; //Interface
  typedef void* IObjectWithProgID; //Interface
  typedef void* IObjectWithPropertyKey; //Interface
  typedef void* IObjectWithSelection; //Interface
  typedef void* IObjMgr; //Interface
  typedef void* IOpenControlPanel; //Interface
  typedef void* IOpenSearchSource; //Interface
  typedef void* IOperationsProgressDialog; //Interface
  typedef void* IParentAndItem; //Interface
  typedef void* IParseAndCreateItem; //Interface
  typedef void* IPersistFolder; //Interface
  typedef void* IPersistFolder2; //Interface
  typedef void* IPersistFolder3; //Interface
  typedef void* IPersistIDList; //Interface
  typedef void* IPersistSerializedPropStorage; //Interface
  typedef void* IPersistSerializedPropStorage2; //Interface
  typedef void* IPreviewHandler; //Interface
  typedef void* IPreviewHandlerFrame; //Interface
  typedef void* IPreviewHandlerVisuals; //Interface
  typedef void* IPreviewItem; //Interface
  typedef void* IPreviousVersionsInfo; //Interface
  typedef void* IProfferService; //Interface
  typedef void* IProgressDialog; //Interface
  typedef void* IPropertySystemChangeNotify; //Interface
  typedef void* IPublishingWizard; //Interface
  typedef void* IQueryAssociations; //Interface
  typedef void* IQueryCancelAutoPlay; //Interface
  typedef void* IQueryCodePage; //Interface
  typedef void* IQueryContinue; //Interface
  typedef void* IQueryInfo; //Interface
  typedef void* IRegTreeItem; //Interface
  typedef void* IRelatedItem; //Interface
  typedef void* IRemoteComputer; //Interface
  typedef void* IResolveShellLink; //Interface
  typedef void* IResultsFolder; //Interface
  typedef void* IRunnableTask; //Interface
  typedef void* ISearchBoxInfo; //Interface
  typedef void* ISearchContext; //Interface
  typedef void* ISearchFolderItemFactory; //Interface
  typedef void* ISharedBitmap; //Interface
  typedef void* ISharingConfigurationManager; //Interface
  typedef void* IShellBrowser; //Interface
  typedef void* IShellChangeNotify; //Interface
  typedef void* IShellDetails; //Interface
  typedef void* IShellDispatch; //Interface
  typedef void* IShellDispatch2; //Interface
  typedef void* IShellDispatch3; //Interface
  typedef void* IShellDispatch4; //Interface
  typedef void* IShellDispatch5; //Interface
  typedef void* IShellExecuteHookA; //Interface
  typedef void* IShellExecuteHookW; //Interface
  typedef void* IShellExtInit; //Interface
  typedef void* IShellFolder; //Interface
  typedef void* IShellFolder2; //Interface
  typedef void* IShellFolderBand; //Interface
  typedef void* IShellFolderView; //Interface
  typedef void* IShellFolderViewCB; //Interface
  typedef void* IShellFolderViewDual; //Interface
  typedef void* IShellFolderViewDual2; //Interface
  typedef void* IShellFolderViewDual3; //Interface
  typedef void* IShellIcon; //Interface
  typedef void* IShellIconOverlay; //Interface
  typedef void* IShellIconOverlayIdentifier; //Interface
  typedef void* IShellIconOverlayManager; //Interface
  typedef void* IShellImageData; //Interface
  typedef void* IShellImageDataAbort; //Interface
  typedef void* IShellImageDataFactory; //Interface
  typedef void* IShellImageStore; //Interface
  typedef void* IShellItem; //Interface
  typedef void* IShellItem2; //Interface
  typedef void* IShellItemArray; //Interface
  typedef void* IShellItemFilter; //Interface
  typedef void* IShellItemImageFactory; //Interface
  typedef void* IShellItemResources; //Interface
  typedef void* IShellLibrary; //Interface
  typedef void* IShellLinkA; //Interface
  typedef void* IShellLinkDataList; //Interface
  typedef void* IShellLinkDual; //Interface
  typedef void* IShellLinkDual2; //Interface
  typedef void* IShellLinkW; //Interface
  typedef void* IShellMenu; //Interface
  typedef void* IShellMenuCallback; //Interface
  typedef void* IShellPropSheetExt; //Interface
  typedef void* IShellRunDll; //Interface
  typedef void* IShellTaskScheduler; //Interface
  typedef void* IShellView; //Interface
  typedef void* IShellView2; //Interface
  typedef void* IShellView3; //Interface
  typedef void* IStartMenuPinnedList; //Interface
  typedef void* IStreamAsync; //Interface
  typedef void* IStreamUnbufferedInfo; //Interface
  typedef void* ITaskbarList; //Interface
  typedef void* ITaskbarList2; //Interface
  typedef void* ITaskbarList3; //Interface
  typedef void* ITaskbarList4; //Interface
  typedef void* IThumbnailCache; //Interface
  typedef void* IThumbnailCapture; //Interface
  typedef void* IThumbnailHandlerFactory; //Interface
  typedef void* IThumbnailProvider; //Interface
  typedef void* ITranscodeImage; //Interface
  typedef void* ITransferAdviseSink; //Interface
  typedef void* ITransferDestination; //Interface
  typedef void* ITransferMediumItem; //Interface
  typedef void* ITransferSource; //Interface
  typedef void* ITrayDeskBand; //Interface
  typedef void* IUpdateIDList; //Interface
  typedef void* IURLSearchHook; //Interface
  typedef void* IURLSearchHook2; //Interface
  typedef void* IUserAccountChangeCallback; //Interface
  typedef void* IUserNotification; //Interface
  typedef void* IUserNotification2; //Interface
  typedef void* IUserNotificationCallback; //Interface
  typedef void* IUseToBrowseItem; //Interface
  typedef void* IViewStateIdentityItem; //Interface
  typedef void* IVisualProperties; //Interface
  typedef void* IWebWizardExtension; //Interface
  typedef void* IWebWizardHost; //Interface
  typedef void* IWizardExtension; //Interface
  typedef void* IWizardSite; //Interface
  typedef void* IObjectArray; //Interface
  typedef void* IEnumGUID; //Interface
  typedef void* IPropertyChangeArray; //Interface
  typedef void* IXMLDOMDocument; //Interface
  typedef void* ICondition; //Interface
  typedef void* IPropertyDescriptionList; //Interface
  typedef void* IPropertyStore; //Interface
  typedef HANDLE HDWP; //Alias
  typedef GUID SHELLVIEWID; //Alias
  typedef GUID KNOWNFOLDERID; //Alias
  typedef KNOWNFOLDERID *REFKNOWNFOLDERID; //Pointer
  typedef GUID TASKOWNERID; //Alias
  typedef TASKOWNERID *REFTASKOWNERID; //Pointer
  typedef GUID FOLDERTYPEID; //Alias
  typedef FOLDERTYPEID *REFFOLDERTYPEID; //Pointer
  typedef GUID EXPLORERPANE; //Alias
  typedef EXPLORERPANE *REFEXPLORERPANE; //Pointer
  typedef HRESULT DEPRECATED_HRESULT; //Alias
  typedef LPARAM LPFNSVADDPROPSHEETPAGE; //Alias
  typedef LPARAM LPTBBUTTONSB; //Alias
  typedef HANDLE HTHEME; //Alias
  typedef PROPERTYKEY SHCOLUMNID; //Alias
  typedef SHCOLUMNID *LPCSHCOLUMNID; //Pointer
  typedef LPVOID BFFCALLBACK; //Alias
  typedef double DATE; //Alias
  typedef BYTE Image; //Alias
  typedef struct PREVIEWHANDLERFRAMEINFO {
    HACCEL haccel;
    UINT cAccelEntries;
  } PREVIEWHANDLERFRAMEINFO;
# pragma pack( push, 1 )
  typedef struct SHITEMID {
    USHORT cb;
    BYTE abID[1];
  } SHITEMID;
# pragma pack( pop )
  typedef SHITEMID *LPSHITEMID; //Pointer
# pragma pack( push, 1 )
  typedef struct ITEMIDLIST {
    SHITEMID mkid;
  } ITEMIDLIST;
# pragma pack( pop )
  typedef ITEMIDLIST *LPITEMIDLIST; //Pointer
  typedef ITEMIDLIST *LPCITEMIDLIST; //Pointer
  typedef ITEMIDLIST *PIDLIST_ABSOLUTE; //Pointer
  typedef ITEMIDLIST *PCIDLIST_ABSOLUTE; //Pointer
  typedef ITEMIDLIST *PIDLIST_RELATIVE; //Pointer
  typedef ITEMIDLIST *PUIDLIST_RELATIVE; //Pointer
  typedef ITEMIDLIST *PCUIDLIST_RELATIVE; //Pointer
  typedef ITEMIDLIST *PUITEMID_CHILD; //Pointer
  typedef ITEMIDLIST *PITEMID_CHILD; //Pointer
  typedef ITEMIDLIST *PCUITEMID_CHILD; //Pointer
  typedef PCUITEMID_CHILD *PCUITEMID_CHILD_ARRAY; //Pointer
  typedef PCUIDLIST_RELATIVE *PCUIDLIST_RELATIVE_ARRAY; //Pointer
  typedef PCIDLIST_ABSOLUTE *PCIDLIST_ABSOLUTE_ARRAY; //Pointer
  typedef UINT STRRET_TYPE; //Alias
# pragma pack( push, 8 )
  typedef union WINAPI_STRRET_u {
    LPWSTR pOleStr;
    UINT uOffset;
    char cStr[260];
  } WINAPI_STRRET_u;
# pragma pack( pop )
# pragma pack( push, 8 )
  typedef struct STRRET {
    STRRET_TYPE uType;
    WINAPI_STRRET_u ;
  } STRRET;
# pragma pack( pop )
  typedef STRRET *LPSTRRET; //Pointer
  typedef UINT WINAPI_SHELLDETAILS_fmt; //Alias
  typedef struct SHELLDETAILS {
    WINAPI_SHELLDETAILS_fmt fmt;
    int cxChar;
    STRRET str;
  } SHELLDETAILS;
  typedef UINT WINAPI_CSIDL; //Alias
# pragma pack( push, 8 )
  typedef struct PERSIST_FOLDER_TARGET_INFO {
    PIDLIST_ABSOLUTE pidlTargetFolder;
    WCHAR szTargetParsingName[260];
    WCHAR szNetworkProvider[260];
    WINAPI_FileAttributes dwAttributes;
    WINAPI_CSIDL csidl;
  } PERSIST_FOLDER_TARGET_INFO;
# pragma pack( pop )
  typedef struct SHELL_ITEM_RESOURCE {
    GUID guidType;
    WCHAR szName[260];
  } SHELL_ITEM_RESOURCE;
  typedef DWORD CM_MASK; //Alias
  typedef DWORD CM_STATE; //Alias
  typedef enum CM_SET_WIDTH_VALUE {
    CM_WIDTH_USEDEFAULT = -1,
    CM_WIDTH_AUTOSIZE = -2,
  } CM_SET_WIDTH_VALUE;
  typedef struct CM_COLUMNINFO {
    DWORD cbSize;
    CM_MASK dwMask;
    CM_STATE dwState;
    UINT uWidth;
    CM_SET_WIDTH_VALUE uDefaultWidth;
    UINT uIdealWidth;
    WCHAR wszName[80];
  } CM_COLUMNINFO;
  typedef UINT CATEGORYINFO_FLAGS; //Alias
  typedef struct CATEGORY_INFO {
    CATEGORYINFO_FLAGS cif;
    WCHAR wszName[260];
  } CATEGORY_INFO;
  typedef DWORD WINAPI_DBIM; //Alias
  typedef DWORD WINAPI_DBIMF; //Alias
# pragma pack( push, 8 )
  typedef struct DESKBANDINFO {
    WINAPI_DBIM dwMask;
    POINTL ptMinSize;
    POINTL ptMaxSize;
    POINTL ptIntegral;
    POINTL ptActual;
    WCHAR wszTitle[256];
    WINAPI_DBIMF dwModeFlags;
    COLORREF crBkgnd;
  } DESKBANDINFO;
# pragma pack( pop )
  typedef struct EXTRASEARCH {
    GUID guidSearch;
    WCHAR wszFriendlyName[80];
    WCHAR wszUrl[2084];
  } EXTRASEARCH;
  typedef DWORD THUMBBUTTONFLAGS; //Alias
  typedef DWORD THUMBBUTTONMASK; //Alias
# pragma pack( push, 8 )
  typedef struct THUMBBUTTON {
    THUMBBUTTONMASK dwMask;
    UINT iId;
    UINT iBitmap;
    HICON hIcon;
    WCHAR szTip[260];
    THUMBBUTTONFLAGS dwFlags;
  } THUMBBUTTON;
# pragma pack( pop )
  typedef THUMBBUTTON *LPTHUMBBUTTON; //Pointer
  typedef DWORD NSTCITEMSTATE; //Alias
  typedef struct NSTCCUSTOMDRAW {
    IShellItem* psi;
    UINT uItemState;
    NSTCITEMSTATE nstcis;
    LPCWSTR pszText;
    int iImage;
    HIMAGELIST himl;
    int iLevel;
    int iIndent;
  } NSTCCUSTOMDRAW;
  typedef enum FOLDERVIEWMODE {
    FVM_AUTO = -1,
    FVM_FIRST = 1,
    FVM_ICON = 1,
    FVM_SMALLICON = 2,
    FVM_LIST = 3,
    FVM_DETAILS = 4,
    FVM_THUMBNAIL = 5,
    FVM_TILE = 6,
    FVM_THUMBSTRIP = 7,
    FVM_CONTENT = 8,
  } FOLDERVIEWMODE;
  typedef UINT FOLDERFLAGS; //Alias
  typedef struct FOLDERSETTINGS {
    FOLDERVIEWMODE ViewMode;
    FOLDERFLAGS fFlags;
  } FOLDERSETTINGS;
  typedef FOLDERSETTINGS *LPFOLDERSETTINGS; //Pointer
  typedef FOLDERSETTINGS *LPCFOLDERSETTINGS; //Pointer
  typedef struct SV2CVW2_PARAMS {
    DWORD cbSize;
    IShellView* psvPrev;
    LPCFOLDERSETTINGS pfs;
    IShellBrowser* psbOwner;
    RECT* prcView;
    WINAPI_SHELLVIEWID* pvid;
    HWND hwndView;
  } SV2CVW2_PARAMS;
  typedef SV2CVW2_PARAMS *LPSV2CVW2_PARAMS; //Pointer
  typedef enum KF_CATEGORY {
    KF_CATEGORY_VIRTUAL = 1,
    KF_CATEGORY_FIXED = 2,
    KF_CATEGORY_COMMON = 3,
    KF_CATEGORY_PERUSER = 4,
  } KF_CATEGORY;
  typedef DWORD KF_DEFINITION_FLAGS; //Alias
  typedef struct KNOWNFOLDER_DEFINITION {
    KF_CATEGORY category;
    LPWSTR pszName;
    LPWSTR pszDescription;
    KNOWNFOLDERID fidParent;
    LPWSTR pszRelativePath;
    LPWSTR pszParsingName;
    LPWSTR pszTooltip;
    LPWSTR pszLocalizedName;
    LPWSTR pszIcon;
    LPWSTR pszSecurity;
    DWORD dwAttributes;
    KF_DEFINITION_FLAGS kfdFlags;
    FOLDERTYPEID ftidType;
  } KNOWNFOLDER_DEFINITION;
  typedef enum SORTDIRECTION {
    SORT_DESCENDING = -1,
    SORT_ASCENDING = 1,
  } SORTDIRECTION;
  typedef struct SORTCOLUMN {
    PROPERTYKEY propkey;
    SORTDIRECTION direction;
  } SORTCOLUMN;
# pragma pack( push, 8 )
  typedef struct BANDSITEINFO {
    DWORD dwMask;
    DWORD dwState;
    DWORD dwStyle;
  } BANDSITEINFO;
# pragma pack( pop )
  typedef DWORD WINAPI_CMIC_Mask; //Alias
# pragma pack( push, 8 )
  typedef struct CMINVOKECOMMANDINFO {
    DWORD cbSize;
    WINAPI_CMIC_Mask fMask;
    HWND hwnd;
    LPCSTR lpVerb;
    LPCSTR lpParameters;
    LPCSTR lpDirectory;
    WINAPI_ShowWindowCmd nShow;
    DWORD dwHotKey;
    HANDLE hIcon;
  } CMINVOKECOMMANDINFO;
# pragma pack( pop )
# pragma pack( push, 8 )
  typedef struct SHDRAGIMAGE {
    SIZE sizeDragImage;
    POINT ptOffset;
    HBITMAP hbmpDragImage;
    COLORREF crColorKey;
  } SHDRAGIMAGE;
# pragma pack( pop )
  typedef SHDRAGIMAGE *LPSHDRAGIMAGE; //Pointer
  typedef DWORD WINAPI_SMDATA_Mask; //Alias
# pragma pack( push, 8 )
  typedef struct SMDATA {
    WINAPI_SMDATA_Mask dwMask;
    DWORD dwFlags;
    HMENU hmenu;
    HWND hwnd;
    UINT uId;
    UINT uIdParent;
    UINT uIdAncestor;
    IUnknown* punk;
    PIDLIST_ABSOLUTE pidlFolder;
    PUITEMID_CHILD pidlItem;
    IShellFolder* psf;
    void* pvUserData;
  } SMDATA;
# pragma pack( pop )
  typedef SMDATA *LPSMDATA; //Pointer
  typedef struct COMDLG_FILTERSPEC {
    LPCWSTR pszName;
    LPCWSTR pszSpec;
  } COMDLG_FILTERSPEC;
  typedef enum FDAP {
    FDAP_BOTTOM = 0,
    FDAP_TOP = 1,
  } FDAP;
  typedef DWORD SHCOLSTATEF; //Alias
  typedef enum FVTEXTTYPE {
    FVST_EMPTYTEXT = 0,
  } FVTEXTTYPE;
  typedef enum SPACTION {
    SPACTION_NONE = 0,
    SPACTION_MOVING = 1,
    SPACTION_COPYING = 2,
    SPACTION_RECYCLING = 3,
    SPACTION_APPLYINGATTRIBS = 4,
    SPACTION_DOWNLOADING = 5,
    SPACTION_SEARCHING_INTERNET = 6,
    SPACTION_CALCULATING = 7,
    SPACTION_UPLOADING = 8,
    SPACTION_SEARCHING_FILES = 9,
    SPACTION_DELETING = 10,
    SPACTION_RENAMING = 11,
    SPACTION_FORMATTING = 12,
    SPACTION_COPY_MOVING = 13,
  } SPACTION;
  typedef UINT SPBEGINF; //Alias
  typedef UINT SPINITF; //Alias
  typedef enum ASSOCIATIONTYPE {
    AT_FILEEXTENSION = 0,
    AT_URLPROTOCOL = 1,
    AT_STARTMENUCLIENT = 2,
    AT_MIMETYPE = 3,
  } ASSOCIATIONTYPE;
  typedef enum APPDOCLISTTYPE {
    ADLT_RECENT = 0,
    ADLT_FREQUENT = 1,
  } APPDOCLISTTYPE;
  typedef enum ATTACHMENT_PROMPT {
    ATTACHMENT_PROMPT_NONE = 0,
    ATTACHMENT_PROMPT_SAVE = 0x1,
    ATTACHMENT_PROMPT_EXEC = 0x2,
    ATTACHMENT_PROMPT_EXEC_OR_SAVE = 0x3,
  } ATTACHMENT_PROMPT;
  typedef enum SPTEXT {
    SPTEXT_ACTIONDESCRIPTION = 1,
    SPTEXT_ACTIONDETAIL = 2,
  } SPTEXT;
  typedef enum ASSOCIATIONLEVEL {
    AL_MACHINE = 0,
    AL_EFFECTIVE = 1,
    AL_USER = 2,
  } ASSOCIATIONLEVEL;
  typedef enum ATTACHMENT_ACTION {
    ATTACHMENT_ACTION_CANCEL = 0,
    ATTACHMENT_ACTION_SAVE = 0x1,
    ATTACHMENT_ACTION_EXEC = 0x2,
  } ATTACHMENT_ACTION;
  typedef UINT BROWSERFRAMEOPTIONS; //Alias
  typedef UINT CDBE_ACTIONS; //Alias
  typedef UINT CATSORT_FLAGS; //Alias
  typedef UINT CM_ENUM_FLAGS; //Alias
  typedef enum KNOWNDESTCATEGORY {
    KDC_FREQUENT = 1,
    KDC_RECENT = 2,
  } KNOWNDESTCATEGORY;
  typedef UINT EXPCMDSTATE; //Alias
  typedef UINT FILEOPENDIALOGOPTIONS; //Alias
  typedef enum FDE_OVERWRITE_RESPONSE {
    FDEOR_DEFAULT = 0,
    FDEOR_ACCEPT = 1,
    FDEOR_REFUSE = 2,
  } FDE_OVERWRITE_RESPONSE;
  typedef UINT CDCONTROLSTATEF; //Alias
  typedef enum FDE_SHAREVIOLATION_RESPONSE {
    FDESVR_DEFAULT = 0,
    FDESVR_ACCEPT = 1,
    FDESVR_REFUSE = 2,
  } FDE_SHAREVIOLATION_RESPONSE;
  typedef enum FILE_USAGE_TYPE {
    FUT_PLAYING = 0,
    FUT_EDITING = 1,
    FUT_GENERIC = 2,
  } FILE_USAGE_TYPE;
  typedef UINT EXPLORERPANESTATE; //Alias
  typedef UINT FOLDERVIEWOPTIONS; //Alias
  typedef enum FOLDERLOGICALVIEWMODE {
    FLVM_UNSPECIFIED = -1,
    FLVM_FIRST = 1,
    FLVM_DETAILS = 1,
    FLVM_TILES = 2,
    FLVM_ICONS = 3,
    FLVM_LIST = 4,
    FLVM_CONTENT = 5,
  } FOLDERLOGICALVIEWMODE;
  typedef UINT NSTCSTYLE; //Alias
  typedef UINT NSTCSTYLE2; //Alias
  typedef enum PDOPSTATUS {
    PDOPS_RUNNING = 1,
    PDOPS_PAUSED = 2,
    PDOPS_CANCELLED = 3,
    PDOPS_STOPPED = 4,
    PDOPS_ERRORS = 5,
  } PDOPSTATUS;
  typedef DWORD PDMODE; //Alias
  typedef UINT NSTCEHITTEST; //Alias
  typedef UINT NSTCFOLDERCAPABILITIES; //Alias
  typedef UINT NMCII_FLAGS; //Alias
  typedef enum FOLDER_ENUM_MODE {
    FEM_VIEWRESULT = 0,
    FEM_NAVIGATION = 1,
  } FOLDER_ENUM_MODE;
  typedef UINT TRANSFER_ADVISE_STATE; //Alias
  typedef enum NSTCECLICKTYPE {
    NSTCECT_LBUTTON = 0x1,
    NSTCECT_MBUTTON = 0x2,
    NSTCECT_RBUTTON = 0x3,
    NSTCECT_DBLCLICK = 0x4,
  } NSTCECLICKTYPE;
  typedef UINT TRANSFER_SOURCE_FLAGS; //Alias
  typedef UINT TBPFLAG; //Alias
  typedef enum LIBRARYFOLDERFILTER {
    LFF_FORCEFILESYSTEM = 1,
    LFF_STORAGEITEMS = 2,
    LFF_ALLITEMS = 3,
  } LIBRARYFOLDERFILTER;
  typedef UINT SIATTRIBFLAGS; //Alias
  typedef enum VPWATERMARKFLAGS {
    VPWF_DEFAULT = 0,
    VPWF_ALPHABLEND = 0x1,
  } VPWATERMARKFLAGS;
  typedef enum VPCOLORFLAGS {
    VPCF_TEXT = 1,
    VPCF_BACKGROUND = 2,
    VPCF_SORTCOLUMN = 3,
    VPCF_SUBTEXT = 4,
    VPCF_TEXTBACKGROUND = 5,
  } VPCOLORFLAGS;
  typedef UINT STPFLAG; //Alias
  typedef enum EXPPS {
    EXPPS_FILETYPES = 0x1,
  } EXPPS;
  typedef enum DEFAULTSAVEFOLDERTYPE {
    DSFT_DETECT = 1,
    DSFT_PRIVATE = 2,
    DSFT_PUBLIC = 3,
  } DEFAULTSAVEFOLDERTYPE;
  typedef enum LIBRARYOPTIONFLAGS {
    LOF_DEFAULT = 0,
    LOF_PINNEDTONAVPANE = 0x1,
  } LIBRARYOPTIONFLAGS;
  typedef UINT LIBRARYSAVEFLAGS; //Alias
  typedef enum SIGDN {
    SIGDN_NORMALDISPLAY = 0,
    SIGDN_PARENTRELATIVEPARSING = 0x80018001,
    SIGDN_DESKTOPABSOLUTEPARSING = 0x80028000,
    SIGDN_PARENTRELATIVEEDITING = 0x80031001,
    SIGDN_DESKTOPABSOLUTEEDITING = 0x8004c000,
    SIGDN_FILESYSPATH = 0x80058000,
    SIGDN_URL = 0x80068000,
    SIGDN_PARENTRELATIVEFORADDRESSBAR = 0x8007c001,
    SIGDN_PARENTRELATIVE = 0x80080001,
  } SIGDN;
  typedef DWORD SFGAOF; //Alias
  typedef DWORD SICHINTF; //Alias
  typedef UINT SHCONTF; //Alias
  typedef UINT SHGDNF; //Alias
  typedef enum DEF_SHARE_ID {
    DEFSHAREID_USERS = 1,
    DEFSHAREID_PUBLIC = 2,
  } DEF_SHARE_ID;
  typedef enum SHARE_ROLE {
    SHARE_ROLE_INVALID = -1,
    SHARE_ROLE_READER = 0,
    SHARE_ROLE_CONTRIBUTOR = 1,
    SHARE_ROLE_CO_OWNER = 2,
    SHARE_ROLE_OWNER = 3,
    SHARE_ROLE_CUSTOM = 4,
    SHARE_ROLE_MIXED = 5,
  } SHARE_ROLE;
  typedef enum PROPERTYUI_NAME_FLAGS {
    PUIFNF_DEFAULT = 0,
    PUIFNF_MNEMONIC = 0x1,
  } PROPERTYUI_NAME_FLAGS;
  typedef UINT PROPERTYUI_FLAGS; //Alias
  typedef UINT PROPERTYUI_FORMAT_FLAGS; //Alias
  typedef UINT HOMEGROUPSHARINGCHOICES; //Alias
  typedef UINT EXPCMDFLAGS; //Alias
  typedef UINT EXPLORER_BROWSER_FILL_FLAGS; //Alias
  typedef UINT KF_REDIRECTION_CAPABILITIES; //Alias
  typedef UINT NSTCROOTSTYLE; //Alias
  typedef enum CPVIEW {
    CPVIEW_CLASSIC = 0,
    CPVIEW_CATEGORY = 1,
  } CPVIEW;
  typedef UINT OPPROGDLGF; //Alias
  typedef enum FFFP_MODE {
    FFFP_EXACTMATCH = 0,
    FFFP_NEARESTPARENTMATCH = 1,
  } FFFP_MODE;
  typedef enum NSTCGNI {
    NSTCGNI_NEXT = 0,
    NSTCGNI_NEXTVISIBLE = 1,
    NSTCGNI_PREV = 2,
    NSTCGNI_PREVVISIBLE = 3,
    NSTCGNI_PARENT = 4,
    NSTCGNI_CHILD = 5,
    NSTCGNI_FIRSTVISIBLE = 6,
    NSTCGNI_LASTVISIBLE = 7,
  } NSTCGNI;
  typedef UINT KF_REDIRECT_FLAGS; //Alias
  typedef enum NMCSAEI_FLAGS {
    NMCSAEI_SELECT = 0,
    NMCSAEI_EDIT = 0x1,
  } NMCSAEI_FLAGS;
  typedef UINT SIIGBF; //Alias
  typedef UINT MP_POPUPFLAGS; //Alias
  typedef UINT SVSIF; //Alias
  typedef DWORD SV3CVW3_FLAGS; //Alias
  typedef UINT EXPLORER_BROWSER_OPTIONS; //Alias
  typedef enum PERCEIVED {
    PERCEIVED_TYPE_FIRST = -3,
    PERCEIVED_TYPE_CUSTOM = -3,
    PERCEIVED_TYPE_UNSPECIFIED = -2,
    PERCEIVED_TYPE_FOLDER = -1,
    PERCEIVED_TYPE_UNKNOWN = 0,
    PERCEIVED_TYPE_TEXT = 1,
    PERCEIVED_TYPE_IMAGE = 2,
    PERCEIVED_TYPE_AUDIO = 3,
    PERCEIVED_TYPE_VIDEO = 4,
    PERCEIVED_TYPE_COMPRESSED = 5,
    PERCEIVED_TYPE_DOCUMENT = 6,
    PERCEIVED_TYPE_SYSTEM = 7,
    PERCEIVED_TYPE_APPLICATION = 8,
    PERCEIVED_TYPE_GAMEMEDIA = 9,
    PERCEIVED_TYPE_CONTACTS = 10,
  } PERCEIVED;
  typedef DWORD PERCEIVEDFLAG; //Alias
  typedef WORD FILEOP_FLAGS; //Alias
  typedef UINT WINAPI_GIL_INPUT_FLAGS; //Alias
  typedef UINT WINAPI_GIL_OUTPUT_FLAGS; //Alias
  typedef UINT WINAPI_MessageBoxType; //Alias
  typedef enum WINAPI_MessageBoxResult {
    IDOK = 1,
    IDCANCEL = 2,
    IDABORT = 3,
    IDRETRY = 4,
    IDIGNORE = 5,
    IDYES = 6,
    IDNO = 7,
    IDTRYAGAIN = 10,
    IDCONTINUE = 11,
  } WINAPI_MessageBoxResult;
  typedef union WINAPI_SHELLEXECUTEINFO_u {
    HANDLE hIcon;
    HANDLE hMonitor;
  } WINAPI_SHELLEXECUTEINFO_u;
  typedef ULONG WINAPI_SEE_MASK; //Alias
  typedef enum WINAPI_SEE_HINSTANCE {
    SE_ERR_FNF = 2,
    SE_ERR_PNF = 3,
    SE_ERR_ACCESSDENIED = 5,
    SE_ERR_OOM = 8,
    SE_ERR_DLLNOTFOUND = 32,
    SE_ERR_SHARE = 26,
    SE_ERR_ASSOCINCOMPLETE = 27,
    SE_ERR_DDETIMEOUT = 28,
    SE_ERR_DDEFAIL = 29,
    SE_ERR_DDEBUSY = 30,
    SE_ERR_NOASSOC = 31,
  } WINAPI_SEE_HINSTANCE;
  typedef struct SHELLEXECUTEINFO {
    DWORD cbSize;
    WINAPI_SEE_MASK fMask;
    HWND hwnd;
    LPCTSTR lpVerb;
    LPCTSTR lpFile;
    LPCTSTR lpParameters;
    LPCTSTR lpDirectory;
    WINAPI_ShowWindowCmd nShow;
    WINAPI_SEE_HINSTANCE hInstApp;
    void* lpIDList;
    LPCTSTR lpClass;
    HKEY hkeyClass;
    DWORD dwHotKey;
    WINAPI_SHELLEXECUTEINFO_u ;
    HANDLE hProcess;
  } SHELLEXECUTEINFO;
  typedef SHELLEXECUTEINFO *LPSHELLEXECUTEINFO; //Pointer
  typedef enum ASSOCF {
    ASSOCF_INIT_NOREMAPCLSID = 0x00000001,
    ASSOCF_INIT_BYEXENAME = 0x00000002,
    ASSOCF_INIT_DEFAULTTOSTAR = 0x00000004,
    ASSOCF_INIT_DEFAULTTOFOLDER = 0x00000008,
    ASSOCF_NOUSERSETTINGS = 0x00000010,
    ASSOCF_NOTRUNCATE = 0x00000020,
    ASSOCF_VERIFY = 0x00000040,
    ASSOCF_REMAPRUNDLL = 0x00000080,
    ASSOCF_NOFIXUPS = 0x00000100,
    ASSOCF_IGNOREBASECLASS = 0x00000200,
    ASSOCF_INIT_IGNOREUNKNOWN = 0x00000400,
  } ASSOCF;
  typedef enum ASSOCSTR {
    ASSOCSTR_COMMAND = 1,
    ASSOCSTR_EXECUTABLE = 2,
    ASSOCSTR_FRIENDLYDOCNAME = 3,
    ASSOCSTR_FRIENDLYAPPNAME = 4,
    ASSOCSTR_NOOPEN = 5,
    ASSOCSTR_SHELLNEWVALUE = 6,
    ASSOCSTR_DDECOMMAND = 7,
    ASSOCSTR_DDEIFEXEC = 8,
    ASSOCSTR_DDEAPPLICATION = 9,
    ASSOCSTR_DDETOPIC = 10,
    ASSOCSTR_INFOTIP = 11,
    ASSOCSTR_QUICKTIP = 12,
    ASSOCSTR_TILEINFO = 13,
    ASSOCSTR_CONTENTTYPE = 14,
    ASSOCSTR_DEFAULTICON = 15,
    ASSOCSTR_SHELLEXTENSION = 16,
    ASSOCSTR_DROPTARGET = 17,
    ASSOCSTR_DELEGATEEXECUTE = 18,
    ASSOCSTR_MAX = 19,
  } ASSOCSTR;
  typedef enum ASSOCKEY {
    ASSOCKEY_SHELLEXECCLASS = 1,
    ASSOCKEY_APP = 2,
    ASSOCKEY_CLASS = 3,
    ASSOCKEY_BASECLASS = 4,
  } ASSOCKEY;
  typedef enum ASSOCDATA {
    ASSOCDATA_MSIDESCRIPTOR = 1,
    ASSOCDATA_NOACTIVATEHANDLER = 2,
    ASSOCDATA_QUERYCLASSSTORE = 3,
    ASSOCDATA_HASPERUSERASSOC = 4,
    ASSOCDATA_EDITFLAGS = 5,
    ASSOCDATA_VALUE = 6,
  } ASSOCDATA;
  typedef enum ASSOCENUM {
    ASSOCENUM_NONE = 0,
  } ASSOCENUM;
  typedef struct APPCATEGORYINFO {
    LCID Locale;
    LPWSTR pszDescription;
    GUID AppCategoryId;
  } APPCATEGORYINFO;
  typedef struct APPCATEGORYINFOLIST {
    DWORD cCategory;
    APPCATEGORYINFO* pCategoryInfo;
  } APPCATEGORYINFOLIST;
  typedef enum WTS_ALPHATYPE {
    WTSAT_UNKNOWN = 0,
    WTSAT_RGB = 1,
    WTSAT_ARGB = 2,
  } WTS_ALPHATYPE;
  typedef DWORD WTS_FLAGS; //Alias
  typedef struct WTS_THUMBNAILID {
    BYTE rgbKey[16];
  } WTS_THUMBNAILID;
  typedef DWORD WTS_CACHEFLAGS; //Alias
  typedef enum WINAPI_PROPSPEC_KIND {
    PRSPEC_LPWSTR = 0,
    PRSPEC_PROPID = 1,
  } WINAPI_PROPSPEC_KIND;
  typedef union WINAPI_PROPSPEC_u {
    PROPID propid;
    LPOLESTR lpwstr;
  } WINAPI_PROPSPEC_u;
  typedef struct PROPSPEC {
    WINAPI_PROPSPEC_KIND ulKind;
    WINAPI_PROPSPEC_u ;
  } PROPSPEC;
  typedef PROPSPEC *PROPSPEC const[]; //Pointer
  typedef enum WINAPI_SystemParametersInfoEnum {
    SPI_GETBEEP = 0x0001,
    SPI_SETBEEP = 0x0002,
    SPI_GETMOUSE = 0x0003,
    SPI_SETMOUSE = 0x0004,
    SPI_GETBORDER = 0x0005,
    SPI_SETBORDER = 0x0006,
    SPI_GETKEYBOARDSPEED = 0x000A,
    SPI_SETKEYBOARDSPEED = 0x000B,
    SPI_LANGDRIVER = 0x000C,
    SPI_ICONHORIZONTALSPACING = 0x000D,
    SPI_GETSCREENSAVETIMEOUT = 0x000E,
    SPI_SETSCREENSAVETIMEOUT = 0x000F,
    SPI_GETSCREENSAVEACTIVE = 0x0010,
    SPI_SETSCREENSAVEACTIVE = 0x0011,
    SPI_GETGRIDGRANULARITY = 0x0012,
    SPI_SETGRIDGRANULARITY = 0x0013,
    SPI_SETDESKWALLPAPER = 0x0014,
    SPI_SETDESKPATTERN = 0x0015,
    SPI_GETKEYBOARDDELAY = 0x0016,
    SPI_SETKEYBOARDDELAY = 0x0017,
    SPI_ICONVERTICALSPACING = 0x0018,
    SPI_GETICONTITLEWRAP = 0x0019,
    SPI_SETICONTITLEWRAP = 0x001A,
    SPI_GETMENUDROPALIGNMENT = 0x001B,
    SPI_SETMENUDROPALIGNMENT = 0x001C,
    SPI_SETDOUBLECLKWIDTH = 0x001D,
    SPI_SETDOUBLECLKHEIGHT = 0x001E,
    SPI_GETICONTITLELOGFONT = 0x001F,
    SPI_SETDOUBLECLICKTIME = 0x0020,
    SPI_SETMOUSEBUTTONSWAP = 0x0021,
    SPI_SETICONTITLELOGFONT = 0x0022,
    SPI_GETFASTTASKSWITCH = 0x0023,
    SPI_SETFASTTASKSWITCH = 0x0024,
    SPI_SETDRAGFULLWINDOWS = 0x0025,
    SPI_GETDRAGFULLWINDOWS = 0x0026,
    SPI_GETNONCLIENTMETRICS = 0x0029,
    SPI_SETNONCLIENTMETRICS = 0x002A,
    SPI_GETMINIMIZEDMETRICS = 0x002B,
    SPI_SETMINIMIZEDMETRICS = 0x002C,
    SPI_GETICONMETRICS = 0x002D,
    SPI_SETICONMETRICS = 0x002E,
    SPI_SETWORKAREA = 0x002F,
    SPI_GETWORKAREA = 0x0030,
    SPI_SETPENWINDOWS = 0x0031,
    SPI_GETHIGHCONTRAST = 0x0042,
    SPI_SETHIGHCONTRAST = 0x0043,
    SPI_GETKEYBOARDPREF = 0x0044,
    SPI_SETKEYBOARDPREF = 0x0045,
    SPI_GETSCREENREADER = 0x0046,
    SPI_SETSCREENREADER = 0x0047,
    SPI_GETANIMATION = 0x0048,
    SPI_SETANIMATION = 0x0049,
    SPI_GETFONTSMOOTHING = 0x004A,
    SPI_SETFONTSMOOTHING = 0x004B,
    SPI_SETDRAGWIDTH = 0x004C,
    SPI_SETDRAGHEIGHT = 0x004D,
    SPI_SETHANDHELD = 0x004E,
    SPI_GETLOWPOWERTIMEOUT = 0x004F,
    SPI_GETPOWEROFFTIMEOUT = 0x0050,
    SPI_SETLOWPOWERTIMEOUT = 0x0051,
    SPI_SETPOWEROFFTIMEOUT = 0x0052,
    SPI_GETLOWPOWERACTIVE = 0x0053,
    SPI_GETPOWEROFFACTIVE = 0x0054,
    SPI_SETLOWPOWERACTIVE = 0x0055,
    SPI_SETPOWEROFFACTIVE = 0x0056,
    SPI_SETCURSORS = 0x0057,
    SPI_SETICONS = 0x0058,
    SPI_GETDEFAULTINPUTLANG = 0x0059,
    SPI_SETDEFAULTINPUTLANG = 0x005A,
    SPI_SETLANGTOGGLE = 0x005B,
    SPI_GETWINDOWSEXTENSION = 0x005C,
    SPI_SETMOUSETRAILS = 0x005D,
    SPI_GETMOUSETRAILS = 0x005E,
    SPI_SETSCREENSAVERRUNNING = 0x0061,
    SPI_GETFILTERKEYS = 0x0032,
    SPI_SETFILTERKEYS = 0x0033,
    SPI_GETTOGGLEKEYS = 0x0034,
    SPI_SETTOGGLEKEYS = 0x0035,
    SPI_GETMOUSEKEYS = 0x0036,
    SPI_SETMOUSEKEYS = 0x0037,
    SPI_GETSHOWSOUNDS = 0x0038,
    SPI_SETSHOWSOUNDS = 0x0039,
    SPI_GETSTICKYKEYS = 0x003A,
    SPI_SETSTICKYKEYS = 0x003B,
    SPI_GETACCESSTIMEOUT = 0x003C,
    SPI_SETACCESSTIMEOUT = 0x003D,
    SPI_GETSERIALKEYS = 0x003E,
    SPI_SETSERIALKEYS = 0x003F,
    SPI_GETSOUNDSENTRY = 0x0040,
    SPI_SETSOUNDSENTRY = 0x0041,
    SPI_GETSNAPTODEFBUTTON = 0x005F,
    SPI_SETSNAPTODEFBUTTON = 0x0060,
    SPI_GETMOUSEHOVERWIDTH = 0x0062,
    SPI_SETMOUSEHOVERWIDTH = 0x0063,
    SPI_GETMOUSEHOVERHEIGHT = 0x0064,
    SPI_SETMOUSEHOVERHEIGHT = 0x0065,
    SPI_GETMOUSEHOVERTIME = 0x0066,
    SPI_SETMOUSEHOVERTIME = 0x0067,
    SPI_GETWHEELSCROLLLINES = 0x0068,
    SPI_SETWHEELSCROLLLINES = 0x0069,
    SPI_GETMENUSHOWDELAY = 0x006A,
    SPI_SETMENUSHOWDELAY = 0x006B,
    SPI_GETWHEELSCROLLCHARS = 0x006C,
    SPI_SETWHEELSCROLLCHARS = 0x006D,
    SPI_GETSHOWIMEUI = 0x006E,
    SPI_SETSHOWIMEUI = 0x006F,
    SPI_GETMOUSESPEED = 0x0070,
    SPI_SETMOUSESPEED = 0x0071,
    SPI_GETSCREENSAVERRUNNING = 0x0072,
    SPI_GETDESKWALLPAPER = 0x0073,
    SPI_GETAUDIODESCRIPTION = 0x0074,
    SPI_SETAUDIODESCRIPTION = 0x0075,
    SPI_GETSCREENSAVESECURE = 0x0076,
    SPI_SETSCREENSAVESECURE = 0x0077,
    SPI_GETACTIVEWINDOWTRACKING = 0x1000,
    SPI_SETACTIVEWINDOWTRACKING = 0x1001,
    SPI_GETMENUANIMATION = 0x1002,
    SPI_SETMENUANIMATION = 0x1003,
    SPI_GETCOMBOBOXANIMATION = 0x1004,
    SPI_SETCOMBOBOXANIMATION = 0x1005,
    SPI_GETLISTBOXSMOOTHSCROLLING = 0x1006,
    SPI_SETLISTBOXSMOOTHSCROLLING = 0x1007,
    SPI_GETGRADIENTCAPTIONS = 0x1008,
    SPI_SETGRADIENTCAPTIONS = 0x1009,
    SPI_GETKEYBOARDCUES = 0x100A,
    SPI_SETKEYBOARDCUES = 0x100B,
    SPI_GETACTIVEWNDTRKZORDER = 0x100C,
    SPI_SETACTIVEWNDTRKZORDER = 0x100D,
    SPI_GETHOTTRACKING = 0x100E,
    SPI_SETHOTTRACKING = 0x100F,
    SPI_GETMENUFADE = 0x1012,
    SPI_SETMENUFADE = 0x1013,
    SPI_GETSELECTIONFADE = 0x1014,
    SPI_SETSELECTIONFADE = 0x1015,
    SPI_GETTOOLTIPANIMATION = 0x1016,
    SPI_SETTOOLTIPANIMATION = 0x1017,
    SPI_GETTOOLTIPFADE = 0x1018,
    SPI_SETTOOLTIPFADE = 0x1019,
    SPI_GETCURSORSHADOW = 0x101A,
    SPI_SETCURSORSHADOW = 0x101B,
    SPI_GETMOUSESONAR = 0x101C,
    SPI_SETMOUSESONAR = 0x101D,
    SPI_GETMOUSECLICKLOCK = 0x101E,
    SPI_SETMOUSECLICKLOCK = 0x101F,
    SPI_GETMOUSEVANISH = 0x1020,
    SPI_SETMOUSEVANISH = 0x1021,
    SPI_GETFLATMENU = 0x1022,
    SPI_SETFLATMENU = 0x1023,
    SPI_GETDROPSHADOW = 0x1024,
    SPI_SETDROPSHADOW = 0x1025,
    SPI_GETBLOCKSENDINPUTRESETS = 0x1026,
    SPI_SETBLOCKSENDINPUTRESETS = 0x1027,
    SPI_GETUIEFFECTS = 0x103E,
    SPI_SETUIEFFECTS = 0x103F,
    SPI_GETDISABLEOVERLAPPEDCONTENT = 0x1040,
    SPI_SETDISABLEOVERLAPPEDCONTENT = 0x1041,
    SPI_GETCLIENTAREAANIMATION = 0x1042,
    SPI_SETCLIENTAREAANIMATION = 0x1043,
    SPI_GETCLEARTYPE = 0x1048,
    SPI_SETCLEARTYPE = 0x1049,
    SPI_GETSPEECHRECOGNITION = 0x104A,
    SPI_SETSPEECHRECOGNITION = 0x104B,
    SPI_GETFOREGROUNDLOCKTIMEOUT = 0x2000,
    SPI_SETFOREGROUNDLOCKTIMEOUT = 0x2001,
    SPI_GETACTIVEWNDTRKTIMEOUT = 0x2002,
    SPI_SETACTIVEWNDTRKTIMEOUT = 0x2003,
    SPI_GETFOREGROUNDFLASHCOUNT = 0x2004,
    SPI_SETFOREGROUNDFLASHCOUNT = 0x2005,
    SPI_GETCARETWIDTH = 0x2006,
    SPI_SETCARETWIDTH = 0x2007,
    SPI_GETMOUSECLICKLOCKTIME = 0x2008,
    SPI_SETMOUSECLICKLOCKTIME = 0x2009,
    SPI_GETFONTSMOOTHINGTYPE = 0x200A,
    SPI_SETFONTSMOOTHINGTYPE = 0x200B,
    SPI_GETFONTSMOOTHINGCONTRAST = 0x200C,
    SPI_SETFONTSMOOTHINGCONTRAST = 0x200D,
    SPI_GETFOCUSBORDERWIDTH = 0x200E,
    SPI_SETFOCUSBORDERWIDTH = 0x200F,
    SPI_GETFOCUSBORDERHEIGHT = 0x2010,
    SPI_SETFOCUSBORDERHEIGHT = 0x2011,
    SPI_GETFONTSMOOTHINGORIENTATION = 0x2012,
    SPI_SETFONTSMOOTHINGORIENTATION = 0x2013,
    SPI_GETMINIMUMHITRADIUS = 0x2014,
    SPI_SETMINIMUMHITRADIUS = 0x2015,
    SPI_GETMESSAGEDURATION = 0x2016,
    SPI_SETMESSAGEDURATION = 0x2017,
  } WINAPI_SystemParametersInfoEnum;
  typedef UINT WINAPI_SystemParametersInfoFlags; //Alias
]]
