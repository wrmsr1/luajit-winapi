require( "ffi/winapi/headers/windows" )
require( "ffi/winapi/headers/gdi" )
local ffi = require( "ffi" )
ffi.cdef [[
  BOOL                   BitBlt(                       HDC hdcDest, int nXDest, int nYDest, int nWidth, int nHeight, HDC hdcSrc, int nXSrc, int nYSrc, WINAPI_RasterOperationEnum dwRop);
  HBITMAP                CreateBitmap(                 int nWidth, int nHeight, UINT cPlanes, UINT cBitsPerPel, VOID* lpvBits);
  HBITMAP                CreateBitmapIndirect(         BITMAP* lpbm);
  HBITMAP                CreateCompatibleBitmap(       HDC hdc, int nWidth, int nHeight);
  HBITMAP                CreateDIBitmap(               HDC hdc, BITMAPINFOHEADER* lpbmih, WINAPI_CreateBitmapInitFlag fdwInit, VOID* lpbInit, BITMAPINFO* lpbmi, WINAPI_ColorUseEnum fuUsage);
  HBITMAP                CreateDIBSection(             HDC hdc, BITMAPINFO* pbmi, WINAPI_ColorUseEnum iUsage, VOID** ppvBits, HANDLE hSection, DWORD dwOffset);
  BOOL                   ExtFloodFill(                 HDC hdc, int nXStart, int nYStart, COLORREF crColor, UINT fuFillType);
  BOOL                   GetBitmapDimensionEx(         HBITMAP hBitmap, LPSIZE lpDimension);
  UINT                   GetDIBColorTable(             HDC hdc, UINT uStartIndex, UINT cEntries, RGBQUAD* pColors);
  int                    GetDIBits(                    HDC hdc, HBITMAP hbmp, UINT uStartScan, UINT cScanLines, LPVOID lpvBits, LPBITMAPINFO lpbi, WINAPI_ColorUseEnum uUsage);
  COLORREF               GetPixel(                     HDC hdc, int nXPos, int nYPos);
  int                    GetStretchBltMode(            HDC hdc);
  BOOL                   MaskBlt(                      HDC hdcDest, int nXDest, int nYDest, int nWidth, int nHeight, HDC hdcSrc, int nXSrc, int nYSrc, HBITMAP hbmMask, int xMask, int yMask, WINAPI_RasterOperationEnum dwRop);
  BOOL                   PlgBlt(                       HDC hdcDest, POINT* lpPoint, HDC hdcSrc, int nXSrc, int nYSrc, int nWidth, int nHeight, HBITMAP hbmMask, int xMask, int yMask);
  BOOL                   SetBitmapDimensionEx(         HBITMAP hBitmap, int nWidth, int nHeight, LPSIZE lpSize);
  UINT                   SetDIBColorTable(             HDC hdc, UINT uStartIndex, UINT cEntries, RGBQUAD* pColors);
  int                    SetDIBits(                    HDC hdc, HBITMAP hbmp, UINT uStartScan, UINT cScanLines, VOID* lpvBits, BITMAPINFO* lpbmi, WINAPI_ColorUseEnum fuColorUse);
  int                    SetDIBitsToDevice(            HDC hdc, int XDest, int YDest, DWORD dwWidth, DWORD dwHeight, int XSrc, int YSrc, UINT uStartScan, UINT cScanLines, VOID* lpvBits, BITMAPINFO* lpbmi, WINAPI_ColorUseEnum fuColorUse);
  COLORREF               SetPixel(                     HDC hdc, int X, int Y, COLORREF crColor);
  BOOL                   SetPixelV(                    HDC hdc, int X, int Y, COLORREF crColor);
  int                    SetStretchBltMode(            HDC hdc, WINAPI_StretchModeEnum iStretchMode);
  BOOL                   StretchBlt(                   HDC hdcDest, int nXOriginDest, int nYOriginDest, int nWidthDest, int nHeightDest, HDC hdcSrc, int nXOriginSrc, int nYOriginSrc, int nWidthSrc, int nHeightSrc, WINAPI_RasterOperationEnum dwRop);
  int                    StretchDIBits(                HDC hdc, int XDest, int YDest, int nDestWidth, int nDestHeight, int XSrc, int YSrc, int nSrcWidth, int nSrcHeight, VOID* lpBits, BITMAPINFO* lpBitsInfo, WINAPI_ColorUseEnum iUsage, WINAPI_RasterOperationEnum dwRop);
  HBITMAP                CreateDiscardableBitmap(      HDC hdc, int nWidth, int nHeight);
  BOOL                   FloodFill(                    HDC hdc, int nXStart, int nYStart, COLORREF crFill);
  LONG                   GetBitmapBits(                HBITMAP hbmp, LONG cbBuffer, LPVOID lpvBits);
  LONG                   SetBitmapBits(                HBITMAP hbmp, DWORD cBytes, VOID* lpBits);
  HBRUSH                 CreateBrushIndirect(          LOGBRUSH* lplb);
  HBRUSH                 CreateDIBPatternBrushPt(      VOID* lpPackedDIB, WINAPI_ColorUseEnum iUsage);
  HBRUSH                 CreateHatchBrush(             WINAPI_HatchStyle fnStyle, COLORREF clrref);
  HBRUSH                 CreatePatternBrush(           HBITMAP hbmp);
  HBRUSH                 CreateSolidBrush(             COLORREF crColor);
  BOOL                   GetBrushOrgEx(                HDC hdc, LPPOINT lppt);
  BOOL                   PatBlt(                       HDC hdc, int nXLeft, int nYLeft, int nWidth, int nHeight, WINAPI_RasterOperationEnum dwRop);
  BOOL                   SetBrushOrgEx(                HDC hdc, int nXOrg, int nYOrg, LPPOINT lppt);
  HBRUSH                 CreateDIBPatternBrush(        HGLOBAL hglbDIBPacked, UINT fuColorSpec);
  int                    ExcludeClipRect(              HDC hdc, int nLeftRect, int nTopRect, int nRightRect, int nBottomRect);
  int                    ExtSelectClipRgn(             HDC hdc, HRGN hrgn, WINAPI_RgnMode fnMode);
  int                    GetClipBox(                   HDC hdc, LPRECT lprc);
  int                    GetClipRgn(                   HDC hdc, HRGN hrgn);
  int                    GetMetaRgn(                   HDC hdc, HRGN hrgn);
  int                    GetRandomRgn(                 HDC hdc, HRGN hrgn, WINAPI_RandomRgnEnum iNum);
  int                    IntersectClipRect(            HDC hdc, int nLeftRect, int nTopRect, int nRightRect, int nBottomRect);
  int                    OffsetClipRgn(                HDC hdc, int nXOffset, int nYOffset);
  BOOL                   PtVisible(                    HDC hdc, int X, int Y);
  BOOL                   RectVisible(                  HDC hdc, RECT* lprc);
  BOOL                   SelectClipPath(               HDC hdc, int iMode);
  int                    SelectClipRgn(                HDC hdc, HRGN hrgn);
  int                    SetMetaRgn(                   HDC hdc);
  BOOL                   AnimatePalette(               HPALETTE hpal, UINT iStartIndex, UINT cEntries, PALETTEENTRY* ppe);
  HPALETTE               CreateHalftonePalette(        HDC hdc);
  HPALETTE               CreatePalette(                LOGPALETTE* lplgpl);
  BOOL                   GetColorAdjustment(           HDC hdc, LPCOLORADJUSTMENT lpca);
  COLORREF               GetNearestColor(              HDC hdc, COLORREF crColor);
  UINT                   GetNearestPaletteIndex(       HPALETTE hpal, COLORREF crColor);
  UINT                   GetPaletteEntries(            HPALETTE hpal, UINT iStartIndex, UINT nEntries, LPPALETTEENTRY lppe);
  UINT                   GetSystemPaletteEntries(      HDC hdc, UINT iStartIndex, UINT nEntries, LPPALETTEENTRY lppe);
  UINT                   GetSystemPaletteUse(          HDC hdc);
  UINT                   RealizePalette(               HDC hdc);
  BOOL                   ResizePalette(                HPALETTE hpal, UINT nEntries);
  HPALETTE               SelectPalette(                HDC hdc, HPALETTE hpal, BOOL bForceBackground);
  BOOL                   SetColorAdjustment(           HDC hdc, COLORADJUSTMENT* lpca);
  UINT                   SetPaletteEntries(            HPALETTE hpal, UINT iStart, UINT cEntries, PALETTEENTRY* lppe);
  UINT                   SetSystemPaletteUse(          HDC hdc, UINT uUsage);
  BOOL                   UnrealizeObject(              HGDIOBJ hgdiobj);
  BOOL                   UpdateColors(                 HDC hdc);
  BOOL                   CombineTransform(             LPXFORM lpxformResult, XFORM* lpxform1, XFORM* lpxform2);
  BOOL                   DPtoLP(                       HDC hdc, LPPOINT lpPoints, int nCount);
  BOOL                   GetCurrentPositionEx(         HDC hdc, LPPOINT lpPoint);
  int                    GetGraphicsMode(              HDC hdc);
  int                    GetMapMode(                   HDC hdc);
  BOOL                   GetViewportExtEx(             HDC hdc, LPSIZE lpSize);
  BOOL                   GetViewportOrgEx(             HDC hdc, LPPOINT lpPoint);
  BOOL                   GetWindowExtEx(               HDC hdc, LPSIZE lpSize);
  BOOL                   GetWindowOrgEx(               HDC hdc, LPPOINT lpPoint);
  BOOL                   GetWorldTransform(            HDC hdc, LPXFORM lpXform);
  BOOL                   LPtoDP(                       HDC hdc, LPPOINT lpPoints, int nCount);
  BOOL                   ModifyWorldTransform(         HDC hdc, XFORM* lpXform, WINAPI_ModifyWorldTransformMode iMode);
  BOOL                   OffsetViewportOrgEx(          HDC hdc, int nXOffset, int nYOffset, LPPOINT lpPoint);
  BOOL                   OffsetWindowOrgEx(            HDC hdc, int nXOffset, int nYOffset, LPPOINT lpPoint);
  BOOL                   ScaleViewportExtEx(           HDC hdc, int Xnum, int Xdenom, int Ynum, int Ydenom, LPSIZE lpSize);
  BOOL                   ScaleWindowExtEx(             HDC hdc, int Xnum, int Xdenom, int Ynum, int Ydenom, LPSIZE lpSize);
  int                    SetGraphicsMode(              HDC hdc, WINAPI_GraphicsModes iMode);
  int                    SetMapMode(                   HDC hdc, WINAPI_MappingMode fnMapMode);
  BOOL                   SetViewportExtEx(             HDC hdc, int nXExtent, int nYExtent, LPSIZE lpSize);
  BOOL                   SetViewportOrgEx(             HDC hdc, int X, int Y, LPPOINT lpPoint);
  BOOL                   SetWindowExtEx(               HDC hdc, int nXExtent, int nYExtent, LPSIZE lpSize);
  BOOL                   SetWindowOrgEx(               HDC hdc, int X, int Y, LPPOINT lpPoint);
  BOOL                   SetWorldTransform(            HDC hdc, XFORM* lpXform);
  BOOL                   CancelDC(                     HDC hdc);
  HDC                    CreateCompatibleDC(           HDC hdc);
  HDC                    CreateDC(                     LPCTSTR lpszDriver, LPCTSTR lpszDevice, LPCTSTR lpszOutput, DEVMODE* lpInitData);
  HDC                    CreateIC(                     LPCTSTR lpszDriver, LPCTSTR lpszDevice, LPCTSTR lpszOutput, DEVMODE* lpdvmInit);
  BOOL                   DeleteDC(                     HDC hdc);
  BOOL                   DeleteObject(                 HGDIOBJ hObject);
  int                    DrawEscape(                   HDC hdc, int nEscape, int cbInput, LPCSTR lpszInData);
  int                    EnumObjects(                  HDC hdc, int nObjectType, GOBJENUMPROC lpObjectFunc, LPARAM lParam);
  HGDIOBJ                GetCurrentObject(             HDC hdc, WINAPI_ObjectType uObjectType);
  COLORREF               GetDCBrushColor(              HDC hdc);
  BOOL                   GetDCOrgEx(                   HDC hdc, LPPOINT lpPoint);
  COLORREF               GetDCPenColor(                HDC hdc);
  int                    GetDeviceCaps(                HDC hdc, WINAPI_DeviceCapsEnum nIndex);
  DWORD                  GetLayout(                    HDC hdc);
  int                    GetObject(                    HGDIOBJ hgdiobj, int cbBuffer, LPVOID lpvObject);
  DWORD                  GetObjectType(                HGDIOBJ h);
  HGDIOBJ                GetStockObject(               WINAPI_STOCK_OBJECT fnObject);
  HDC                    ResetDC(                      HDC hdc, DEVMODE* lpInitData);
  BOOL                   RestoreDC(                    HDC hdc, int nSavedDC);
  int                    SaveDC(                       HDC hdc);
  HGDIOBJ                SelectObject(                 HDC hdc, HGDIOBJ hgdiobj);
  COLORREF               SetDCBrushColor(              HDC hdc, COLORREF crColor);
  COLORREF               SetDCPenColor(                HDC hdc, COLORREF crColor);
  DWORD                  SetLayout(                    HDC hdc, WINAPI_LayoutFlags dwLayout);
  BOOL                   Chord(                        HDC hdc, int nLeftRect, int nTopRect, int nRightRect, int nBottomRect, int nXRadial1, int nYRadial1, int nXRadial2, int nYRadial2);
  BOOL                   Ellipse(                      HDC hdc, int nLeftRect, int nTopRect, int nRightRect, int nBottomRect);
  BOOL                   Pie(                          HDC hdc, int nLeftRect, int nTopRect, int nRightRect, int nBottomRect, int nXRadial1, int nYRadial1, int nXRadial2, int nYRadial2);
  BOOL                   Polygon(                      HDC hdc, POINT* lpPoints, int nCount);
  BOOL                   PolyPolygon(                  HDC hdc, POINT* lpPoints, INT* lpPolyCounts, int nCount);
  BOOL                   Rectangle(                    HDC hdc, int nLeftRect, int nTopRect, int nRightRect, int nBottomRect);
  BOOL                   RoundRect(                    HDC hdc, int nLeftRect, int nTopRect, int nRightRect, int nBottomRect, int nWidth, int nHeight);
  HANDLE                 AddFontMemResourceEx(         PVOID pbFont, DWORD cbFont, PVOID pdv, DWORD* pcFonts);
  int                    AddFontResource(              LPCTSTR lpszFilename);
  int                    AddFontResourceEx(            LPCTSTR lpszFilename, DWORD fl, PVOID pdv);
  HFONT                  CreateFont(                   int nHeight, int nWidth, int nEscapement, int nOrientation, WINAPI_FontWeight fnWeight, DWORD fdwItalic, DWORD fdwUnderline, DWORD fdwStrikeOut, WINAPI_FontCharset fdwCharSet, WINAPI_FontOutputPrecision fdwOutputPrecision, WINAPI_FontClipPrecision fdwClipPrecision, WINAPI_FontQuality fdwQuality, WINAPI_FontPitchAndFamily fdwPitchAndFamily, LPCTSTR lpszFace);
  HFONT                  CreateFontIndirect(           LOGFONT* lplf);
  HFONT                  CreateFontIndirectEx(         ENUMLOGFONTEXDV* penumlfex);
  BOOL                   CreateScalableFontResource(   DWORD fdwHidden, LPCTSTR lpszFontRes, LPCTSTR lpszFontFile, LPCTSTR lpszCurrentPath);
  int                    EnumFontFamiliesEx(           HDC hdc, LPLOGFONT lpLogfont, FONTENUMPROC lpEnumFontFamExProc, LPARAM lParam, DWORD dwFlags);
  BOOL                   ExtTextOut(                   HDC hdc, int X, int Y, WINAPI_ExtTextOutFlags fuOptions, RECT* lprc, LPCTSTR lpString, UINT cbCount, INT* lpDx);
  BOOL                   GetAspectRatioFilterEx(       HDC hdc, LPSIZE lpAspectRatio);
  BOOL                   GetCharABCWidths(             HDC hdc, UINT uFirstChar, UINT uLastChar, LPABC lpabc);
  BOOL                   GetCharABCWidthsFloat(        HDC hdc, UINT iFirstChar, UINT iLastChar, LPABCFLOAT lpABCF);
  BOOL                   GetCharABCWidthsI(            HDC hdc, UINT giFirst, UINT cgi, LPWORD pgi, LPABC lpabc);
  DWORD                  GetCharacterPlacement(        HDC hdc, LPCTSTR lpString, int nCount, int nMaxExtent, LPGCP_RESULTS lpResults, WINAPI_GCP_FLAGS dwFlags);
  BOOL                   GetCharWidth32(               HDC hdc, UINT iFirstChar, UINT iLastChar, LPINT lpBuffer);
  BOOL                   GetCharWidthFloat(            HDC hdc, UINT iFirstChar, UINT iLastChar, PFLOAT pxBuffer);
  BOOL                   GetCharWidthI(                HDC hdc, UINT giFirst, UINT cgi, LPWORD pgi, LPINT lpBuffer);
  DWORD                  GetFontData(                  HDC hdc, DWORD dwTable, DWORD dwOffset, LPVOID lpvBuffer, DWORD cbData);
  DWORD                  GetFontLanguageInfo(          HDC hdc);
  DWORD                  GetFontUnicodeRanges(         HDC hdc, LPGLYPHSET lpgs);
  DWORD                  GetGlyphIndices(              HDC hdc, LPCTSTR lpstr, int c, LPWORD pgi, WINAPI_GetGlyphIndicesFlag fl);
  DWORD                  GetGlyphOutline(              HDC hdc, UINT uChar, WINAPI_GetGlyphOutlineFormat uFormat, LPGLYPHMETRICS lpgm, DWORD cbBuffer, LPVOID lpvBuffer, MAT2* lpmat2);
  DWORD                  GetKerningPairs(              HDC hdc, DWORD nNumPairs, LPKERNINGPAIR lpkrnpair);
  UINT                   GetOutlineTextMetrics(        HDC hdc, UINT cbData, LPOUTLINETEXTMETRIC lpOTM);
  BOOL                   GetRasterizerCaps(            LPRASTERIZER_STATUS lprs, UINT cb);
  WINAPI_TextAlignFlag   GetTextAlign(                 HDC hdc);
  int                    GetTextCharacterExtra(        HDC hdc);
  COLORREF               GetTextColor(                 HDC hdc);
  BOOL                   GetTextExtentExPoint(         HDC hdc, LPCTSTR lpszStr, int cchString, int nMaxExtent, LPINT lpnFit, LPINT alpDx, LPSIZE lpSize);
  BOOL                   GetTextExtentExPointI(        HDC hdc, LPWORD pgiIn, int cgi, int nMaxExtent, LPINT lpnFit, LPINT alpDx, LPSIZE lpSize);
  BOOL                   GetTextExtentPoint32(         HDC hdc, LPCTSTR lpString, int c, LPSIZE lpSize);
  BOOL                   GetTextExtentPointI(          HDC hdc, LPWORD pgiIn, int cgi, LPSIZE lpSize);
  int                    GetTextFace(                  HDC hdc, int nCount, LPTSTR lpFaceName);
  BOOL                   GetTextMetrics(               HDC hdc, LPTEXTMETRIC lptm);
  BOOL                   PolyTextOut(                  HDC hdc, POLYTEXT* pptxt, int cStrings);
  BOOL                   RemoveFontMemResourceEx(      HANDLE fh);
  BOOL                   RemoveFontResource(           LPCTSTR lpFileName);
  BOOL                   RemoveFontResourceEx(         LPCTSTR lpFileName, DWORD fl, PVOID pdv);
  DWORD                  SetMapperFlags(               HDC hdc, DWORD dwFlag);
  WINAPI_TextAlignFlag   SetTextAlign(                 HDC hdc, WINAPI_TextAlignFlag fMode);
  int                    SetTextCharacterExtra(        HDC hdc, int nCharExtra);
  COLORREF               SetTextColor(                 HDC hdc, COLORREF crColor);
  BOOL                   SetTextJustification(         HDC hdc, int nBreakExtra, int nBreakCount);
  BOOL                   TextOut(                      HDC hdc, int nXStart, int nYStart, LPCTSTR lpString, int cbString);
  int                    EnumFontFamilies(             HDC hdc, LPCTSTR lpszFamily, FONTENUMPROC lpEnumFontFamProc, LPARAM lParam);
  int                    EnumFonts(                    HDC hdc, LPCTSTR lpFaceName, FONTENUMPROC lpFontFunc, LPARAM lParam);
  BOOL                   GetCharWidth(                 HDC hdc, UINT iFirstChar, UINT iLastChar, LPINT lpBuffer);
  BOOL                   GetTextExtentPoint(           HDC hdc, LPCTSTR lpString, int cbString, LPSIZE lpSize);
  BOOL                   AngleArc(                     HDC hdc, int X, int Y, DWORD dwRadius, FLOAT eStartAngle, FLOAT eSweepAngle);
  BOOL                   Arc(                          HDC hdc, int nLeftRect, int nTopRect, int nRightRect, int nBottomRect, int nXStartArc, int nYStartArc, int nXEndArc, int nYEndArc);
  BOOL                   ArcTo(                        HDC hdc, int nLeftRect, int nTopRect, int nRightRect, int nBottomRect, int nXRadial1, int nYRadial1, int nXRadial2, int nYRadial2);
  int                    GetArcDirection(              HDC hdc);
  BOOL                   LineDDA(                      int nXStart, int nYStart, int nXEnd, int nYEnd, LINEDDAPROC lpLineFunc, LPARAM lpData);
  BOOL                   LineTo(                       HDC hdc, int nXEnd, int nYEnd);
  BOOL                   MoveToEx(                     HDC hdc, int X, int Y, LPPOINT lpPoint);
  BOOL                   PolyBezier(                   HDC hdc, POINT* lppt, DWORD cPoints);
  BOOL                   PolyBezierTo(                 HDC hdc, POINT* lppt, DWORD cCount);
  BOOL                   PolyDraw(                     HDC hdc, POINT* lppt, BYTE* lpbTypes, int cCount);
  BOOL                   Polyline(                     HDC hdc, POINT* lppt, int cPoints);
  BOOL                   PolylineTo(                   HDC hdc, POINT* lppt, DWORD cCount);
  BOOL                   PolyPolyline(                 HDC hdc, POINT* lppt, DWORD* lpdwPolyPoints, DWORD cCount);
  int                    SetArcDirection(              HDC hdc, int ArcDirection);
  HENHMETAFILE           CloseEnhMetaFile(             HDC hdc);
  HENHMETAFILE           CopyEnhMetaFile(              HENHMETAFILE hemfSrc, LPCTSTR lpszFile);
  HDC                    CreateEnhMetaFile(            HDC hdcRef, LPCTSTR lpFilename, RECT* lpRect, LPCTSTR lpDescription);
  BOOL                   DeleteEnhMetaFile(            HENHMETAFILE hemf);
  BOOL                   EnumEnhMetaFile(              HDC hdc, HENHMETAFILE hemf, ENHMFENUMPROC lpEnhMetaFunc, LPVOID lpData, RECT* lpRect);
  BOOL                   GdiComment(                   HDC hdc, UINT cbSize, BYTE* lpData);
  HENHMETAFILE           GetEnhMetaFile(               LPCTSTR lpszMetaFile);
  UINT                   GetEnhMetaFileBits(           HENHMETAFILE hemf, UINT cbBuffer, LPBYTE lpbBuffer);
  UINT                   GetEnhMetaFileDescription(    HENHMETAFILE hemf, UINT cchBuffer, LPTSTR lpszDescription);
  UINT                   GetEnhMetaFileHeader(         HENHMETAFILE hemf, UINT cbBuffer, LPENHMETAHEADER lpemh);
  UINT                   GetEnhMetaFilePaletteEntries( HENHMETAFILE hemf, UINT cEntries, LPPALETTEENTRY lppe);
  UINT                   GetWinMetaFileBits(           HENHMETAFILE hemf, UINT cbBuffer, LPBYTE lpbBuffer, WINAPI_MappingMode fnMapMode, HDC hdcRef);
  BOOL                   PlayEnhMetaFile(              HDC hdc, HENHMETAFILE hemf, RECT* lpRect);
  BOOL                   PlayEnhMetaFileRecord(        HDC hdc, LPHANDLETABLE lpHandletable, ENHMETARECORD* lpEnhMetaRecord, UINT nHandles);
  HENHMETAFILE           SetEnhMetaFileBits(           UINT cbBuffer, BYTE* lpData);
  HENHMETAFILE           SetWinMetaFileBits(           UINT cbBuffer, BYTE* lpbBuffer, HDC hdcRef, METAFILEPICT* lpmfp);
  HMETAFILE              CloseMetaFile(                HDC hdc);
  HMETAFILE              CopyMetaFile(                 HMETAFILE hmfSrc, LPCTSTR lpszFile);
  HDC                    CreateMetaFile(               LPCTSTR lpszFile);
  BOOL                   DeleteMetaFile(               HMETAFILE hmf);
  BOOL                   EnumMetaFile(                 HDC hdc, HMETAFILE hmf, MFENUMPROC lpMetaFunc, LPARAM lParam);
  UINT                   GetMetaFileBitsEx(            HMETAFILE hmf, UINT nSize, LPVOID lpvData);
  BOOL                   PlayMetaFile(                 HDC hdc, HMETAFILE hmf);
  BOOL                   PlayMetaFileRecord(           HDC hdc, LPHANDLETABLE lpHandletable, LPMETARECORD lpMetaRecord, UINT nHandles);
  HMETAFILE              SetMetaFileBitsEx(            UINT nSize, BYTE* lpData);
  BOOL                   GdiFlush(                     );
  DWORD                  GdiGetBatchLimit(             );
  DWORD                  GdiSetBatchLimit(             DWORD dwLimit);
  COLORREF               GetBkColor(                   HDC hdc);
  int                    GetBkMode(                    HDC hdc);
  UINT                   GetBoundsRect(                HDC hdc, LPRECT lprcBounds, WINAPI_BoundsAccumulationFlags flags);
  int                    GetROP2(                      HDC hdc);
  COLORREF               SetBkColor(                   HDC hdc, COLORREF crColor);
  int                    SetBkMode(                    HDC hdc, WINAPI_BkModeEnum iBkMode);
  UINT                   SetBoundsRect(                HDC hdc, RECT* lprcBounds, WINAPI_BoundsAccumulationFlags flags);
  int                    SetROP2(                      HDC hdc, WINAPI_ROP2ModeEnum fnDrawMode);
  BOOL                   AbortPath(                    HDC hdc);
  BOOL                   BeginPath(                    HDC hdc);
  BOOL                   CloseFigure(                  HDC hdc);
  BOOL                   EndPath(                      HDC hdc);
  BOOL                   FillPath(                     HDC hdc);
  BOOL                   FlattenPath(                  HDC hdc);
  BOOL                   GetMiterLimit(                HDC hdc, PFLOAT peLimit);
  int                    GetPath(                      HDC hdc, LPPOINT lpPoints, LPBYTE lpTypes, int nSize);
  HRGN                   PathToRegion(                 HDC hdc);
  BOOL                   SetMiterLimit(                HDC hdc, FLOAT eNewLimit, PFLOAT peOldLimit);
  BOOL                   StrokeAndFillPath(            HDC hdc);
  BOOL                   StrokePath(                   HDC hdc);
  BOOL                   WidenPath(                    HDC hdc);
  int                    AbortDoc(                     HDC hdc);
  int                    StartDoc(                     HDC hdc, DOCINFO* lpdi);
  int                    EndDoc(                       HDC hdc);
  int                    EndPage(                      HDC hdc);
  int                    Escape(                       HDC hdc, WINAPI_GdiEscapeFunction nEscape, int cbInput, LPCSTR lpvInData, LPVOID lpvOutData);
  int                    ExtEscape(                    HDC hdc, int nEscape, int cbInput, LPCSTR lpszInData, int cbOutput, LPSTR lpszOutData);
  int                    SetAbortProc(                 HDC hdc, ABORTPROC lpAbortProc);
  int                    StartPage(                    HDC hDC);
  int                    CombineRgn(                   HRGN hrgnDest, HRGN hrgnSrc1, HRGN hrgnSrc2, WINAPI_RgnMode fnCombineMode);
  HRGN                   CreateEllipticRgn(            int nLeftRect, int nTopRect, int nRightRect, int nBottomRect);
  HRGN                   CreateEllipticRgnIndirect(    RECT* lprc);
  HRGN                   CreatePolygonRgn(             POINT* lppt, int cPoints, WINAPI_PolyFillModes fnPolyFillMode);
  HRGN                   CreatePolyPolygonRgn(         POINT* lppt, INT* lpPolyCounts, int nCount, WINAPI_PolyFillModes fnPolyFillMode);
  HRGN                   CreateRectRgn(                int nLeftRect, int nTopRect, int nRightRect, int nBottomRect);
  HRGN                   CreateRectRgnIndirect(        RECT* lprc);
  HRGN                   CreateRoundRectRgn(           int nLeftRect, int nTopRect, int nRightRect, int nBottomRect, int nWidthEllipse, int nHeightEllipse);
  BOOL                   EqualRgn(                     HRGN hSrcRgn1, HRGN hSrcRgn2);
  HRGN                   ExtCreateRegion(              XFORM* lpXform, DWORD nCount, RGNDATA* lpRgnData);
  BOOL                   FillRgn(                      HDC hdc, HRGN hrgn, HBRUSH hbr);
  BOOL                   FrameRgn(                     HDC hdc, HRGN hrgn, HBRUSH hbr, int nWidth, int nHeight);
  int                    GetPolyFillMode(              HDC hdc);
  DWORD                  GetRegionData(                HRGN hRgn, DWORD dwCount, LPRGNDATA lpRgnData);
  int                    GetRgnBox(                    HRGN hrgn, LPRECT lprc);
  BOOL                   InvertRgn(                    HDC hdc, HRGN hrgn);
  int                    OffsetRgn(                    HRGN hrgn, int nXOffset, int nYOffset);
  BOOL                   PaintRgn(                     HDC hdc, HRGN hrgn);
  BOOL                   PtInRegion(                   HRGN hrgn, int X, int Y);
  BOOL                   RectInRegion(                 HRGN hrgn, RECT* lprc);
  int                    SetPolyFillMode(              HDC hdc, WINAPI_PolyFillModes iPolyFillMode);
  BOOL                   SetRectRgn(                   HRGN hrgn, int nLeftRect, int nTopRect, int nRightRect, int nBottomRect);
  WINAPI_FontCharset_int GetTextCharset(               HDC hdc);
  WINAPI_FontCharset_int GetTextCharsetInfo(           HDC hdc, LPFONTSIGNATURE lpSig, DWORD dwFlags);
  BOOL                   TranslateCharsetInfo(         DWORD* lpSrc, LPCHARSETINFO lpCs, WINAPI_TranslateCharsetInfoFlag dwFlags);
  int                    ChoosePixelFormat(            HDC hdc, PIXELFORMATDESCRIPTOR* ppfd);
  int                    DescribePixelFormat(          HDC hdc, int iPixelFormat, UINT nBytes, LPPIXELFORMATDESCRIPTOR ppfd);
  int                    GetPixelFormat(               HDC hdc);
  BOOL                   SetPixelFormat(               HDC hdc, int iPixelFormat, PIXELFORMATDESCRIPTOR* ppfd);
  UINT                   GetEnhMetaFilePixelFormat(    HENHMETAFILE hemf, DWORD cbBuffer, PIXELFORMATDESCRIPTOR* ppfd);
  BOOL                   SwapBuffers(                  HDC hdc);
]]
return ffi.load( "Gdi32.dll" )