require( 'ffi/winapi/headers/windows' )
local ffi = require( 'ffi' )
ffi.cdef [[
  typedef void* IDirectDraw; //Interface
  typedef void* IDirectDraw2; //Interface
  typedef void* IDirectDraw4; //Interface
  typedef void* IDirectDraw7; //Interface
  typedef void* IDirectDrawClipper; //Interface
  typedef void* IDirectDrawColorControl; //Interface
  typedef void* IDirectDrawGammaControl; //Interface
  typedef void* IDirectDrawPalette; //Interface
  typedef void* IDirectDrawSurface; //Interface
  typedef void* IDirectDrawSurface2; //Interface
  typedef void* IDirectDrawSurface3; //Interface
  typedef void* IDirectDrawSurface4; //Interface
  typedef void* IDirectDrawSurface7; //Interface
  typedef IDirectDraw* LPDIRECTDRAW; //Alias
  typedef IDirectDraw7* LPDIRECTDRAW7; //Alias
  typedef IDirectDrawSurface* LPDIRECTDRAWSURFACE; //Alias
  typedef IDirectDrawSurface4* LPDIRECTDRAWSURFACE4; //Alias
  typedef IDirectDrawSurface7* LPDIRECTDRAWSURFACE7; //Alias
  typedef IDirectDrawPalette* LPDIRECTDRAWPALETTE; //Alias
  typedef IDirectDrawClipper* LPDIRECTDRAWCLIPPER; //Alias
  typedef LPVOID LPDDENUMCALLBACK; //Alias
  typedef LPVOID LPDDENUMCALLBACKEX; //Alias
  typedef LPVOID LPDDENUMSURFACESCALLBACK; //Alias
  typedef LPVOID LPDDENUMMODESCALLBACK; //Alias
  enum { DD_ROP_SPACE = 8 };
  enum { MAX_DDDEVICEID_STRING = 512 };
  typedef enum WINAPI_DD_HRESULT {
    DD_OK = 0x00000000,
    DD_FALSE = 0x00000001,
    DDENUMRET_CANCEL = 0x00000000,
    DDENUMRET_OK = 0x00000001,
    DDERR_ALREADYINITIALIZED = 0x88760005,
    DDERR_CANNOTATTACHSURFACE = 0x8876000a,
    DDERR_CANNOTDETACHSURFACE = 0x88760014,
    DDERR_CURRENTLYNOTAVAIL = 0x88760028,
    DDERR_EXCEPTION = 0x88760037,
    DDERR_GENERIC = 0x80004005,
    DDERR_HEIGHTALIGN = 0x8876005a,
    DDERR_INCOMPATIBLEPRIMARY = 0x8876005f,
    DDERR_INVALIDCAPS = 0x88760064,
    DDERR_INVALIDCLIPLIST = 0x8876006e,
    DDERR_INVALIDMODE = 0x88760078,
    DDERR_INVALIDOBJECT = 0x88760082,
    DDERR_INVALIDPARAMS = 0x80070057,
    DDERR_INVALIDPIXELFORMAT = 0x88760091,
    DDERR_INVALIDRECT = 0x88760096,
    DDERR_LOCKEDSURFACES = 0x887600a0,
    DDERR_NO3D = 0x887600aa,
    DDERR_NOALPHAHW = 0x887600b4,
    DDERR_NOSTEREOHARDWARE = 0x887600b5,
    DDERR_NOSURFACELEFT = 0x887600b6,
    DDERR_NOCLIPLIST = 0x887600cd,
    DDERR_NOCOLORCONVHW = 0x887600d2,
    DDERR_NOCOOPERATIVELEVELSET = 0x887600d4,
    DDERR_NOCOLORKEY = 0x887600d7,
    DDERR_NOCOLORKEYHW = 0x887600dc,
    DDERR_NODIRECTDRAWSUPPORT = 0x887600de,
    DDERR_NOEXCLUSIVEMODE = 0x887600e1,
    DDERR_NOFLIPHW = 0x887600e6,
    DDERR_NOGDI = 0x887600f0,
    DDERR_NOMIRRORHW = 0x887600fa,
    DDERR_NOTFOUND = 0x887600ff,
    DDERR_NOOVERLAYHW = 0x88760104,
    DDERR_OVERLAPPINGRECTS = 0x8876010e,
    DDERR_NORASTEROPHW = 0x88760118,
    DDERR_NOROTATIONHW = 0x88760122,
    DDERR_NOSTRETCHHW = 0x88760136,
    DDERR_NOT4BITCOLOR = 0x8876013c,
    DDERR_NOT4BITCOLORINDEX = 0x8876013d,
    DDERR_NOT8BITCOLOR = 0x88760140,
    DDERR_NOTEXTUREHW = 0x8876014a,
    DDERR_NOVSYNCHW = 0x8876014f,
    DDERR_NOZBUFFERHW = 0x88760154,
    DDERR_NOZOVERLAYHW = 0x8876015e,
    DDERR_OUTOFCAPS = 0x88760168,
    DDERR_OUTOFMEMORY = 0x8007000e,
    DDERR_OUTOFVIDEOMEMORY = 0x8876017c,
    DDERR_OVERLAYCANTCLIP = 0x8876017e,
    DDERR_OVERLAYCOLORKEYONLYONEACTIVE = 0x88760180,
    DDERR_PALETTEBUSY = 0x88760183,
    DDERR_COLORKEYNOTSET = 0x88760190,
    DDERR_SURFACEALREADYATTACHED = 0x8876019a,
    DDERR_SURFACEALREADYDEPENDENT = 0x887601a4,
    DDERR_SURFACEBUSY = 0x887601ae,
    DDERR_CANTLOCKSURFACE = 0x887601b3,
    DDERR_SURFACEISOBSCURED = 0x887601b8,
    DDERR_SURFACELOST = 0x887601c2,
    DDERR_SURFACENOTATTACHED = 0x887601cc,
    DDERR_TOOBIGHEIGHT = 0x887601d6,
    DDERR_TOOBIGSIZE = 0x887601e0,
    DDERR_TOOBIGWIDTH = 0x887601ea,
    DDERR_UNSUPPORTED = 0x80004001,
    DDERR_UNSUPPORTEDFORMAT = 0x887601fe,
    DDERR_UNSUPPORTEDMASK = 0x88760208,
    DDERR_INVALIDSTREAM = 0x88760209,
    DDERR_VERTICALBLANKINPROGRESS = 0x88760219,
    DDERR_WASSTILLDRAWING = 0x8876021c,
    DDERR_DDSCAPSCOMPLEXREQUIRED = 0x8876021e,
    DDERR_XALIGN = 0x88760230,
    DDERR_INVALIDDIRECTDRAWGUID = 0x88760231,
    DDERR_DIRECTDRAWALREADYCREATED = 0x88760232,
    DDERR_NODIRECTDRAWHW = 0x88760233,
    DDERR_PRIMARYSURFACEALREADYEXISTS = 0x88760234,
    DDERR_NOEMULATION = 0x88760235,
    DDERR_REGIONTOOSMALL = 0x88760236,
    DDERR_CLIPPERISUSINGHWND = 0x88760237,
    DDERR_NOCLIPPERATTACHED = 0x88760238,
    DDERR_NOHWND = 0x88760239,
    DDERR_HWNDSUBCLASSED = 0x8876023a,
    DDERR_HWNDALREADYSET = 0x8876023b,
    DDERR_NOPALETTEATTACHED = 0x8876023c,
    DDERR_NOPALETTEHW = 0x8876023d,
    DDERR_BLTFASTCANTCLIP = 0x8876023e,
    DDERR_NOBLTHW = 0x8876023f,
    DDERR_NODDROPSHW = 0x88760240,
    DDERR_OVERLAYNOTVISIBLE = 0x88760241,
    DDERR_NOOVERLAYDEST = 0x88760242,
    DDERR_INVALIDPOSITION = 0x88760243,
    DDERR_NOTAOVERLAYSURFACE = 0x88760244,
    DDERR_EXCLUSIVEMODEALREADYSET = 0x88760245,
    DDERR_NOTFLIPPABLE = 0x88760246,
    DDERR_CANTDUPLICATE = 0x88760247,
    DDERR_NOTLOCKED = 0x88760248,
    DDERR_CANTCREATEDC = 0x88760249,
    DDERR_NODC = 0x8876024a,
    DDERR_WRONGMODE = 0x8876024b,
    DDERR_IMPLICITLYCREATED = 0x8876024c,
    DDERR_NOTPALETTIZED = 0x8876024d,
    DDERR_UNSUPPORTEDMODE = 0x8876024e,
    DDERR_NOMIPMAPHW = 0x8876024f,
    DDERR_INVALIDSURFACETYPE = 0x88760250,
    DDERR_NOOPTIMIZEHW = 0x88760258,
    DDERR_NOTLOADED = 0x88760259,
    DDERR_NOFOCUSWINDOW = 0x8876025a,
    DDERR_NOTONMIPMAPSUBLEVEL = 0x8876025b,
    DDERR_DCALREADYCREATED = 0x8876026c,
    DDERR_NONONLOCALVIDMEM = 0x88760276,
    DDERR_CANTPAGELOCK = 0x88760280,
    DDERR_CANTPAGEUNLOCK = 0x88760294,
    DDERR_NOTPAGELOCKED = 0x887602a8,
    DDERR_MOREDATA = 0x887602b2,
    DDERR_EXPIRED = 0x887602b3,
    DDERR_TESTFINISHED = 0x887602b4,
    DDERR_NEWMODE = 0x887602b5,
    DDERR_D3DNOTINITIALIZED = 0x887602b6,
    DDERR_VIDEONOTACTIVE = 0x887602b7,
    DDERR_NOMONITORINFORMATION = 0x887602b8,
    DDERR_NODRIVERSUPPORT = 0x887602b9,
    DDERR_DEVICEDOESNTOWNSURFACE = 0x887602bb,
    DDERR_NOTINITIALIZED = 0x800401f0,
  } WINAPI_DD_HRESULT;
  typedef DWORD WINAPI_DDSD_FLAGS; //Alias
  typedef struct DDCOLORKEY {
    DWORD dwColorSpaceLowValue;
    DWORD dwColorSpaceHighValue;
  } DDCOLORKEY;
  typedef DDCOLORKEY *LPDDCOLORKEY; //Pointer
  typedef union WINAPI_DDPIXELFORMAT_u1 {
    DWORD dwRGBBitCount;
    DWORD dwYUVBitCount;
    DWORD dwZBufferBitDepth;
    DWORD dwAlphaBitDepth;
    DWORD dwLuminanceBitCount;
    DWORD dwBumpBitCount;
    DWORD dwPrivateFormatBitCount;
  } WINAPI_DDPIXELFORMAT_u1;
  typedef union WINAPI_DDPIXELFORMAT_u2 {
    DWORD dwRBitMask;
    DWORD dwYBitMask;
    DWORD dwStencilBitDepth;
    DWORD dwLuminanceBitMask;
    DWORD dwBumpDuBitMask;
    DWORD dwOperations;
  } WINAPI_DDPIXELFORMAT_u2;
  typedef struct WINAPI_DDPIXELFORMAT_u3_s {
    WORD wFlipMSTypes;
    WORD wBltMSTypes;
  } WINAPI_DDPIXELFORMAT_u3_s;
  typedef union WINAPI_DDPIXELFORMAT_u3 {
    DWORD dwGBitMask;
    DWORD dwUBitMask;
    DWORD dwZBitMask;
    DWORD dwBumpDvBitMask;
    WINAPI_DDPIXELFORMAT_u3_s MultiSampleCaps;
  } WINAPI_DDPIXELFORMAT_u3;
  typedef union WINAPI_DDPIXELFORMAT_u4 {
    DWORD dwBBitMask;
    DWORD dwVBitMask;
    DWORD dwStencilBitMask;
    DWORD dwBumpLuminanceBitMask;
  } WINAPI_DDPIXELFORMAT_u4;
  typedef union WINAPI_DDPIXELFORMAT_u5 {
    DWORD dwRGBAlphaBitMask;
    DWORD dwYUVAlphaBitMask;
    DWORD dwLuminanceAlphaBitMask;
    DWORD dwRGBZBitMask;
    DWORD dwYUVZBitMask;
  } WINAPI_DDPIXELFORMAT_u5;
  typedef DWORD WINAPI_DDPIXELFORMAT_FLAGS; //Alias
  typedef struct DDPIXELFORMAT {
    DWORD dwSize;
    WINAPI_DDPIXELFORMAT_FLAGS dwFlags;
    DWORD dwFourCC;
    WINAPI_DDPIXELFORMAT_u1 ;
    WINAPI_DDPIXELFORMAT_u2 ;
    WINAPI_DDPIXELFORMAT_u3 ;
    WINAPI_DDPIXELFORMAT_u4 ;
    WINAPI_DDPIXELFORMAT_u5 ;
  } DDPIXELFORMAT;
  typedef DDPIXELFORMAT *LPDDPIXELFORMAT; //Pointer
  typedef DWORD WINAPI_DDSCAPS_FLAGS; //Alias
  typedef struct DDSCAPS {
    WINAPI_DDSCAPS_FLAGS dwCaps;
  } DDSCAPS;
  typedef DDSCAPS *LPDDSCAPS; //Pointer
  typedef union WINAPI_DDSURFACEDESC_u1 {
    LONG lPitch;
    DWORD dwLinearSize;
  } WINAPI_DDSURFACEDESC_u1;
  typedef union WINAPI_DDSURFACEDESC_u2 {
    DWORD dwMipMapCount;
    DWORD dwZBufferBitDepth;
    DWORD dwRefreshRate;
  } WINAPI_DDSURFACEDESC_u2;
  typedef struct DDSURFACEDESC {
    DWORD dwSize;
    WINAPI_DDSD_FLAGS dwFlags;
    DWORD dwHeight;
    DWORD dwWidth;
    WINAPI_DDSURFACEDESC_u1 ;
    DWORD dwBackBufferCount;
    WINAPI_DDSURFACEDESC_u2 ;
    DWORD dwAlphaBitDepth;
    DWORD dwReserved;
    LPVOID lpSurface;
    DDCOLORKEY ddckCKDestOverlay;
    DDCOLORKEY ddckCKDestBlt;
    DDCOLORKEY ddckCKSrcOverlay;
    DDCOLORKEY ddckCKSrcBlt;
    DDPIXELFORMAT ddpfPixelFormat;
    DDSCAPS ddsCaps;
  } DDSURFACEDESC;
  typedef DDSURFACEDESC *LPDDSURFACEDESC; //Pointer
  typedef DWORD WINAPI_DDCAPS_FLAGS; //Alias
  typedef DWORD WINAPI_DDCAPS2_FLAGS; //Alias
  typedef DWORD WINAPI_DDCKEYCAPS_FLAGS; //Alias
  typedef DWORD WINAPI_DDFXCAPS_FLAGS; //Alias
  typedef DWORD WINAPI_DDFXALPHACAPS_FLAGS; //Alias
  typedef DWORD WINAPI_DDPCAPS_FLAGS; //Alias
  typedef DWORD WINAPI_DDSVCAPS_FLAGS; //Alias
  typedef DWORD WINAPI_DDBD_FLAGS; //Alias
  typedef DWORD WINAPI_DDSCAPS2_FLAGS; //Alias
  typedef DWORD WINAPI_DDSCAPS3_FLAGS; //Alias
  typedef union WINAPI_DDSCAPS2_u {
    DWORD dwCaps4;
    DWORD dwVolumeDepth;
  } WINAPI_DDSCAPS2_u;
  typedef struct DDSCAPS2 {
    WINAPI_DDSCAPS_FLAGS dwCaps;
    WINAPI_DDSCAPS2_FLAGS dwCaps2;
    WINAPI_DDSCAPS3_FLAGS dwCaps3;
    WINAPI_DDSCAPS2_u ;
  } DDSCAPS2;
  typedef struct DDCAPS {
    DWORD dwSize;
    WINAPI_DDCAPS_FLAGS dwCaps;
    WINAPI_DDCAPS2_FLAGS dwCaps2;
    WINAPI_DDCKEYCAPS_FLAGS dwCKeyCaps;
    WINAPI_DDFXCAPS_FLAGS dwFXCaps;
    WINAPI_DDFXALPHACAPS_FLAGS dwFXAlphaCaps;
    WINAPI_DDPCAPS_FLAGS dwPalCaps;
    WINAPI_DDSVCAPS_FLAGS dwSVCaps;
    WINAPI_DDBD_FLAGS dwAlphaBltConstBitDepths;
    WINAPI_DDBD_FLAGS dwAlphaBltPixelBitDepths;
    WINAPI_DDBD_FLAGS dwAlphaBltSurfaceBitDepths;
    WINAPI_DDBD_FLAGS dwAlphaOverlayConstBitDepths;
    WINAPI_DDBD_FLAGS dwAlphaOverlayPixelBitDepths;
    WINAPI_DDBD_FLAGS dwAlphaOverlaySurfaceBitDepths;
    WINAPI_DDBD_FLAGS dwZBufferBitDepths;
    DWORD dwVidMemTotal;
    DWORD dwVidMemFree;
    DWORD dwMaxVisibleOverlays;
    DWORD dwCurrVisibleOverlays;
    DWORD dwNumFourCCCodes;
    DWORD dwAlignBoundarySrc;
    DWORD dwAlignSizeSrc;
    DWORD dwAlignBoundaryDest;
    DWORD dwAlignSizeDest;
    DWORD dwAlignStrideAlign;
    DWORD dwRops[DD_ROP_SPACE];
    DDSCAPS ddsOldCaps;
    DWORD dwMinOverlayStretch;
    DWORD dwMaxOverlayStretch;
    DWORD dwMinLiveVideoStretch;
    DWORD dwMaxLiveVideoStretch;
    DWORD dwMinHwCodecStretch;
    DWORD dwMaxHwCodecStretch;
    DWORD dwReserved1;
    DWORD dwReserved2;
    DWORD dwReserved3;
    WINAPI_DDCAPS_FLAGS dwSVBCaps;
    WINAPI_DDCKEYCAPS_FLAGS dwSVBCKeyCaps;
    WINAPI_DDFXCAPS_FLAGS dwSVBFXCaps;
    DWORD dwSVBRops[DD_ROP_SPACE];
    WINAPI_DDCAPS_FLAGS dwVSBCaps;
    WINAPI_DDCKEYCAPS_FLAGS dwVSBCKeyCaps;
    WINAPI_DDFXCAPS_FLAGS dwVSBFXCaps;
    DWORD dwVSBRops[DD_ROP_SPACE];
    WINAPI_DDCAPS_FLAGS dwSSBCaps;
    WINAPI_DDCKEYCAPS_FLAGS dwSSBCKeyCaps;
    WINAPI_DDFXCAPS_FLAGS dwSSBFXCaps;
    DWORD dwSSBRops[DD_ROP_SPACE];
    DWORD dwMaxVideoPorts;
    DWORD dwCurrVideoPorts;
    WINAPI_DDCAPS2_FLAGS dwSVBCaps2;
    WINAPI_DDCAPS_FLAGS dwNLVBCaps;
    WINAPI_DDCAPS2_FLAGS dwNLVBCaps2;
    WINAPI_DDCKEYCAPS_FLAGS dwNLVBCKeyCaps;
    WINAPI_DDFXCAPS_FLAGS dwNLVBFXCaps;
    DWORD dwNLVBRops[DD_ROP_SPACE];
    DDSCAPS2 ddsCaps;
  } DDCAPS;
  typedef DDCAPS *LPDDCAPS; //Pointer
  typedef struct DDDEVICEIDENTIFIER {
    char szDriver[MAX_DDDEVICEID_STRING];
    char szDescription[MAX_DDDEVICEID_STRING];
    LARGE_INTEGER liDriverVersion;
    DWORD dwVendorId;
    DWORD dwDeviceId;
    DWORD dwSubSysId;
    DWORD dwRevision;
    GUID guidDeviceIdentifier;
  } DDDEVICEIDENTIFIER;
  typedef DDDEVICEIDENTIFIER *LPDDDEVICEIDENTIFIER; //Pointer
  typedef DWORD WINAPI_DDCOLOR_FLAGS; //Alias
  typedef struct DDCOLORCONTROL {
    DWORD dwSize;
    WINAPI_DDCOLOR_FLAGS dwFlags;
    LONG lBrightness;
    LONG lContrast;
    LONG lHue;
    LONG lSaturation;
    LONG lSharpness;
    LONG lGamma;
    LONG lColorEnable;
    DWORD dwReserved1;
  } DDCOLORCONTROL;
  typedef DDCOLORCONTROL *LPDDCOLORCONTROL; //Pointer
  typedef struct DDGAMMARAMP {
    WORD red[256];
    WORD green[256];
    WORD blue[256];
  } DDGAMMARAMP;
  typedef DDGAMMARAMP *LPDDGAMMARAMP; //Pointer
  typedef DWORD WINAPI_DDBLTFX_FLAGS; //Alias
  typedef union WINAPI_DDBLTFX_u1 {
    DWORD dwZDestConst;
    LPDIRECTDRAWSURFACE lpDDSZBufferDest;
  } WINAPI_DDBLTFX_u1;
  typedef union WINAPI_DDBLTFX_u2 {
    DWORD dwZSrcConst;
    LPDIRECTDRAWSURFACE lpDDSZBufferSrc;
  } WINAPI_DDBLTFX_u2;
  typedef union WINAPI_DDBLTFX_u3 {
    DWORD dwAlphaDestConst;
    LPDIRECTDRAWSURFACE lpDDSAlphaDest;
  } WINAPI_DDBLTFX_u3;
  typedef union WINAPI_DDBLTFX_u4 {
    DWORD dwAlphaSrcConst;
    LPDIRECTDRAWSURFACE lpDDSAlphaSrc;
  } WINAPI_DDBLTFX_u4;
  typedef union WINAPI_DDBLTFX_u5 {
    DWORD dwFillColor;
    DWORD dwFillDepth;
    DWORD dwFillPixel;
    LPDIRECTDRAWSURFACE lpDDSPattern;
  } WINAPI_DDBLTFX_u5;
  typedef struct DDBLTFX {
    DWORD dwSize;
    WINAPI_DDBLTFX_FLAGS dwDDFX;
    DWORD dwROP;
    DWORD dwDDROP;
    DWORD dwRotationAngle;
    DWORD dwZBufferOpCode;
    DWORD dwZBufferLow;
    DWORD dwZBufferHigh;
    DWORD dwZBufferBaseDest;
    DWORD dwZDestConstBitDepth;
    WINAPI_DDBLTFX_u1 ;
    DWORD dwZSrcConstBitDepth;
    WINAPI_DDBLTFX_u2 ;
    DWORD dwAlphaEdgeBlendBitDepth;
    DWORD dwAlphaEdgeBlend;
    DWORD dwReserved;
    DWORD dwAlphaDestConstBitDepth;
    WINAPI_DDBLTFX_u3 ;
    DWORD dwAlphaSrcConstBitDepth;
    WINAPI_DDBLTFX_u4 ;
    WINAPI_DDBLTFX_u5 ;
    DDCOLORKEY ddckDestColorkey;
    DDCOLORKEY ddckSrcColorkey;
  } DDBLTFX;
  typedef DDBLTFX *LPDDBLTFX; //Pointer
  typedef DWORD WINAPI_DDBLT_FLAGS; //Alias
  typedef struct DDBLTBATCH {
    LPRECT lprDest;
    LPDIRECTDRAWSURFACE lpDDSSrc;
    LPRECT lprSrc;
    WINAPI_DDBLT_FLAGS dwFlags;
    LPDDBLTFX lpDDBltFx;
  } DDBLTBATCH;
  typedef DDBLTBATCH *LPDDBLTBATCH; //Pointer
  typedef union WINAPI_DDOVERLAYFX_u1 {
    DWORD dwAlphaDestConst;
    LPDIRECTDRAWSURFACE lpDDSAlphaDest;
  } WINAPI_DDOVERLAYFX_u1;
  typedef union WINAPI_DDOVERLAYFX_u2 {
    DWORD dwAlphaSrcConst;
    LPDIRECTDRAWSURFACE lpDDSAlphaSrc;
  } WINAPI_DDOVERLAYFX_u2;
  typedef DWORD WINAPI_DDOVERFX_FLAGS; //Alias
  typedef struct DDOVERLAYFX {
    DWORD dwSize;
    DWORD dwAlphaEdgeBlendBitDepth;
    DWORD dwAlphaEdgeBlend;
    DWORD dwReserved;
    DWORD dwAlphaDestConstBitDepth;
    WINAPI_DDOVERLAYFX_u1 ;
    DWORD dwAlphaSrcConstBitDepth;
    WINAPI_DDOVERLAYFX_u2 ;
    DDCOLORKEY dckDestColorkey;
    DDCOLORKEY dckSrcColorkey;
    DWORD dwDDFX;
    WINAPI_DDOVERFX_FLAGS dwFlags;
  } DDOVERLAYFX;
  typedef DDOVERLAYFX *LPDDOVERLAYFX; //Pointer
  typedef DWORD WINAPI_DDEDM_FLAGS; //Alias
  typedef DWORD WINAPI_DDENUMSURFACES_FLAGS; //Alias
  typedef enum WINAPI_DDEM_FLAGS {
    DDEM_MODEPASSED = 0x00000001,
    DDEM_MODEFAILED = 0x00000002,
  } WINAPI_DDEM_FLAGS;
  typedef DWORD WINAPI_DDSCL_FLAGS; //Alias
  typedef DWORD WINAPI_DDWAITVB_FLAGS; //Alias
  typedef DWORD WINAPI_DDSDM_FLAGS; //Alias
  typedef DWORD WINAPI_DDGDI_FLAGS; //Alias
  typedef DWORD WINAPI_DDSMT_FLAGS; //Alias
  typedef DWORD WINAPI_DDSGR_FLAGS; //Alias
  typedef DWORD WINAPI_DDENUM_FLAGS; //Alias
  typedef DWORD WINAPI_DDSPD_FLAGS; //Alias
  typedef enum WINAPI_DDBLTFAST_TYPE {
    DDBLTFAST_NOCOLORKEY = 0x00000000,
    DDBLTFAST_SRCCOLORKEY = 0x00000001,
    DDBLTFAST_DESTCOLORKEY = 0x00000002,
    DDBLTFAST_WAIT = 0x00000010,
    DDBLTFAST_DONOTWAIT = 0x00000020,
  } WINAPI_DDBLTFAST_TYPE;
  typedef enum WINAPI_DDENUMOVERLAYZ_TYPE {
    DDENUMOVERLAYZ_BACKTOFRONT = 0x00000000,
    DDENUMOVERLAYZ_FRONTTOBACK = 0x00000001,
  } WINAPI_DDENUMOVERLAYZ_TYPE;
  typedef DWORD WINAPI_DDFLIP_FLAGS; //Alias
  typedef DWORD WINAPI_DDGBS_FLAGS; //Alias
  typedef DWORD WINAPI_DDCKEY_FLAGS; //Alias
  typedef DWORD WINAPI_DDGFS_FLAGS; //Alias
  typedef DWORD WINAPI_DDLOCK_FLAGS; //Alias
  typedef DWORD WINAPI_DDOVER_FLAGS; //Alias
  typedef enum WINAPI_DDOVERZ_ORDER {
    DDOVERZ_SENDTOFRONT = 0x00000000,
    DDOVERZ_SENDTOBACK = 0x00000001,
    DDOVERZ_MOVEFORWARD = 0x00000002,
    DDOVERZ_MOVEBACKWARD = 0x00000003,
    DDOVERZ_INSERTINFRONTOF = 0x00000004,
    DDOVERZ_INSERTINBACKOF = 0x00000005,
  } WINAPI_DDOVERZ_ORDER;
]]
