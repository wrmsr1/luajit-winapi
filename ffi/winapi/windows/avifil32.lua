require( 'ffi/winapi/headers/windows' )
require( 'ffi/winapi/headers/multimedia' )
local ffi = require( 'ffi' )
ffi.cdef [[
  typedef LONG STDAPI__LONG_; //Alias
  typedef ULONG STDAPI__ULONG_; //Alias
  typedef LPVOID STDAPI__LPVOID_; //Alias
  typedef LPVOID AVISAVECALLBACK; //Alias
  typedef void* IAVIFile; //Interface
  typedef void* IAVIStream; //Interface
  typedef void* IGetFrame; //Interface
  typedef IAVIFile* PAVIFILE; //Alias
  typedef IAVIStream* PAVISTREAM; //Alias
  typedef IGetFrame* PGETFRAME; //Alias
  typedef PGETFRAME STDAPI__PGETFRAME_; //Alias
  typedef DWORD WINAPI_AVISTREAMINFO_FLAGS; //Alias
  typedef struct AVISTREAMINFO {
    FOURCC fccType;
    DWORD fccHandler;
    WINAPI_AVISTREAMINFO_FLAGS dwFlags;
    DWORD dwCaps;
    WORD wPriority;
    WORD wLanguage;
    DWORD dwScale;
    DWORD dwRate;
    DWORD dwStart;
    DWORD dwLength;
    DWORD dwInitialFrames;
    DWORD dwSuggestedBufferSize;
    DWORD dwQuality;
    DWORD dwSampleSize;
    RECT rcFrame;
    DWORD dwEditCount;
    DWORD dwFormatChangeCount;
    TCHAR szName[64];
  } AVISTREAMINFO;
  typedef DWORD WINAPI_AVIFILEINFO_FLAGS; //Alias
  typedef DWORD WINAPI_AVIFILECAPS; //Alias
  typedef struct AVIFILEINFO {
    DWORD dwMaxBytesPerSec;
    WINAPI_AVIFILEINFO_FLAGS dwFlags;
    WINAPI_AVIFILECAPS dwCaps;
    DWORD dwStreams;
    DWORD dwSuggestedBufferSize;
    DWORD dwWidth;
    DWORD dwHeight;
    DWORD dwScale;
    DWORD dwRate;
    DWORD dwLength;
    DWORD dwEditCount;
    TCHAR szFileType[64];
  } AVIFILEINFO;
  typedef struct AVICOMPRESSOPTIONS {
    DWORD fccType;
    DWORD fccHandler;
    DWORD dwKeyFrameEvery;
    DWORD dwQuality;
    DWORD dwBytesPerSecond;
    DWORD dwFlags;
    LPVOID lpFormat;
    DWORD cbFormat;
    LPVOID lpParms;
    DWORD cbParms;
    DWORD dwInterleaveEvery;
  } AVICOMPRESSOPTIONS;
  typedef AVICOMPRESSOPTIONS *LPAVICOMPRESSOPTIONS; //Pointer
  STDAPI             AVIBuildFilter(             LPTSTR lpszFilter, LONG cbFilter, BOOL fSaving);
  STDAPI             AVIClearClipboard(          );
  STDAPI__ULONG_     AVIFileAddRef(              PAVIFILE pfile);
  STDAPI             AVIFileCreateStream(        PAVIFILE pfile, PAVISTREAM* ppavi, AVISTREAMINFO* psi);
  STDAPI             AVIFileEndRecord(           PAVIFILE pfile);
  STDAPI__VOID_      AVIFileExit(                );
  STDAPI             AVIFileGetStream(           PAVIFILE pfile, PAVISTREAM* ppavi, DWORD fccType, LONG lParam);
  STDAPI             AVIFileInfo(                PAVIFILE pfile, AVIFILEINFO* pfi, LONG lSize);
  STDAPI__VOID_      AVIFileInit(                );
  STDAPI             AVIFileOpen(                PAVIFILE* ppfile, LPCTSTR szFile, UINT mode, CLSID pclsidHandler);
  STDAPI             AVIFileReadData(            PAVIFILE pfile, DWORD ckid, LPVOID lpData, LONG* lpcbData);
  STDAPI__ULONG_     AVIFileRelease(             PAVIFILE pfile);
  STDAPI             AVIFileWriteData(           PAVIFILE pfile, DWORD ckid, LPVOID lpData, LONG cbData);
  STDAPI             AVIGetFromClipboard(        PAVIFILE* lppf);
  STDAPI             AVIMakeCompressedStream(    PAVISTREAM* ppsCompressed, PAVISTREAM psSource, AVICOMPRESSOPTIONS* lpOptions, CLSID* pclsidHandler);
  STDAPI             AVIMakeFileFromStreams(     PAVIFILE* ppfile, int nStreams, PAVISTREAM* papStreams);
  STDAPI             AVIMakeStreamFromClipboard( UINT cfFormat, HANDLE hGlobal, PAVISTREAM* ppstream);
  STDAPI             AVIPutFileOnClipboard(      PAVIFILE pf);
  HRESULT            AVISave(                    LPCTSTR szFile, CLSID* pclsidHandler, AVISAVECALLBACK lpfnCallback, int nStreams, PAVISTREAM pavi, LPAVICOMPRESSOPTIONS lpOptions);
  BOOL               AVISaveOptions(             HWND hwnd, UINT uiFlags, int nStreams, PAVISTREAM* ppavi, LPAVICOMPRESSOPTIONS* plpOptions);
  LONG               AVISaveOptionsFree(         int nStreams, LPAVICOMPRESSOPTIONS* plpOptions);
  STDAPI             AVISaveV(                   LPCTSTR szFile, CLSID* pclsidHandler, AVISAVECALLBACK lpfnCallback, int nStreams, PAVISTREAM* ppavi, LPAVICOMPRESSOPTIONS* plpOptions);
  STDAPI__LONG_      AVIStreamAddRef(            PAVISTREAM pavi);
  STDAPI             AVIStreamBeginStreaming(    PAVISTREAM pavi, LONG lStart, LONG lEnd, LONG lRate);
  STDAPI             AVIStreamCreate(            PAVISTREAM* ppavi, LONG lParam1, LONG lParam2, CLSID* pclsidHandler);
  STDAPI             AVIStreamEndStreaming(      PAVISTREAM pavi);
  STDAPI__LONG_      AVIStreamFindSample(        PAVISTREAM pavi, LONG lPos, LONG lFlags);
  STDAPI__LPVOID_    AVIStreamGetFrame(          PGETFRAME pgf, LONG lPos);
  STDAPI             AVIStreamGetFrameClose(     PGETFRAME pget);
  STDAPI__PGETFRAME_ AVIStreamGetFrameOpen(      PAVISTREAM pavi, LPBITMAPINFOHEADER lpbiWanted);
  STDAPI             AVIStreamInfo(              PAVISTREAM pavi, AVISTREAMINFO* psi, LONG lSize);
  STDAPI__LONG_      AVIStreamLength(            PAVISTREAM pavi);
  STDAPI             AVIStreamOpenFromFile(      PAVISTREAM* ppavi, LPCTSTR szFile, DWORD fccType, LONG lParam, UINT mode, CLSID* pclsidHandler);
  STDAPI             AVIStreamRead(              PAVISTREAM pavi, LONG lStart, LONG lSamples, LPVOID lpBuffer, LONG cbBuffer, LONG* plBytes, LONG* plSamples);
  STDAPI             AVIStreamReadData(          PAVISTREAM pavi, DWORD ckid, LPVOID lpData, LONG* lpcbData);
  STDAPI             AVIStreamReadFormat(        PAVISTREAM pavi, LONG lPos, LPVOID lpFormat, LONG* lpcbFormat);
  STDAPI__LONG_      AVIStreamRelease(           PAVISTREAM pavi);
  STDAPI__LONG_      AVIStreamSampleToTime(      PAVISTREAM pavi, LONG lSample);
  STDAPI             AVIStreamSetFormat(         PAVISTREAM pavi, LONG lPos, LPVOID lpFormat, LONG cbFormat);
  STDAPI__LONG_      AVIStreamStart(             PAVISTREAM pavi);
  STDAPI__LONG_      AVIStreamTimeToSample(      PAVISTREAM pavi, LONG lTime);
  STDAPI             AVIStreamWrite(             PAVISTREAM pavi, LONG lStart, LONG lSamples, LPVOID lpBuffer, LONG cbBuffer, DWORD dwFlags, LONG* plSampWritten, LONG* plBytesWritten);
  STDAPI             AVIStreamWriteData(         PAVISTREAM pavi, DWORD ckid, LPVOID lpData, LONG cbData);
  STDAPI             CreateEditableStream(       PAVISTREAM* ppsEditable, PAVISTREAM psSource);
  STDAPI             EditStreamClone(            PAVISTREAM pavi, PAVISTREAM* ppResult);
  STDAPI             EditStreamCopy(             PAVISTREAM pavi, LONG* plStart, LONG* plLength, PAVISTREAM* ppResult);
  STDAPI             EditStreamCut(              PAVISTREAM pavi, LONG* plStart, LONG* plLength, PAVISTREAM* ppResult);
  STDAPI             EditStreamPaste(            PAVISTREAM pavi, LONG* plPos, LONG* plLength, PAVISTREAM pstream, LONG lStart, LONG lLength);
  STDAPI             EditStreamSetInfo(          PAVISTREAM pavi, AVISTREAMINFO* lpInfo, LONG cbInfo);
  STDAPI             EditStreamSetName(          PAVISTREAM pavi, LPCTSTR lpszName);
]]
return ffi.load( 'avifil32.dll' )
