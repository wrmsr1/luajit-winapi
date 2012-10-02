require( 'ffi/winapi/headers/windows' )
local ffi = require( 'ffi' )
ffi.cdef [[
  typedef DWORD FOURCC; //Alias
  typedef enum MMRESULT {
    MMSYSERR_NOERROR = 0,
    MMSYSERR_ERROR = 1,
    MMSYSERR_BADDEVICEID = 2,
    MMSYSERR_NOTENABLED = 3,
    MMSYSERR_ALLOCATED = 4,
    MMSYSERR_INVALHANDLE = 5,
    MMSYSERR_NODRIVER = 6,
    MMSYSERR_NOMEM = 7,
    MMSYSERR_NOTSUPPORTED = 8,
    MMSYSERR_BADERRNUM = 9,
    MMSYSERR_INVALFLAG = 10,
    MMSYSERR_INVALPARAM = 11,
    MMSYSERR_HANDLEBUSY = 12,
    MMSYSERR_INVALIDALIAS = 13,
    MMSYSERR_BADDB = 14,
    MMSYSERR_KEYNOTFOUND = 15,
    MMSYSERR_READERROR = 16,
    MMSYSERR_WRITEERROR = 17,
    MMSYSERR_DELETEERROR = 18,
    MMSYSERR_VALNOTFOUND = 19,
    MMSYSERR_NODRIVERCB = 20,
    MMSYSERR_MOREDATA = 21,
    WAVERR_BADFORMAT = 32,
    WAVERR_STILLPLAYING = 33,
    WAVERR_UNPREPARED = 34,
    WAVERR_SYNC = 35,
    MIDIERR_UNPREPARED = 64,
    MIDIERR_STILLPLAYING = 65,
    MIDIERR_NOMAP = 66,
    MIDIERR_NOTREADY = 67,
    MIDIERR_NODEVICE = 68,
    MIDIERR_INVALIDSETUP = 69,
    MIDIERR_BADOPENMODE = 70,
    MIDIERR_DONT_CONTINUE = 71,
    JOYERR_PARMS = 165,
    JOYERR_NOCANDO = 166,
    JOYERR_UNPLUGGED = 167,
    MMIOERR_FILENOTFOUND = 257,
    MMIOERR_OUTOFMEMORY = 258,
    MMIOERR_CANNOTOPEN = 259,
    MMIOERR_CANNOTCLOSE = 260,
    MMIOERR_CANNOTREAD = 261,
    MMIOERR_CANNOTWRITE = 262,
    MMIOERR_CANNOTSEEK = 263,
    MMIOERR_CANNOTEXPAND = 264,
    MMIOERR_CHUNKNOTFOUND = 265,
    MMIOERR_UNBUFFERED = 266,
    MMIOERR_PATHNOTFOUND = 267,
    MMIOERR_ACCESSDENIED = 268,
    MMIOERR_SHARINGVIOLATION = 269,
    MMIOERR_NETWORKERROR = 270,
    MMIOERR_TOOMANYOPENFILES = 271,
    MMIOERR_INVALIDFILE = 272,
    ACMERR_NOTPOSSIBLE = 512,
    ACMERR_BUSY = 513,
    ACMERR_UNPREPARED = 514,
    ACMERR_CANCELED = 515,
    MIXERR_INVALLINE = 1024,
    MIXERR_INVALCONTROL = 1025,
    MIXERR_INVALVALUE = 1026,
  } MMRESULT;
  typedef enum WINAPI_WaveFormat {
    WAVE_FORMAT_UNKNOWN = 0x0000,
    WAVE_FORMAT_PCM = 0x0001,
    WAVE_FORMAT_ADPCM = 0x0002,
    WAVE_FORMAT_IEEE_FLOAT = 0x0003,
    WAVE_FORMAT_VSELP = 0x0004,
    WAVE_FORMAT_IBM_CVSD = 0x0005,
    WAVE_FORMAT_ALAW = 0x0006,
    WAVE_FORMAT_MULAW = 0x0007,
    WAVE_FORMAT_DTS = 0x0008,
    WAVE_FORMAT_DRM = 0x0009,
    WAVE_FORMAT_WMAVOICE9 = 0x000A,
    WAVE_FORMAT_WMAVOICE10 = 0x000B,
    WAVE_FORMAT_OKI_ADPCM = 0x0010,
    WAVE_FORMAT_DVI_ADPCM = 0x0011,
    WAVE_FORMAT_MEDIASPACE_ADPCM = 0x0012,
    WAVE_FORMAT_SIERRA_ADPCM = 0x0013,
    WAVE_FORMAT_G723_ADPCM = 0x0014,
    WAVE_FORMAT_DIGISTD = 0x0015,
    WAVE_FORMAT_DIGIFIX = 0x0016,
    WAVE_FORMAT_DIALOGIC_OKI_ADPCM = 0x0017,
    WAVE_FORMAT_MEDIAVISION_ADPCM = 0x0018,
    WAVE_FORMAT_CU_CODEC = 0x0019,
    WAVE_FORMAT_YAMAHA_ADPCM = 0x0020,
    WAVE_FORMAT_SONARC = 0x0021,
    WAVE_FORMAT_DSPGROUP_TRUESPEECH = 0x0022,
    WAVE_FORMAT_ECHOSC1 = 0x0023,
    WAVE_FORMAT_AUDIOFILE_AF36 = 0x0024,
    WAVE_FORMAT_APTX = 0x0025,
    WAVE_FORMAT_AUDIOFILE_AF10 = 0x0026,
    WAVE_FORMAT_PROSODY_1612 = 0x0027,
    WAVE_FORMAT_LRC = 0x0028,
    WAVE_FORMAT_DOLBY_AC2 = 0x0030,
    WAVE_FORMAT_GSM610 = 0x0031,
    WAVE_FORMAT_MSNAUDIO = 0x0032,
    WAVE_FORMAT_ANTEX_ADPCME = 0x0033,
    WAVE_FORMAT_CONTROL_RES_VQLPC = 0x0034,
    WAVE_FORMAT_DIGIREAL = 0x0035,
    WAVE_FORMAT_DIGIADPCM = 0x0036,
    WAVE_FORMAT_CONTROL_RES_CR10 = 0x0037,
    WAVE_FORMAT_NMS_VBXADPCM = 0x0038,
    WAVE_FORMAT_CS_IMAADPCM = 0x0039,
    WAVE_FORMAT_ECHOSC3 = 0x003A,
    WAVE_FORMAT_ROCKWELL_ADPCM = 0x003B,
    WAVE_FORMAT_ROCKWELL_DIGITALK = 0x003C,
    WAVE_FORMAT_XEBEC = 0x003D,
    WAVE_FORMAT_G721_ADPCM = 0x0040,
    WAVE_FORMAT_G728_CELP = 0x0041,
    WAVE_FORMAT_MSG723 = 0x0042,
    WAVE_FORMAT_MPEG = 0x0050,
    WAVE_FORMAT_RT24 = 0x0052,
    WAVE_FORMAT_PAC = 0x0053,
    WAVE_FORMAT_MPEGLAYER3 = 0x0055,
    WAVE_FORMAT_LUCENT_G723 = 0x0059,
    WAVE_FORMAT_CIRRUS = 0x0060,
    WAVE_FORMAT_ESPCM = 0x0061,
    WAVE_FORMAT_VOXWARE = 0x0062,
    WAVE_FORMAT_CANOPUS_ATRAC = 0x0063,
    WAVE_FORMAT_G726_ADPCM = 0x0064,
    WAVE_FORMAT_G722_ADPCM = 0x0065,
    WAVE_FORMAT_DSAT_DISPLAY = 0x0067,
    WAVE_FORMAT_VOXWARE_BYTE_ALIGNED = 0x0069,
    WAVE_FORMAT_VOXWARE_AC8 = 0x0070,
    WAVE_FORMAT_VOXWARE_AC10 = 0x0071,
    WAVE_FORMAT_VOXWARE_AC16 = 0x0072,
    WAVE_FORMAT_VOXWARE_AC20 = 0x0073,
    WAVE_FORMAT_VOXWARE_RT24 = 0x0074,
    WAVE_FORMAT_VOXWARE_RT29 = 0x0075,
    WAVE_FORMAT_VOXWARE_RT29HW = 0x0076,
    WAVE_FORMAT_VOXWARE_VR12 = 0x0077,
    WAVE_FORMAT_VOXWARE_VR18 = 0x0078,
    WAVE_FORMAT_VOXWARE_TQ40 = 0x0079,
    WAVE_FORMAT_SOFTSOUND = 0x0080,
    WAVE_FORMAT_VOXWARE_TQ60 = 0x0081,
    WAVE_FORMAT_MSRT24 = 0x0082,
    WAVE_FORMAT_G729A = 0x0083,
    WAVE_FORMAT_MVI_MVI2 = 0x0084,
    WAVE_FORMAT_DF_G726 = 0x0085,
    WAVE_FORMAT_DF_GSM610 = 0x0086,
    WAVE_FORMAT_ISIAUDIO = 0x0088,
    WAVE_FORMAT_ONLIVE = 0x0089,
    WAVE_FORMAT_SBC24 = 0x0091,
    WAVE_FORMAT_DOLBY_AC3_SPDIF = 0x0092,
    WAVE_FORMAT_MEDIASONIC_G723 = 0x0093,
    WAVE_FORMAT_PROSODY_8KBPS = 0x0094,
    WAVE_FORMAT_ZYXEL_ADPCM = 0x0097,
    WAVE_FORMAT_PHILIPS_LPCBB = 0x0098,
    WAVE_FORMAT_PACKED = 0x0099,
    WAVE_FORMAT_MALDEN_PHONYTALK = 0x00A0,
    WAVE_FORMAT_RAW_AAC1 = 0x00FF,
    WAVE_FORMAT_RHETOREX_ADPCM = 0x0100,
    WAVE_FORMAT_IRAT = 0x0101,
    WAVE_FORMAT_VIVO_G723 = 0x0111,
    WAVE_FORMAT_VIVO_SIREN = 0x0112,
    WAVE_FORMAT_DIGITAL_G723 = 0x0123,
    WAVE_FORMAT_SANYO_LD_ADPCM = 0x0125,
    WAVE_FORMAT_SIPROLAB_ACEPLNET = 0x0130,
    WAVE_FORMAT_SIPROLAB_ACELP4800 = 0x0131,
    WAVE_FORMAT_SIPROLAB_ACELP8V3 = 0x0132,
    WAVE_FORMAT_SIPROLAB_G729 = 0x0133,
    WAVE_FORMAT_SIPROLAB_G729A = 0x0134,
    WAVE_FORMAT_SIPROLAB_KELVIN = 0x0135,
    WAVE_FORMAT_G726ADPCM = 0x0140,
    WAVE_FORMAT_QUALCOMM_PUREVOICE = 0x0150,
    WAVE_FORMAT_QUALCOMM_HALFRATE = 0x0151,
    WAVE_FORMAT_TUBGSM = 0x0155,
    WAVE_FORMAT_MSAUDIO1 = 0x0160,
    WAVE_FORMAT_WMAUDIO2 = 0x0161,
    WAVE_FORMAT_WMAUDIO3 = 0x0162,
    WAVE_FORMAT_WMAUDIO_LOSSLESS = 0x0163,
    WAVE_FORMAT_WMASPDIF = 0x0164,
    WAVE_FORMAT_UNISYS_NAP_ADPCM = 0x0170,
    WAVE_FORMAT_UNISYS_NAP_ULAW = 0x0171,
    WAVE_FORMAT_UNISYS_NAP_ALAW = 0x0172,
    WAVE_FORMAT_UNISYS_NAP_16K = 0x0173,
    WAVE_FORMAT_CREATIVE_ADPCM = 0x0200,
    WAVE_FORMAT_CREATIVE_FASTSPEECH8 = 0x0202,
    WAVE_FORMAT_CREATIVE_FASTSPEECH10 = 0x0203,
    WAVE_FORMAT_UHER_ADPCM = 0x0210,
    WAVE_FORMAT_QUARTERDECK = 0x0220,
    WAVE_FORMAT_ILINK_VC = 0x0230,
    WAVE_FORMAT_RAW_SPORT = 0x0240,
    WAVE_FORMAT_ESST_AC3 = 0x0241,
    WAVE_FORMAT_GENERIC_PASSTHRU = 0x0249,
    WAVE_FORMAT_IPI_HSX = 0x0250,
    WAVE_FORMAT_IPI_RPELP = 0x0251,
    WAVE_FORMAT_CS2 = 0x0260,
    WAVE_FORMAT_SONY_SCX = 0x0270,
    WAVE_FORMAT_FM_TOWNS_SND = 0x0300,
    WAVE_FORMAT_BTV_DIGITAL = 0x0400,
    WAVE_FORMAT_QDESIGN_MUSIC = 0x0450,
    WAVE_FORMAT_VME_VMPCM = 0x0680,
    WAVE_FORMAT_TPC = 0x0681,
    WAVE_FORMAT_OLIGSM = 0x1000,
    WAVE_FORMAT_OLIADPCM = 0x1001,
    WAVE_FORMAT_OLICELP = 0x1002,
    WAVE_FORMAT_OLISBC = 0x1003,
    WAVE_FORMAT_OLIOPR = 0x1004,
    WAVE_FORMAT_LH_CODEC = 0x1100,
    WAVE_FORMAT_NORRIS = 0x1400,
    WAVE_FORMAT_SOUNDSPACE_MUSICOMPRESS = 0x1500,
    WAVE_FORMAT_MPEG_ADTS_AAC = 0x1600,
    WAVE_FORMAT_MPEG_RAW_AAC = 0x1601,
    WAVE_FORMAT_MPEG_LOAS = 0x1602,
    WAVE_FORMAT_NOKIA_MPEG_ADTS_AAC = 0x1608,
    WAVE_FORMAT_NOKIA_MPEG_RAW_AAC = 0x1609,
    WAVE_FORMAT_VODAFONE_MPEG_ADTS_AAC = 0x160A,
    WAVE_FORMAT_VODAFONE_MPEG_RAW_AAC = 0x160B,
    WAVE_FORMAT_MPEG_HEAAC = 0x1610,
    WAVE_FORMAT_DVM = 0x2000,
    WAVE_FORMAT_DTS2 = 0x2001,
    WAVE_FORMAT_EXTENSIBLE = 0xFFFE,
    WAVE_FORMAT_DEVELOPMENT = 0xFFFF,
  } WINAPI_WaveFormat;
# pragma pack( push, 1 )
  typedef struct WAVEFORMATEX {
    WINAPI_WaveFormat wFormatTag;
    WORD nChannels;
    DWORD nSamplesPerSec;
    DWORD nAvgBytesPerSec;
    WORD nBlockAlign;
    WORD wBitsPerSample;
    WORD cbSize;
  } WAVEFORMATEX;
# pragma pack( pop )
  typedef WAVEFORMATEX *LPWAVEFORMATEX; //Pointer
  typedef WAVEFORMATEX *LPCWAVEFORMATEX; //Pointer
  typedef DWORD WINAPI_SPEAKER_POSITION; //Alias
]]
