require( "ffi/winapi/headers/windows" )
require( "ffi/winapi/headers/multimedia" )
local ffi = require( "ffi" )
ffi.cdef [[
  typedef float float [];
  typedef enum WINAPI_AUDCLNT_HRESULT {
    AUDCLNT_E_NOT_INITIALIZED = 0x88890001,
    AUDCLNT_E_ALREADY_INITIALIZED = 0x88890002,
    AUDCLNT_E_WRONG_ENDPOINT_TYPE = 0x88890003,
    AUDCLNT_E_DEVICE_INVALIDATED = 0x88890004,
    AUDCLNT_E_NOT_STOPPED = 0x88890005,
    AUDCLNT_E_BUFFER_TOO_LARGE = 0x88890006,
    AUDCLNT_E_OUT_OF_ORDER = 0x88890007,
    AUDCLNT_E_UNSUPPORTED_FORMAT = 0x88890008,
    AUDCLNT_E_INVALID_SIZE = 0x88890009,
    AUDCLNT_E_DEVICE_IN_USE = 0x8889000a,
    AUDCLNT_E_BUFFER_OPERATION_PENDING = 0x8889000b,
    AUDCLNT_E_THREAD_NOT_REGISTERED = 0x8889000c,
    AUDCLNT_E_EXCLUSIVE_MODE_NOT_ALLOWED = 0x8889000e,
    AUDCLNT_E_ENDPOINT_CREATE_FAILED = 0x8889000f,
    AUDCLNT_E_SERVICE_NOT_RUNNING = 0x88890010,
    AUDCLNT_E_EVENTHANDLE_NOT_EXPECTED = 0x88890011,
    AUDCLNT_E_EXCLUSIVE_MODE_ONLY = 0x88890012,
    AUDCLNT_E_BUFDURATION_PERIOD_NOT_EQUAL = 0x88890013,
    AUDCLNT_E_EVENTHANDLE_NOT_SET = 0x88890014,
    AUDCLNT_E_INCORRECT_BUFFER_SIZE = 0x88890015,
    AUDCLNT_E_BUFFER_SIZE_ERROR = 0x88890016,
    AUDCLNT_E_CPUUSAGE_EXCEEDED = 0x88890017,
    AUDCLNT_E_BUFFER_ERROR = 0x88890018,
    AUDCLNT_E_BUFFER_SIZE_NOT_ALIGNED = 0x88890019,
    AUDCLNT_E_INVALID_DEVICE_PERIOD = 0x88890020,
    AUDCLNT_S_BUFFER_EMPTY = 0x08890001,
    AUDCLNT_S_THREAD_ALREADY_REGISTERED = 0x08890002,
    AUDCLNT_S_POSITION_STALLED = 0x08890003,
  } WINAPI_AUDCLNT_HRESULT;
  typedef enum AUDCLNT_SHAREMODE {
    AUDCLNT_SHAREMODE_SHARED = 0,
    AUDCLNT_SHAREMODE_EXCLUSIVE = 1,
  } AUDCLNT_SHAREMODE;
  typedef enum AudioSessionState {
    AudioSessionStateInactive = 0,
    AudioSessionStateActive = 1,
    AudioSessionStateExpired = 2,
  } AudioSessionState;
  typedef enum AudioSessionDisconnectReason {
    DisconnectReasonDeviceRemoval = 0,
    DisconnectReasonServerShutdown = 1,
    DisconnectReasonFormatChanged = 2,
    DisconnectReasonSessionLogoff = 3,
    DisconnectReasonSessionDisconnected = 4,
    DisconnectReasonExclusiveModeOverride = 5,
  } AudioSessionDisconnectReason;
  typedef enum ConnectorType {
    Unknown_Connector = 0,
    Physical_Internal = 1,
    Physical_External = 2,
    Software_IO = 3,
    Software_Fixed = 4,
    Network = 5,
  } ConnectorType;
  typedef enum DataFlow {
    In = 0,
    Out = 1,
  } DataFlow;
  typedef enum EDataFlow {
    eRender = 0,
    eCapture = 1,
    eAll = 2,
  } EDataFlow;
  typedef enum ERole {
    eConsole = 0,
    eMultimedia = 1,
    eCommunications = 2,
  } ERole;
  typedef enum PartType {
    Connector = 0,
    Subunit = 1,
  } PartType;
  typedef struct WINAPI_KSIDENTIFIER_s {
    GUID Set,
    ULONG Id,
    ULONG Flags,
  } WINAPI_KSIDENTIFIER_s;

  typedef union KSIDENTIFIER {
    WINAPI_KSIDENTIFIER_s ,
    LONGLONG Alignment,
  } KSIDENTIFIER;

  typedef KSIDENTIFIER KSPROPERTY;
  typedef KSPROPERTY PKSPROPERTY;
  typedef KSIDENTIFIER KSMETHOD;
  typedef KSMETHOD PKSMETHOD;
  typedef KSIDENTIFIER KSEVENT;
  typedef KSEVENT PKSEVENT;
  typedef struct KSDATAFORMAT {
    ULONG FormatSize,
    ULONG Flags,
    ULONG SampleSize,
    ULONG Reserved,
    GUID MajorFormat,
    GUID SubFormat,
    GUID Specifier,
  } KSDATAFORMAT;

  typedef KSDATAFORMAT PKSDATAFORMAT;
  typedef enum EPcxConnectionType {
    eConnTypeUnknown = 0,
    eConnType3Point5mm = 1,
    eConnTypeQuarter = 2,
    eConnTypeAtapiInternal = 3,
    eConnTypeRCA = 4,
    eConnTypeOptical = 5,
    eConnTypeOtherDigital = 6,
    eConnTypeOtherAnalog = 7,
    eConnTypeMultichannelAnalogDIN = 8,
    eConnTypeXlrProfessional = 9,
    eConnTypeRJ11Modem = 10,
    eConnTypeCombination = 11,
  } EPcxConnectionType;
  typedef enum EPcxGeoLocation {
    eGeoLocRear = 0x1,
    eGeoLocFront = 2,
    eGeoLocLeft = 3,
    eGeoLocRight = 4,
    eGeoLocTop = 5,
    eGeoLocBottom = 6,
    eGeoLocRearPanel = 7,
    eGeoLocRiser = 8,
    eGeoLocInsideMobileLid = 9,
    eGeoLocDrivebay = 10,
    eGeoLocHDMI = 11,
    eGeoLocOutsideMobileLid = 12,
    eGeoLocATAPI = 13,
    eGeoLocReserved5 = 14,
    eGeoLocReserved6 = 15,
  } EPcxGeoLocation;
  typedef enum EPcxGenLocation {
    eGenLocPrimaryBox = 0,
    eGenLocInternal = 1,
    eGenLocSeparate = 2,
    eGenLocOther = 3,
  } EPcxGenLocation;
  typedef enum EPxcPortConnection {
    ePortConnJack = 0,
    ePortConnIntegratedDevice = 1,
    ePortConnBothIntegratedAndJack = 2,
    ePortConnUnknown = 3,
  } EPxcPortConnection;
  typedef struct KSJACK_DESCRIPTION {
    WINAPI_SPEAKER_POSITION ChannelMapping,
    COLORREF Color,
    EPcxConnectionType ConnectionType,
    EPcxGeoLocation GeoLocation,
    EPcxGenLocation GenLocation,
    EPxcPortConnection PortConnection,
    BOOL IsConnected,
  } KSJACK_DESCRIPTION;

  typedef DWORD WINAPI_JACKDESC2_FLAGS;
  typedef struct KSJACK_DESCRIPTION2 {
    DWORD DeviceStateInfo,
    WINAPI_JACKDESC2_FLAGS JackCapabilities,
  } KSJACK_DESCRIPTION2;

  typedef enum KSJACK_SINK_CONNECTIONTYPE {
    KSJACK_SINK_CONNECTIONTYPE_HDMI = 0,
    KSJACK_SINK_CONNECTIONTYPE_DISPLAYPORT = 1,
  } KSJACK_SINK_CONNECTIONTYPE;
  typedef struct KSJACK_SINK_INFORMATION {
    KSJACK_SINK_CONNECTIONTYPE ConnType,
    WORD ManufacturerId,
    WORD ProductId,
    WORD AudioLatency,
    BOOL HDCPCapable,
    BOOL AICapable,
    UCHAR SinkDescriptionLength,
    WCHAR [MAX_SINK_DESCRIPTION_NAME_LENGTH] SinkDescription,
    LUID PortId,
  } KSJACK_SINK_INFORMATION;

  typedef struct AUDIO_VOLUME_NOTIFICATION_DATA {
    GUID guidEventContext,
    BOOL bMuted,
    float fMasterVolume,
    UINT nChannels,
    float [1] afChannelVolumes,
  } AUDIO_VOLUME_NOTIFICATION_DATA;

  typedef AUDIO_VOLUME_NOTIFICATION_DATA PAUDIO_VOLUME_NOTIFICATION_DATA;
]]