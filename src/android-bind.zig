const __builtin_va_list = extern struct {
    padding: u32,
};

pub const va_list = __builtin_va_list;
pub const __gnuc_va_list = __builtin_va_list;
pub const ANDROID_LOG_UNKNOWN = @enumToInt(enum_android_LogPriority.ANDROID_LOG_UNKNOWN);
pub const ANDROID_LOG_DEFAULT = @enumToInt(enum_android_LogPriority.ANDROID_LOG_DEFAULT);
pub const ANDROID_LOG_VERBOSE = @enumToInt(enum_android_LogPriority.ANDROID_LOG_VERBOSE);
pub const ANDROID_LOG_DEBUG = @enumToInt(enum_android_LogPriority.ANDROID_LOG_DEBUG);
pub const ANDROID_LOG_INFO = @enumToInt(enum_android_LogPriority.ANDROID_LOG_INFO);
pub const ANDROID_LOG_WARN = @enumToInt(enum_android_LogPriority.ANDROID_LOG_WARN);
pub const ANDROID_LOG_ERROR = @enumToInt(enum_android_LogPriority.ANDROID_LOG_ERROR);
pub const ANDROID_LOG_FATAL = @enumToInt(enum_android_LogPriority.ANDROID_LOG_FATAL);
pub const ANDROID_LOG_SILENT = @enumToInt(enum_android_LogPriority.ANDROID_LOG_SILENT);
pub const enum_android_LogPriority = extern enum(c_int) {
    ANDROID_LOG_UNKNOWN = 0,
    ANDROID_LOG_DEFAULT = 1,
    ANDROID_LOG_VERBOSE = 2,
    ANDROID_LOG_DEBUG = 3,
    ANDROID_LOG_INFO = 4,
    ANDROID_LOG_WARN = 5,
    ANDROID_LOG_ERROR = 6,
    ANDROID_LOG_FATAL = 7,
    ANDROID_LOG_SILENT = 8,
    _,
};
pub const android_LogPriority = enum_android_LogPriority;
pub extern fn __android_log_write(prio: c_int, tag: [*c]const u8, text: [*c]const u8) c_int;
pub extern fn __android_log_print(prio: c_int, tag: [*c]const u8, fmt: [*c]const u8, ...) c_int;
pub extern fn __android_log_vprint(prio: c_int, tag: [*c]const u8, fmt: [*c]const u8, ap: va_list) c_int;
pub extern fn __android_log_assert(cond: [*c]const u8, tag: [*c]const u8, fmt: [*c]const u8, ...) noreturn;
pub const LOG_ID_MIN = @enumToInt(enum_log_id.LOG_ID_MIN);
pub const LOG_ID_MAIN = @enumToInt(enum_log_id.LOG_ID_MAIN);
pub const LOG_ID_RADIO = @enumToInt(enum_log_id.LOG_ID_RADIO);
pub const LOG_ID_EVENTS = @enumToInt(enum_log_id.LOG_ID_EVENTS);
pub const LOG_ID_SYSTEM = @enumToInt(enum_log_id.LOG_ID_SYSTEM);
pub const LOG_ID_CRASH = @enumToInt(enum_log_id.LOG_ID_CRASH);
pub const LOG_ID_STATS = @enumToInt(enum_log_id.LOG_ID_STATS);
pub const LOG_ID_SECURITY = @enumToInt(enum_log_id.LOG_ID_SECURITY);
pub const LOG_ID_KERNEL = @enumToInt(enum_log_id.LOG_ID_KERNEL);
pub const LOG_ID_MAX = @enumToInt(enum_log_id.LOG_ID_MAX);
pub const enum_log_id = extern enum(c_int) {
    LOG_ID_MIN = 0,
    LOG_ID_MAIN = 0,
    LOG_ID_RADIO = 1,
    LOG_ID_EVENTS = 2,
    LOG_ID_SYSTEM = 3,
    LOG_ID_CRASH = 4,
    LOG_ID_STATS = 5,
    LOG_ID_SECURITY = 6,
    LOG_ID_KERNEL = 7,
    LOG_ID_MAX = 8,
    _,
};
pub const log_id_t = enum_log_id;
pub extern fn __android_log_buf_write(bufID: c_int, prio: c_int, tag: [*c]const u8, text: [*c]const u8) c_int;
pub extern fn __android_log_buf_print(bufID: c_int, prio: c_int, tag: [*c]const u8, fmt: [*c]const u8, ...) c_int;
pub extern fn android_get_application_target_sdk_version(...) c_int;
pub extern fn android_get_device_api_level(...) c_int;
pub const ptrdiff_t = c_long;
pub const wchar_t = c_uint;
const struct_unnamed_1 = extern struct {
    __clang_max_align_nonce1: c_longlong align(8),
    __clang_max_align_nonce2: c_longdouble align(16),
};
pub const max_align_t = struct_unnamed_1;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_long;
pub const __uint64_t = c_ulong;
pub const __intptr_t = c_long;
pub const __uintptr_t = c_ulong;
pub const int_least8_t = i8;
pub const uint_least8_t = u8;
pub const int_least16_t = i16;
pub const uint_least16_t = u16;
pub const int_least32_t = i32;
pub const uint_least32_t = u32;
pub const int_least64_t = i64;
pub const uint_least64_t = u64;
pub const int_fast8_t = i8;
pub const uint_fast8_t = u8;
pub const int_fast64_t = i64;
pub const uint_fast64_t = u64;
pub const int_fast16_t = i64;
pub const uint_fast16_t = u64;
pub const int_fast32_t = i64;
pub const uint_fast32_t = u64;
pub const uintmax_t = u64;
pub const intmax_t = i64;
pub const __s8 = i8;
pub const __u8 = u8;
pub const __s16 = c_short;
pub const __u16 = c_ushort;
pub const __s32 = c_int;
pub const __u32 = c_uint;
pub const __s64 = c_longlong;
pub const __u64 = c_ulonglong;
const struct_unnamed_2 = extern struct {
    fds_bits: [16]c_ulong,
};
pub const __kernel_fd_set = struct_unnamed_2;
pub const __kernel_sighandler_t = ?fn (c_int) callconv(.C) void;
pub const __kernel_key_t = c_int;
pub const __kernel_mqd_t = c_int;
pub const __kernel_old_uid_t = c_ushort;
pub const __kernel_old_gid_t = c_ushort;
pub const __kernel_long_t = c_long;
pub const __kernel_ulong_t = c_ulong;
pub const __kernel_ino_t = __kernel_ulong_t;
pub const __kernel_mode_t = c_uint;
pub const __kernel_pid_t = c_int;
pub const __kernel_ipc_pid_t = c_int;
pub const __kernel_uid_t = c_uint;
pub const __kernel_gid_t = c_uint;
pub const __kernel_suseconds_t = __kernel_long_t;
pub const __kernel_daddr_t = c_int;
pub const __kernel_uid32_t = c_uint;
pub const __kernel_gid32_t = c_uint;
pub const __kernel_old_dev_t = c_uint;
pub const __kernel_size_t = __kernel_ulong_t;
pub const __kernel_ssize_t = __kernel_long_t;
pub const __kernel_ptrdiff_t = __kernel_long_t;
const struct_unnamed_3 = extern struct {
    val: [2]c_int,
};
pub const __kernel_fsid_t = struct_unnamed_3;
pub const __kernel_off_t = __kernel_long_t;
pub const __kernel_loff_t = c_longlong;
pub const __kernel_time_t = __kernel_long_t;
pub const __kernel_time64_t = c_longlong;
pub const __kernel_clock_t = __kernel_long_t;
pub const __kernel_timer_t = c_int;
pub const __kernel_clockid_t = c_int;
pub const __kernel_caddr_t = [*c]u8;
pub const __kernel_uid16_t = c_ushort;
pub const __kernel_gid16_t = c_ushort;
pub const __le16 = __u16;
pub const __be16 = __u16;
pub const __le32 = __u32;
pub const __be32 = __u32;
pub const __le64 = __u64;
pub const __be64 = __u64;
pub const __sum16 = __u16;
pub const __wsum = __u32;
pub const __poll_t = c_uint;
const struct_unnamed_4 = extern struct {
    flags: u32,
    stack_base: ?*c_void,
    stack_size: usize,
    guard_size: usize,
    sched_policy: i32,
    sched_priority: i32,
    __reserved: [16]u8,
};
pub const pthread_attr_t = struct_unnamed_4;
const struct_unnamed_5 = extern struct {
    __private: [4]i64,
};
pub const pthread_barrier_t = struct_unnamed_5;
pub const pthread_barrierattr_t = c_int;
const struct_unnamed_6 = extern struct {
    __private: [12]i32,
};
pub const pthread_cond_t = struct_unnamed_6;
pub const pthread_condattr_t = c_long;
pub const pthread_key_t = c_int;
const struct_unnamed_7 = extern struct {
    __private: [10]i32,
};
pub const pthread_mutex_t = struct_unnamed_7;
pub const pthread_mutexattr_t = c_long;
pub const pthread_once_t = c_int;
const struct_unnamed_8 = extern struct {
    __private: [14]i32,
};
pub const pthread_rwlock_t = struct_unnamed_8;
pub const pthread_rwlockattr_t = c_long;
const struct_unnamed_9 = extern struct {
    __private: i64,
};
pub const pthread_spinlock_t = struct_unnamed_9;
pub const pthread_t = c_long;
pub const __gid_t = __kernel_gid32_t;
pub const gid_t = __gid_t;
pub const __uid_t = __kernel_uid32_t;
pub const uid_t = __uid_t;
pub const __pid_t = __kernel_pid_t;
pub const pid_t = __pid_t;
pub const __id_t = u32;
pub const id_t = __id_t;
pub const blkcnt_t = c_ulong;
pub const blksize_t = c_ulong;
pub const caddr_t = __kernel_caddr_t;
pub const clock_t = __kernel_clock_t;
pub const __clockid_t = __kernel_clockid_t;
pub const clockid_t = __clockid_t;
pub const daddr_t = __kernel_daddr_t;
pub const fsblkcnt_t = c_ulong;
pub const fsfilcnt_t = c_ulong;
pub const __mode_t = __kernel_mode_t;
pub const mode_t = __mode_t;
pub const __key_t = __kernel_key_t;
pub const key_t = __key_t;
pub const __ino_t = __kernel_ino_t;
pub const ino_t = __ino_t;
pub const ino64_t = u64;
pub const __nlink_t = u32;
pub const nlink_t = __nlink_t;
pub const __timer_t = ?*c_void;
pub const timer_t = __timer_t;
pub const __suseconds_t = __kernel_suseconds_t;
pub const suseconds_t = __suseconds_t;
pub const __useconds_t = u32;
pub const useconds_t = __useconds_t;
pub const dev_t = u64;
pub const __time_t = __kernel_time_t;
pub const time_t = __time_t;
pub const off_t = i64;
pub const loff_t = off_t;
pub const off64_t = loff_t;
pub const __socklen_t = u32;
pub const socklen_t = __socklen_t;
pub const __va_list = __builtin_va_list;
pub const uint_t = c_uint;
pub const uint = c_uint;
pub const u_char = u8;
pub const u_short = c_ushort;
pub const u_int = c_uint;
pub const u_long = c_ulong;
pub const u_int32_t = u32;
pub const u_int16_t = u16;
pub const u_int8_t = u8;
pub const u_int64_t = u64;
pub const AAssetManager = opaque {};
pub const AAssetDir = opaque {};
pub const AAsset = opaque {};
pub const AASSET_MODE_UNKNOWN = @enumToInt(enum_unnamed_10.AASSET_MODE_UNKNOWN);
pub const AASSET_MODE_RANDOM = @enumToInt(enum_unnamed_10.AASSET_MODE_RANDOM);
pub const AASSET_MODE_STREAMING = @enumToInt(enum_unnamed_10.AASSET_MODE_STREAMING);
pub const AASSET_MODE_BUFFER = @enumToInt(enum_unnamed_10.AASSET_MODE_BUFFER);
const enum_unnamed_10 = extern enum(c_int) {
    AASSET_MODE_UNKNOWN = 0,
    AASSET_MODE_RANDOM = 1,
    AASSET_MODE_STREAMING = 2,
    AASSET_MODE_BUFFER = 3,
    _,
};
pub extern fn AAssetManager_openDir(mgr: ?*AAssetManager, dirName: [*c]const u8) ?*AAssetDir;
pub extern fn AAssetManager_open(mgr: ?*AAssetManager, filename: [*c]const u8, mode: c_int) ?*AAsset;
pub extern fn AAssetDir_getNextFileName(assetDir: ?*AAssetDir) [*c]const u8;
pub extern fn AAssetDir_rewind(assetDir: ?*AAssetDir) void;
pub extern fn AAssetDir_close(assetDir: ?*AAssetDir) void;
pub extern fn AAsset_read(asset: ?*AAsset, buf: ?*c_void, count: usize) c_int;
pub extern fn AAsset_seek(asset: ?*AAsset, offset: off_t, whence: c_int) off_t;
pub extern fn AAsset_seek64(asset: ?*AAsset, offset: off64_t, whence: c_int) off64_t;
pub extern fn AAsset_close(asset: ?*AAsset) void;
pub extern fn AAsset_getBuffer(asset: ?*AAsset) ?*const c_void;
pub extern fn AAsset_getLength(asset: ?*AAsset) off_t;
pub extern fn AAsset_getLength64(asset: ?*AAsset) off64_t;
pub extern fn AAsset_getRemainingLength(asset: ?*AAsset) off_t;
pub extern fn AAsset_getRemainingLength64(asset: ?*AAsset) off64_t;
pub extern fn AAsset_openFileDescriptor(asset: ?*AAsset, outStart: [*c]off_t, outLength: [*c]off_t) c_int;
pub extern fn AAsset_openFileDescriptor64(asset: ?*AAsset, outStart: [*c]off64_t, outLength: [*c]off64_t) c_int;
pub extern fn AAsset_isAllocated(asset: ?*AAsset) c_int;
pub const struct_AConfiguration = opaque {};
pub const AConfiguration = struct_AConfiguration;
pub const ACONFIGURATION_ORIENTATION_ANY = @enumToInt(enum_unnamed_11.ACONFIGURATION_ORIENTATION_ANY);
pub const ACONFIGURATION_ORIENTATION_PORT = @enumToInt(enum_unnamed_11.ACONFIGURATION_ORIENTATION_PORT);
pub const ACONFIGURATION_ORIENTATION_LAND = @enumToInt(enum_unnamed_11.ACONFIGURATION_ORIENTATION_LAND);
pub const ACONFIGURATION_ORIENTATION_SQUARE = @enumToInt(enum_unnamed_11.ACONFIGURATION_ORIENTATION_SQUARE);
pub const ACONFIGURATION_TOUCHSCREEN_ANY = @enumToInt(enum_unnamed_11.ACONFIGURATION_TOUCHSCREEN_ANY);
pub const ACONFIGURATION_TOUCHSCREEN_NOTOUCH = @enumToInt(enum_unnamed_11.ACONFIGURATION_TOUCHSCREEN_NOTOUCH);
pub const ACONFIGURATION_TOUCHSCREEN_STYLUS = @enumToInt(enum_unnamed_11.ACONFIGURATION_TOUCHSCREEN_STYLUS);
pub const ACONFIGURATION_TOUCHSCREEN_FINGER = @enumToInt(enum_unnamed_11.ACONFIGURATION_TOUCHSCREEN_FINGER);
pub const ACONFIGURATION_DENSITY_DEFAULT = @enumToInt(enum_unnamed_11.ACONFIGURATION_DENSITY_DEFAULT);
pub const ACONFIGURATION_DENSITY_LOW = @enumToInt(enum_unnamed_11.ACONFIGURATION_DENSITY_LOW);
pub const ACONFIGURATION_DENSITY_MEDIUM = @enumToInt(enum_unnamed_11.ACONFIGURATION_DENSITY_MEDIUM);
pub const ACONFIGURATION_DENSITY_TV = @enumToInt(enum_unnamed_11.ACONFIGURATION_DENSITY_TV);
pub const ACONFIGURATION_DENSITY_HIGH = @enumToInt(enum_unnamed_11.ACONFIGURATION_DENSITY_HIGH);
pub const ACONFIGURATION_DENSITY_XHIGH = @enumToInt(enum_unnamed_11.ACONFIGURATION_DENSITY_XHIGH);
pub const ACONFIGURATION_DENSITY_XXHIGH = @enumToInt(enum_unnamed_11.ACONFIGURATION_DENSITY_XXHIGH);
pub const ACONFIGURATION_DENSITY_XXXHIGH = @enumToInt(enum_unnamed_11.ACONFIGURATION_DENSITY_XXXHIGH);
pub const ACONFIGURATION_DENSITY_ANY = @enumToInt(enum_unnamed_11.ACONFIGURATION_DENSITY_ANY);
pub const ACONFIGURATION_DENSITY_NONE = @enumToInt(enum_unnamed_11.ACONFIGURATION_DENSITY_NONE);
pub const ACONFIGURATION_KEYBOARD_ANY = @enumToInt(enum_unnamed_11.ACONFIGURATION_KEYBOARD_ANY);
pub const ACONFIGURATION_KEYBOARD_NOKEYS = @enumToInt(enum_unnamed_11.ACONFIGURATION_KEYBOARD_NOKEYS);
pub const ACONFIGURATION_KEYBOARD_QWERTY = @enumToInt(enum_unnamed_11.ACONFIGURATION_KEYBOARD_QWERTY);
pub const ACONFIGURATION_KEYBOARD_12KEY = @enumToInt(enum_unnamed_11.ACONFIGURATION_KEYBOARD_12KEY);
pub const ACONFIGURATION_NAVIGATION_ANY = @enumToInt(enum_unnamed_11.ACONFIGURATION_NAVIGATION_ANY);
pub const ACONFIGURATION_NAVIGATION_NONAV = @enumToInt(enum_unnamed_11.ACONFIGURATION_NAVIGATION_NONAV);
pub const ACONFIGURATION_NAVIGATION_DPAD = @enumToInt(enum_unnamed_11.ACONFIGURATION_NAVIGATION_DPAD);
pub const ACONFIGURATION_NAVIGATION_TRACKBALL = @enumToInt(enum_unnamed_11.ACONFIGURATION_NAVIGATION_TRACKBALL);
pub const ACONFIGURATION_NAVIGATION_WHEEL = @enumToInt(enum_unnamed_11.ACONFIGURATION_NAVIGATION_WHEEL);
pub const ACONFIGURATION_KEYSHIDDEN_ANY = @enumToInt(enum_unnamed_11.ACONFIGURATION_KEYSHIDDEN_ANY);
pub const ACONFIGURATION_KEYSHIDDEN_NO = @enumToInt(enum_unnamed_11.ACONFIGURATION_KEYSHIDDEN_NO);
pub const ACONFIGURATION_KEYSHIDDEN_YES = @enumToInt(enum_unnamed_11.ACONFIGURATION_KEYSHIDDEN_YES);
pub const ACONFIGURATION_KEYSHIDDEN_SOFT = @enumToInt(enum_unnamed_11.ACONFIGURATION_KEYSHIDDEN_SOFT);
pub const ACONFIGURATION_NAVHIDDEN_ANY = @enumToInt(enum_unnamed_11.ACONFIGURATION_NAVHIDDEN_ANY);
pub const ACONFIGURATION_NAVHIDDEN_NO = @enumToInt(enum_unnamed_11.ACONFIGURATION_NAVHIDDEN_NO);
pub const ACONFIGURATION_NAVHIDDEN_YES = @enumToInt(enum_unnamed_11.ACONFIGURATION_NAVHIDDEN_YES);
pub const ACONFIGURATION_SCREENSIZE_ANY = @enumToInt(enum_unnamed_11.ACONFIGURATION_SCREENSIZE_ANY);
pub const ACONFIGURATION_SCREENSIZE_SMALL = @enumToInt(enum_unnamed_11.ACONFIGURATION_SCREENSIZE_SMALL);
pub const ACONFIGURATION_SCREENSIZE_NORMAL = @enumToInt(enum_unnamed_11.ACONFIGURATION_SCREENSIZE_NORMAL);
pub const ACONFIGURATION_SCREENSIZE_LARGE = @enumToInt(enum_unnamed_11.ACONFIGURATION_SCREENSIZE_LARGE);
pub const ACONFIGURATION_SCREENSIZE_XLARGE = @enumToInt(enum_unnamed_11.ACONFIGURATION_SCREENSIZE_XLARGE);
pub const ACONFIGURATION_SCREENLONG_ANY = @enumToInt(enum_unnamed_11.ACONFIGURATION_SCREENLONG_ANY);
pub const ACONFIGURATION_SCREENLONG_NO = @enumToInt(enum_unnamed_11.ACONFIGURATION_SCREENLONG_NO);
pub const ACONFIGURATION_SCREENLONG_YES = @enumToInt(enum_unnamed_11.ACONFIGURATION_SCREENLONG_YES);
pub const ACONFIGURATION_SCREENROUND_ANY = @enumToInt(enum_unnamed_11.ACONFIGURATION_SCREENROUND_ANY);
pub const ACONFIGURATION_SCREENROUND_NO = @enumToInt(enum_unnamed_11.ACONFIGURATION_SCREENROUND_NO);
pub const ACONFIGURATION_SCREENROUND_YES = @enumToInt(enum_unnamed_11.ACONFIGURATION_SCREENROUND_YES);
pub const ACONFIGURATION_WIDE_COLOR_GAMUT_ANY = @enumToInt(enum_unnamed_11.ACONFIGURATION_WIDE_COLOR_GAMUT_ANY);
pub const ACONFIGURATION_WIDE_COLOR_GAMUT_NO = @enumToInt(enum_unnamed_11.ACONFIGURATION_WIDE_COLOR_GAMUT_NO);
pub const ACONFIGURATION_WIDE_COLOR_GAMUT_YES = @enumToInt(enum_unnamed_11.ACONFIGURATION_WIDE_COLOR_GAMUT_YES);
pub const ACONFIGURATION_HDR_ANY = @enumToInt(enum_unnamed_11.ACONFIGURATION_HDR_ANY);
pub const ACONFIGURATION_HDR_NO = @enumToInt(enum_unnamed_11.ACONFIGURATION_HDR_NO);
pub const ACONFIGURATION_HDR_YES = @enumToInt(enum_unnamed_11.ACONFIGURATION_HDR_YES);
pub const ACONFIGURATION_UI_MODE_TYPE_ANY = @enumToInt(enum_unnamed_11.ACONFIGURATION_UI_MODE_TYPE_ANY);
pub const ACONFIGURATION_UI_MODE_TYPE_NORMAL = @enumToInt(enum_unnamed_11.ACONFIGURATION_UI_MODE_TYPE_NORMAL);
pub const ACONFIGURATION_UI_MODE_TYPE_DESK = @enumToInt(enum_unnamed_11.ACONFIGURATION_UI_MODE_TYPE_DESK);
pub const ACONFIGURATION_UI_MODE_TYPE_CAR = @enumToInt(enum_unnamed_11.ACONFIGURATION_UI_MODE_TYPE_CAR);
pub const ACONFIGURATION_UI_MODE_TYPE_TELEVISION = @enumToInt(enum_unnamed_11.ACONFIGURATION_UI_MODE_TYPE_TELEVISION);
pub const ACONFIGURATION_UI_MODE_TYPE_APPLIANCE = @enumToInt(enum_unnamed_11.ACONFIGURATION_UI_MODE_TYPE_APPLIANCE);
pub const ACONFIGURATION_UI_MODE_TYPE_WATCH = @enumToInt(enum_unnamed_11.ACONFIGURATION_UI_MODE_TYPE_WATCH);
pub const ACONFIGURATION_UI_MODE_TYPE_VR_HEADSET = @enumToInt(enum_unnamed_11.ACONFIGURATION_UI_MODE_TYPE_VR_HEADSET);
pub const ACONFIGURATION_UI_MODE_NIGHT_ANY = @enumToInt(enum_unnamed_11.ACONFIGURATION_UI_MODE_NIGHT_ANY);
pub const ACONFIGURATION_UI_MODE_NIGHT_NO = @enumToInt(enum_unnamed_11.ACONFIGURATION_UI_MODE_NIGHT_NO);
pub const ACONFIGURATION_UI_MODE_NIGHT_YES = @enumToInt(enum_unnamed_11.ACONFIGURATION_UI_MODE_NIGHT_YES);
pub const ACONFIGURATION_SCREEN_WIDTH_DP_ANY = @enumToInt(enum_unnamed_11.ACONFIGURATION_SCREEN_WIDTH_DP_ANY);
pub const ACONFIGURATION_SCREEN_HEIGHT_DP_ANY = @enumToInt(enum_unnamed_11.ACONFIGURATION_SCREEN_HEIGHT_DP_ANY);
pub const ACONFIGURATION_SMALLEST_SCREEN_WIDTH_DP_ANY = @enumToInt(enum_unnamed_11.ACONFIGURATION_SMALLEST_SCREEN_WIDTH_DP_ANY);
pub const ACONFIGURATION_LAYOUTDIR_ANY = @enumToInt(enum_unnamed_11.ACONFIGURATION_LAYOUTDIR_ANY);
pub const ACONFIGURATION_LAYOUTDIR_LTR = @enumToInt(enum_unnamed_11.ACONFIGURATION_LAYOUTDIR_LTR);
pub const ACONFIGURATION_LAYOUTDIR_RTL = @enumToInt(enum_unnamed_11.ACONFIGURATION_LAYOUTDIR_RTL);
pub const ACONFIGURATION_MCC = @enumToInt(enum_unnamed_11.ACONFIGURATION_MCC);
pub const ACONFIGURATION_MNC = @enumToInt(enum_unnamed_11.ACONFIGURATION_MNC);
pub const ACONFIGURATION_LOCALE = @enumToInt(enum_unnamed_11.ACONFIGURATION_LOCALE);
pub const ACONFIGURATION_TOUCHSCREEN = @enumToInt(enum_unnamed_11.ACONFIGURATION_TOUCHSCREEN);
pub const ACONFIGURATION_KEYBOARD = @enumToInt(enum_unnamed_11.ACONFIGURATION_KEYBOARD);
pub const ACONFIGURATION_KEYBOARD_HIDDEN = @enumToInt(enum_unnamed_11.ACONFIGURATION_KEYBOARD_HIDDEN);
pub const ACONFIGURATION_NAVIGATION = @enumToInt(enum_unnamed_11.ACONFIGURATION_NAVIGATION);
pub const ACONFIGURATION_ORIENTATION = @enumToInt(enum_unnamed_11.ACONFIGURATION_ORIENTATION);
pub const ACONFIGURATION_DENSITY = @enumToInt(enum_unnamed_11.ACONFIGURATION_DENSITY);
pub const ACONFIGURATION_SCREEN_SIZE = @enumToInt(enum_unnamed_11.ACONFIGURATION_SCREEN_SIZE);
pub const ACONFIGURATION_VERSION = @enumToInt(enum_unnamed_11.ACONFIGURATION_VERSION);
pub const ACONFIGURATION_SCREEN_LAYOUT = @enumToInt(enum_unnamed_11.ACONFIGURATION_SCREEN_LAYOUT);
pub const ACONFIGURATION_UI_MODE = @enumToInt(enum_unnamed_11.ACONFIGURATION_UI_MODE);
pub const ACONFIGURATION_SMALLEST_SCREEN_SIZE = @enumToInt(enum_unnamed_11.ACONFIGURATION_SMALLEST_SCREEN_SIZE);
pub const ACONFIGURATION_LAYOUTDIR = @enumToInt(enum_unnamed_11.ACONFIGURATION_LAYOUTDIR);
pub const ACONFIGURATION_SCREEN_ROUND = @enumToInt(enum_unnamed_11.ACONFIGURATION_SCREEN_ROUND);
pub const ACONFIGURATION_COLOR_MODE = @enumToInt(enum_unnamed_11.ACONFIGURATION_COLOR_MODE);
pub const ACONFIGURATION_MNC_ZERO = @enumToInt(enum_unnamed_11.ACONFIGURATION_MNC_ZERO);
const enum_unnamed_11 = extern enum(c_int) {
    ACONFIGURATION_ORIENTATION_ANY = 0,
    ACONFIGURATION_ORIENTATION_PORT = 1,
    ACONFIGURATION_ORIENTATION_LAND = 2,
    ACONFIGURATION_ORIENTATION_SQUARE = 3,
    ACONFIGURATION_TOUCHSCREEN_ANY = 0,
    ACONFIGURATION_TOUCHSCREEN_NOTOUCH = 1,
    ACONFIGURATION_TOUCHSCREEN_STYLUS = 2,
    ACONFIGURATION_TOUCHSCREEN_FINGER = 3,
    ACONFIGURATION_DENSITY_DEFAULT = 0,
    ACONFIGURATION_DENSITY_LOW = 120,
    ACONFIGURATION_DENSITY_MEDIUM = 160,
    ACONFIGURATION_DENSITY_TV = 213,
    ACONFIGURATION_DENSITY_HIGH = 240,
    ACONFIGURATION_DENSITY_XHIGH = 320,
    ACONFIGURATION_DENSITY_XXHIGH = 480,
    ACONFIGURATION_DENSITY_XXXHIGH = 640,
    ACONFIGURATION_DENSITY_ANY = 65534,
    ACONFIGURATION_DENSITY_NONE = 65535,
    ACONFIGURATION_KEYBOARD_ANY = 0,
    ACONFIGURATION_KEYBOARD_NOKEYS = 1,
    ACONFIGURATION_KEYBOARD_QWERTY = 2,
    ACONFIGURATION_KEYBOARD_12KEY = 3,
    ACONFIGURATION_NAVIGATION_ANY = 0,
    ACONFIGURATION_NAVIGATION_NONAV = 1,
    ACONFIGURATION_NAVIGATION_DPAD = 2,
    ACONFIGURATION_NAVIGATION_TRACKBALL = 3,
    ACONFIGURATION_NAVIGATION_WHEEL = 4,
    ACONFIGURATION_KEYSHIDDEN_ANY = 0,
    ACONFIGURATION_KEYSHIDDEN_NO = 1,
    ACONFIGURATION_KEYSHIDDEN_YES = 2,
    ACONFIGURATION_KEYSHIDDEN_SOFT = 3,
    ACONFIGURATION_NAVHIDDEN_ANY = 0,
    ACONFIGURATION_NAVHIDDEN_NO = 1,
    ACONFIGURATION_NAVHIDDEN_YES = 2,
    ACONFIGURATION_SCREENSIZE_ANY = 0,
    ACONFIGURATION_SCREENSIZE_SMALL = 1,
    ACONFIGURATION_SCREENSIZE_NORMAL = 2,
    ACONFIGURATION_SCREENSIZE_LARGE = 3,
    ACONFIGURATION_SCREENSIZE_XLARGE = 4,
    ACONFIGURATION_SCREENLONG_ANY = 0,
    ACONFIGURATION_SCREENLONG_NO = 1,
    ACONFIGURATION_SCREENLONG_YES = 2,
    ACONFIGURATION_SCREENROUND_ANY = 0,
    ACONFIGURATION_SCREENROUND_NO = 1,
    ACONFIGURATION_SCREENROUND_YES = 2,
    ACONFIGURATION_WIDE_COLOR_GAMUT_ANY = 0,
    ACONFIGURATION_WIDE_COLOR_GAMUT_NO = 1,
    ACONFIGURATION_WIDE_COLOR_GAMUT_YES = 2,
    ACONFIGURATION_HDR_ANY = 0,
    ACONFIGURATION_HDR_NO = 1,
    ACONFIGURATION_HDR_YES = 2,
    ACONFIGURATION_UI_MODE_TYPE_ANY = 0,
    ACONFIGURATION_UI_MODE_TYPE_NORMAL = 1,
    ACONFIGURATION_UI_MODE_TYPE_DESK = 2,
    ACONFIGURATION_UI_MODE_TYPE_CAR = 3,
    ACONFIGURATION_UI_MODE_TYPE_TELEVISION = 4,
    ACONFIGURATION_UI_MODE_TYPE_APPLIANCE = 5,
    ACONFIGURATION_UI_MODE_TYPE_WATCH = 6,
    ACONFIGURATION_UI_MODE_TYPE_VR_HEADSET = 7,
    ACONFIGURATION_UI_MODE_NIGHT_ANY = 0,
    ACONFIGURATION_UI_MODE_NIGHT_NO = 1,
    ACONFIGURATION_UI_MODE_NIGHT_YES = 2,
    ACONFIGURATION_SCREEN_WIDTH_DP_ANY = 0,
    ACONFIGURATION_SCREEN_HEIGHT_DP_ANY = 0,
    ACONFIGURATION_SMALLEST_SCREEN_WIDTH_DP_ANY = 0,
    ACONFIGURATION_LAYOUTDIR_ANY = 0,
    ACONFIGURATION_LAYOUTDIR_LTR = 1,
    ACONFIGURATION_LAYOUTDIR_RTL = 2,
    ACONFIGURATION_MCC = 1,
    ACONFIGURATION_MNC = 2,
    ACONFIGURATION_LOCALE = 4,
    ACONFIGURATION_TOUCHSCREEN = 8,
    ACONFIGURATION_KEYBOARD = 16,
    ACONFIGURATION_KEYBOARD_HIDDEN = 32,
    ACONFIGURATION_NAVIGATION = 64,
    ACONFIGURATION_ORIENTATION = 128,
    ACONFIGURATION_DENSITY = 256,
    ACONFIGURATION_SCREEN_SIZE = 512,
    ACONFIGURATION_VERSION = 1024,
    ACONFIGURATION_SCREEN_LAYOUT = 2048,
    ACONFIGURATION_UI_MODE = 4096,
    ACONFIGURATION_SMALLEST_SCREEN_SIZE = 8192,
    ACONFIGURATION_LAYOUTDIR = 16384,
    ACONFIGURATION_SCREEN_ROUND = 32768,
    ACONFIGURATION_COLOR_MODE = 65536,
    ACONFIGURATION_MNC_ZERO = 65535,
    _,
};
pub extern fn AConfiguration_new(...) ?*AConfiguration;
pub extern fn AConfiguration_delete(config: ?*AConfiguration) void;
pub extern fn AConfiguration_fromAssetManager(out: ?*AConfiguration, am: ?*AAssetManager) void;
pub extern fn AConfiguration_copy(dest: ?*AConfiguration, src: ?*AConfiguration) void;
pub extern fn AConfiguration_getMcc(config: ?*AConfiguration) i32;
pub extern fn AConfiguration_setMcc(config: ?*AConfiguration, mcc: i32) void;
pub extern fn AConfiguration_getMnc(config: ?*AConfiguration) i32;
pub extern fn AConfiguration_setMnc(config: ?*AConfiguration, mnc: i32) void;
pub extern fn AConfiguration_getLanguage(config: ?*AConfiguration, outLanguage: [*c]u8) void;
pub extern fn AConfiguration_setLanguage(config: ?*AConfiguration, language: [*c]const u8) void;
pub extern fn AConfiguration_getCountry(config: ?*AConfiguration, outCountry: [*c]u8) void;
pub extern fn AConfiguration_setCountry(config: ?*AConfiguration, country: [*c]const u8) void;
pub extern fn AConfiguration_getOrientation(config: ?*AConfiguration) i32;
pub extern fn AConfiguration_setOrientation(config: ?*AConfiguration, orientation: i32) void;
pub extern fn AConfiguration_getTouchscreen(config: ?*AConfiguration) i32;
pub extern fn AConfiguration_setTouchscreen(config: ?*AConfiguration, touchscreen: i32) void;
pub extern fn AConfiguration_getDensity(config: ?*AConfiguration) i32;
pub extern fn AConfiguration_setDensity(config: ?*AConfiguration, density: i32) void;
pub extern fn AConfiguration_getKeyboard(config: ?*AConfiguration) i32;
pub extern fn AConfiguration_setKeyboard(config: ?*AConfiguration, keyboard: i32) void;
pub extern fn AConfiguration_getNavigation(config: ?*AConfiguration) i32;
pub extern fn AConfiguration_setNavigation(config: ?*AConfiguration, navigation: i32) void;
pub extern fn AConfiguration_getKeysHidden(config: ?*AConfiguration) i32;
pub extern fn AConfiguration_setKeysHidden(config: ?*AConfiguration, keysHidden: i32) void;
pub extern fn AConfiguration_getNavHidden(config: ?*AConfiguration) i32;
pub extern fn AConfiguration_setNavHidden(config: ?*AConfiguration, navHidden: i32) void;
pub extern fn AConfiguration_getSdkVersion(config: ?*AConfiguration) i32;
pub extern fn AConfiguration_setSdkVersion(config: ?*AConfiguration, sdkVersion: i32) void;
pub extern fn AConfiguration_getScreenSize(config: ?*AConfiguration) i32;
pub extern fn AConfiguration_setScreenSize(config: ?*AConfiguration, screenSize: i32) void;
pub extern fn AConfiguration_getScreenLong(config: ?*AConfiguration) i32;
pub extern fn AConfiguration_setScreenLong(config: ?*AConfiguration, screenLong: i32) void;
pub extern fn AConfiguration_getScreenRound(config: ?*AConfiguration) i32;
pub extern fn AConfiguration_setScreenRound(config: ?*AConfiguration, screenRound: i32) void;
pub extern fn AConfiguration_getUiModeType(config: ?*AConfiguration) i32;
pub extern fn AConfiguration_setUiModeType(config: ?*AConfiguration, uiModeType: i32) void;
pub extern fn AConfiguration_getUiModeNight(config: ?*AConfiguration) i32;
pub extern fn AConfiguration_setUiModeNight(config: ?*AConfiguration, uiModeNight: i32) void;
pub extern fn AConfiguration_getScreenWidthDp(config: ?*AConfiguration) i32;
pub extern fn AConfiguration_setScreenWidthDp(config: ?*AConfiguration, value: i32) void;
pub extern fn AConfiguration_getScreenHeightDp(config: ?*AConfiguration) i32;
pub extern fn AConfiguration_setScreenHeightDp(config: ?*AConfiguration, value: i32) void;
pub extern fn AConfiguration_getSmallestScreenWidthDp(config: ?*AConfiguration) i32;
pub extern fn AConfiguration_setSmallestScreenWidthDp(config: ?*AConfiguration, value: i32) void;
pub extern fn AConfiguration_getLayoutDirection(config: ?*AConfiguration) i32;
pub extern fn AConfiguration_setLayoutDirection(config: ?*AConfiguration, value: i32) void;
pub extern fn AConfiguration_diff(config1: ?*AConfiguration, config2: ?*AConfiguration) i32;
pub extern fn AConfiguration_match(base: ?*AConfiguration, requested: ?*AConfiguration) i32;
pub extern fn AConfiguration_isBetterThan(base: ?*AConfiguration, @"test": ?*AConfiguration, requested: ?*AConfiguration) i32;
pub const struct_ALooper = opaque {};
pub const ALooper = struct_ALooper;
pub extern fn ALooper_forThread(...) ?*ALooper;
pub const ALOOPER_PREPARE_ALLOW_NON_CALLBACKS = @enumToInt(enum_unnamed_12.ALOOPER_PREPARE_ALLOW_NON_CALLBACKS);
const enum_unnamed_12 = extern enum(c_int) {
    ALOOPER_PREPARE_ALLOW_NON_CALLBACKS = 1,
    _,
};
pub extern fn ALooper_prepare(opts: c_int) ?*ALooper;
pub const ALOOPER_POLL_WAKE = @enumToInt(enum_unnamed_13.ALOOPER_POLL_WAKE);
pub const ALOOPER_POLL_CALLBACK = @enumToInt(enum_unnamed_13.ALOOPER_POLL_CALLBACK);
pub const ALOOPER_POLL_TIMEOUT = @enumToInt(enum_unnamed_13.ALOOPER_POLL_TIMEOUT);
pub const ALOOPER_POLL_ERROR = @enumToInt(enum_unnamed_13.ALOOPER_POLL_ERROR);
const enum_unnamed_13 = extern enum(c_int) {
    ALOOPER_POLL_WAKE = -1,
    ALOOPER_POLL_CALLBACK = -2,
    ALOOPER_POLL_TIMEOUT = -3,
    ALOOPER_POLL_ERROR = -4,
    _,
};
pub extern fn ALooper_acquire(looper: ?*ALooper) void;
pub extern fn ALooper_release(looper: ?*ALooper) void;
pub const ALOOPER_EVENT_INPUT = @enumToInt(enum_unnamed_14.ALOOPER_EVENT_INPUT);
pub const ALOOPER_EVENT_OUTPUT = @enumToInt(enum_unnamed_14.ALOOPER_EVENT_OUTPUT);
pub const ALOOPER_EVENT_ERROR = @enumToInt(enum_unnamed_14.ALOOPER_EVENT_ERROR);
pub const ALOOPER_EVENT_HANGUP = @enumToInt(enum_unnamed_14.ALOOPER_EVENT_HANGUP);
pub const ALOOPER_EVENT_INVALID = @enumToInt(enum_unnamed_14.ALOOPER_EVENT_INVALID);
const enum_unnamed_14 = extern enum(c_int) {
    ALOOPER_EVENT_INPUT = 1,
    ALOOPER_EVENT_OUTPUT = 2,
    ALOOPER_EVENT_ERROR = 4,
    ALOOPER_EVENT_HANGUP = 8,
    ALOOPER_EVENT_INVALID = 16,
    _,
};
pub const ALooper_callbackFunc = ?fn (c_int, c_int, ?*c_void) callconv(.C) c_int;
pub extern fn ALooper_pollOnce(timeoutMillis: c_int, outFd: [*c]c_int, outEvents: [*c]c_int, outData: [*c]?*c_void) c_int;
pub extern fn ALooper_pollAll(timeoutMillis: c_int, outFd: [*c]c_int, outEvents: [*c]c_int, outData: [*c]?*c_void) c_int;
pub extern fn ALooper_wake(looper: ?*ALooper) void;
pub extern fn ALooper_addFd(looper: ?*ALooper, fd: c_int, ident: c_int, events: c_int, callback: ALooper_callbackFunc, data: ?*c_void) c_int;
pub extern fn ALooper_removeFd(looper: ?*ALooper, fd: c_int) c_int;
pub const jboolean = u8;
pub const jbyte = i8;
pub const jchar = u16;
pub const jshort = i16;
pub const jint = i32;
pub const jlong = i64;
pub const jfloat = f32;
pub const jdouble = f64;
pub const jsize = jint;
pub const jobject = ?*c_void;
pub const jclass = jobject;
pub const jstring = jobject;
pub const jarray = jobject;
pub const jobjectArray = jarray;
pub const jbooleanArray = jarray;
pub const jbyteArray = jarray;
pub const jcharArray = jarray;
pub const jshortArray = jarray;
pub const jintArray = jarray;
pub const jlongArray = jarray;
pub const jfloatArray = jarray;
pub const jdoubleArray = jarray;
pub const jthrowable = jobject;
pub const jweak = jobject;
pub const struct__jfieldID = opaque {};
pub const jfieldID = ?*struct__jfieldID;
pub const struct__jmethodID = opaque {};
pub const jmethodID = ?*struct__jmethodID;
pub const struct_JNIInvokeInterface = extern struct {
    reserved0: ?*c_void,
    reserved1: ?*c_void,
    reserved2: ?*c_void,
    DestroyJavaVM: fn (*JavaVM) callconv(.C) jint,
    AttachCurrentThread: fn (*JavaVM, **JNIEnv, ?*c_void) callconv(.C) jint,
    DetachCurrentThread: fn (*JavaVM) callconv(.C) jint,
    GetEnv: fn (*JavaVM, *?*c_void, jint) callconv(.C) jint,
    AttachCurrentThreadAsDaemon: fn (*JavaVM, **JNIEnv, ?*c_void) callconv(.C) jint,
};
pub const union_jvalue = extern union {
    z: jboolean,
    b: jbyte,
    c: jchar,
    s: jshort,
    i: jint,
    j: jlong,
    f: jfloat,
    d: jdouble,
    l: jobject,
};
pub const jvalue = union_jvalue;
pub const JNIInvalidRefType = @enumToInt(enum_jobjectRefType.JNIInvalidRefType);
pub const JNILocalRefType = @enumToInt(enum_jobjectRefType.JNILocalRefType);
pub const JNIGlobalRefType = @enumToInt(enum_jobjectRefType.JNIGlobalRefType);
pub const JNIWeakGlobalRefType = @enumToInt(enum_jobjectRefType.JNIWeakGlobalRefType);
pub const enum_jobjectRefType = extern enum(c_int) {
    JNIInvalidRefType = 0,
    JNILocalRefType = 1,
    JNIGlobalRefType = 2,
    JNIWeakGlobalRefType = 3,
    _,
};
pub const jobjectRefType = enum_jobjectRefType;
const struct_unnamed_15 = extern struct {
    name: [*c]const u8,
    signature: [*c]const u8,
    fnPtr: ?*c_void,
};
pub const JNINativeMethod = struct_unnamed_15;
pub const JNINativeInterface = extern struct {
    reserved0: ?*c_void,
    reserved1: ?*c_void,
    reserved2: ?*c_void,
    reserved3: ?*c_void,
    GetVersion: fn (*JNIEnv) callconv(.C) jint,
    DefineClass: fn (*JNIEnv, [*c]const u8, jobject, [*c]const jbyte, jsize) callconv(.C) jclass,
    FindClass: fn (*JNIEnv, [*c]const u8) callconv(.C) jclass,
    FromReflectedMethod: fn (*JNIEnv, jobject) callconv(.C) jmethodID,
    FromReflectedField: fn (*JNIEnv, jobject) callconv(.C) jfieldID,
    ToReflectedMethod: fn (*JNIEnv, jclass, jmethodID, jboolean) callconv(.C) jobject,
    GetSuperclass: fn (*JNIEnv, jclass) callconv(.C) jclass,
    IsAssignableFrom: fn (*JNIEnv, jclass, jclass) callconv(.C) jboolean,
    ToReflectedField: fn (*JNIEnv, jclass, jfieldID, jboolean) callconv(.C) jobject,
    Throw: fn (*JNIEnv, jthrowable) callconv(.C) jint,
    ThrowNew: fn (*JNIEnv, jclass, [*c]const u8) callconv(.C) jint,
    ExceptionOccurred: fn (*JNIEnv) callconv(.C) jthrowable,
    ExceptionDescribe: fn (*JNIEnv) callconv(.C) void,
    ExceptionClear: fn (*JNIEnv) callconv(.C) void,
    FatalError: fn (*JNIEnv, [*c]const u8) callconv(.C) void,
    PushLocalFrame: fn (*JNIEnv, jint) callconv(.C) jint,
    PopLocalFrame: fn (*JNIEnv, jobject) callconv(.C) jobject,
    NewGlobalRef: fn (*JNIEnv, jobject) callconv(.C) jobject,
    DeleteGlobalRef: fn (*JNIEnv, jobject) callconv(.C) void,
    DeleteLocalRef: fn (*JNIEnv, jobject) callconv(.C) void,
    IsSameObject: fn (*JNIEnv, jobject, jobject) callconv(.C) jboolean,
    NewLocalRef: fn (*JNIEnv, jobject) callconv(.C) jobject,
    EnsureLocalCapacity: fn (*JNIEnv, jint) callconv(.C) jint,
    AllocObject: fn (*JNIEnv, jclass) callconv(.C) jobject,
    NewObject: fn (*JNIEnv, jclass, jmethodID, ...) callconv(.C) jobject,
    NewObjectV: fn (*JNIEnv, jclass, jmethodID, va_list) callconv(.C) jobject,
    NewObjectA: fn (*JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jobject,
    GetObjectClass: fn (*JNIEnv, jobject) callconv(.C) jclass,
    IsInstanceOf: fn (*JNIEnv, jobject, jclass) callconv(.C) jboolean,
    GetMethodID: fn (*JNIEnv, jclass, [*c]const u8, [*c]const u8) callconv(.C) jmethodID,
    CallObjectMethod: fn (*JNIEnv, jobject, jmethodID, ...) callconv(.C) jobject,
    CallObjectMethodV: fn (*JNIEnv, jobject, jmethodID, va_list) callconv(.C) jobject,
    CallObjectMethodA: fn (*JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) jobject,
    CallBooleanMethod: fn (*JNIEnv, jobject, jmethodID, ...) callconv(.C) jboolean,
    CallBooleanMethodV: fn (*JNIEnv, jobject, jmethodID, va_list) callconv(.C) jboolean,
    CallBooleanMethodA: fn (*JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) jboolean,
    CallByteMethod: fn (*JNIEnv, jobject, jmethodID, ...) callconv(.C) jbyte,
    CallByteMethodV: fn (*JNIEnv, jobject, jmethodID, va_list) callconv(.C) jbyte,
    CallByteMethodA: fn (*JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) jbyte,
    CallCharMethod: fn (*JNIEnv, jobject, jmethodID, ...) callconv(.C) jchar,
    CallCharMethodV: fn (*JNIEnv, jobject, jmethodID, va_list) callconv(.C) jchar,
    CallCharMethodA: fn (*JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) jchar,
    CallShortMethod: fn (*JNIEnv, jobject, jmethodID, ...) callconv(.C) jshort,
    CallShortMethodV: fn (*JNIEnv, jobject, jmethodID, va_list) callconv(.C) jshort,
    CallShortMethodA: fn (*JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) jshort,
    CallIntMethod: fn (*JNIEnv, jobject, jmethodID, ...) callconv(.C) jint,
    CallIntMethodV: fn (*JNIEnv, jobject, jmethodID, va_list) callconv(.C) jint,
    CallIntMethodA: fn (*JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) jint,
    CallLongMethod: fn (*JNIEnv, jobject, jmethodID, ...) callconv(.C) jlong,
    CallLongMethodV: fn (*JNIEnv, jobject, jmethodID, va_list) callconv(.C) jlong,
    CallLongMethodA: fn (*JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) jlong,
    CallFloatMethod: fn (*JNIEnv, jobject, jmethodID, ...) callconv(.C) jfloat,
    CallFloatMethodV: fn (*JNIEnv, jobject, jmethodID, va_list) callconv(.C) jfloat,
    CallFloatMethodA: fn (*JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) jfloat,
    CallDoubleMethod: fn (*JNIEnv, jobject, jmethodID, ...) callconv(.C) jdouble,
    CallDoubleMethodV: fn (*JNIEnv, jobject, jmethodID, va_list) callconv(.C) jdouble,
    CallDoubleMethodA: fn (*JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) jdouble,
    CallVoidMethod: fn (*JNIEnv, jobject, jmethodID, ...) callconv(.C) void,
    CallVoidMethodV: fn (*JNIEnv, jobject, jmethodID, va_list) callconv(.C) void,
    CallVoidMethodA: fn (*JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) void,
    CallNonvirtualObjectMethod: fn (*JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) jobject,
    CallNonvirtualObjectMethodV: fn (*JNIEnv, jobject, jclass, jmethodID, va_list) callconv(.C) jobject,
    CallNonvirtualObjectMethodA: fn (*JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) jobject,
    CallNonvirtualBooleanMethod: fn (*JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) jboolean,
    CallNonvirtualBooleanMethodV: fn (*JNIEnv, jobject, jclass, jmethodID, va_list) callconv(.C) jboolean,
    CallNonvirtualBooleanMethodA: fn (*JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) jboolean,
    CallNonvirtualByteMethod: fn (*JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) jbyte,
    CallNonvirtualByteMethodV: fn (*JNIEnv, jobject, jclass, jmethodID, va_list) callconv(.C) jbyte,
    CallNonvirtualByteMethodA: fn (*JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) jbyte,
    CallNonvirtualCharMethod: fn (*JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) jchar,
    CallNonvirtualCharMethodV: fn (*JNIEnv, jobject, jclass, jmethodID, va_list) callconv(.C) jchar,
    CallNonvirtualCharMethodA: fn (*JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) jchar,
    CallNonvirtualShortMethod: fn (*JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) jshort,
    CallNonvirtualShortMethodV: fn (*JNIEnv, jobject, jclass, jmethodID, va_list) callconv(.C) jshort,
    CallNonvirtualShortMethodA: fn (*JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) jshort,
    CallNonvirtualIntMethod: fn (*JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) jint,
    CallNonvirtualIntMethodV: fn (*JNIEnv, jobject, jclass, jmethodID, va_list) callconv(.C) jint,
    CallNonvirtualIntMethodA: fn (*JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) jint,
    CallNonvirtualLongMethod: fn (*JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) jlong,
    CallNonvirtualLongMethodV: fn (*JNIEnv, jobject, jclass, jmethodID, va_list) callconv(.C) jlong,
    CallNonvirtualLongMethodA: fn (*JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) jlong,
    CallNonvirtualFloatMethod: fn (*JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) jfloat,
    CallNonvirtualFloatMethodV: fn (*JNIEnv, jobject, jclass, jmethodID, va_list) callconv(.C) jfloat,
    CallNonvirtualFloatMethodA: fn (*JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) jfloat,
    CallNonvirtualDoubleMethod: fn (*JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) jdouble,
    CallNonvirtualDoubleMethodV: fn (*JNIEnv, jobject, jclass, jmethodID, va_list) callconv(.C) jdouble,
    CallNonvirtualDoubleMethodA: fn (*JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) jdouble,
    CallNonvirtualVoidMethod: fn (*JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) void,
    CallNonvirtualVoidMethodV: fn (*JNIEnv, jobject, jclass, jmethodID, va_list) callconv(.C) void,
    CallNonvirtualVoidMethodA: fn (*JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) void,
    GetFieldID: fn (*JNIEnv, jclass, [*c]const u8, [*c]const u8) callconv(.C) jfieldID,
    GetObjectField: fn (*JNIEnv, jobject, jfieldID) callconv(.C) jobject,
    GetBooleanField: fn (*JNIEnv, jobject, jfieldID) callconv(.C) jboolean,
    GetByteField: fn (*JNIEnv, jobject, jfieldID) callconv(.C) jbyte,
    GetCharField: fn (*JNIEnv, jobject, jfieldID) callconv(.C) jchar,
    GetShortField: fn (*JNIEnv, jobject, jfieldID) callconv(.C) jshort,
    GetIntField: fn (*JNIEnv, jobject, jfieldID) callconv(.C) jint,
    GetLongField: fn (*JNIEnv, jobject, jfieldID) callconv(.C) jlong,
    GetFloatField: fn (*JNIEnv, jobject, jfieldID) callconv(.C) jfloat,
    GetDoubleField: fn (*JNIEnv, jobject, jfieldID) callconv(.C) jdouble,
    SetObjectField: fn (*JNIEnv, jobject, jfieldID, jobject) callconv(.C) void,
    SetBooleanField: fn (*JNIEnv, jobject, jfieldID, jboolean) callconv(.C) void,
    SetByteField: fn (*JNIEnv, jobject, jfieldID, jbyte) callconv(.C) void,
    SetCharField: fn (*JNIEnv, jobject, jfieldID, jchar) callconv(.C) void,
    SetShortField: fn (*JNIEnv, jobject, jfieldID, jshort) callconv(.C) void,
    SetIntField: fn (*JNIEnv, jobject, jfieldID, jint) callconv(.C) void,
    SetLongField: fn (*JNIEnv, jobject, jfieldID, jlong) callconv(.C) void,
    SetFloatField: fn (*JNIEnv, jobject, jfieldID, jfloat) callconv(.C) void,
    SetDoubleField: fn (*JNIEnv, jobject, jfieldID, jdouble) callconv(.C) void,
    GetStaticMethodID: fn (*JNIEnv, jclass, [*c]const u8, [*c]const u8) callconv(.C) jmethodID,
    CallStaticObjectMethod: fn (*JNIEnv, jclass, jmethodID, ...) callconv(.C) jobject,
    CallStaticObjectMethodV: fn (*JNIEnv, jclass, jmethodID, va_list) callconv(.C) jobject,
    CallStaticObjectMethodA: fn (*JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jobject,
    CallStaticBooleanMethod: fn (*JNIEnv, jclass, jmethodID, ...) callconv(.C) jboolean,
    CallStaticBooleanMethodV: fn (*JNIEnv, jclass, jmethodID, va_list) callconv(.C) jboolean,
    CallStaticBooleanMethodA: fn (*JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jboolean,
    CallStaticByteMethod: fn (*JNIEnv, jclass, jmethodID, ...) callconv(.C) jbyte,
    CallStaticByteMethodV: fn (*JNIEnv, jclass, jmethodID, va_list) callconv(.C) jbyte,
    CallStaticByteMethodA: fn (*JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jbyte,
    CallStaticCharMethod: fn (*JNIEnv, jclass, jmethodID, ...) callconv(.C) jchar,
    CallStaticCharMethodV: fn (*JNIEnv, jclass, jmethodID, va_list) callconv(.C) jchar,
    CallStaticCharMethodA: fn (*JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jchar,
    CallStaticShortMethod: fn (*JNIEnv, jclass, jmethodID, ...) callconv(.C) jshort,
    CallStaticShortMethodV: fn (*JNIEnv, jclass, jmethodID, va_list) callconv(.C) jshort,
    CallStaticShortMethodA: fn (*JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jshort,
    CallStaticIntMethod: fn (*JNIEnv, jclass, jmethodID, ...) callconv(.C) jint,
    CallStaticIntMethodV: fn (*JNIEnv, jclass, jmethodID, va_list) callconv(.C) jint,
    CallStaticIntMethodA: fn (*JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jint,
    CallStaticLongMethod: fn (*JNIEnv, jclass, jmethodID, ...) callconv(.C) jlong,
    CallStaticLongMethodV: fn (*JNIEnv, jclass, jmethodID, va_list) callconv(.C) jlong,
    CallStaticLongMethodA: fn (*JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jlong,
    CallStaticFloatMethod: fn (*JNIEnv, jclass, jmethodID, ...) callconv(.C) jfloat,
    CallStaticFloatMethodV: fn (*JNIEnv, jclass, jmethodID, va_list) callconv(.C) jfloat,
    CallStaticFloatMethodA: fn (*JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jfloat,
    CallStaticDoubleMethod: fn (*JNIEnv, jclass, jmethodID, ...) callconv(.C) jdouble,
    CallStaticDoubleMethodV: fn (*JNIEnv, jclass, jmethodID, va_list) callconv(.C) jdouble,
    CallStaticDoubleMethodA: fn (*JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jdouble,
    CallStaticVoidMethod: fn (*JNIEnv, jclass, jmethodID, ...) callconv(.C) void,
    CallStaticVoidMethodV: fn (*JNIEnv, jclass, jmethodID, va_list) callconv(.C) void,
    CallStaticVoidMethodA: fn (*JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) void,
    GetStaticFieldID: fn (*JNIEnv, jclass, [*c]const u8, [*c]const u8) callconv(.C) jfieldID,
    GetStaticObjectField: fn (*JNIEnv, jclass, jfieldID) callconv(.C) jobject,
    GetStaticBooleanField: fn (*JNIEnv, jclass, jfieldID) callconv(.C) jboolean,
    GetStaticByteField: fn (*JNIEnv, jclass, jfieldID) callconv(.C) jbyte,
    GetStaticCharField: fn (*JNIEnv, jclass, jfieldID) callconv(.C) jchar,
    GetStaticShortField: fn (*JNIEnv, jclass, jfieldID) callconv(.C) jshort,
    GetStaticIntField: fn (*JNIEnv, jclass, jfieldID) callconv(.C) jint,
    GetStaticLongField: fn (*JNIEnv, jclass, jfieldID) callconv(.C) jlong,
    GetStaticFloatField: fn (*JNIEnv, jclass, jfieldID) callconv(.C) jfloat,
    GetStaticDoubleField: fn (*JNIEnv, jclass, jfieldID) callconv(.C) jdouble,
    SetStaticObjectField: fn (*JNIEnv, jclass, jfieldID, jobject) callconv(.C) void,
    SetStaticBooleanField: fn (*JNIEnv, jclass, jfieldID, jboolean) callconv(.C) void,
    SetStaticByteField: fn (*JNIEnv, jclass, jfieldID, jbyte) callconv(.C) void,
    SetStaticCharField: fn (*JNIEnv, jclass, jfieldID, jchar) callconv(.C) void,
    SetStaticShortField: fn (*JNIEnv, jclass, jfieldID, jshort) callconv(.C) void,
    SetStaticIntField: fn (*JNIEnv, jclass, jfieldID, jint) callconv(.C) void,
    SetStaticLongField: fn (*JNIEnv, jclass, jfieldID, jlong) callconv(.C) void,
    SetStaticFloatField: fn (*JNIEnv, jclass, jfieldID, jfloat) callconv(.C) void,
    SetStaticDoubleField: fn (*JNIEnv, jclass, jfieldID, jdouble) callconv(.C) void,
    NewString: fn (*JNIEnv, [*c]const jchar, jsize) callconv(.C) jstring,
    GetStringLength: fn (*JNIEnv, jstring) callconv(.C) jsize,
    GetStringChars: fn (*JNIEnv, jstring, [*c]jboolean) callconv(.C) [*c]const jchar,
    ReleaseStringChars: fn (*JNIEnv, jstring, [*c]const jchar) callconv(.C) void,
    NewStringUTF: fn (*JNIEnv, [*c]const u8) callconv(.C) jstring,
    GetStringUTFLength: fn (*JNIEnv, jstring) callconv(.C) jsize,
    GetStringUTFChars: fn (*JNIEnv, jstring, [*c]jboolean) callconv(.C) [*c]const u8,
    ReleaseStringUTFChars: fn (*JNIEnv, jstring, [*c]const u8) callconv(.C) void,
    GetArrayLength: fn (*JNIEnv, jarray) callconv(.C) jsize,
    NewObjectArray: fn (*JNIEnv, jsize, jclass, jobject) callconv(.C) jobjectArray,
    GetObjectArrayElement: fn (*JNIEnv, jobjectArray, jsize) callconv(.C) jobject,
    SetObjectArrayElement: fn (*JNIEnv, jobjectArray, jsize, jobject) callconv(.C) void,
    NewBooleanArray: fn (*JNIEnv, jsize) callconv(.C) jbooleanArray,
    NewByteArray: fn (*JNIEnv, jsize) callconv(.C) jbyteArray,
    NewCharArray: fn (*JNIEnv, jsize) callconv(.C) jcharArray,
    NewShortArray: fn (*JNIEnv, jsize) callconv(.C) jshortArray,
    NewIntArray: fn (*JNIEnv, jsize) callconv(.C) jintArray,
    NewLongArray: fn (*JNIEnv, jsize) callconv(.C) jlongArray,
    NewFloatArray: fn (*JNIEnv, jsize) callconv(.C) jfloatArray,
    NewDoubleArray: fn (*JNIEnv, jsize) callconv(.C) jdoubleArray,
    GetBooleanArrayElements: fn (*JNIEnv, jbooleanArray, [*c]jboolean) callconv(.C) [*c]jboolean,
    GetByteArrayElements: fn (*JNIEnv, jbyteArray, [*c]jboolean) callconv(.C) [*c]jbyte,
    GetCharArrayElements: fn (*JNIEnv, jcharArray, [*c]jboolean) callconv(.C) [*c]jchar,
    GetShortArrayElements: fn (*JNIEnv, jshortArray, [*c]jboolean) callconv(.C) [*c]jshort,
    GetIntArrayElements: fn (*JNIEnv, jintArray, [*c]jboolean) callconv(.C) [*c]jint,
    GetLongArrayElements: fn (*JNIEnv, jlongArray, [*c]jboolean) callconv(.C) [*c]jlong,
    GetFloatArrayElements: fn (*JNIEnv, jfloatArray, [*c]jboolean) callconv(.C) [*c]jfloat,
    GetDoubleArrayElements: fn (*JNIEnv, jdoubleArray, [*c]jboolean) callconv(.C) [*c]jdouble,
    ReleaseBooleanArrayElements: fn (*JNIEnv, jbooleanArray, [*c]jboolean, jint) callconv(.C) void,
    ReleaseByteArrayElements: fn (*JNIEnv, jbyteArray, [*c]jbyte, jint) callconv(.C) void,
    ReleaseCharArrayElements: fn (*JNIEnv, jcharArray, [*c]jchar, jint) callconv(.C) void,
    ReleaseShortArrayElements: fn (*JNIEnv, jshortArray, [*c]jshort, jint) callconv(.C) void,
    ReleaseIntArrayElements: fn (*JNIEnv, jintArray, [*c]jint, jint) callconv(.C) void,
    ReleaseLongArrayElements: fn (*JNIEnv, jlongArray, [*c]jlong, jint) callconv(.C) void,
    ReleaseFloatArrayElements: fn (*JNIEnv, jfloatArray, [*c]jfloat, jint) callconv(.C) void,
    ReleaseDoubleArrayElements: fn (*JNIEnv, jdoubleArray, [*c]jdouble, jint) callconv(.C) void,
    GetBooleanArrayRegion: fn (*JNIEnv, jbooleanArray, jsize, jsize, [*c]jboolean) callconv(.C) void,
    GetByteArrayRegion: fn (*JNIEnv, jbyteArray, jsize, jsize, [*c]jbyte) callconv(.C) void,
    GetCharArrayRegion: fn (*JNIEnv, jcharArray, jsize, jsize, [*c]jchar) callconv(.C) void,
    GetShortArrayRegion: fn (*JNIEnv, jshortArray, jsize, jsize, [*c]jshort) callconv(.C) void,
    GetIntArrayRegion: fn (*JNIEnv, jintArray, jsize, jsize, [*c]jint) callconv(.C) void,
    GetLongArrayRegion: fn (*JNIEnv, jlongArray, jsize, jsize, [*c]jlong) callconv(.C) void,
    GetFloatArrayRegion: fn (*JNIEnv, jfloatArray, jsize, jsize, [*c]jfloat) callconv(.C) void,
    GetDoubleArrayRegion: fn (*JNIEnv, jdoubleArray, jsize, jsize, [*c]jdouble) callconv(.C) void,
    SetBooleanArrayRegion: fn (*JNIEnv, jbooleanArray, jsize, jsize, [*c]const jboolean) callconv(.C) void,
    SetByteArrayRegion: fn (*JNIEnv, jbyteArray, jsize, jsize, [*c]const jbyte) callconv(.C) void,
    SetCharArrayRegion: fn (*JNIEnv, jcharArray, jsize, jsize, [*c]const jchar) callconv(.C) void,
    SetShortArrayRegion: fn (*JNIEnv, jshortArray, jsize, jsize, [*c]const jshort) callconv(.C) void,
    SetIntArrayRegion: fn (*JNIEnv, jintArray, jsize, jsize, [*c]const jint) callconv(.C) void,
    SetLongArrayRegion: fn (*JNIEnv, jlongArray, jsize, jsize, [*c]const jlong) callconv(.C) void,
    SetFloatArrayRegion: fn (*JNIEnv, jfloatArray, jsize, jsize, [*c]const jfloat) callconv(.C) void,
    SetDoubleArrayRegion: fn (*JNIEnv, jdoubleArray, jsize, jsize, [*c]const jdouble) callconv(.C) void,
    RegisterNatives: fn (*JNIEnv, jclass, [*c]const JNINativeMethod, jint) callconv(.C) jint,
    UnregisterNatives: fn (*JNIEnv, jclass) callconv(.C) jint,
    MonitorEnter: fn (*JNIEnv, jobject) callconv(.C) jint,
    MonitorExit: fn (*JNIEnv, jobject) callconv(.C) jint,
    GetJavaVM: fn (*JNIEnv, [*c][*c]JavaVM) callconv(.C) jint,
    GetStringRegion: fn (*JNIEnv, jstring, jsize, jsize, [*c]jchar) callconv(.C) void,
    GetStringUTFRegion: fn (*JNIEnv, jstring, jsize, jsize, [*c]u8) callconv(.C) void,
    GetPrimitiveArrayCritical: fn (*JNIEnv, jarray, [*c]jboolean) callconv(.C) ?*c_void,
    ReleasePrimitiveArrayCritical: fn (*JNIEnv, jarray, ?*c_void, jint) callconv(.C) void,
    GetStringCritical: fn (*JNIEnv, jstring, [*c]jboolean) callconv(.C) [*c]const jchar,
    ReleaseStringCritical: fn (*JNIEnv, jstring, [*c]const jchar) callconv(.C) void,
    NewWeakGlobalRef: fn (*JNIEnv, jobject) callconv(.C) jweak,
    DeleteWeakGlobalRef: fn (*JNIEnv, jweak) callconv(.C) void,
    ExceptionCheck: fn (*JNIEnv) callconv(.C) jboolean,
    NewDirectByteBuffer: fn (*JNIEnv, ?*c_void, jlong) callconv(.C) jobject,
    GetDirectBufferAddress: fn (*JNIEnv, jobject) callconv(.C) ?*c_void,
    GetDirectBufferCapacity: fn (*JNIEnv, jobject) callconv(.C) jlong,
    GetObjectRefType: fn (*JNIEnv, jobject) callconv(.C) jobjectRefType,
};
pub const struct__JNIEnv = extern struct {
    functions: [*c]const JNINativeInterface,
};
pub const struct__JavaVM = extern struct {
    functions: [*c]const struct_JNIInvokeInterface,
};
pub const C_JNIEnv = *const JNINativeInterface;
pub const JNIEnv = *const JNINativeInterface;
pub const JavaVM = *const struct_JNIInvokeInterface;
pub const struct_JavaVMAttachArgs = extern struct {
    version: jint,
    name: [*c]const u8,
    group: jobject,
};
pub const JavaVMAttachArgs = struct_JavaVMAttachArgs;
pub const struct_JavaVMOption = extern struct {
    optionString: [*c]const u8,
    extraInfo: ?*c_void,
};
pub const JavaVMOption = struct_JavaVMOption;
pub const struct_JavaVMInitArgs = extern struct {
    version: jint,
    nOptions: jint,
    options: [*c]JavaVMOption,
    ignoreUnrecognized: jboolean,
};
pub const JavaVMInitArgs = struct_JavaVMInitArgs;
pub extern fn JNI_GetDefaultJavaVMInitArgs(?*c_void) jint;
pub extern fn JNI_CreateJavaVM([*c][*c]JavaVM, [*c][*c]JNIEnv, ?*c_void) jint;
pub extern fn JNI_GetCreatedJavaVMs([*c][*c]JavaVM, jsize, [*c]jsize) jint;
pub extern fn JNI_OnLoad(vm: [*c]JavaVM, reserved: ?*c_void) jint;
pub extern fn JNI_OnUnload(vm: [*c]JavaVM, reserved: ?*c_void) void;
pub const AKEYCODE_UNKNOWN = @enumToInt(enum_unnamed_16.AKEYCODE_UNKNOWN);
pub const AKEYCODE_SOFT_LEFT = @enumToInt(enum_unnamed_16.AKEYCODE_SOFT_LEFT);
pub const AKEYCODE_SOFT_RIGHT = @enumToInt(enum_unnamed_16.AKEYCODE_SOFT_RIGHT);
pub const AKEYCODE_HOME = @enumToInt(enum_unnamed_16.AKEYCODE_HOME);
pub const AKEYCODE_BACK = @enumToInt(enum_unnamed_16.AKEYCODE_BACK);
pub const AKEYCODE_CALL = @enumToInt(enum_unnamed_16.AKEYCODE_CALL);
pub const AKEYCODE_ENDCALL = @enumToInt(enum_unnamed_16.AKEYCODE_ENDCALL);
pub const AKEYCODE_0 = @enumToInt(enum_unnamed_16.AKEYCODE_0);
pub const AKEYCODE_1 = @enumToInt(enum_unnamed_16.AKEYCODE_1);
pub const AKEYCODE_2 = @enumToInt(enum_unnamed_16.AKEYCODE_2);
pub const AKEYCODE_3 = @enumToInt(enum_unnamed_16.AKEYCODE_3);
pub const AKEYCODE_4 = @enumToInt(enum_unnamed_16.AKEYCODE_4);
pub const AKEYCODE_5 = @enumToInt(enum_unnamed_16.AKEYCODE_5);
pub const AKEYCODE_6 = @enumToInt(enum_unnamed_16.AKEYCODE_6);
pub const AKEYCODE_7 = @enumToInt(enum_unnamed_16.AKEYCODE_7);
pub const AKEYCODE_8 = @enumToInt(enum_unnamed_16.AKEYCODE_8);
pub const AKEYCODE_9 = @enumToInt(enum_unnamed_16.AKEYCODE_9);
pub const AKEYCODE_STAR = @enumToInt(enum_unnamed_16.AKEYCODE_STAR);
pub const AKEYCODE_POUND = @enumToInt(enum_unnamed_16.AKEYCODE_POUND);
pub const AKEYCODE_DPAD_UP = @enumToInt(enum_unnamed_16.AKEYCODE_DPAD_UP);
pub const AKEYCODE_DPAD_DOWN = @enumToInt(enum_unnamed_16.AKEYCODE_DPAD_DOWN);
pub const AKEYCODE_DPAD_LEFT = @enumToInt(enum_unnamed_16.AKEYCODE_DPAD_LEFT);
pub const AKEYCODE_DPAD_RIGHT = @enumToInt(enum_unnamed_16.AKEYCODE_DPAD_RIGHT);
pub const AKEYCODE_DPAD_CENTER = @enumToInt(enum_unnamed_16.AKEYCODE_DPAD_CENTER);
pub const AKEYCODE_VOLUME_UP = @enumToInt(enum_unnamed_16.AKEYCODE_VOLUME_UP);
pub const AKEYCODE_VOLUME_DOWN = @enumToInt(enum_unnamed_16.AKEYCODE_VOLUME_DOWN);
pub const AKEYCODE_POWER = @enumToInt(enum_unnamed_16.AKEYCODE_POWER);
pub const AKEYCODE_CAMERA = @enumToInt(enum_unnamed_16.AKEYCODE_CAMERA);
pub const AKEYCODE_CLEAR = @enumToInt(enum_unnamed_16.AKEYCODE_CLEAR);
pub const AKEYCODE_A = @enumToInt(enum_unnamed_16.AKEYCODE_A);
pub const AKEYCODE_B = @enumToInt(enum_unnamed_16.AKEYCODE_B);
pub const AKEYCODE_C = @enumToInt(enum_unnamed_16.AKEYCODE_C);
pub const AKEYCODE_D = @enumToInt(enum_unnamed_16.AKEYCODE_D);
pub const AKEYCODE_E = @enumToInt(enum_unnamed_16.AKEYCODE_E);
pub const AKEYCODE_F = @enumToInt(enum_unnamed_16.AKEYCODE_F);
pub const AKEYCODE_G = @enumToInt(enum_unnamed_16.AKEYCODE_G);
pub const AKEYCODE_H = @enumToInt(enum_unnamed_16.AKEYCODE_H);
pub const AKEYCODE_I = @enumToInt(enum_unnamed_16.AKEYCODE_I);
pub const AKEYCODE_J = @enumToInt(enum_unnamed_16.AKEYCODE_J);
pub const AKEYCODE_K = @enumToInt(enum_unnamed_16.AKEYCODE_K);
pub const AKEYCODE_L = @enumToInt(enum_unnamed_16.AKEYCODE_L);
pub const AKEYCODE_M = @enumToInt(enum_unnamed_16.AKEYCODE_M);
pub const AKEYCODE_N = @enumToInt(enum_unnamed_16.AKEYCODE_N);
pub const AKEYCODE_O = @enumToInt(enum_unnamed_16.AKEYCODE_O);
pub const AKEYCODE_P = @enumToInt(enum_unnamed_16.AKEYCODE_P);
pub const AKEYCODE_Q = @enumToInt(enum_unnamed_16.AKEYCODE_Q);
pub const AKEYCODE_R = @enumToInt(enum_unnamed_16.AKEYCODE_R);
pub const AKEYCODE_S = @enumToInt(enum_unnamed_16.AKEYCODE_S);
pub const AKEYCODE_T = @enumToInt(enum_unnamed_16.AKEYCODE_T);
pub const AKEYCODE_U = @enumToInt(enum_unnamed_16.AKEYCODE_U);
pub const AKEYCODE_V = @enumToInt(enum_unnamed_16.AKEYCODE_V);
pub const AKEYCODE_W = @enumToInt(enum_unnamed_16.AKEYCODE_W);
pub const AKEYCODE_X = @enumToInt(enum_unnamed_16.AKEYCODE_X);
pub const AKEYCODE_Y = @enumToInt(enum_unnamed_16.AKEYCODE_Y);
pub const AKEYCODE_Z = @enumToInt(enum_unnamed_16.AKEYCODE_Z);
pub const AKEYCODE_COMMA = @enumToInt(enum_unnamed_16.AKEYCODE_COMMA);
pub const AKEYCODE_PERIOD = @enumToInt(enum_unnamed_16.AKEYCODE_PERIOD);
pub const AKEYCODE_ALT_LEFT = @enumToInt(enum_unnamed_16.AKEYCODE_ALT_LEFT);
pub const AKEYCODE_ALT_RIGHT = @enumToInt(enum_unnamed_16.AKEYCODE_ALT_RIGHT);
pub const AKEYCODE_SHIFT_LEFT = @enumToInt(enum_unnamed_16.AKEYCODE_SHIFT_LEFT);
pub const AKEYCODE_SHIFT_RIGHT = @enumToInt(enum_unnamed_16.AKEYCODE_SHIFT_RIGHT);
pub const AKEYCODE_TAB = @enumToInt(enum_unnamed_16.AKEYCODE_TAB);
pub const AKEYCODE_SPACE = @enumToInt(enum_unnamed_16.AKEYCODE_SPACE);
pub const AKEYCODE_SYM = @enumToInt(enum_unnamed_16.AKEYCODE_SYM);
pub const AKEYCODE_EXPLORER = @enumToInt(enum_unnamed_16.AKEYCODE_EXPLORER);
pub const AKEYCODE_ENVELOPE = @enumToInt(enum_unnamed_16.AKEYCODE_ENVELOPE);
pub const AKEYCODE_ENTER = @enumToInt(enum_unnamed_16.AKEYCODE_ENTER);
pub const AKEYCODE_DEL = @enumToInt(enum_unnamed_16.AKEYCODE_DEL);
pub const AKEYCODE_GRAVE = @enumToInt(enum_unnamed_16.AKEYCODE_GRAVE);
pub const AKEYCODE_MINUS = @enumToInt(enum_unnamed_16.AKEYCODE_MINUS);
pub const AKEYCODE_EQUALS = @enumToInt(enum_unnamed_16.AKEYCODE_EQUALS);
pub const AKEYCODE_LEFT_BRACKET = @enumToInt(enum_unnamed_16.AKEYCODE_LEFT_BRACKET);
pub const AKEYCODE_RIGHT_BRACKET = @enumToInt(enum_unnamed_16.AKEYCODE_RIGHT_BRACKET);
pub const AKEYCODE_BACKSLASH = @enumToInt(enum_unnamed_16.AKEYCODE_BACKSLASH);
pub const AKEYCODE_SEMICOLON = @enumToInt(enum_unnamed_16.AKEYCODE_SEMICOLON);
pub const AKEYCODE_APOSTROPHE = @enumToInt(enum_unnamed_16.AKEYCODE_APOSTROPHE);
pub const AKEYCODE_SLASH = @enumToInt(enum_unnamed_16.AKEYCODE_SLASH);
pub const AKEYCODE_AT = @enumToInt(enum_unnamed_16.AKEYCODE_AT);
pub const AKEYCODE_NUM = @enumToInt(enum_unnamed_16.AKEYCODE_NUM);
pub const AKEYCODE_HEADSETHOOK = @enumToInt(enum_unnamed_16.AKEYCODE_HEADSETHOOK);
pub const AKEYCODE_FOCUS = @enumToInt(enum_unnamed_16.AKEYCODE_FOCUS);
pub const AKEYCODE_PLUS = @enumToInt(enum_unnamed_16.AKEYCODE_PLUS);
pub const AKEYCODE_MENU = @enumToInt(enum_unnamed_16.AKEYCODE_MENU);
pub const AKEYCODE_NOTIFICATION = @enumToInt(enum_unnamed_16.AKEYCODE_NOTIFICATION);
pub const AKEYCODE_SEARCH = @enumToInt(enum_unnamed_16.AKEYCODE_SEARCH);
pub const AKEYCODE_MEDIA_PLAY_PAUSE = @enumToInt(enum_unnamed_16.AKEYCODE_MEDIA_PLAY_PAUSE);
pub const AKEYCODE_MEDIA_STOP = @enumToInt(enum_unnamed_16.AKEYCODE_MEDIA_STOP);
pub const AKEYCODE_MEDIA_NEXT = @enumToInt(enum_unnamed_16.AKEYCODE_MEDIA_NEXT);
pub const AKEYCODE_MEDIA_PREVIOUS = @enumToInt(enum_unnamed_16.AKEYCODE_MEDIA_PREVIOUS);
pub const AKEYCODE_MEDIA_REWIND = @enumToInt(enum_unnamed_16.AKEYCODE_MEDIA_REWIND);
pub const AKEYCODE_MEDIA_FAST_FORWARD = @enumToInt(enum_unnamed_16.AKEYCODE_MEDIA_FAST_FORWARD);
pub const AKEYCODE_MUTE = @enumToInt(enum_unnamed_16.AKEYCODE_MUTE);
pub const AKEYCODE_PAGE_UP = @enumToInt(enum_unnamed_16.AKEYCODE_PAGE_UP);
pub const AKEYCODE_PAGE_DOWN = @enumToInt(enum_unnamed_16.AKEYCODE_PAGE_DOWN);
pub const AKEYCODE_PICTSYMBOLS = @enumToInt(enum_unnamed_16.AKEYCODE_PICTSYMBOLS);
pub const AKEYCODE_SWITCH_CHARSET = @enumToInt(enum_unnamed_16.AKEYCODE_SWITCH_CHARSET);
pub const AKEYCODE_BUTTON_A = @enumToInt(enum_unnamed_16.AKEYCODE_BUTTON_A);
pub const AKEYCODE_BUTTON_B = @enumToInt(enum_unnamed_16.AKEYCODE_BUTTON_B);
pub const AKEYCODE_BUTTON_C = @enumToInt(enum_unnamed_16.AKEYCODE_BUTTON_C);
pub const AKEYCODE_BUTTON_X = @enumToInt(enum_unnamed_16.AKEYCODE_BUTTON_X);
pub const AKEYCODE_BUTTON_Y = @enumToInt(enum_unnamed_16.AKEYCODE_BUTTON_Y);
pub const AKEYCODE_BUTTON_Z = @enumToInt(enum_unnamed_16.AKEYCODE_BUTTON_Z);
pub const AKEYCODE_BUTTON_L1 = @enumToInt(enum_unnamed_16.AKEYCODE_BUTTON_L1);
pub const AKEYCODE_BUTTON_R1 = @enumToInt(enum_unnamed_16.AKEYCODE_BUTTON_R1);
pub const AKEYCODE_BUTTON_L2 = @enumToInt(enum_unnamed_16.AKEYCODE_BUTTON_L2);
pub const AKEYCODE_BUTTON_R2 = @enumToInt(enum_unnamed_16.AKEYCODE_BUTTON_R2);
pub const AKEYCODE_BUTTON_THUMBL = @enumToInt(enum_unnamed_16.AKEYCODE_BUTTON_THUMBL);
pub const AKEYCODE_BUTTON_THUMBR = @enumToInt(enum_unnamed_16.AKEYCODE_BUTTON_THUMBR);
pub const AKEYCODE_BUTTON_START = @enumToInt(enum_unnamed_16.AKEYCODE_BUTTON_START);
pub const AKEYCODE_BUTTON_SELECT = @enumToInt(enum_unnamed_16.AKEYCODE_BUTTON_SELECT);
pub const AKEYCODE_BUTTON_MODE = @enumToInt(enum_unnamed_16.AKEYCODE_BUTTON_MODE);
pub const AKEYCODE_ESCAPE = @enumToInt(enum_unnamed_16.AKEYCODE_ESCAPE);
pub const AKEYCODE_FORWARD_DEL = @enumToInt(enum_unnamed_16.AKEYCODE_FORWARD_DEL);
pub const AKEYCODE_CTRL_LEFT = @enumToInt(enum_unnamed_16.AKEYCODE_CTRL_LEFT);
pub const AKEYCODE_CTRL_RIGHT = @enumToInt(enum_unnamed_16.AKEYCODE_CTRL_RIGHT);
pub const AKEYCODE_CAPS_LOCK = @enumToInt(enum_unnamed_16.AKEYCODE_CAPS_LOCK);
pub const AKEYCODE_SCROLL_LOCK = @enumToInt(enum_unnamed_16.AKEYCODE_SCROLL_LOCK);
pub const AKEYCODE_META_LEFT = @enumToInt(enum_unnamed_16.AKEYCODE_META_LEFT);
pub const AKEYCODE_META_RIGHT = @enumToInt(enum_unnamed_16.AKEYCODE_META_RIGHT);
pub const AKEYCODE_FUNCTION = @enumToInt(enum_unnamed_16.AKEYCODE_FUNCTION);
pub const AKEYCODE_SYSRQ = @enumToInt(enum_unnamed_16.AKEYCODE_SYSRQ);
pub const AKEYCODE_BREAK = @enumToInt(enum_unnamed_16.AKEYCODE_BREAK);
pub const AKEYCODE_MOVE_HOME = @enumToInt(enum_unnamed_16.AKEYCODE_MOVE_HOME);
pub const AKEYCODE_MOVE_END = @enumToInt(enum_unnamed_16.AKEYCODE_MOVE_END);
pub const AKEYCODE_INSERT = @enumToInt(enum_unnamed_16.AKEYCODE_INSERT);
pub const AKEYCODE_FORWARD = @enumToInt(enum_unnamed_16.AKEYCODE_FORWARD);
pub const AKEYCODE_MEDIA_PLAY = @enumToInt(enum_unnamed_16.AKEYCODE_MEDIA_PLAY);
pub const AKEYCODE_MEDIA_PAUSE = @enumToInt(enum_unnamed_16.AKEYCODE_MEDIA_PAUSE);
pub const AKEYCODE_MEDIA_CLOSE = @enumToInt(enum_unnamed_16.AKEYCODE_MEDIA_CLOSE);
pub const AKEYCODE_MEDIA_EJECT = @enumToInt(enum_unnamed_16.AKEYCODE_MEDIA_EJECT);
pub const AKEYCODE_MEDIA_RECORD = @enumToInt(enum_unnamed_16.AKEYCODE_MEDIA_RECORD);
pub const AKEYCODE_F1 = @enumToInt(enum_unnamed_16.AKEYCODE_F1);
pub const AKEYCODE_F2 = @enumToInt(enum_unnamed_16.AKEYCODE_F2);
pub const AKEYCODE_F3 = @enumToInt(enum_unnamed_16.AKEYCODE_F3);
pub const AKEYCODE_F4 = @enumToInt(enum_unnamed_16.AKEYCODE_F4);
pub const AKEYCODE_F5 = @enumToInt(enum_unnamed_16.AKEYCODE_F5);
pub const AKEYCODE_F6 = @enumToInt(enum_unnamed_16.AKEYCODE_F6);
pub const AKEYCODE_F7 = @enumToInt(enum_unnamed_16.AKEYCODE_F7);
pub const AKEYCODE_F8 = @enumToInt(enum_unnamed_16.AKEYCODE_F8);
pub const AKEYCODE_F9 = @enumToInt(enum_unnamed_16.AKEYCODE_F9);
pub const AKEYCODE_F10 = @enumToInt(enum_unnamed_16.AKEYCODE_F10);
pub const AKEYCODE_F11 = @enumToInt(enum_unnamed_16.AKEYCODE_F11);
pub const AKEYCODE_F12 = @enumToInt(enum_unnamed_16.AKEYCODE_F12);
pub const AKEYCODE_NUM_LOCK = @enumToInt(enum_unnamed_16.AKEYCODE_NUM_LOCK);
pub const AKEYCODE_NUMPAD_0 = @enumToInt(enum_unnamed_16.AKEYCODE_NUMPAD_0);
pub const AKEYCODE_NUMPAD_1 = @enumToInt(enum_unnamed_16.AKEYCODE_NUMPAD_1);
pub const AKEYCODE_NUMPAD_2 = @enumToInt(enum_unnamed_16.AKEYCODE_NUMPAD_2);
pub const AKEYCODE_NUMPAD_3 = @enumToInt(enum_unnamed_16.AKEYCODE_NUMPAD_3);
pub const AKEYCODE_NUMPAD_4 = @enumToInt(enum_unnamed_16.AKEYCODE_NUMPAD_4);
pub const AKEYCODE_NUMPAD_5 = @enumToInt(enum_unnamed_16.AKEYCODE_NUMPAD_5);
pub const AKEYCODE_NUMPAD_6 = @enumToInt(enum_unnamed_16.AKEYCODE_NUMPAD_6);
pub const AKEYCODE_NUMPAD_7 = @enumToInt(enum_unnamed_16.AKEYCODE_NUMPAD_7);
pub const AKEYCODE_NUMPAD_8 = @enumToInt(enum_unnamed_16.AKEYCODE_NUMPAD_8);
pub const AKEYCODE_NUMPAD_9 = @enumToInt(enum_unnamed_16.AKEYCODE_NUMPAD_9);
pub const AKEYCODE_NUMPAD_DIVIDE = @enumToInt(enum_unnamed_16.AKEYCODE_NUMPAD_DIVIDE);
pub const AKEYCODE_NUMPAD_MULTIPLY = @enumToInt(enum_unnamed_16.AKEYCODE_NUMPAD_MULTIPLY);
pub const AKEYCODE_NUMPAD_SUBTRACT = @enumToInt(enum_unnamed_16.AKEYCODE_NUMPAD_SUBTRACT);
pub const AKEYCODE_NUMPAD_ADD = @enumToInt(enum_unnamed_16.AKEYCODE_NUMPAD_ADD);
pub const AKEYCODE_NUMPAD_DOT = @enumToInt(enum_unnamed_16.AKEYCODE_NUMPAD_DOT);
pub const AKEYCODE_NUMPAD_COMMA = @enumToInt(enum_unnamed_16.AKEYCODE_NUMPAD_COMMA);
pub const AKEYCODE_NUMPAD_ENTER = @enumToInt(enum_unnamed_16.AKEYCODE_NUMPAD_ENTER);
pub const AKEYCODE_NUMPAD_EQUALS = @enumToInt(enum_unnamed_16.AKEYCODE_NUMPAD_EQUALS);
pub const AKEYCODE_NUMPAD_LEFT_PAREN = @enumToInt(enum_unnamed_16.AKEYCODE_NUMPAD_LEFT_PAREN);
pub const AKEYCODE_NUMPAD_RIGHT_PAREN = @enumToInt(enum_unnamed_16.AKEYCODE_NUMPAD_RIGHT_PAREN);
pub const AKEYCODE_VOLUME_MUTE = @enumToInt(enum_unnamed_16.AKEYCODE_VOLUME_MUTE);
pub const AKEYCODE_INFO = @enumToInt(enum_unnamed_16.AKEYCODE_INFO);
pub const AKEYCODE_CHANNEL_UP = @enumToInt(enum_unnamed_16.AKEYCODE_CHANNEL_UP);
pub const AKEYCODE_CHANNEL_DOWN = @enumToInt(enum_unnamed_16.AKEYCODE_CHANNEL_DOWN);
pub const AKEYCODE_ZOOM_IN = @enumToInt(enum_unnamed_16.AKEYCODE_ZOOM_IN);
pub const AKEYCODE_ZOOM_OUT = @enumToInt(enum_unnamed_16.AKEYCODE_ZOOM_OUT);
pub const AKEYCODE_TV = @enumToInt(enum_unnamed_16.AKEYCODE_TV);
pub const AKEYCODE_WINDOW = @enumToInt(enum_unnamed_16.AKEYCODE_WINDOW);
pub const AKEYCODE_GUIDE = @enumToInt(enum_unnamed_16.AKEYCODE_GUIDE);
pub const AKEYCODE_DVR = @enumToInt(enum_unnamed_16.AKEYCODE_DVR);
pub const AKEYCODE_BOOKMARK = @enumToInt(enum_unnamed_16.AKEYCODE_BOOKMARK);
pub const AKEYCODE_CAPTIONS = @enumToInt(enum_unnamed_16.AKEYCODE_CAPTIONS);
pub const AKEYCODE_SETTINGS = @enumToInt(enum_unnamed_16.AKEYCODE_SETTINGS);
pub const AKEYCODE_TV_POWER = @enumToInt(enum_unnamed_16.AKEYCODE_TV_POWER);
pub const AKEYCODE_TV_INPUT = @enumToInt(enum_unnamed_16.AKEYCODE_TV_INPUT);
pub const AKEYCODE_STB_POWER = @enumToInt(enum_unnamed_16.AKEYCODE_STB_POWER);
pub const AKEYCODE_STB_INPUT = @enumToInt(enum_unnamed_16.AKEYCODE_STB_INPUT);
pub const AKEYCODE_AVR_POWER = @enumToInt(enum_unnamed_16.AKEYCODE_AVR_POWER);
pub const AKEYCODE_AVR_INPUT = @enumToInt(enum_unnamed_16.AKEYCODE_AVR_INPUT);
pub const AKEYCODE_PROG_RED = @enumToInt(enum_unnamed_16.AKEYCODE_PROG_RED);
pub const AKEYCODE_PROG_GREEN = @enumToInt(enum_unnamed_16.AKEYCODE_PROG_GREEN);
pub const AKEYCODE_PROG_YELLOW = @enumToInt(enum_unnamed_16.AKEYCODE_PROG_YELLOW);
pub const AKEYCODE_PROG_BLUE = @enumToInt(enum_unnamed_16.AKEYCODE_PROG_BLUE);
pub const AKEYCODE_APP_SWITCH = @enumToInt(enum_unnamed_16.AKEYCODE_APP_SWITCH);
pub const AKEYCODE_BUTTON_1 = @enumToInt(enum_unnamed_16.AKEYCODE_BUTTON_1);
pub const AKEYCODE_BUTTON_2 = @enumToInt(enum_unnamed_16.AKEYCODE_BUTTON_2);
pub const AKEYCODE_BUTTON_3 = @enumToInt(enum_unnamed_16.AKEYCODE_BUTTON_3);
pub const AKEYCODE_BUTTON_4 = @enumToInt(enum_unnamed_16.AKEYCODE_BUTTON_4);
pub const AKEYCODE_BUTTON_5 = @enumToInt(enum_unnamed_16.AKEYCODE_BUTTON_5);
pub const AKEYCODE_BUTTON_6 = @enumToInt(enum_unnamed_16.AKEYCODE_BUTTON_6);
pub const AKEYCODE_BUTTON_7 = @enumToInt(enum_unnamed_16.AKEYCODE_BUTTON_7);
pub const AKEYCODE_BUTTON_8 = @enumToInt(enum_unnamed_16.AKEYCODE_BUTTON_8);
pub const AKEYCODE_BUTTON_9 = @enumToInt(enum_unnamed_16.AKEYCODE_BUTTON_9);
pub const AKEYCODE_BUTTON_10 = @enumToInt(enum_unnamed_16.AKEYCODE_BUTTON_10);
pub const AKEYCODE_BUTTON_11 = @enumToInt(enum_unnamed_16.AKEYCODE_BUTTON_11);
pub const AKEYCODE_BUTTON_12 = @enumToInt(enum_unnamed_16.AKEYCODE_BUTTON_12);
pub const AKEYCODE_BUTTON_13 = @enumToInt(enum_unnamed_16.AKEYCODE_BUTTON_13);
pub const AKEYCODE_BUTTON_14 = @enumToInt(enum_unnamed_16.AKEYCODE_BUTTON_14);
pub const AKEYCODE_BUTTON_15 = @enumToInt(enum_unnamed_16.AKEYCODE_BUTTON_15);
pub const AKEYCODE_BUTTON_16 = @enumToInt(enum_unnamed_16.AKEYCODE_BUTTON_16);
pub const AKEYCODE_LANGUAGE_SWITCH = @enumToInt(enum_unnamed_16.AKEYCODE_LANGUAGE_SWITCH);
pub const AKEYCODE_MANNER_MODE = @enumToInt(enum_unnamed_16.AKEYCODE_MANNER_MODE);
pub const AKEYCODE_3D_MODE = @enumToInt(enum_unnamed_16.AKEYCODE_3D_MODE);
pub const AKEYCODE_CONTACTS = @enumToInt(enum_unnamed_16.AKEYCODE_CONTACTS);
pub const AKEYCODE_CALENDAR = @enumToInt(enum_unnamed_16.AKEYCODE_CALENDAR);
pub const AKEYCODE_MUSIC = @enumToInt(enum_unnamed_16.AKEYCODE_MUSIC);
pub const AKEYCODE_CALCULATOR = @enumToInt(enum_unnamed_16.AKEYCODE_CALCULATOR);
pub const AKEYCODE_ZENKAKU_HANKAKU = @enumToInt(enum_unnamed_16.AKEYCODE_ZENKAKU_HANKAKU);
pub const AKEYCODE_EISU = @enumToInt(enum_unnamed_16.AKEYCODE_EISU);
pub const AKEYCODE_MUHENKAN = @enumToInt(enum_unnamed_16.AKEYCODE_MUHENKAN);
pub const AKEYCODE_HENKAN = @enumToInt(enum_unnamed_16.AKEYCODE_HENKAN);
pub const AKEYCODE_KATAKANA_HIRAGANA = @enumToInt(enum_unnamed_16.AKEYCODE_KATAKANA_HIRAGANA);
pub const AKEYCODE_YEN = @enumToInt(enum_unnamed_16.AKEYCODE_YEN);
pub const AKEYCODE_RO = @enumToInt(enum_unnamed_16.AKEYCODE_RO);
pub const AKEYCODE_KANA = @enumToInt(enum_unnamed_16.AKEYCODE_KANA);
pub const AKEYCODE_ASSIST = @enumToInt(enum_unnamed_16.AKEYCODE_ASSIST);
pub const AKEYCODE_BRIGHTNESS_DOWN = @enumToInt(enum_unnamed_16.AKEYCODE_BRIGHTNESS_DOWN);
pub const AKEYCODE_BRIGHTNESS_UP = @enumToInt(enum_unnamed_16.AKEYCODE_BRIGHTNESS_UP);
pub const AKEYCODE_MEDIA_AUDIO_TRACK = @enumToInt(enum_unnamed_16.AKEYCODE_MEDIA_AUDIO_TRACK);
pub const AKEYCODE_SLEEP = @enumToInt(enum_unnamed_16.AKEYCODE_SLEEP);
pub const AKEYCODE_WAKEUP = @enumToInt(enum_unnamed_16.AKEYCODE_WAKEUP);
pub const AKEYCODE_PAIRING = @enumToInt(enum_unnamed_16.AKEYCODE_PAIRING);
pub const AKEYCODE_MEDIA_TOP_MENU = @enumToInt(enum_unnamed_16.AKEYCODE_MEDIA_TOP_MENU);
pub const AKEYCODE_11 = @enumToInt(enum_unnamed_16.AKEYCODE_11);
pub const AKEYCODE_12 = @enumToInt(enum_unnamed_16.AKEYCODE_12);
pub const AKEYCODE_LAST_CHANNEL = @enumToInt(enum_unnamed_16.AKEYCODE_LAST_CHANNEL);
pub const AKEYCODE_TV_DATA_SERVICE = @enumToInt(enum_unnamed_16.AKEYCODE_TV_DATA_SERVICE);
pub const AKEYCODE_VOICE_ASSIST = @enumToInt(enum_unnamed_16.AKEYCODE_VOICE_ASSIST);
pub const AKEYCODE_TV_RADIO_SERVICE = @enumToInt(enum_unnamed_16.AKEYCODE_TV_RADIO_SERVICE);
pub const AKEYCODE_TV_TELETEXT = @enumToInt(enum_unnamed_16.AKEYCODE_TV_TELETEXT);
pub const AKEYCODE_TV_NUMBER_ENTRY = @enumToInt(enum_unnamed_16.AKEYCODE_TV_NUMBER_ENTRY);
pub const AKEYCODE_TV_TERRESTRIAL_ANALOG = @enumToInt(enum_unnamed_16.AKEYCODE_TV_TERRESTRIAL_ANALOG);
pub const AKEYCODE_TV_TERRESTRIAL_DIGITAL = @enumToInt(enum_unnamed_16.AKEYCODE_TV_TERRESTRIAL_DIGITAL);
pub const AKEYCODE_TV_SATELLITE = @enumToInt(enum_unnamed_16.AKEYCODE_TV_SATELLITE);
pub const AKEYCODE_TV_SATELLITE_BS = @enumToInt(enum_unnamed_16.AKEYCODE_TV_SATELLITE_BS);
pub const AKEYCODE_TV_SATELLITE_CS = @enumToInt(enum_unnamed_16.AKEYCODE_TV_SATELLITE_CS);
pub const AKEYCODE_TV_SATELLITE_SERVICE = @enumToInt(enum_unnamed_16.AKEYCODE_TV_SATELLITE_SERVICE);
pub const AKEYCODE_TV_NETWORK = @enumToInt(enum_unnamed_16.AKEYCODE_TV_NETWORK);
pub const AKEYCODE_TV_ANTENNA_CABLE = @enumToInt(enum_unnamed_16.AKEYCODE_TV_ANTENNA_CABLE);
pub const AKEYCODE_TV_INPUT_HDMI_1 = @enumToInt(enum_unnamed_16.AKEYCODE_TV_INPUT_HDMI_1);
pub const AKEYCODE_TV_INPUT_HDMI_2 = @enumToInt(enum_unnamed_16.AKEYCODE_TV_INPUT_HDMI_2);
pub const AKEYCODE_TV_INPUT_HDMI_3 = @enumToInt(enum_unnamed_16.AKEYCODE_TV_INPUT_HDMI_3);
pub const AKEYCODE_TV_INPUT_HDMI_4 = @enumToInt(enum_unnamed_16.AKEYCODE_TV_INPUT_HDMI_4);
pub const AKEYCODE_TV_INPUT_COMPOSITE_1 = @enumToInt(enum_unnamed_16.AKEYCODE_TV_INPUT_COMPOSITE_1);
pub const AKEYCODE_TV_INPUT_COMPOSITE_2 = @enumToInt(enum_unnamed_16.AKEYCODE_TV_INPUT_COMPOSITE_2);
pub const AKEYCODE_TV_INPUT_COMPONENT_1 = @enumToInt(enum_unnamed_16.AKEYCODE_TV_INPUT_COMPONENT_1);
pub const AKEYCODE_TV_INPUT_COMPONENT_2 = @enumToInt(enum_unnamed_16.AKEYCODE_TV_INPUT_COMPONENT_2);
pub const AKEYCODE_TV_INPUT_VGA_1 = @enumToInt(enum_unnamed_16.AKEYCODE_TV_INPUT_VGA_1);
pub const AKEYCODE_TV_AUDIO_DESCRIPTION = @enumToInt(enum_unnamed_16.AKEYCODE_TV_AUDIO_DESCRIPTION);
pub const AKEYCODE_TV_AUDIO_DESCRIPTION_MIX_UP = @enumToInt(enum_unnamed_16.AKEYCODE_TV_AUDIO_DESCRIPTION_MIX_UP);
pub const AKEYCODE_TV_AUDIO_DESCRIPTION_MIX_DOWN = @enumToInt(enum_unnamed_16.AKEYCODE_TV_AUDIO_DESCRIPTION_MIX_DOWN);
pub const AKEYCODE_TV_ZOOM_MODE = @enumToInt(enum_unnamed_16.AKEYCODE_TV_ZOOM_MODE);
pub const AKEYCODE_TV_CONTENTS_MENU = @enumToInt(enum_unnamed_16.AKEYCODE_TV_CONTENTS_MENU);
pub const AKEYCODE_TV_MEDIA_CONTEXT_MENU = @enumToInt(enum_unnamed_16.AKEYCODE_TV_MEDIA_CONTEXT_MENU);
pub const AKEYCODE_TV_TIMER_PROGRAMMING = @enumToInt(enum_unnamed_16.AKEYCODE_TV_TIMER_PROGRAMMING);
pub const AKEYCODE_HELP = @enumToInt(enum_unnamed_16.AKEYCODE_HELP);
pub const AKEYCODE_NAVIGATE_PREVIOUS = @enumToInt(enum_unnamed_16.AKEYCODE_NAVIGATE_PREVIOUS);
pub const AKEYCODE_NAVIGATE_NEXT = @enumToInt(enum_unnamed_16.AKEYCODE_NAVIGATE_NEXT);
pub const AKEYCODE_NAVIGATE_IN = @enumToInt(enum_unnamed_16.AKEYCODE_NAVIGATE_IN);
pub const AKEYCODE_NAVIGATE_OUT = @enumToInt(enum_unnamed_16.AKEYCODE_NAVIGATE_OUT);
pub const AKEYCODE_STEM_PRIMARY = @enumToInt(enum_unnamed_16.AKEYCODE_STEM_PRIMARY);
pub const AKEYCODE_STEM_1 = @enumToInt(enum_unnamed_16.AKEYCODE_STEM_1);
pub const AKEYCODE_STEM_2 = @enumToInt(enum_unnamed_16.AKEYCODE_STEM_2);
pub const AKEYCODE_STEM_3 = @enumToInt(enum_unnamed_16.AKEYCODE_STEM_3);
pub const AKEYCODE_DPAD_UP_LEFT = @enumToInt(enum_unnamed_16.AKEYCODE_DPAD_UP_LEFT);
pub const AKEYCODE_DPAD_DOWN_LEFT = @enumToInt(enum_unnamed_16.AKEYCODE_DPAD_DOWN_LEFT);
pub const AKEYCODE_DPAD_UP_RIGHT = @enumToInt(enum_unnamed_16.AKEYCODE_DPAD_UP_RIGHT);
pub const AKEYCODE_DPAD_DOWN_RIGHT = @enumToInt(enum_unnamed_16.AKEYCODE_DPAD_DOWN_RIGHT);
pub const AKEYCODE_MEDIA_SKIP_FORWARD = @enumToInt(enum_unnamed_16.AKEYCODE_MEDIA_SKIP_FORWARD);
pub const AKEYCODE_MEDIA_SKIP_BACKWARD = @enumToInt(enum_unnamed_16.AKEYCODE_MEDIA_SKIP_BACKWARD);
pub const AKEYCODE_MEDIA_STEP_FORWARD = @enumToInt(enum_unnamed_16.AKEYCODE_MEDIA_STEP_FORWARD);
pub const AKEYCODE_MEDIA_STEP_BACKWARD = @enumToInt(enum_unnamed_16.AKEYCODE_MEDIA_STEP_BACKWARD);
pub const AKEYCODE_SOFT_SLEEP = @enumToInt(enum_unnamed_16.AKEYCODE_SOFT_SLEEP);
pub const AKEYCODE_CUT = @enumToInt(enum_unnamed_16.AKEYCODE_CUT);
pub const AKEYCODE_COPY = @enumToInt(enum_unnamed_16.AKEYCODE_COPY);
pub const AKEYCODE_PASTE = @enumToInt(enum_unnamed_16.AKEYCODE_PASTE);
pub const AKEYCODE_SYSTEM_NAVIGATION_UP = @enumToInt(enum_unnamed_16.AKEYCODE_SYSTEM_NAVIGATION_UP);
pub const AKEYCODE_SYSTEM_NAVIGATION_DOWN = @enumToInt(enum_unnamed_16.AKEYCODE_SYSTEM_NAVIGATION_DOWN);
pub const AKEYCODE_SYSTEM_NAVIGATION_LEFT = @enumToInt(enum_unnamed_16.AKEYCODE_SYSTEM_NAVIGATION_LEFT);
pub const AKEYCODE_SYSTEM_NAVIGATION_RIGHT = @enumToInt(enum_unnamed_16.AKEYCODE_SYSTEM_NAVIGATION_RIGHT);
pub const AKEYCODE_ALL_APPS = @enumToInt(enum_unnamed_16.AKEYCODE_ALL_APPS);
pub const AKEYCODE_REFRESH = @enumToInt(enum_unnamed_16.AKEYCODE_REFRESH);
pub const AKEYCODE_THUMBS_UP = @enumToInt(enum_unnamed_16.AKEYCODE_THUMBS_UP);
pub const AKEYCODE_THUMBS_DOWN = @enumToInt(enum_unnamed_16.AKEYCODE_THUMBS_DOWN);
pub const AKEYCODE_PROFILE_SWITCH = @enumToInt(enum_unnamed_16.AKEYCODE_PROFILE_SWITCH);
const enum_unnamed_16 = extern enum(c_int) {
    AKEYCODE_UNKNOWN = 0,
    AKEYCODE_SOFT_LEFT = 1,
    AKEYCODE_SOFT_RIGHT = 2,
    AKEYCODE_HOME = 3,
    AKEYCODE_BACK = 4,
    AKEYCODE_CALL = 5,
    AKEYCODE_ENDCALL = 6,
    AKEYCODE_0 = 7,
    AKEYCODE_1 = 8,
    AKEYCODE_2 = 9,
    AKEYCODE_3 = 10,
    AKEYCODE_4 = 11,
    AKEYCODE_5 = 12,
    AKEYCODE_6 = 13,
    AKEYCODE_7 = 14,
    AKEYCODE_8 = 15,
    AKEYCODE_9 = 16,
    AKEYCODE_STAR = 17,
    AKEYCODE_POUND = 18,
    AKEYCODE_DPAD_UP = 19,
    AKEYCODE_DPAD_DOWN = 20,
    AKEYCODE_DPAD_LEFT = 21,
    AKEYCODE_DPAD_RIGHT = 22,
    AKEYCODE_DPAD_CENTER = 23,
    AKEYCODE_VOLUME_UP = 24,
    AKEYCODE_VOLUME_DOWN = 25,
    AKEYCODE_POWER = 26,
    AKEYCODE_CAMERA = 27,
    AKEYCODE_CLEAR = 28,
    AKEYCODE_A = 29,
    AKEYCODE_B = 30,
    AKEYCODE_C = 31,
    AKEYCODE_D = 32,
    AKEYCODE_E = 33,
    AKEYCODE_F = 34,
    AKEYCODE_G = 35,
    AKEYCODE_H = 36,
    AKEYCODE_I = 37,
    AKEYCODE_J = 38,
    AKEYCODE_K = 39,
    AKEYCODE_L = 40,
    AKEYCODE_M = 41,
    AKEYCODE_N = 42,
    AKEYCODE_O = 43,
    AKEYCODE_P = 44,
    AKEYCODE_Q = 45,
    AKEYCODE_R = 46,
    AKEYCODE_S = 47,
    AKEYCODE_T = 48,
    AKEYCODE_U = 49,
    AKEYCODE_V = 50,
    AKEYCODE_W = 51,
    AKEYCODE_X = 52,
    AKEYCODE_Y = 53,
    AKEYCODE_Z = 54,
    AKEYCODE_COMMA = 55,
    AKEYCODE_PERIOD = 56,
    AKEYCODE_ALT_LEFT = 57,
    AKEYCODE_ALT_RIGHT = 58,
    AKEYCODE_SHIFT_LEFT = 59,
    AKEYCODE_SHIFT_RIGHT = 60,
    AKEYCODE_TAB = 61,
    AKEYCODE_SPACE = 62,
    AKEYCODE_SYM = 63,
    AKEYCODE_EXPLORER = 64,
    AKEYCODE_ENVELOPE = 65,
    AKEYCODE_ENTER = 66,
    AKEYCODE_DEL = 67,
    AKEYCODE_GRAVE = 68,
    AKEYCODE_MINUS = 69,
    AKEYCODE_EQUALS = 70,
    AKEYCODE_LEFT_BRACKET = 71,
    AKEYCODE_RIGHT_BRACKET = 72,
    AKEYCODE_BACKSLASH = 73,
    AKEYCODE_SEMICOLON = 74,
    AKEYCODE_APOSTROPHE = 75,
    AKEYCODE_SLASH = 76,
    AKEYCODE_AT = 77,
    AKEYCODE_NUM = 78,
    AKEYCODE_HEADSETHOOK = 79,
    AKEYCODE_FOCUS = 80,
    AKEYCODE_PLUS = 81,
    AKEYCODE_MENU = 82,
    AKEYCODE_NOTIFICATION = 83,
    AKEYCODE_SEARCH = 84,
    AKEYCODE_MEDIA_PLAY_PAUSE = 85,
    AKEYCODE_MEDIA_STOP = 86,
    AKEYCODE_MEDIA_NEXT = 87,
    AKEYCODE_MEDIA_PREVIOUS = 88,
    AKEYCODE_MEDIA_REWIND = 89,
    AKEYCODE_MEDIA_FAST_FORWARD = 90,
    AKEYCODE_MUTE = 91,
    AKEYCODE_PAGE_UP = 92,
    AKEYCODE_PAGE_DOWN = 93,
    AKEYCODE_PICTSYMBOLS = 94,
    AKEYCODE_SWITCH_CHARSET = 95,
    AKEYCODE_BUTTON_A = 96,
    AKEYCODE_BUTTON_B = 97,
    AKEYCODE_BUTTON_C = 98,
    AKEYCODE_BUTTON_X = 99,
    AKEYCODE_BUTTON_Y = 100,
    AKEYCODE_BUTTON_Z = 101,
    AKEYCODE_BUTTON_L1 = 102,
    AKEYCODE_BUTTON_R1 = 103,
    AKEYCODE_BUTTON_L2 = 104,
    AKEYCODE_BUTTON_R2 = 105,
    AKEYCODE_BUTTON_THUMBL = 106,
    AKEYCODE_BUTTON_THUMBR = 107,
    AKEYCODE_BUTTON_START = 108,
    AKEYCODE_BUTTON_SELECT = 109,
    AKEYCODE_BUTTON_MODE = 110,
    AKEYCODE_ESCAPE = 111,
    AKEYCODE_FORWARD_DEL = 112,
    AKEYCODE_CTRL_LEFT = 113,
    AKEYCODE_CTRL_RIGHT = 114,
    AKEYCODE_CAPS_LOCK = 115,
    AKEYCODE_SCROLL_LOCK = 116,
    AKEYCODE_META_LEFT = 117,
    AKEYCODE_META_RIGHT = 118,
    AKEYCODE_FUNCTION = 119,
    AKEYCODE_SYSRQ = 120,
    AKEYCODE_BREAK = 121,
    AKEYCODE_MOVE_HOME = 122,
    AKEYCODE_MOVE_END = 123,
    AKEYCODE_INSERT = 124,
    AKEYCODE_FORWARD = 125,
    AKEYCODE_MEDIA_PLAY = 126,
    AKEYCODE_MEDIA_PAUSE = 127,
    AKEYCODE_MEDIA_CLOSE = 128,
    AKEYCODE_MEDIA_EJECT = 129,
    AKEYCODE_MEDIA_RECORD = 130,
    AKEYCODE_F1 = 131,
    AKEYCODE_F2 = 132,
    AKEYCODE_F3 = 133,
    AKEYCODE_F4 = 134,
    AKEYCODE_F5 = 135,
    AKEYCODE_F6 = 136,
    AKEYCODE_F7 = 137,
    AKEYCODE_F8 = 138,
    AKEYCODE_F9 = 139,
    AKEYCODE_F10 = 140,
    AKEYCODE_F11 = 141,
    AKEYCODE_F12 = 142,
    AKEYCODE_NUM_LOCK = 143,
    AKEYCODE_NUMPAD_0 = 144,
    AKEYCODE_NUMPAD_1 = 145,
    AKEYCODE_NUMPAD_2 = 146,
    AKEYCODE_NUMPAD_3 = 147,
    AKEYCODE_NUMPAD_4 = 148,
    AKEYCODE_NUMPAD_5 = 149,
    AKEYCODE_NUMPAD_6 = 150,
    AKEYCODE_NUMPAD_7 = 151,
    AKEYCODE_NUMPAD_8 = 152,
    AKEYCODE_NUMPAD_9 = 153,
    AKEYCODE_NUMPAD_DIVIDE = 154,
    AKEYCODE_NUMPAD_MULTIPLY = 155,
    AKEYCODE_NUMPAD_SUBTRACT = 156,
    AKEYCODE_NUMPAD_ADD = 157,
    AKEYCODE_NUMPAD_DOT = 158,
    AKEYCODE_NUMPAD_COMMA = 159,
    AKEYCODE_NUMPAD_ENTER = 160,
    AKEYCODE_NUMPAD_EQUALS = 161,
    AKEYCODE_NUMPAD_LEFT_PAREN = 162,
    AKEYCODE_NUMPAD_RIGHT_PAREN = 163,
    AKEYCODE_VOLUME_MUTE = 164,
    AKEYCODE_INFO = 165,
    AKEYCODE_CHANNEL_UP = 166,
    AKEYCODE_CHANNEL_DOWN = 167,
    AKEYCODE_ZOOM_IN = 168,
    AKEYCODE_ZOOM_OUT = 169,
    AKEYCODE_TV = 170,
    AKEYCODE_WINDOW = 171,
    AKEYCODE_GUIDE = 172,
    AKEYCODE_DVR = 173,
    AKEYCODE_BOOKMARK = 174,
    AKEYCODE_CAPTIONS = 175,
    AKEYCODE_SETTINGS = 176,
    AKEYCODE_TV_POWER = 177,
    AKEYCODE_TV_INPUT = 178,
    AKEYCODE_STB_POWER = 179,
    AKEYCODE_STB_INPUT = 180,
    AKEYCODE_AVR_POWER = 181,
    AKEYCODE_AVR_INPUT = 182,
    AKEYCODE_PROG_RED = 183,
    AKEYCODE_PROG_GREEN = 184,
    AKEYCODE_PROG_YELLOW = 185,
    AKEYCODE_PROG_BLUE = 186,
    AKEYCODE_APP_SWITCH = 187,
    AKEYCODE_BUTTON_1 = 188,
    AKEYCODE_BUTTON_2 = 189,
    AKEYCODE_BUTTON_3 = 190,
    AKEYCODE_BUTTON_4 = 191,
    AKEYCODE_BUTTON_5 = 192,
    AKEYCODE_BUTTON_6 = 193,
    AKEYCODE_BUTTON_7 = 194,
    AKEYCODE_BUTTON_8 = 195,
    AKEYCODE_BUTTON_9 = 196,
    AKEYCODE_BUTTON_10 = 197,
    AKEYCODE_BUTTON_11 = 198,
    AKEYCODE_BUTTON_12 = 199,
    AKEYCODE_BUTTON_13 = 200,
    AKEYCODE_BUTTON_14 = 201,
    AKEYCODE_BUTTON_15 = 202,
    AKEYCODE_BUTTON_16 = 203,
    AKEYCODE_LANGUAGE_SWITCH = 204,
    AKEYCODE_MANNER_MODE = 205,
    AKEYCODE_3D_MODE = 206,
    AKEYCODE_CONTACTS = 207,
    AKEYCODE_CALENDAR = 208,
    AKEYCODE_MUSIC = 209,
    AKEYCODE_CALCULATOR = 210,
    AKEYCODE_ZENKAKU_HANKAKU = 211,
    AKEYCODE_EISU = 212,
    AKEYCODE_MUHENKAN = 213,
    AKEYCODE_HENKAN = 214,
    AKEYCODE_KATAKANA_HIRAGANA = 215,
    AKEYCODE_YEN = 216,
    AKEYCODE_RO = 217,
    AKEYCODE_KANA = 218,
    AKEYCODE_ASSIST = 219,
    AKEYCODE_BRIGHTNESS_DOWN = 220,
    AKEYCODE_BRIGHTNESS_UP = 221,
    AKEYCODE_MEDIA_AUDIO_TRACK = 222,
    AKEYCODE_SLEEP = 223,
    AKEYCODE_WAKEUP = 224,
    AKEYCODE_PAIRING = 225,
    AKEYCODE_MEDIA_TOP_MENU = 226,
    AKEYCODE_11 = 227,
    AKEYCODE_12 = 228,
    AKEYCODE_LAST_CHANNEL = 229,
    AKEYCODE_TV_DATA_SERVICE = 230,
    AKEYCODE_VOICE_ASSIST = 231,
    AKEYCODE_TV_RADIO_SERVICE = 232,
    AKEYCODE_TV_TELETEXT = 233,
    AKEYCODE_TV_NUMBER_ENTRY = 234,
    AKEYCODE_TV_TERRESTRIAL_ANALOG = 235,
    AKEYCODE_TV_TERRESTRIAL_DIGITAL = 236,
    AKEYCODE_TV_SATELLITE = 237,
    AKEYCODE_TV_SATELLITE_BS = 238,
    AKEYCODE_TV_SATELLITE_CS = 239,
    AKEYCODE_TV_SATELLITE_SERVICE = 240,
    AKEYCODE_TV_NETWORK = 241,
    AKEYCODE_TV_ANTENNA_CABLE = 242,
    AKEYCODE_TV_INPUT_HDMI_1 = 243,
    AKEYCODE_TV_INPUT_HDMI_2 = 244,
    AKEYCODE_TV_INPUT_HDMI_3 = 245,
    AKEYCODE_TV_INPUT_HDMI_4 = 246,
    AKEYCODE_TV_INPUT_COMPOSITE_1 = 247,
    AKEYCODE_TV_INPUT_COMPOSITE_2 = 248,
    AKEYCODE_TV_INPUT_COMPONENT_1 = 249,
    AKEYCODE_TV_INPUT_COMPONENT_2 = 250,
    AKEYCODE_TV_INPUT_VGA_1 = 251,
    AKEYCODE_TV_AUDIO_DESCRIPTION = 252,
    AKEYCODE_TV_AUDIO_DESCRIPTION_MIX_UP = 253,
    AKEYCODE_TV_AUDIO_DESCRIPTION_MIX_DOWN = 254,
    AKEYCODE_TV_ZOOM_MODE = 255,
    AKEYCODE_TV_CONTENTS_MENU = 256,
    AKEYCODE_TV_MEDIA_CONTEXT_MENU = 257,
    AKEYCODE_TV_TIMER_PROGRAMMING = 258,
    AKEYCODE_HELP = 259,
    AKEYCODE_NAVIGATE_PREVIOUS = 260,
    AKEYCODE_NAVIGATE_NEXT = 261,
    AKEYCODE_NAVIGATE_IN = 262,
    AKEYCODE_NAVIGATE_OUT = 263,
    AKEYCODE_STEM_PRIMARY = 264,
    AKEYCODE_STEM_1 = 265,
    AKEYCODE_STEM_2 = 266,
    AKEYCODE_STEM_3 = 267,
    AKEYCODE_DPAD_UP_LEFT = 268,
    AKEYCODE_DPAD_DOWN_LEFT = 269,
    AKEYCODE_DPAD_UP_RIGHT = 270,
    AKEYCODE_DPAD_DOWN_RIGHT = 271,
    AKEYCODE_MEDIA_SKIP_FORWARD = 272,
    AKEYCODE_MEDIA_SKIP_BACKWARD = 273,
    AKEYCODE_MEDIA_STEP_FORWARD = 274,
    AKEYCODE_MEDIA_STEP_BACKWARD = 275,
    AKEYCODE_SOFT_SLEEP = 276,
    AKEYCODE_CUT = 277,
    AKEYCODE_COPY = 278,
    AKEYCODE_PASTE = 279,
    AKEYCODE_SYSTEM_NAVIGATION_UP = 280,
    AKEYCODE_SYSTEM_NAVIGATION_DOWN = 281,
    AKEYCODE_SYSTEM_NAVIGATION_LEFT = 282,
    AKEYCODE_SYSTEM_NAVIGATION_RIGHT = 283,
    AKEYCODE_ALL_APPS = 284,
    AKEYCODE_REFRESH = 285,
    AKEYCODE_THUMBS_UP = 286,
    AKEYCODE_THUMBS_DOWN = 287,
    AKEYCODE_PROFILE_SWITCH = 288,
    _,
};
pub const AKEY_STATE_UNKNOWN = @enumToInt(enum_unnamed_17.AKEY_STATE_UNKNOWN);
pub const AKEY_STATE_UP = @enumToInt(enum_unnamed_17.AKEY_STATE_UP);
pub const AKEY_STATE_DOWN = @enumToInt(enum_unnamed_17.AKEY_STATE_DOWN);
pub const AKEY_STATE_VIRTUAL = @enumToInt(enum_unnamed_17.AKEY_STATE_VIRTUAL);
const enum_unnamed_17 = extern enum(c_int) {
    AKEY_STATE_UNKNOWN = -1,
    AKEY_STATE_UP = 0,
    AKEY_STATE_DOWN = 1,
    AKEY_STATE_VIRTUAL = 2,
    _,
};
pub const AMETA_NONE = @enumToInt(enum_unnamed_18.AMETA_NONE);
pub const AMETA_ALT_ON = @enumToInt(enum_unnamed_18.AMETA_ALT_ON);
pub const AMETA_ALT_LEFT_ON = @enumToInt(enum_unnamed_18.AMETA_ALT_LEFT_ON);
pub const AMETA_ALT_RIGHT_ON = @enumToInt(enum_unnamed_18.AMETA_ALT_RIGHT_ON);
pub const AMETA_SHIFT_ON = @enumToInt(enum_unnamed_18.AMETA_SHIFT_ON);
pub const AMETA_SHIFT_LEFT_ON = @enumToInt(enum_unnamed_18.AMETA_SHIFT_LEFT_ON);
pub const AMETA_SHIFT_RIGHT_ON = @enumToInt(enum_unnamed_18.AMETA_SHIFT_RIGHT_ON);
pub const AMETA_SYM_ON = @enumToInt(enum_unnamed_18.AMETA_SYM_ON);
pub const AMETA_FUNCTION_ON = @enumToInt(enum_unnamed_18.AMETA_FUNCTION_ON);
pub const AMETA_CTRL_ON = @enumToInt(enum_unnamed_18.AMETA_CTRL_ON);
pub const AMETA_CTRL_LEFT_ON = @enumToInt(enum_unnamed_18.AMETA_CTRL_LEFT_ON);
pub const AMETA_CTRL_RIGHT_ON = @enumToInt(enum_unnamed_18.AMETA_CTRL_RIGHT_ON);
pub const AMETA_META_ON = @enumToInt(enum_unnamed_18.AMETA_META_ON);
pub const AMETA_META_LEFT_ON = @enumToInt(enum_unnamed_18.AMETA_META_LEFT_ON);
pub const AMETA_META_RIGHT_ON = @enumToInt(enum_unnamed_18.AMETA_META_RIGHT_ON);
pub const AMETA_CAPS_LOCK_ON = @enumToInt(enum_unnamed_18.AMETA_CAPS_LOCK_ON);
pub const AMETA_NUM_LOCK_ON = @enumToInt(enum_unnamed_18.AMETA_NUM_LOCK_ON);
pub const AMETA_SCROLL_LOCK_ON = @enumToInt(enum_unnamed_18.AMETA_SCROLL_LOCK_ON);
const enum_unnamed_18 = extern enum(c_int) {
    AMETA_NONE = 0,
    AMETA_ALT_ON = 2,
    AMETA_ALT_LEFT_ON = 16,
    AMETA_ALT_RIGHT_ON = 32,
    AMETA_SHIFT_ON = 1,
    AMETA_SHIFT_LEFT_ON = 64,
    AMETA_SHIFT_RIGHT_ON = 128,
    AMETA_SYM_ON = 4,
    AMETA_FUNCTION_ON = 8,
    AMETA_CTRL_ON = 4096,
    AMETA_CTRL_LEFT_ON = 8192,
    AMETA_CTRL_RIGHT_ON = 16384,
    AMETA_META_ON = 65536,
    AMETA_META_LEFT_ON = 131072,
    AMETA_META_RIGHT_ON = 262144,
    AMETA_CAPS_LOCK_ON = 1048576,
    AMETA_NUM_LOCK_ON = 2097152,
    AMETA_SCROLL_LOCK_ON = 4194304,
    _,
};
pub const AInputEvent = opaque {};
pub const AInputEventType = extern enum(c_int) {
    AINPUT_EVENT_TYPE_KEY = 1,
    AINPUT_EVENT_TYPE_MOTION = 2,
    _,
};
pub const AKEY_EVENT_ACTION_DOWN = @enumToInt(AKeyEventActionType.AKEY_EVENT_ACTION_DOWN);
pub const AKEY_EVENT_ACTION_UP = @enumToInt(AKeyEventActionType.AKEY_EVENT_ACTION_UP);
pub const AKEY_EVENT_ACTION_MULTIPLE = @enumToInt(AKeyEventActionType.AKEY_EVENT_ACTION_MULTIPLE);
pub const AKeyEventActionType = extern enum(c_int) {
    AKEY_EVENT_ACTION_DOWN = 0,
    AKEY_EVENT_ACTION_UP = 1,
    AKEY_EVENT_ACTION_MULTIPLE = 2,
    _,
};
pub const AKEY_EVENT_FLAG_WOKE_HERE = @enumToInt(enum_unnamed_21.AKEY_EVENT_FLAG_WOKE_HERE);
pub const AKEY_EVENT_FLAG_SOFT_KEYBOARD = @enumToInt(enum_unnamed_21.AKEY_EVENT_FLAG_SOFT_KEYBOARD);
pub const AKEY_EVENT_FLAG_KEEP_TOUCH_MODE = @enumToInt(enum_unnamed_21.AKEY_EVENT_FLAG_KEEP_TOUCH_MODE);
pub const AKEY_EVENT_FLAG_FROM_SYSTEM = @enumToInt(enum_unnamed_21.AKEY_EVENT_FLAG_FROM_SYSTEM);
pub const AKEY_EVENT_FLAG_EDITOR_ACTION = @enumToInt(enum_unnamed_21.AKEY_EVENT_FLAG_EDITOR_ACTION);
pub const AKEY_EVENT_FLAG_CANCELED = @enumToInt(enum_unnamed_21.AKEY_EVENT_FLAG_CANCELED);
pub const AKEY_EVENT_FLAG_VIRTUAL_HARD_KEY = @enumToInt(enum_unnamed_21.AKEY_EVENT_FLAG_VIRTUAL_HARD_KEY);
pub const AKEY_EVENT_FLAG_LONG_PRESS = @enumToInt(enum_unnamed_21.AKEY_EVENT_FLAG_LONG_PRESS);
pub const AKEY_EVENT_FLAG_CANCELED_LONG_PRESS = @enumToInt(enum_unnamed_21.AKEY_EVENT_FLAG_CANCELED_LONG_PRESS);
pub const AKEY_EVENT_FLAG_TRACKING = @enumToInt(enum_unnamed_21.AKEY_EVENT_FLAG_TRACKING);
pub const AKEY_EVENT_FLAG_FALLBACK = @enumToInt(enum_unnamed_21.AKEY_EVENT_FLAG_FALLBACK);
const enum_unnamed_21 = extern enum(c_int) {
    AKEY_EVENT_FLAG_WOKE_HERE = 1,
    AKEY_EVENT_FLAG_SOFT_KEYBOARD = 2,
    AKEY_EVENT_FLAG_KEEP_TOUCH_MODE = 4,
    AKEY_EVENT_FLAG_FROM_SYSTEM = 8,
    AKEY_EVENT_FLAG_EDITOR_ACTION = 16,
    AKEY_EVENT_FLAG_CANCELED = 32,
    AKEY_EVENT_FLAG_VIRTUAL_HARD_KEY = 64,
    AKEY_EVENT_FLAG_LONG_PRESS = 128,
    AKEY_EVENT_FLAG_CANCELED_LONG_PRESS = 256,
    AKEY_EVENT_FLAG_TRACKING = 512,
    AKEY_EVENT_FLAG_FALLBACK = 1024,
    _,
};
pub const AMOTION_EVENT_ACTION_MASK = @enumToInt(AMotionEventActionType.AMOTION_EVENT_ACTION_MASK);
pub const AMOTION_EVENT_ACTION_POINTER_INDEX_MASK = @enumToInt(AMotionEventActionType.AMOTION_EVENT_ACTION_POINTER_INDEX_MASK);
pub const AMOTION_EVENT_ACTION_DOWN = @enumToInt(AMotionEventActionType.AMOTION_EVENT_ACTION_DOWN);
pub const AMOTION_EVENT_ACTION_UP = @enumToInt(AMotionEventActionType.AMOTION_EVENT_ACTION_UP);
pub const AMOTION_EVENT_ACTION_MOVE = @enumToInt(AMotionEventActionType.AMOTION_EVENT_ACTION_MOVE);
pub const AMOTION_EVENT_ACTION_CANCEL = @enumToInt(AMotionEventActionType.AMOTION_EVENT_ACTION_CANCEL);
pub const AMOTION_EVENT_ACTION_OUTSIDE = @enumToInt(AMotionEventActionType.AMOTION_EVENT_ACTION_OUTSIDE);
pub const AMOTION_EVENT_ACTION_POINTER_DOWN = @enumToInt(AMotionEventActionType.AMOTION_EVENT_ACTION_POINTER_DOWN);
pub const AMOTION_EVENT_ACTION_POINTER_UP = @enumToInt(AMotionEventActionType.AMOTION_EVENT_ACTION_POINTER_UP);
pub const AMOTION_EVENT_ACTION_HOVER_MOVE = @enumToInt(AMotionEventActionType.AMOTION_EVENT_ACTION_HOVER_MOVE);
pub const AMOTION_EVENT_ACTION_SCROLL = @enumToInt(AMotionEventActionType.AMOTION_EVENT_ACTION_SCROLL);
pub const AMOTION_EVENT_ACTION_HOVER_ENTER = @enumToInt(AMotionEventActionType.AMOTION_EVENT_ACTION_HOVER_ENTER);
pub const AMOTION_EVENT_ACTION_HOVER_EXIT = @enumToInt(AMotionEventActionType.AMOTION_EVENT_ACTION_HOVER_EXIT);
pub const AMOTION_EVENT_ACTION_BUTTON_PRESS = @enumToInt(AMotionEventActionType.AMOTION_EVENT_ACTION_BUTTON_PRESS);
pub const AMOTION_EVENT_ACTION_BUTTON_RELEASE = @enumToInt(AMotionEventActionType.AMOTION_EVENT_ACTION_BUTTON_RELEASE);
pub const AMotionEventActionType = extern enum(c_int) {
    AMOTION_EVENT_ACTION_MASK = 255,
    AMOTION_EVENT_ACTION_POINTER_INDEX_MASK = 65280,
    AMOTION_EVENT_ACTION_DOWN = 0,
    AMOTION_EVENT_ACTION_UP = 1,
    AMOTION_EVENT_ACTION_MOVE = 2,
    AMOTION_EVENT_ACTION_CANCEL = 3,
    AMOTION_EVENT_ACTION_OUTSIDE = 4,
    AMOTION_EVENT_ACTION_POINTER_DOWN = 5,
    AMOTION_EVENT_ACTION_POINTER_UP = 6,
    AMOTION_EVENT_ACTION_HOVER_MOVE = 7,
    AMOTION_EVENT_ACTION_SCROLL = 8,
    AMOTION_EVENT_ACTION_HOVER_ENTER = 9,
    AMOTION_EVENT_ACTION_HOVER_EXIT = 10,
    AMOTION_EVENT_ACTION_BUTTON_PRESS = 11,
    AMOTION_EVENT_ACTION_BUTTON_RELEASE = 12,
    _,
};
pub const AMOTION_EVENT_FLAG_WINDOW_IS_OBSCURED = @enumToInt(enum_unnamed_23.AMOTION_EVENT_FLAG_WINDOW_IS_OBSCURED);
const enum_unnamed_23 = extern enum(c_int) {
    AMOTION_EVENT_FLAG_WINDOW_IS_OBSCURED = 1,
    _,
};
pub const AMOTION_EVENT_EDGE_FLAG_NONE = @enumToInt(enum_unnamed_24.AMOTION_EVENT_EDGE_FLAG_NONE);
pub const AMOTION_EVENT_EDGE_FLAG_TOP = @enumToInt(enum_unnamed_24.AMOTION_EVENT_EDGE_FLAG_TOP);
pub const AMOTION_EVENT_EDGE_FLAG_BOTTOM = @enumToInt(enum_unnamed_24.AMOTION_EVENT_EDGE_FLAG_BOTTOM);
pub const AMOTION_EVENT_EDGE_FLAG_LEFT = @enumToInt(enum_unnamed_24.AMOTION_EVENT_EDGE_FLAG_LEFT);
pub const AMOTION_EVENT_EDGE_FLAG_RIGHT = @enumToInt(enum_unnamed_24.AMOTION_EVENT_EDGE_FLAG_RIGHT);
const enum_unnamed_24 = extern enum(c_int) {
    AMOTION_EVENT_EDGE_FLAG_NONE = 0,
    AMOTION_EVENT_EDGE_FLAG_TOP = 1,
    AMOTION_EVENT_EDGE_FLAG_BOTTOM = 2,
    AMOTION_EVENT_EDGE_FLAG_LEFT = 4,
    AMOTION_EVENT_EDGE_FLAG_RIGHT = 8,
    _,
};
pub const AMOTION_EVENT_AXIS_X = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_X);
pub const AMOTION_EVENT_AXIS_Y = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_Y);
pub const AMOTION_EVENT_AXIS_PRESSURE = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_PRESSURE);
pub const AMOTION_EVENT_AXIS_SIZE = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_SIZE);
pub const AMOTION_EVENT_AXIS_TOUCH_MAJOR = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_TOUCH_MAJOR);
pub const AMOTION_EVENT_AXIS_TOUCH_MINOR = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_TOUCH_MINOR);
pub const AMOTION_EVENT_AXIS_TOOL_MAJOR = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_TOOL_MAJOR);
pub const AMOTION_EVENT_AXIS_TOOL_MINOR = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_TOOL_MINOR);
pub const AMOTION_EVENT_AXIS_ORIENTATION = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_ORIENTATION);
pub const AMOTION_EVENT_AXIS_VSCROLL = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_VSCROLL);
pub const AMOTION_EVENT_AXIS_HSCROLL = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_HSCROLL);
pub const AMOTION_EVENT_AXIS_Z = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_Z);
pub const AMOTION_EVENT_AXIS_RX = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_RX);
pub const AMOTION_EVENT_AXIS_RY = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_RY);
pub const AMOTION_EVENT_AXIS_RZ = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_RZ);
pub const AMOTION_EVENT_AXIS_HAT_X = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_HAT_X);
pub const AMOTION_EVENT_AXIS_HAT_Y = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_HAT_Y);
pub const AMOTION_EVENT_AXIS_LTRIGGER = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_LTRIGGER);
pub const AMOTION_EVENT_AXIS_RTRIGGER = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_RTRIGGER);
pub const AMOTION_EVENT_AXIS_THROTTLE = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_THROTTLE);
pub const AMOTION_EVENT_AXIS_RUDDER = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_RUDDER);
pub const AMOTION_EVENT_AXIS_WHEEL = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_WHEEL);
pub const AMOTION_EVENT_AXIS_GAS = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_GAS);
pub const AMOTION_EVENT_AXIS_BRAKE = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_BRAKE);
pub const AMOTION_EVENT_AXIS_DISTANCE = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_DISTANCE);
pub const AMOTION_EVENT_AXIS_TILT = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_TILT);
pub const AMOTION_EVENT_AXIS_SCROLL = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_SCROLL);
pub const AMOTION_EVENT_AXIS_RELATIVE_X = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_RELATIVE_X);
pub const AMOTION_EVENT_AXIS_RELATIVE_Y = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_RELATIVE_Y);
pub const AMOTION_EVENT_AXIS_GENERIC_1 = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_GENERIC_1);
pub const AMOTION_EVENT_AXIS_GENERIC_2 = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_GENERIC_2);
pub const AMOTION_EVENT_AXIS_GENERIC_3 = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_GENERIC_3);
pub const AMOTION_EVENT_AXIS_GENERIC_4 = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_GENERIC_4);
pub const AMOTION_EVENT_AXIS_GENERIC_5 = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_GENERIC_5);
pub const AMOTION_EVENT_AXIS_GENERIC_6 = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_GENERIC_6);
pub const AMOTION_EVENT_AXIS_GENERIC_7 = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_GENERIC_7);
pub const AMOTION_EVENT_AXIS_GENERIC_8 = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_GENERIC_8);
pub const AMOTION_EVENT_AXIS_GENERIC_9 = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_GENERIC_9);
pub const AMOTION_EVENT_AXIS_GENERIC_10 = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_GENERIC_10);
pub const AMOTION_EVENT_AXIS_GENERIC_11 = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_GENERIC_11);
pub const AMOTION_EVENT_AXIS_GENERIC_12 = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_GENERIC_12);
pub const AMOTION_EVENT_AXIS_GENERIC_13 = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_GENERIC_13);
pub const AMOTION_EVENT_AXIS_GENERIC_14 = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_GENERIC_14);
pub const AMOTION_EVENT_AXIS_GENERIC_15 = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_GENERIC_15);
pub const AMOTION_EVENT_AXIS_GENERIC_16 = @enumToInt(enum_unnamed_25.AMOTION_EVENT_AXIS_GENERIC_16);
const enum_unnamed_25 = extern enum(c_int) {
    AMOTION_EVENT_AXIS_X = 0,
    AMOTION_EVENT_AXIS_Y = 1,
    AMOTION_EVENT_AXIS_PRESSURE = 2,
    AMOTION_EVENT_AXIS_SIZE = 3,
    AMOTION_EVENT_AXIS_TOUCH_MAJOR = 4,
    AMOTION_EVENT_AXIS_TOUCH_MINOR = 5,
    AMOTION_EVENT_AXIS_TOOL_MAJOR = 6,
    AMOTION_EVENT_AXIS_TOOL_MINOR = 7,
    AMOTION_EVENT_AXIS_ORIENTATION = 8,
    AMOTION_EVENT_AXIS_VSCROLL = 9,
    AMOTION_EVENT_AXIS_HSCROLL = 10,
    AMOTION_EVENT_AXIS_Z = 11,
    AMOTION_EVENT_AXIS_RX = 12,
    AMOTION_EVENT_AXIS_RY = 13,
    AMOTION_EVENT_AXIS_RZ = 14,
    AMOTION_EVENT_AXIS_HAT_X = 15,
    AMOTION_EVENT_AXIS_HAT_Y = 16,
    AMOTION_EVENT_AXIS_LTRIGGER = 17,
    AMOTION_EVENT_AXIS_RTRIGGER = 18,
    AMOTION_EVENT_AXIS_THROTTLE = 19,
    AMOTION_EVENT_AXIS_RUDDER = 20,
    AMOTION_EVENT_AXIS_WHEEL = 21,
    AMOTION_EVENT_AXIS_GAS = 22,
    AMOTION_EVENT_AXIS_BRAKE = 23,
    AMOTION_EVENT_AXIS_DISTANCE = 24,
    AMOTION_EVENT_AXIS_TILT = 25,
    AMOTION_EVENT_AXIS_SCROLL = 26,
    AMOTION_EVENT_AXIS_RELATIVE_X = 27,
    AMOTION_EVENT_AXIS_RELATIVE_Y = 28,
    AMOTION_EVENT_AXIS_GENERIC_1 = 32,
    AMOTION_EVENT_AXIS_GENERIC_2 = 33,
    AMOTION_EVENT_AXIS_GENERIC_3 = 34,
    AMOTION_EVENT_AXIS_GENERIC_4 = 35,
    AMOTION_EVENT_AXIS_GENERIC_5 = 36,
    AMOTION_EVENT_AXIS_GENERIC_6 = 37,
    AMOTION_EVENT_AXIS_GENERIC_7 = 38,
    AMOTION_EVENT_AXIS_GENERIC_8 = 39,
    AMOTION_EVENT_AXIS_GENERIC_9 = 40,
    AMOTION_EVENT_AXIS_GENERIC_10 = 41,
    AMOTION_EVENT_AXIS_GENERIC_11 = 42,
    AMOTION_EVENT_AXIS_GENERIC_12 = 43,
    AMOTION_EVENT_AXIS_GENERIC_13 = 44,
    AMOTION_EVENT_AXIS_GENERIC_14 = 45,
    AMOTION_EVENT_AXIS_GENERIC_15 = 46,
    AMOTION_EVENT_AXIS_GENERIC_16 = 47,
    _,
};
pub const AMOTION_EVENT_BUTTON_PRIMARY = @enumToInt(enum_unnamed_26.AMOTION_EVENT_BUTTON_PRIMARY);
pub const AMOTION_EVENT_BUTTON_SECONDARY = @enumToInt(enum_unnamed_26.AMOTION_EVENT_BUTTON_SECONDARY);
pub const AMOTION_EVENT_BUTTON_TERTIARY = @enumToInt(enum_unnamed_26.AMOTION_EVENT_BUTTON_TERTIARY);
pub const AMOTION_EVENT_BUTTON_BACK = @enumToInt(enum_unnamed_26.AMOTION_EVENT_BUTTON_BACK);
pub const AMOTION_EVENT_BUTTON_FORWARD = @enumToInt(enum_unnamed_26.AMOTION_EVENT_BUTTON_FORWARD);
pub const AMOTION_EVENT_BUTTON_STYLUS_PRIMARY = @enumToInt(enum_unnamed_26.AMOTION_EVENT_BUTTON_STYLUS_PRIMARY);
pub const AMOTION_EVENT_BUTTON_STYLUS_SECONDARY = @enumToInt(enum_unnamed_26.AMOTION_EVENT_BUTTON_STYLUS_SECONDARY);
const enum_unnamed_26 = extern enum(c_int) {
    AMOTION_EVENT_BUTTON_PRIMARY = 1,
    AMOTION_EVENT_BUTTON_SECONDARY = 2,
    AMOTION_EVENT_BUTTON_TERTIARY = 4,
    AMOTION_EVENT_BUTTON_BACK = 8,
    AMOTION_EVENT_BUTTON_FORWARD = 16,
    AMOTION_EVENT_BUTTON_STYLUS_PRIMARY = 32,
    AMOTION_EVENT_BUTTON_STYLUS_SECONDARY = 64,
    _,
};
pub const AMOTION_EVENT_TOOL_TYPE_UNKNOWN = @enumToInt(enum_unnamed_27.AMOTION_EVENT_TOOL_TYPE_UNKNOWN);
pub const AMOTION_EVENT_TOOL_TYPE_FINGER = @enumToInt(enum_unnamed_27.AMOTION_EVENT_TOOL_TYPE_FINGER);
pub const AMOTION_EVENT_TOOL_TYPE_STYLUS = @enumToInt(enum_unnamed_27.AMOTION_EVENT_TOOL_TYPE_STYLUS);
pub const AMOTION_EVENT_TOOL_TYPE_MOUSE = @enumToInt(enum_unnamed_27.AMOTION_EVENT_TOOL_TYPE_MOUSE);
pub const AMOTION_EVENT_TOOL_TYPE_ERASER = @enumToInt(enum_unnamed_27.AMOTION_EVENT_TOOL_TYPE_ERASER);
const enum_unnamed_27 = extern enum(c_int) {
    AMOTION_EVENT_TOOL_TYPE_UNKNOWN = 0,
    AMOTION_EVENT_TOOL_TYPE_FINGER = 1,
    AMOTION_EVENT_TOOL_TYPE_STYLUS = 2,
    AMOTION_EVENT_TOOL_TYPE_MOUSE = 3,
    AMOTION_EVENT_TOOL_TYPE_ERASER = 4,
    _,
};
pub const AINPUT_SOURCE_CLASS_MASK = @enumToInt(enum_unnamed_28.AINPUT_SOURCE_CLASS_MASK);
pub const AINPUT_SOURCE_CLASS_NONE = @enumToInt(enum_unnamed_28.AINPUT_SOURCE_CLASS_NONE);
pub const AINPUT_SOURCE_CLASS_BUTTON = @enumToInt(enum_unnamed_28.AINPUT_SOURCE_CLASS_BUTTON);
pub const AINPUT_SOURCE_CLASS_POINTER = @enumToInt(enum_unnamed_28.AINPUT_SOURCE_CLASS_POINTER);
pub const AINPUT_SOURCE_CLASS_NAVIGATION = @enumToInt(enum_unnamed_28.AINPUT_SOURCE_CLASS_NAVIGATION);
pub const AINPUT_SOURCE_CLASS_POSITION = @enumToInt(enum_unnamed_28.AINPUT_SOURCE_CLASS_POSITION);
pub const AINPUT_SOURCE_CLASS_JOYSTICK = @enumToInt(enum_unnamed_28.AINPUT_SOURCE_CLASS_JOYSTICK);
const enum_unnamed_28 = extern enum(c_int) {
    AINPUT_SOURCE_CLASS_MASK = 255,
    AINPUT_SOURCE_CLASS_NONE = 0,
    AINPUT_SOURCE_CLASS_BUTTON = 1,
    AINPUT_SOURCE_CLASS_POINTER = 2,
    AINPUT_SOURCE_CLASS_NAVIGATION = 4,
    AINPUT_SOURCE_CLASS_POSITION = 8,
    AINPUT_SOURCE_CLASS_JOYSTICK = 16,
    _,
};
pub const AINPUT_SOURCE_UNKNOWN = @enumToInt(enum_unnamed_29.AINPUT_SOURCE_UNKNOWN);
pub const AINPUT_SOURCE_KEYBOARD = @enumToInt(enum_unnamed_29.AINPUT_SOURCE_KEYBOARD);
pub const AINPUT_SOURCE_DPAD = @enumToInt(enum_unnamed_29.AINPUT_SOURCE_DPAD);
pub const AINPUT_SOURCE_GAMEPAD = @enumToInt(enum_unnamed_29.AINPUT_SOURCE_GAMEPAD);
pub const AINPUT_SOURCE_TOUCHSCREEN = @enumToInt(enum_unnamed_29.AINPUT_SOURCE_TOUCHSCREEN);
pub const AINPUT_SOURCE_MOUSE = @enumToInt(enum_unnamed_29.AINPUT_SOURCE_MOUSE);
pub const AINPUT_SOURCE_STYLUS = @enumToInt(enum_unnamed_29.AINPUT_SOURCE_STYLUS);
pub const AINPUT_SOURCE_BLUETOOTH_STYLUS = @enumToInt(enum_unnamed_29.AINPUT_SOURCE_BLUETOOTH_STYLUS);
pub const AINPUT_SOURCE_TRACKBALL = @enumToInt(enum_unnamed_29.AINPUT_SOURCE_TRACKBALL);
pub const AINPUT_SOURCE_MOUSE_RELATIVE = @enumToInt(enum_unnamed_29.AINPUT_SOURCE_MOUSE_RELATIVE);
pub const AINPUT_SOURCE_TOUCHPAD = @enumToInt(enum_unnamed_29.AINPUT_SOURCE_TOUCHPAD);
pub const AINPUT_SOURCE_TOUCH_NAVIGATION = @enumToInt(enum_unnamed_29.AINPUT_SOURCE_TOUCH_NAVIGATION);
pub const AINPUT_SOURCE_JOYSTICK = @enumToInt(enum_unnamed_29.AINPUT_SOURCE_JOYSTICK);
pub const AINPUT_SOURCE_ROTARY_ENCODER = @enumToInt(enum_unnamed_29.AINPUT_SOURCE_ROTARY_ENCODER);
pub const AINPUT_SOURCE_ANY = @enumToInt(enum_unnamed_29.AINPUT_SOURCE_ANY);
const enum_unnamed_29 = extern enum(c_int) {
    AINPUT_SOURCE_UNKNOWN = 0,
    AINPUT_SOURCE_KEYBOARD = 257,
    AINPUT_SOURCE_DPAD = 513,
    AINPUT_SOURCE_GAMEPAD = 1025,
    AINPUT_SOURCE_TOUCHSCREEN = 4098,
    AINPUT_SOURCE_MOUSE = 8194,
    AINPUT_SOURCE_STYLUS = 16386,
    AINPUT_SOURCE_BLUETOOTH_STYLUS = 49154,
    AINPUT_SOURCE_TRACKBALL = 65540,
    AINPUT_SOURCE_MOUSE_RELATIVE = 131076,
    AINPUT_SOURCE_TOUCHPAD = 1048584,
    AINPUT_SOURCE_TOUCH_NAVIGATION = 2097152,
    AINPUT_SOURCE_JOYSTICK = 16777232,
    AINPUT_SOURCE_ROTARY_ENCODER = 4194304,
    AINPUT_SOURCE_ANY = 4294967040,
    _,
};
pub const AINPUT_KEYBOARD_TYPE_NONE = @enumToInt(enum_unnamed_30.AINPUT_KEYBOARD_TYPE_NONE);
pub const AINPUT_KEYBOARD_TYPE_NON_ALPHABETIC = @enumToInt(enum_unnamed_30.AINPUT_KEYBOARD_TYPE_NON_ALPHABETIC);
pub const AINPUT_KEYBOARD_TYPE_ALPHABETIC = @enumToInt(enum_unnamed_30.AINPUT_KEYBOARD_TYPE_ALPHABETIC);
const enum_unnamed_30 = extern enum(c_int) {
    AINPUT_KEYBOARD_TYPE_NONE = 0,
    AINPUT_KEYBOARD_TYPE_NON_ALPHABETIC = 1,
    AINPUT_KEYBOARD_TYPE_ALPHABETIC = 2,
    _,
};
pub const AINPUT_MOTION_RANGE_X = @enumToInt(enum_unnamed_31.AINPUT_MOTION_RANGE_X);
pub const AINPUT_MOTION_RANGE_Y = @enumToInt(enum_unnamed_31.AINPUT_MOTION_RANGE_Y);
pub const AINPUT_MOTION_RANGE_PRESSURE = @enumToInt(enum_unnamed_31.AINPUT_MOTION_RANGE_PRESSURE);
pub const AINPUT_MOTION_RANGE_SIZE = @enumToInt(enum_unnamed_31.AINPUT_MOTION_RANGE_SIZE);
pub const AINPUT_MOTION_RANGE_TOUCH_MAJOR = @enumToInt(enum_unnamed_31.AINPUT_MOTION_RANGE_TOUCH_MAJOR);
pub const AINPUT_MOTION_RANGE_TOUCH_MINOR = @enumToInt(enum_unnamed_31.AINPUT_MOTION_RANGE_TOUCH_MINOR);
pub const AINPUT_MOTION_RANGE_TOOL_MAJOR = @enumToInt(enum_unnamed_31.AINPUT_MOTION_RANGE_TOOL_MAJOR);
pub const AINPUT_MOTION_RANGE_TOOL_MINOR = @enumToInt(enum_unnamed_31.AINPUT_MOTION_RANGE_TOOL_MINOR);
pub const AINPUT_MOTION_RANGE_ORIENTATION = @enumToInt(enum_unnamed_31.AINPUT_MOTION_RANGE_ORIENTATION);
const enum_unnamed_31 = extern enum(c_int) {
    AINPUT_MOTION_RANGE_X = 0,
    AINPUT_MOTION_RANGE_Y = 1,
    AINPUT_MOTION_RANGE_PRESSURE = 2,
    AINPUT_MOTION_RANGE_SIZE = 3,
    AINPUT_MOTION_RANGE_TOUCH_MAJOR = 4,
    AINPUT_MOTION_RANGE_TOUCH_MINOR = 5,
    AINPUT_MOTION_RANGE_TOOL_MAJOR = 6,
    AINPUT_MOTION_RANGE_TOOL_MINOR = 7,
    AINPUT_MOTION_RANGE_ORIENTATION = 8,
    _,
};
pub extern fn AInputEvent_getType(event: ?*const AInputEvent) i32;
pub extern fn AInputEvent_getDeviceId(event: ?*const AInputEvent) i32;
pub extern fn AInputEvent_getSource(event: ?*const AInputEvent) i32;
pub extern fn AKeyEvent_getAction(key_event: ?*const AInputEvent) i32;
pub extern fn AKeyEvent_getFlags(key_event: ?*const AInputEvent) i32;
pub extern fn AKeyEvent_getKeyCode(key_event: ?*const AInputEvent) i32;
pub extern fn AKeyEvent_getScanCode(key_event: ?*const AInputEvent) i32;
pub extern fn AKeyEvent_getMetaState(key_event: ?*const AInputEvent) i32;
pub extern fn AKeyEvent_getRepeatCount(key_event: ?*const AInputEvent) i32;
pub extern fn AKeyEvent_getDownTime(key_event: ?*const AInputEvent) i64;
pub extern fn AKeyEvent_getEventTime(key_event: ?*const AInputEvent) i64;
pub extern fn AMotionEvent_getAction(motion_event: ?*const AInputEvent) i32;
pub extern fn AMotionEvent_getFlags(motion_event: ?*const AInputEvent) i32;
pub extern fn AMotionEvent_getMetaState(motion_event: ?*const AInputEvent) i32;
pub extern fn AMotionEvent_getButtonState(motion_event: ?*const AInputEvent) i32;
pub extern fn AMotionEvent_getEdgeFlags(motion_event: ?*const AInputEvent) i32;
pub extern fn AMotionEvent_getDownTime(motion_event: ?*const AInputEvent) i64;
pub extern fn AMotionEvent_getEventTime(motion_event: ?*const AInputEvent) i64;
pub extern fn AMotionEvent_getXOffset(motion_event: ?*const AInputEvent) f32;
pub extern fn AMotionEvent_getYOffset(motion_event: ?*const AInputEvent) f32;
pub extern fn AMotionEvent_getXPrecision(motion_event: ?*const AInputEvent) f32;
pub extern fn AMotionEvent_getYPrecision(motion_event: ?*const AInputEvent) f32;
pub extern fn AMotionEvent_getPointerCount(motion_event: ?*const AInputEvent) usize;
pub extern fn AMotionEvent_getPointerId(motion_event: ?*const AInputEvent, pointer_index: usize) i32;
pub extern fn AMotionEvent_getToolType(motion_event: ?*const AInputEvent, pointer_index: usize) i32;
pub extern fn AMotionEvent_getRawX(motion_event: ?*const AInputEvent, pointer_index: usize) f32;
pub extern fn AMotionEvent_getRawY(motion_event: ?*const AInputEvent, pointer_index: usize) f32;
pub extern fn AMotionEvent_getX(motion_event: ?*const AInputEvent, pointer_index: usize) f32;
pub extern fn AMotionEvent_getY(motion_event: ?*const AInputEvent, pointer_index: usize) f32;
pub extern fn AMotionEvent_getPressure(motion_event: ?*const AInputEvent, pointer_index: usize) f32;
pub extern fn AMotionEvent_getSize(motion_event: ?*const AInputEvent, pointer_index: usize) f32;
pub extern fn AMotionEvent_getTouchMajor(motion_event: ?*const AInputEvent, pointer_index: usize) f32;
pub extern fn AMotionEvent_getTouchMinor(motion_event: ?*const AInputEvent, pointer_index: usize) f32;
pub extern fn AMotionEvent_getToolMajor(motion_event: ?*const AInputEvent, pointer_index: usize) f32;
pub extern fn AMotionEvent_getToolMinor(motion_event: ?*const AInputEvent, pointer_index: usize) f32;
pub extern fn AMotionEvent_getOrientation(motion_event: ?*const AInputEvent, pointer_index: usize) f32;
pub extern fn AMotionEvent_getAxisValue(motion_event: ?*const AInputEvent, axis: i32, pointer_index: usize) f32;
pub extern fn AMotionEvent_getHistorySize(motion_event: ?*const AInputEvent) usize;
pub extern fn AMotionEvent_getHistoricalEventTime(motion_event: ?*const AInputEvent, history_index: usize) i64;
pub extern fn AMotionEvent_getHistoricalRawX(motion_event: ?*const AInputEvent, pointer_index: usize, history_index: usize) f32;
pub extern fn AMotionEvent_getHistoricalRawY(motion_event: ?*const AInputEvent, pointer_index: usize, history_index: usize) f32;
pub extern fn AMotionEvent_getHistoricalX(motion_event: ?*const AInputEvent, pointer_index: usize, history_index: usize) f32;
pub extern fn AMotionEvent_getHistoricalY(motion_event: ?*const AInputEvent, pointer_index: usize, history_index: usize) f32;
pub extern fn AMotionEvent_getHistoricalPressure(motion_event: ?*const AInputEvent, pointer_index: usize, history_index: usize) f32;
pub extern fn AMotionEvent_getHistoricalSize(motion_event: ?*const AInputEvent, pointer_index: usize, history_index: usize) f32;
pub extern fn AMotionEvent_getHistoricalTouchMajor(motion_event: ?*const AInputEvent, pointer_index: usize, history_index: usize) f32;
pub extern fn AMotionEvent_getHistoricalTouchMinor(motion_event: ?*const AInputEvent, pointer_index: usize, history_index: usize) f32;
pub extern fn AMotionEvent_getHistoricalToolMajor(motion_event: ?*const AInputEvent, pointer_index: usize, history_index: usize) f32;
pub extern fn AMotionEvent_getHistoricalToolMinor(motion_event: ?*const AInputEvent, pointer_index: usize, history_index: usize) f32;
pub extern fn AMotionEvent_getHistoricalOrientation(motion_event: ?*const AInputEvent, pointer_index: usize, history_index: usize) f32;
pub extern fn AMotionEvent_getHistoricalAxisValue(motion_event: ?*const AInputEvent, axis: i32, pointer_index: usize, history_index: usize) f32;

pub const AInputQueue = opaque {};

pub extern fn AInputQueue_attachLooper(queue: ?*AInputQueue, looper: ?*ALooper, ident: c_int, callback: ALooper_callbackFunc, data: ?*c_void) void;
pub extern fn AInputQueue_detachLooper(queue: ?*AInputQueue) void;
pub extern fn AInputQueue_hasEvents(queue: ?*AInputQueue) i32;
pub extern fn AInputQueue_getEvent(queue: ?*AInputQueue, outEvent: *?*AInputEvent) i32;
pub extern fn AInputQueue_preDispatchEvent(queue: ?*AInputQueue, event: ?*AInputEvent) i32;
pub extern fn AInputQueue_finishEvent(queue: ?*AInputQueue, event: ?*AInputEvent, handled: c_int) void;
const struct_unnamed_32 = extern struct {
    quot: intmax_t,
    rem: intmax_t,
};
pub const imaxdiv_t = struct_unnamed_32;
pub extern fn imaxabs(__i: intmax_t) intmax_t;
pub extern fn imaxdiv(__numerator: intmax_t, __denominator: intmax_t) imaxdiv_t;
pub extern fn strtoimax(__s: [*c]const u8, __end_ptr: [*c][*c]u8, __base: c_int) intmax_t;
pub extern fn strtoumax(__s: [*c]const u8, __end_ptr: [*c][*c]u8, __base: c_int) uintmax_t;
pub extern fn wcstoimax(__s: [*c]const wchar_t, __end_ptr: [*c][*c]wchar_t, __base: c_int) intmax_t;
pub extern fn wcstoumax(__s: [*c]const wchar_t, __end_ptr: [*c][*c]wchar_t, __base: c_int) uintmax_t;
pub const ADATASPACE_UNKNOWN = @enumToInt(enum_ADataSpace.ADATASPACE_UNKNOWN);
pub const ADATASPACE_SCRGB_LINEAR = @enumToInt(enum_ADataSpace.ADATASPACE_SCRGB_LINEAR);
pub const ADATASPACE_SRGB = @enumToInt(enum_ADataSpace.ADATASPACE_SRGB);
pub const ADATASPACE_SCRGB = @enumToInt(enum_ADataSpace.ADATASPACE_SCRGB);
pub const ADATASPACE_DISPLAY_P3 = @enumToInt(enum_ADataSpace.ADATASPACE_DISPLAY_P3);
pub const ADATASPACE_BT2020_PQ = @enumToInt(enum_ADataSpace.ADATASPACE_BT2020_PQ);
pub const enum_ADataSpace = extern enum(c_int) {
    ADATASPACE_UNKNOWN = 0,
    ADATASPACE_SCRGB_LINEAR = 406913024,
    ADATASPACE_SRGB = 142671872,
    ADATASPACE_SCRGB = 411107328,
    ADATASPACE_DISPLAY_P3 = 143261696,
    ADATASPACE_BT2020_PQ = 163971072,
    _,
};
pub const struct_ARect = extern struct {
    left: i32,
    top: i32,
    right: i32,
    bottom: i32,
};
pub const ARect = struct_ARect;
pub const AHARDWAREBUFFER_FORMAT_R8G8B8A8_UNORM = @enumToInt(enum_AHardwareBuffer_Format.AHARDWAREBUFFER_FORMAT_R8G8B8A8_UNORM);
pub const AHARDWAREBUFFER_FORMAT_R8G8B8X8_UNORM = @enumToInt(enum_AHardwareBuffer_Format.AHARDWAREBUFFER_FORMAT_R8G8B8X8_UNORM);
pub const AHARDWAREBUFFER_FORMAT_R8G8B8_UNORM = @enumToInt(enum_AHardwareBuffer_Format.AHARDWAREBUFFER_FORMAT_R8G8B8_UNORM);
pub const AHARDWAREBUFFER_FORMAT_R5G6B5_UNORM = @enumToInt(enum_AHardwareBuffer_Format.AHARDWAREBUFFER_FORMAT_R5G6B5_UNORM);
pub const AHARDWAREBUFFER_FORMAT_R16G16B16A16_FLOAT = @enumToInt(enum_AHardwareBuffer_Format.AHARDWAREBUFFER_FORMAT_R16G16B16A16_FLOAT);
pub const AHARDWAREBUFFER_FORMAT_R10G10B10A2_UNORM = @enumToInt(enum_AHardwareBuffer_Format.AHARDWAREBUFFER_FORMAT_R10G10B10A2_UNORM);
pub const AHARDWAREBUFFER_FORMAT_BLOB = @enumToInt(enum_AHardwareBuffer_Format.AHARDWAREBUFFER_FORMAT_BLOB);
pub const AHARDWAREBUFFER_FORMAT_D16_UNORM = @enumToInt(enum_AHardwareBuffer_Format.AHARDWAREBUFFER_FORMAT_D16_UNORM);
pub const AHARDWAREBUFFER_FORMAT_D24_UNORM = @enumToInt(enum_AHardwareBuffer_Format.AHARDWAREBUFFER_FORMAT_D24_UNORM);
pub const AHARDWAREBUFFER_FORMAT_D24_UNORM_S8_UINT = @enumToInt(enum_AHardwareBuffer_Format.AHARDWAREBUFFER_FORMAT_D24_UNORM_S8_UINT);
pub const AHARDWAREBUFFER_FORMAT_D32_FLOAT = @enumToInt(enum_AHardwareBuffer_Format.AHARDWAREBUFFER_FORMAT_D32_FLOAT);
pub const AHARDWAREBUFFER_FORMAT_D32_FLOAT_S8_UINT = @enumToInt(enum_AHardwareBuffer_Format.AHARDWAREBUFFER_FORMAT_D32_FLOAT_S8_UINT);
pub const AHARDWAREBUFFER_FORMAT_S8_UINT = @enumToInt(enum_AHardwareBuffer_Format.AHARDWAREBUFFER_FORMAT_S8_UINT);
pub const AHARDWAREBUFFER_FORMAT_Y8Cb8Cr8_420 = @enumToInt(enum_AHardwareBuffer_Format.AHARDWAREBUFFER_FORMAT_Y8Cb8Cr8_420);
pub const enum_AHardwareBuffer_Format = extern enum(c_int) {
    AHARDWAREBUFFER_FORMAT_R8G8B8A8_UNORM = 1,
    AHARDWAREBUFFER_FORMAT_R8G8B8X8_UNORM = 2,
    AHARDWAREBUFFER_FORMAT_R8G8B8_UNORM = 3,
    AHARDWAREBUFFER_FORMAT_R5G6B5_UNORM = 4,
    AHARDWAREBUFFER_FORMAT_R16G16B16A16_FLOAT = 22,
    AHARDWAREBUFFER_FORMAT_R10G10B10A2_UNORM = 43,
    AHARDWAREBUFFER_FORMAT_BLOB = 33,
    AHARDWAREBUFFER_FORMAT_D16_UNORM = 48,
    AHARDWAREBUFFER_FORMAT_D24_UNORM = 49,
    AHARDWAREBUFFER_FORMAT_D24_UNORM_S8_UINT = 50,
    AHARDWAREBUFFER_FORMAT_D32_FLOAT = 51,
    AHARDWAREBUFFER_FORMAT_D32_FLOAT_S8_UINT = 52,
    AHARDWAREBUFFER_FORMAT_S8_UINT = 53,
    AHARDWAREBUFFER_FORMAT_Y8Cb8Cr8_420 = 35,
    _,
};
pub const AHARDWAREBUFFER_USAGE_CPU_READ_NEVER = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_CPU_READ_NEVER);
pub const AHARDWAREBUFFER_USAGE_CPU_READ_RARELY = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_CPU_READ_RARELY);
pub const AHARDWAREBUFFER_USAGE_CPU_READ_OFTEN = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_CPU_READ_OFTEN);
pub const AHARDWAREBUFFER_USAGE_CPU_READ_MASK = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_CPU_READ_MASK);
pub const AHARDWAREBUFFER_USAGE_CPU_WRITE_NEVER = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_CPU_WRITE_NEVER);
pub const AHARDWAREBUFFER_USAGE_CPU_WRITE_RARELY = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_CPU_WRITE_RARELY);
pub const AHARDWAREBUFFER_USAGE_CPU_WRITE_OFTEN = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_CPU_WRITE_OFTEN);
pub const AHARDWAREBUFFER_USAGE_CPU_WRITE_MASK = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_CPU_WRITE_MASK);
pub const AHARDWAREBUFFER_USAGE_GPU_SAMPLED_IMAGE = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_GPU_SAMPLED_IMAGE);
pub const AHARDWAREBUFFER_USAGE_GPU_FRAMEBUFFER = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_GPU_FRAMEBUFFER);
pub const AHARDWAREBUFFER_USAGE_GPU_COLOR_OUTPUT = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_GPU_COLOR_OUTPUT);
pub const AHARDWAREBUFFER_USAGE_COMPOSER_OVERLAY = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_COMPOSER_OVERLAY);
pub const AHARDWAREBUFFER_USAGE_PROTECTED_CONTENT = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_PROTECTED_CONTENT);
pub const AHARDWAREBUFFER_USAGE_VIDEO_ENCODE = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_VIDEO_ENCODE);
pub const AHARDWAREBUFFER_USAGE_SENSOR_DIRECT_DATA = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_SENSOR_DIRECT_DATA);
pub const AHARDWAREBUFFER_USAGE_GPU_DATA_BUFFER = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_GPU_DATA_BUFFER);
pub const AHARDWAREBUFFER_USAGE_GPU_CUBE_MAP = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_GPU_CUBE_MAP);
pub const AHARDWAREBUFFER_USAGE_GPU_MIPMAP_COMPLETE = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_GPU_MIPMAP_COMPLETE);
pub const AHARDWAREBUFFER_USAGE_VENDOR_0 = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_VENDOR_0);
pub const AHARDWAREBUFFER_USAGE_VENDOR_1 = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_VENDOR_1);
pub const AHARDWAREBUFFER_USAGE_VENDOR_2 = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_VENDOR_2);
pub const AHARDWAREBUFFER_USAGE_VENDOR_3 = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_VENDOR_3);
pub const AHARDWAREBUFFER_USAGE_VENDOR_4 = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_VENDOR_4);
pub const AHARDWAREBUFFER_USAGE_VENDOR_5 = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_VENDOR_5);
pub const AHARDWAREBUFFER_USAGE_VENDOR_6 = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_VENDOR_6);
pub const AHARDWAREBUFFER_USAGE_VENDOR_7 = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_VENDOR_7);
pub const AHARDWAREBUFFER_USAGE_VENDOR_8 = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_VENDOR_8);
pub const AHARDWAREBUFFER_USAGE_VENDOR_9 = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_VENDOR_9);
pub const AHARDWAREBUFFER_USAGE_VENDOR_10 = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_VENDOR_10);
pub const AHARDWAREBUFFER_USAGE_VENDOR_11 = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_VENDOR_11);
pub const AHARDWAREBUFFER_USAGE_VENDOR_12 = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_VENDOR_12);
pub const AHARDWAREBUFFER_USAGE_VENDOR_13 = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_VENDOR_13);
pub const AHARDWAREBUFFER_USAGE_VENDOR_14 = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_VENDOR_14);
pub const AHARDWAREBUFFER_USAGE_VENDOR_15 = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_VENDOR_15);
pub const AHARDWAREBUFFER_USAGE_VENDOR_16 = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_VENDOR_16);
pub const AHARDWAREBUFFER_USAGE_VENDOR_17 = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_VENDOR_17);
pub const AHARDWAREBUFFER_USAGE_VENDOR_18 = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_VENDOR_18);
pub const AHARDWAREBUFFER_USAGE_VENDOR_19 = @enumToInt(enum_AHardwareBuffer_UsageFlags.AHARDWAREBUFFER_USAGE_VENDOR_19);
pub const enum_AHardwareBuffer_UsageFlags = extern enum(c_ulong) {
    AHARDWAREBUFFER_USAGE_CPU_READ_NEVER = 0,
    AHARDWAREBUFFER_USAGE_CPU_READ_RARELY = 2,
    AHARDWAREBUFFER_USAGE_CPU_READ_OFTEN = 3,
    AHARDWAREBUFFER_USAGE_CPU_READ_MASK = 15,
    AHARDWAREBUFFER_USAGE_CPU_WRITE_NEVER = 0,
    AHARDWAREBUFFER_USAGE_CPU_WRITE_RARELY = 32,
    AHARDWAREBUFFER_USAGE_CPU_WRITE_OFTEN = 48,
    AHARDWAREBUFFER_USAGE_CPU_WRITE_MASK = 240,
    AHARDWAREBUFFER_USAGE_GPU_SAMPLED_IMAGE = 256,
    AHARDWAREBUFFER_USAGE_GPU_FRAMEBUFFER = 512,
    AHARDWAREBUFFER_USAGE_GPU_COLOR_OUTPUT = 512,
    AHARDWAREBUFFER_USAGE_COMPOSER_OVERLAY = 2048,
    AHARDWAREBUFFER_USAGE_PROTECTED_CONTENT = 16384,
    AHARDWAREBUFFER_USAGE_VIDEO_ENCODE = 65536,
    AHARDWAREBUFFER_USAGE_SENSOR_DIRECT_DATA = 8388608,
    AHARDWAREBUFFER_USAGE_GPU_DATA_BUFFER = 16777216,
    AHARDWAREBUFFER_USAGE_GPU_CUBE_MAP = 33554432,
    AHARDWAREBUFFER_USAGE_GPU_MIPMAP_COMPLETE = 67108864,
    AHARDWAREBUFFER_USAGE_VENDOR_0 = 268435456,
    AHARDWAREBUFFER_USAGE_VENDOR_1 = 536870912,
    AHARDWAREBUFFER_USAGE_VENDOR_2 = 1073741824,
    AHARDWAREBUFFER_USAGE_VENDOR_3 = 2147483648,
    AHARDWAREBUFFER_USAGE_VENDOR_4 = 281474976710656,
    AHARDWAREBUFFER_USAGE_VENDOR_5 = 562949953421312,
    AHARDWAREBUFFER_USAGE_VENDOR_6 = 1125899906842624,
    AHARDWAREBUFFER_USAGE_VENDOR_7 = 2251799813685248,
    AHARDWAREBUFFER_USAGE_VENDOR_8 = 4503599627370496,
    AHARDWAREBUFFER_USAGE_VENDOR_9 = 9007199254740992,
    AHARDWAREBUFFER_USAGE_VENDOR_10 = 18014398509481984,
    AHARDWAREBUFFER_USAGE_VENDOR_11 = 36028797018963968,
    AHARDWAREBUFFER_USAGE_VENDOR_12 = 72057594037927936,
    AHARDWAREBUFFER_USAGE_VENDOR_13 = 144115188075855872,
    AHARDWAREBUFFER_USAGE_VENDOR_14 = 288230376151711744,
    AHARDWAREBUFFER_USAGE_VENDOR_15 = 576460752303423488,
    AHARDWAREBUFFER_USAGE_VENDOR_16 = 1152921504606846976,
    AHARDWAREBUFFER_USAGE_VENDOR_17 = 2305843009213693952,
    AHARDWAREBUFFER_USAGE_VENDOR_18 = 4611686018427387904,
    AHARDWAREBUFFER_USAGE_VENDOR_19 = 9223372036854775808,
    _,
};
pub const struct_AHardwareBuffer_Desc = extern struct {
    width: u32,
    height: u32,
    layers: u32,
    format: u32,
    usage: u64,
    stride: u32,
    rfu0: u32,
    rfu1: u64,
};
pub const AHardwareBuffer_Desc = struct_AHardwareBuffer_Desc;
pub const struct_AHardwareBuffer_Plane = extern struct {
    data: ?*c_void,
    pixelStride: u32,
    rowStride: u32,
};
pub const AHardwareBuffer_Plane = struct_AHardwareBuffer_Plane;
pub const struct_AHardwareBuffer_Planes = extern struct {
    planeCount: u32,
    planes: [4]AHardwareBuffer_Plane,
};
pub const AHardwareBuffer_Planes = struct_AHardwareBuffer_Planes;
pub const struct_AHardwareBuffer = opaque {};
pub const AHardwareBuffer = struct_AHardwareBuffer;
pub extern fn AHardwareBuffer_allocate(desc: [*c]const AHardwareBuffer_Desc, outBuffer: [*c]?*AHardwareBuffer) c_int;
pub extern fn AHardwareBuffer_acquire(buffer: ?*AHardwareBuffer) void;
pub extern fn AHardwareBuffer_release(buffer: ?*AHardwareBuffer) void;
pub extern fn AHardwareBuffer_describe(buffer: ?*const AHardwareBuffer, outDesc: [*c]AHardwareBuffer_Desc) void;
pub extern fn AHardwareBuffer_lock(buffer: ?*AHardwareBuffer, usage: u64, fence: i32, rect: [*c]const ARect, outVirtualAddress: [*c]?*c_void) c_int;
pub extern fn AHardwareBuffer_lockPlanes(buffer: ?*AHardwareBuffer, usage: u64, fence: i32, rect: [*c]const ARect, outPlanes: [*c]AHardwareBuffer_Planes) c_int;
pub extern fn AHardwareBuffer_unlock(buffer: ?*AHardwareBuffer, fence: [*c]i32) c_int;
pub extern fn AHardwareBuffer_sendHandleToUnixSocket(buffer: ?*const AHardwareBuffer, socketFd: c_int) c_int;
pub extern fn AHardwareBuffer_recvHandleFromUnixSocket(socketFd: c_int, outBuffer: [*c]?*AHardwareBuffer) c_int;
pub extern fn AHardwareBuffer_isSupported(desc: [*c]const AHardwareBuffer_Desc) c_int;
pub extern fn AHardwareBuffer_lockAndGetInfo(buffer: ?*AHardwareBuffer, usage: u64, fence: i32, rect: [*c]const ARect, outVirtualAddress: [*c]?*c_void, outBytesPerPixel: [*c]i32, outBytesPerStride: [*c]i32) c_int;
pub const WINDOW_FORMAT_RGBA_8888 = @enumToInt(enum_ANativeWindow_LegacyFormat.WINDOW_FORMAT_RGBA_8888);
pub const WINDOW_FORMAT_RGBX_8888 = @enumToInt(enum_ANativeWindow_LegacyFormat.WINDOW_FORMAT_RGBX_8888);
pub const WINDOW_FORMAT_RGB_565 = @enumToInt(enum_ANativeWindow_LegacyFormat.WINDOW_FORMAT_RGB_565);
pub const enum_ANativeWindow_LegacyFormat = extern enum(c_int) {
    WINDOW_FORMAT_RGBA_8888 = 1,
    WINDOW_FORMAT_RGBX_8888 = 2,
    WINDOW_FORMAT_RGB_565 = 4,
    _,
};
pub const ANATIVEWINDOW_TRANSFORM_IDENTITY = @enumToInt(enum_ANativeWindowTransform.ANATIVEWINDOW_TRANSFORM_IDENTITY);
pub const ANATIVEWINDOW_TRANSFORM_MIRROR_HORIZONTAL = @enumToInt(enum_ANativeWindowTransform.ANATIVEWINDOW_TRANSFORM_MIRROR_HORIZONTAL);
pub const ANATIVEWINDOW_TRANSFORM_MIRROR_VERTICAL = @enumToInt(enum_ANativeWindowTransform.ANATIVEWINDOW_TRANSFORM_MIRROR_VERTICAL);
pub const ANATIVEWINDOW_TRANSFORM_ROTATE_90 = @enumToInt(enum_ANativeWindowTransform.ANATIVEWINDOW_TRANSFORM_ROTATE_90);
pub const ANATIVEWINDOW_TRANSFORM_ROTATE_180 = @enumToInt(enum_ANativeWindowTransform.ANATIVEWINDOW_TRANSFORM_ROTATE_180);
pub const ANATIVEWINDOW_TRANSFORM_ROTATE_270 = @enumToInt(enum_ANativeWindowTransform.ANATIVEWINDOW_TRANSFORM_ROTATE_270);
pub const enum_ANativeWindowTransform = extern enum(c_int) {
    ANATIVEWINDOW_TRANSFORM_IDENTITY = 0,
    ANATIVEWINDOW_TRANSFORM_MIRROR_HORIZONTAL = 1,
    ANATIVEWINDOW_TRANSFORM_MIRROR_VERTICAL = 2,
    ANATIVEWINDOW_TRANSFORM_ROTATE_90 = 4,
    ANATIVEWINDOW_TRANSFORM_ROTATE_180 = 3,
    ANATIVEWINDOW_TRANSFORM_ROTATE_270 = 7,
    _,
};
pub const struct_ANativeWindow = opaque {};
pub const ANativeWindow = struct_ANativeWindow;
pub const struct_ANativeWindow_Buffer = extern struct {
    width: i32,
    height: i32,
    stride: i32,
    format: i32,
    bits: ?*c_void,
    reserved: [6]u32,
};
pub const ANativeWindow_Buffer = struct_ANativeWindow_Buffer;
pub extern fn ANativeWindow_acquire(window: ?*ANativeWindow) void;
pub extern fn ANativeWindow_release(window: ?*ANativeWindow) void;
pub extern fn ANativeWindow_getWidth(window: ?*ANativeWindow) i32;
pub extern fn ANativeWindow_getHeight(window: ?*ANativeWindow) i32;
pub extern fn ANativeWindow_getFormat(window: ?*ANativeWindow) i32;
pub extern fn ANativeWindow_setBuffersGeometry(window: ?*ANativeWindow, width: i32, height: i32, format: i32) i32;
pub extern fn ANativeWindow_lock(window: ?*ANativeWindow, outBuffer: [*c]ANativeWindow_Buffer, inOutDirtyBounds: [*c]ARect) i32;
pub extern fn ANativeWindow_unlockAndPost(window: ?*ANativeWindow) i32;
pub extern fn ANativeWindow_setBuffersTransform(window: ?*ANativeWindow, transform: i32) i32;
pub extern fn ANativeWindow_setBuffersDataSpace(window: ?*ANativeWindow, dataSpace: i32) i32;
pub extern fn ANativeWindow_getBuffersDataSpace(window: ?*ANativeWindow) i32;
pub const ANativeActivityCallbacks = extern struct {
    onStart: ?fn (*ANativeActivity) callconv(.C) void,
    onResume: ?fn (*ANativeActivity) callconv(.C) void,
    onSaveInstanceState: ?fn (*ANativeActivity, *usize) callconv(.C) ?[*]u8,
    onPause: ?fn (*ANativeActivity) callconv(.C) void,
    onStop: ?fn (*ANativeActivity) callconv(.C) void,
    onDestroy: ?fn (*ANativeActivity) callconv(.C) void,
    onWindowFocusChanged: ?fn (*ANativeActivity, c_int) callconv(.C) void,
    onNativeWindowCreated: ?fn (*ANativeActivity, *ANativeWindow) callconv(.C) void,
    onNativeWindowResized: ?fn (*ANativeActivity, *ANativeWindow) callconv(.C) void,
    onNativeWindowRedrawNeeded: ?fn (*ANativeActivity, *ANativeWindow) callconv(.C) void,
    onNativeWindowDestroyed: ?fn (*ANativeActivity, *ANativeWindow) callconv(.C) void,
    onInputQueueCreated: ?fn (*ANativeActivity, *AInputQueue) callconv(.C) void,
    onInputQueueDestroyed: ?fn (*ANativeActivity, *AInputQueue) callconv(.C) void,
    onContentRectChanged: ?fn (*ANativeActivity, *const ARect) callconv(.C) void,
    onConfigurationChanged: ?fn (*ANativeActivity) callconv(.C) void,
    onLowMemory: ?fn (*ANativeActivity) callconv(.C) void,
};
pub const ANativeActivity = extern struct {
    callbacks: *ANativeActivityCallbacks,
    vm: *JavaVM,
    env: *JNIEnv,
    clazz: jobject,
    internalDataPath: [*:0]const u8,
    externalDataPath: [*:0]const u8,
    sdkVersion: i32,
    instance: ?*c_void,
    assetManager: ?*AAssetManager,
    obbPath: [*:0]const u8,
};
pub const ANativeActivity_createFunc = fn ([*c]ANativeActivity, ?*c_void, usize) callconv(.C) void;

pub extern fn ANativeActivity_finish(activity: [*c]ANativeActivity) void;
pub extern fn ANativeActivity_setWindowFormat(activity: [*c]ANativeActivity, format: i32) void;
pub extern fn ANativeActivity_setWindowFlags(activity: [*c]ANativeActivity, addFlags: u32, removeFlags: u32) void;
pub const ANATIVEACTIVITY_SHOW_SOFT_INPUT_IMPLICIT = @enumToInt(enum_unnamed_33.ANATIVEACTIVITY_SHOW_SOFT_INPUT_IMPLICIT);
pub const ANATIVEACTIVITY_SHOW_SOFT_INPUT_FORCED = @enumToInt(enum_unnamed_33.ANATIVEACTIVITY_SHOW_SOFT_INPUT_FORCED);
const enum_unnamed_33 = extern enum(c_int) {
    ANATIVEACTIVITY_SHOW_SOFT_INPUT_IMPLICIT = 1,
    ANATIVEACTIVITY_SHOW_SOFT_INPUT_FORCED = 2,
    _,
};
pub extern fn ANativeActivity_showSoftInput(activity: [*c]ANativeActivity, flags: u32) void;
pub const ANATIVEACTIVITY_HIDE_SOFT_INPUT_IMPLICIT_ONLY = @enumToInt(enum_unnamed_34.ANATIVEACTIVITY_HIDE_SOFT_INPUT_IMPLICIT_ONLY);
pub const ANATIVEACTIVITY_HIDE_SOFT_INPUT_NOT_ALWAYS = @enumToInt(enum_unnamed_34.ANATIVEACTIVITY_HIDE_SOFT_INPUT_NOT_ALWAYS);
const enum_unnamed_34 = extern enum(c_int) {
    ANATIVEACTIVITY_HIDE_SOFT_INPUT_IMPLICIT_ONLY = 1,
    ANATIVEACTIVITY_HIDE_SOFT_INPUT_NOT_ALWAYS = 2,
    _,
};
pub extern fn ANativeActivity_hideSoftInput(activity: [*c]ANativeActivity, flags: u32) void;
pub const __INTMAX_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):62:9
pub const __UINTMAX_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_unsigned"); // (no file):66:9
pub const __PTRDIFF_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):73:9
pub const __INTPTR_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):77:9
pub const __SIZE_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_unsigned"); // (no file):81:9
pub const __WCHAR_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):87:9
pub const __WINT_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):89:9
pub const __CHAR16_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_short"); // (no file):93:9
pub const __CHAR32_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):94:9
pub const __UINTPTR_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_unsigned"); // (no file):96:9
pub const __FLT16_DENORM_MIN__ = @compileError("unable to translate C expr: unexpected token .IntegerLiteral"); // (no file):102:9
pub const __FLT16_EPSILON__ = @compileError("unable to translate C expr: unexpected token .IntegerLiteral"); // (no file):106:9
pub const __FLT16_MAX__ = @compileError("unable to translate C expr: unexpected token .IntegerLiteral"); // (no file):112:9
pub const __FLT16_MIN__ = @compileError("unable to translate C expr: unexpected token .IntegerLiteral"); // (no file):115:9
pub const __INT8_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_signed"); // (no file):163:9
pub const __INT64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):175:9
pub const __UINT8_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_char"); // (no file):179:9
pub const __UINT16_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_short"); // (no file):187:9
pub const __UINT32_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):195:9
pub const __UINT64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_unsigned"); // (no file):203:9
pub const __INT_LEAST8_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_signed"); // (no file):211:9
pub const __UINT_LEAST8_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_char"); // (no file):215:9
pub const __UINT_LEAST16_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_short"); // (no file):225:9
pub const __UINT_LEAST32_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):235:9
pub const __INT_LEAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):241:9
pub const __UINT_LEAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_unsigned"); // (no file):245:9
pub const __INT_FAST8_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_signed"); // (no file):251:9
pub const __UINT_FAST8_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_char"); // (no file):255:9
pub const __UINT_FAST16_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_short"); // (no file):265:9
pub const __UINT_FAST32_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):275:9
pub const __INT_FAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):281:9
pub const __UINT_FAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_unsigned"); // (no file):285:9
pub const __strong_alias = @compileError("unable to translate C expr: expected ',' or ')'"); // /home/felix/projects/android-hass/android-sdk/ndk/21.1.6352462/sysroot/usr/include/sys/cdefs.h:49:9
pub const __CONCAT1 = @compileError("unable to translate C expr: unexpected token .HashHash"); // /home/felix/projects/android-hass/android-sdk/ndk/21.1.6352462/sysroot/usr/include/sys/cdefs.h:71:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token .Hash"); // /home/felix/projects/android-hass/android-sdk/ndk/21.1.6352462/sysroot/usr/include/sys/cdefs.h:75:9
pub const __warnattr_strict = @compileError("unable to translate C expr: unexpected token .Nl"); // /home/felix/projects/android-hass/android-sdk/ndk/21.1.6352462/sysroot/usr/include/sys/cdefs.h:144:11
pub const __IDSTRING = @compileError("unable to translate C expr: unexpected token .Nl"); // /home/felix/projects/android-hass/android-sdk/ndk/21.1.6352462/sysroot/usr/include/sys/cdefs.h:152:9
pub const __COPYRIGHT = @compileError("unable to translate C expr: unexpected token .Nl"); // /home/felix/projects/android-hass/android-sdk/ndk/21.1.6352462/sysroot/usr/include/sys/cdefs.h:153:9
pub const __FBSDID = @compileError("unable to translate C expr: unexpected token .Nl"); // /home/felix/projects/android-hass/android-sdk/ndk/21.1.6352462/sysroot/usr/include/sys/cdefs.h:154:9
pub const __RCSID = @compileError("unable to translate C expr: unexpected token .Nl"); // /home/felix/projects/android-hass/android-sdk/ndk/21.1.6352462/sysroot/usr/include/sys/cdefs.h:155:9
pub const __SCCSID = @compileError("unable to translate C expr: unexpected token .Nl"); // /home/felix/projects/android-hass/android-sdk/ndk/21.1.6352462/sysroot/usr/include/sys/cdefs.h:156:9
pub const __RENAME_IF_FILE_OFFSET64 = @compileError("unable to translate C expr: unexpected token .Nl"); // /home/felix/projects/android-hass/android-sdk/ndk/21.1.6352462/sysroot/usr/include/sys/cdefs.h:189:11
pub const __pass_object_size_n = @compileError("unable to translate C expr: unexpected token .Nl"); // /home/felix/projects/android-hass/android-sdk/ndk/21.1.6352462/sysroot/usr/include/sys/cdefs.h:287:11
pub const __bos_trivially_ge = @compileError("unable to translate C expr: unexpected token .AngleBracketRightEqual"); // /home/felix/projects/android-hass/android-sdk/ndk/21.1.6352462/sysroot/usr/include/sys/cdefs.h:307:9
pub const __bos_trivially_gt = @compileError("unable to translate C expr: unexpected token .AngleBracketRight"); // /home/felix/projects/android-hass/android-sdk/ndk/21.1.6352462/sysroot/usr/include/sys/cdefs.h:308:9
pub const __RENAME = @compileError("unable to translate C expr: unexpected token .Hash"); // /home/felix/projects/android-hass/android-sdk/ndk/21.1.6352462/sysroot/usr/include/sys/cdefs.h:330:9
pub const __INTRODUCED_IN = @compileError("unable to translate C expr: expected ',' or ')'"); // /home/felix/projects/android-hass/android-sdk/ndk/21.1.6352462/sysroot/usr/include/android/versioning.h:19:9
pub const __DEPRECATED_IN = @compileError("unable to translate C expr: expected ',' or ')'"); // /home/felix/projects/android-hass/android-sdk/ndk/21.1.6352462/sysroot/usr/include/android/versioning.h:20:9
pub const __REMOVED_IN = @compileError("unable to translate C expr: expected ',' or ')'"); // /home/felix/projects/android-hass/android-sdk/ndk/21.1.6352462/sysroot/usr/include/android/versioning.h:21:9
pub const __INTRODUCED_IN_32 = @compileError("unable to translate C expr: expected ',' or ')'"); // /home/felix/projects/android-hass/android-sdk/ndk/21.1.6352462/sysroot/usr/include/android/versioning.h:22:9
pub const __INTRODUCED_IN_64 = @compileError("unable to translate C expr: expected ',' or ')'"); // /home/felix/projects/android-hass/android-sdk/ndk/21.1.6352462/sysroot/usr/include/android/versioning.h:23:9
pub const __INTRODUCED_IN_ARM = @compileError("unable to translate C expr: expected ',' or ')'"); // /home/felix/projects/android-hass/android-sdk/ndk/21.1.6352462/sysroot/usr/include/android/versioning.h:24:9
pub const __INTRODUCED_IN_X86 = @compileError("unable to translate C expr: expected ',' or ')'"); // /home/felix/projects/android-hass/android-sdk/ndk/21.1.6352462/sysroot/usr/include/android/versioning.h:25:9
pub const __INTRODUCED_IN_MIPS = @compileError("unable to translate C expr: expected ',' or ')'"); // /home/felix/projects/android-hass/android-sdk/ndk/21.1.6352462/sysroot/usr/include/android/versioning.h:26:9
pub const UINT32_C = @compileError("unable to translate C expr: unexpected token .HashHash"); // /home/felix/projects/android-hass/android-sdk/ndk/21.1.6352462/sysroot/usr/include/stdint.h:128:9
pub const INT64_C = @compileError("unable to translate C expr: unexpected token .HashHash"); // /home/felix/projects/android-hass/android-sdk/ndk/21.1.6352462/sysroot/usr/include/stdint.h:141:11
pub const UINT64_C = @compileError("unable to translate C expr: unexpected token .HashHash"); // /home/felix/projects/android-hass/android-sdk/ndk/21.1.6352462/sysroot/usr/include/stdint.h:142:11
pub const __llvm__ = 1;
pub const __clang__ = 1;
pub const __clang_major__ = 10;
pub const __clang_minor__ = 0;
pub const __clang_patchlevel__ = 0;
pub const __clang_version__ = "10.0.0 ";
pub const __GNUC__ = 4;
pub const __GNUC_MINOR__ = 2;
pub const __GNUC_PATCHLEVEL__ = 1;
pub const __GXX_ABI_VERSION = 1002;
pub const __ATOMIC_RELAXED = 0;
pub const __ATOMIC_CONSUME = 1;
pub const __ATOMIC_ACQUIRE = 2;
pub const __ATOMIC_RELEASE = 3;
pub const __ATOMIC_ACQ_REL = 4;
pub const __ATOMIC_SEQ_CST = 5;
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = 0;
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = 1;
pub const __OPENCL_MEMORY_SCOPE_DEVICE = 2;
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = 3;
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = 4;
pub const __PRAGMA_REDEFINE_EXTNAME = 1;
pub const __VERSION__ = "Clang 10.0.0 ";
pub const __OBJC_BOOL_IS_BOOL = 0;
pub const __CONSTANT_CFSTRINGS__ = 1;
pub const __OPTIMIZE__ = 1;
pub const __ORDER_LITTLE_ENDIAN__ = 1234;
pub const __ORDER_BIG_ENDIAN__ = 4321;
pub const __ORDER_PDP_ENDIAN__ = 3412;
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = 1;
pub const _LP64 = 1;
pub const __LP64__ = 1;
pub const __CHAR_BIT__ = 8;
pub const __SCHAR_MAX__ = 127;
pub const __SHRT_MAX__ = 32767;
pub const __INT_MAX__ = 2147483647;
pub const __LONG_MAX__ = @as(c_long, 9223372036854775807);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @as(c_uint, 4294967295);
pub const __WINT_MAX__ = @as(c_uint, 4294967295);
pub const __INTMAX_MAX__ = @as(c_long, 9223372036854775807);
pub const __SIZE_MAX__ = @as(c_ulong, 18446744073709551615);
pub const __UINTMAX_MAX__ = @as(c_ulong, 18446744073709551615);
pub const __PTRDIFF_MAX__ = @as(c_long, 9223372036854775807);
pub const __INTPTR_MAX__ = @as(c_long, 9223372036854775807);
pub const __UINTPTR_MAX__ = @as(c_ulong, 18446744073709551615);
pub const __SIZEOF_DOUBLE__ = 8;
pub const __SIZEOF_FLOAT__ = 4;
pub const __SIZEOF_INT__ = 4;
pub const __SIZEOF_LONG__ = 8;
pub const __SIZEOF_LONG_DOUBLE__ = 16;
pub const __SIZEOF_LONG_LONG__ = 8;
pub const __SIZEOF_POINTER__ = 8;
pub const __SIZEOF_SHORT__ = 2;
pub const __SIZEOF_PTRDIFF_T__ = 8;
pub const __SIZEOF_SIZE_T__ = 8;
pub const __SIZEOF_WCHAR_T__ = 4;
pub const __SIZEOF_WINT_T__ = 4;
pub const __SIZEOF_INT128__ = 16;
pub const __INTMAX_FMTd__ = "ld";
pub const __INTMAX_FMTi__ = "li";
pub const __INTMAX_C_SUFFIX__ = L;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __UINTMAX_C_SUFFIX__ = UL;
pub const __INTMAX_WIDTH__ = 64;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __PTRDIFF_WIDTH__ = 64;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __INTPTR_WIDTH__ = 64;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __SIZE_WIDTH__ = 64;
pub const __WCHAR_WIDTH__ = 32;
pub const __WINT_WIDTH__ = 32;
pub const __SIG_ATOMIC_WIDTH__ = 32;
pub const __SIG_ATOMIC_MAX__ = 2147483647;
pub const __UINTMAX_WIDTH__ = 64;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __UINTPTR_WIDTH__ = 64;
pub const __FLT16_HAS_DENORM__ = 1;
pub const __FLT16_DIG__ = 3;
pub const __FLT16_DECIMAL_DIG__ = 5;
pub const __FLT16_HAS_INFINITY__ = 1;
pub const __FLT16_HAS_QUIET_NAN__ = 1;
pub const __FLT16_MANT_DIG__ = 11;
pub const __FLT16_MAX_10_EXP__ = 4;
pub const __FLT16_MAX_EXP__ = 16;
pub const __FLT16_MIN_10_EXP__ = -4;
pub const __FLT16_MIN_EXP__ = -13;
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = 1;
pub const __FLT_DIG__ = 6;
pub const __FLT_DECIMAL_DIG__ = 9;
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = 1;
pub const __FLT_HAS_QUIET_NAN__ = 1;
pub const __FLT_MANT_DIG__ = 24;
pub const __FLT_MAX_10_EXP__ = 38;
pub const __FLT_MAX_EXP__ = 128;
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -37;
pub const __FLT_MIN_EXP__ = -125;
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = 4.9406564584124654e-324;
pub const __DBL_HAS_DENORM__ = 1;
pub const __DBL_DIG__ = 15;
pub const __DBL_DECIMAL_DIG__ = 17;
pub const __DBL_EPSILON__ = 2.2204460492503131e-16;
pub const __DBL_HAS_INFINITY__ = 1;
pub const __DBL_HAS_QUIET_NAN__ = 1;
pub const __DBL_MANT_DIG__ = 53;
pub const __DBL_MAX_10_EXP__ = 308;
pub const __DBL_MAX_EXP__ = 1024;
pub const __DBL_MAX__ = 1.7976931348623157e+308;
pub const __DBL_MIN_10_EXP__ = -307;
pub const __DBL_MIN_EXP__ = -1021;
pub const __DBL_MIN__ = 2.2250738585072014e-308;
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 6.47517511943802511092443895822764655e-4966);
pub const __LDBL_HAS_DENORM__ = 1;
pub const __LDBL_DIG__ = 33;
pub const __LDBL_DECIMAL_DIG__ = 36;
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.92592994438723585305597794258492732e-34);
pub const __LDBL_HAS_INFINITY__ = 1;
pub const __LDBL_HAS_QUIET_NAN__ = 1;
pub const __LDBL_MANT_DIG__ = 113;
pub const __LDBL_MAX_10_EXP__ = 4932;
pub const __LDBL_MAX_EXP__ = 16384;
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176508575932662800702e+4932);
pub const __LDBL_MIN_10_EXP__ = -4931;
pub const __LDBL_MIN_EXP__ = -16381;
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626267781732175260e-4932);
pub const __POINTER_WIDTH__ = 64;
pub const __BIGGEST_ALIGNMENT__ = 16;
pub const __CHAR_UNSIGNED__ = 1;
pub const __WCHAR_UNSIGNED__ = 1;
pub const __WINT_UNSIGNED__ = 1;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT64_FMTd__ = "ld";
pub const __INT64_FMTi__ = "li";
pub const __INT64_C_SUFFIX__ = L;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_MAX__ = 255;
pub const __INT8_MAX__ = 127;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_MAX__ = 65535;
pub const __INT16_MAX__ = 32767;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = U;
pub const __UINT32_MAX__ = @as(c_uint, 4294967295);
pub const __INT32_MAX__ = 2147483647;
pub const __UINT64_FMTo__ = "lo";
pub const __UINT64_FMTu__ = "lu";
pub const __UINT64_FMTx__ = "lx";
pub const __UINT64_FMTX__ = "lX";
pub const __UINT64_C_SUFFIX__ = UL;
pub const __UINT64_MAX__ = @as(c_ulong, 18446744073709551615);
pub const __INT64_MAX__ = @as(c_long, 9223372036854775807);
pub const __INT_LEAST8_MAX__ = 127;
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_MAX__ = 255;
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = 32767;
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_MAX__ = 65535;
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = 2147483647;
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_MAX__ = @as(c_uint, 4294967295);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_MAX__ = @as(c_long, 9223372036854775807);
pub const __INT_LEAST64_FMTd__ = "ld";
pub const __INT_LEAST64_FMTi__ = "li";
pub const __UINT_LEAST64_MAX__ = @as(c_ulong, 18446744073709551615);
pub const __UINT_LEAST64_FMTo__ = "lo";
pub const __UINT_LEAST64_FMTu__ = "lu";
pub const __UINT_LEAST64_FMTx__ = "lx";
pub const __UINT_LEAST64_FMTX__ = "lX";
pub const __INT_FAST8_MAX__ = 127;
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_MAX__ = 255;
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = 32767;
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_MAX__ = 65535;
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = 2147483647;
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_MAX__ = @as(c_uint, 4294967295);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_MAX__ = @as(c_long, 9223372036854775807);
pub const __INT_FAST64_FMTd__ = "ld";
pub const __INT_FAST64_FMTi__ = "li";
pub const __UINT_FAST64_MAX__ = @as(c_ulong, 18446744073709551615);
pub const __UINT_FAST64_FMTo__ = "lo";
pub const __UINT_FAST64_FMTu__ = "lu";
pub const __UINT_FAST64_FMTx__ = "lx";
pub const __UINT_FAST64_FMTX__ = "lX";
pub const __FINITE_MATH_ONLY__ = 0;
pub const __GNUC_STDC_INLINE__ = 1;
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = 1;
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_INT_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = 2;
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = 2;
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = 2;
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = 2;
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = 2;
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = 2;
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = 2;
pub const __GCC_ATOMIC_INT_LOCK_FREE = 2;
pub const __GCC_ATOMIC_LONG_LOCK_FREE = 2;
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = 2;
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = 2;
pub const __PIC__ = 2;
pub const __pic__ = 2;
pub const __FLT_EVAL_METHOD__ = 0;
pub const __FLT_RADIX__ = 2;
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __SSP_STRONG__ = 2;
pub const __AARCH64EL__ = 1;
pub const __aarch64__ = 1;
pub const __ARM_ACLE = 200;
pub const __ARM_ARCH = 8;
pub const __ARM_ARCH_PROFILE = 'A';
pub const __ARM_64BIT_STATE = 1;
pub const __ARM_PCS_AAPCS64 = 1;
pub const __ARM_ARCH_ISA_A64 = 1;
pub const __ARM_FEATURE_CLZ = 1;
pub const __ARM_FEATURE_FMA = 1;
pub const __ARM_FEATURE_LDREX = 0xF;
pub const __ARM_FEATURE_IDIV = 1;
pub const __ARM_FEATURE_DIV = 1;
pub const __ARM_FEATURE_NUMERIC_MAXMIN = 1;
pub const __ARM_FEATURE_DIRECTED_ROUNDING = 1;
pub const __ARM_ALIGN_MAX_STACK_PWR = 4;
pub const __ARM_FP = 0xE;
pub const __ARM_FP16_FORMAT_IEEE = 1;
pub const __ARM_FP16_ARGS = 1;
pub const __ARM_SIZEOF_WCHAR_T = 4;
pub const __ARM_SIZEOF_MINIMAL_ENUM = 4;
pub const __ARM_NEON = 1;
pub const __ARM_NEON_FP = 0xE;
pub const __ARM_FEATURE_UNALIGNED = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = 1;
pub const unix = 1;
pub const __unix = 1;
pub const __unix__ = 1;
pub const linux = 1;
pub const __linux = 1;
pub const __linux__ = 1;
pub const __ELF__ = 1;
pub const __gnu_linux__ = 1;
pub const __STDC__ = 1;
pub const __STDC_HOSTED__ = 1;
pub const __STDC_VERSION__ = @as(c_long, 201112);
pub const __STDC_UTF_16__ = 1;
pub const __STDC_UTF_32__ = 1;
pub const _DEBUG = 1;
pub const ANDROID = 1;
pub const APPNAME = "ziggy";
pub const DANDROIDVERSION = 29;
pub fn va_start(ap: anytype, param: anytype) callconv(.Inline) @TypeOf(__builtin_va_start(ap, param)) {
    return __builtin_va_start(ap, param);
}
pub fn va_end(ap: anytype) callconv(.Inline) @TypeOf(__builtin_va_end(ap)) {
    return __builtin_va_end(ap);
}
pub fn va_arg(ap: anytype, type_1: anytype) callconv(.Inline) @TypeOf(__builtin_va_arg(ap, type_1)) {
    return __builtin_va_arg(ap, type_1);
}
pub fn __va_copy(d: anytype, s: anytype) callconv(.Inline) @TypeOf(__builtin_va_copy(d, s)) {
    return __builtin_va_copy(d, s);
}
pub fn va_copy(dest: anytype, src: anytype) callconv(.Inline) @TypeOf(__builtin_va_copy(dest, src)) {
    return __builtin_va_copy(dest, src);
}
pub const __GNUC_VA_LIST = 1;
pub const __BIONIC__ = 1;
pub fn __BIONIC_CAST(_k: anytype, _t: anytype, _v: anytype) callconv(.Inline) @TypeOf((@import("std").meta.cast(_t, _v))) {
    return (@import("std").meta.cast(_t, _v));
}
pub fn __BIONIC_ALIGN(__value: anytype, __alignment: anytype) callconv(.Inline) @TypeOf((__value + (__alignment - 1)) & ~__alignment - 1) {
    return (__value + (__alignment - 1)) & ~__alignment - 1;
}
pub fn __P(protos: anytype) callconv(.Inline) @TypeOf(protos) {
    return protos;
}
pub fn __CONCAT(x: anytype, y: anytype) callconv(.Inline) @TypeOf(__CONCAT1(x, y)) {
    return __CONCAT1(x, y);
}
pub fn ___CONCAT(x: anytype, y: anytype) callconv(.Inline) @TypeOf(__CONCAT(x, y)) {
    return __CONCAT(x, y);
}
pub fn ___STRING(x: anytype) callconv(.Inline) @TypeOf(__STRING(x)) {
    return __STRING(x);
}
pub const __always_inline = __attribute__(__always_inline__);
pub const __attribute_const__ = __attribute__(__const__);
pub const __attribute_pure__ = __attribute__(__pure__);
pub const __dead = __attribute__(__noreturn__);
pub const __noreturn = __attribute__(__noreturn__);
pub const __mallocfunc = __attribute__(__malloc__);
pub const __packed = __attribute__(__packed__);
pub const __returns_twice = __attribute__(__returns_twice__);
pub const __unused = __attribute__(__unused__);
pub const __used = __attribute__(__used__);
pub fn __printflike(x: anytype, y: anytype) callconv(.Inline) @TypeOf(__attribute__(__format__(printf, x, y))) {
    return __attribute__(__format__(printf, x, y));
}
pub fn __scanflike(x: anytype, y: anytype) callconv(.Inline) @TypeOf(__attribute__(__format__(scanf, x, y))) {
    return __attribute__(__format__(scanf, x, y));
}
pub fn __strftimelike(x: anytype) callconv(.Inline) @TypeOf(__attribute__(__format__(strftime, x, 0))) {
    return __attribute__(__format__(strftime, x, 0));
}
pub fn __predict_true(exp: anytype) callconv(.Inline) @TypeOf(__builtin_expect(exp != 0, 1)) {
    return __builtin_expect(exp != 0, 1);
}
pub fn __predict_false(exp: anytype) callconv(.Inline) @TypeOf(__builtin_expect(exp != 0, 0)) {
    return __builtin_expect(exp != 0, 0);
}
pub const __wur = __attribute__(__warn_unused_result__);
pub fn __errorattr(msg: anytype) callconv(.Inline) @TypeOf(__attribute__(unavailable(msg))) {
    return __attribute__(unavailable(msg));
}
pub fn __warnattr(msg: anytype) callconv(.Inline) @TypeOf(__attribute__(deprecated(msg))) {
    return __attribute__(deprecated(msg));
}
pub fn __warnattr_real(msg: anytype) callconv(.Inline) @TypeOf(__attribute__(deprecated(msg))) {
    return __attribute__(deprecated(msg));
}
pub fn __enable_if(cond: anytype, msg: anytype) callconv(.Inline) @TypeOf(__attribute__(enable_if(cond, msg))) {
    return __attribute__(enable_if(cond, msg));
}
pub fn __clang_error_if(cond: anytype, msg: anytype) callconv(.Inline) @TypeOf(__attribute__(diagnose_if(cond, msg, "error"))) {
    return __attribute__(diagnose_if(cond, msg, "error"));
}
pub fn __clang_warning_if(cond: anytype, msg: anytype) callconv(.Inline) @TypeOf(__attribute__(diagnose_if(cond, msg, "warning"))) {
    return __attribute__(diagnose_if(cond, msg, "warning"));
}
pub fn __RENAME_LDBL(rewrite: anytype, rewrite_api_level: anytype, regular_api_level: anytype) callconv(.Inline) @TypeOf(__INTRODUCED_IN(regular_api_level)) {
    return __INTRODUCED_IN(regular_api_level);
}
pub fn __RENAME_STAT64(rewrite: anytype, rewrite_api_level: anytype, regular_api_level: anytype) callconv(.Inline) @TypeOf(__INTRODUCED_IN(regular_api_level)) {
    return __INTRODUCED_IN(regular_api_level);
}
pub const __WORDSIZE = 64;
pub const __BIONIC_FORTIFY_UNKNOWN_SIZE = size_t - 1;
pub const __bos_level = 0;
pub fn __bosn(s: anytype, n: anytype) callconv(.Inline) @TypeOf(__builtin_object_size(s, n)) {
    return __builtin_object_size(s, n);
}
pub fn __bos(s: anytype) callconv(.Inline) @TypeOf(__bosn(s, __bos_level)) {
    return __bosn(s, __bos_level);
}
pub const __pass_object_size = __pass_object_size_n(__bos_level);
pub const __pass_object_size0 = __pass_object_size_n(0);
pub fn __bos_unevaluated_lt(bos_val: anytype, val: anytype) callconv(.Inline) @TypeOf(bos_val != @boolToInt((__BIONIC_FORTIFY_UNKNOWN_SIZE != 0) and (bos_val < val))) {
    return bos_val != @boolToInt((__BIONIC_FORTIFY_UNKNOWN_SIZE != 0) and (bos_val < val));
}
pub fn __bos_unevaluated_le(bos_val: anytype, val: anytype) callconv(.Inline) @TypeOf(bos_val != @boolToInt((__BIONIC_FORTIFY_UNKNOWN_SIZE != 0) and (bos_val <= val))) {
    return bos_val != @boolToInt((__BIONIC_FORTIFY_UNKNOWN_SIZE != 0) and (bos_val <= val));
}
pub fn __bos_dynamic_check_impl_and(bos_val: anytype, op: anytype, index: anytype, cond: anytype) callconv(.Inline) @TypeOf(bos_val == @boolToInt((__BIONIC_FORTIFY_UNKNOWN_SIZE != 0) or ((__builtin_constant_p(index) != 0) and (bos_val ++ (op ++ @boolToInt((index != 0) and (cond != 0))) != 0)))) {
    return bos_val == @boolToInt((__BIONIC_FORTIFY_UNKNOWN_SIZE != 0) or ((__builtin_constant_p(index) != 0) and (bos_val ++ (op ++ @boolToInt((index != 0) and (cond != 0))) != 0)));
}
pub fn __bos_dynamic_check_impl(bos_val: anytype, op: anytype, index: anytype) callconv(.Inline) @TypeOf(__bos_dynamic_check_impl_and(bos_val, op, index, 1)) {
    return __bos_dynamic_check_impl_and(bos_val, op, index, 1);
}
pub const __overloadable = __attribute__(overloadable);
pub const __LIBC_HIDDEN__ = __attribute__(visibility("hidden"));
pub const __LIBC32_LEGACY_PUBLIC__ = __attribute__(visibility("hidden"));
pub fn __size_mul_overflow(a: anytype, b: anytype, result: anytype) callconv(.Inline) @TypeOf(__builtin_umull_overflow(a, b, result)) {
    return __builtin_umull_overflow(a, b, result);
}
pub fn __unsafe_check_mul_overflow(x: anytype, y: anytype) callconv(.Inline) @TypeOf(__SIZE_TYPE__ - (1 / @boolToInt(x < y))) {
    return __SIZE_TYPE__ - (1 / @boolToInt(x < y));
}
pub const __VERSIONER_NO_GUARD = __attribute__(annotate("versioner_no_guard"));
pub const __ANDROID_API_FUTURE__ = 10000;
pub const __ANDROID_API__ = __ANDROID_API_FUTURE__;
pub const __ANDROID_API_G__ = 9;
pub const __ANDROID_API_I__ = 14;
pub const __ANDROID_API_J__ = 16;
pub const __ANDROID_API_J_MR1__ = 17;
pub const __ANDROID_API_J_MR2__ = 18;
pub const __ANDROID_API_K__ = 19;
pub const __ANDROID_API_L__ = 21;
pub const __ANDROID_API_L_MR1__ = 22;
pub const __ANDROID_API_M__ = 23;
pub const __ANDROID_API_N__ = 24;
pub const __ANDROID_API_N_MR1__ = 25;
pub const __ANDROID_API_O__ = 26;
pub const __ANDROID_API_O_MR1__ = 27;
pub const __ANDROID_API_P__ = 28;
pub const __ANDROID_API_Q__ = 29;
pub const __ANDROID_API_R__ = 30;
pub const __NDK_MAJOR__ = 21;
pub const __NDK_MINOR__ = 1;
pub const __NDK_BETA__ = 0;
pub const __NDK_BUILD__ = 6352462;
pub const __NDK_CANARY__ = 0;
pub const NULL = (@import("std").meta.cast(?*c_void, 0));
pub fn offsetof(t: anytype, d: anytype) callconv(.Inline) @TypeOf(__builtin_offsetof(t, d)) {
    return __builtin_offsetof(t, d);
}
pub const WCHAR_MAX = __WCHAR_MAX__;
pub const WCHAR_MIN = '\x00';
pub fn INT8_C(c: anytype) callconv(.Inline) @TypeOf(c) {
    return c;
}
pub fn INT_LEAST8_C(c: anytype) callconv(.Inline) @TypeOf(INT8_C(c)) {
    return INT8_C(c);
}
pub fn INT_FAST8_C(c: anytype) callconv(.Inline) @TypeOf(INT8_C(c)) {
    return INT8_C(c);
}
pub fn UINT8_C(c: anytype) callconv(.Inline) @TypeOf(c) {
    return c;
}
pub fn UINT_LEAST8_C(c: anytype) callconv(.Inline) @TypeOf(UINT8_C(c)) {
    return UINT8_C(c);
}
pub fn UINT_FAST8_C(c: anytype) callconv(.Inline) @TypeOf(UINT8_C(c)) {
    return UINT8_C(c);
}
pub fn INT16_C(c: anytype) callconv(.Inline) @TypeOf(c) {
    return c;
}
pub fn INT_LEAST16_C(c: anytype) callconv(.Inline) @TypeOf(INT16_C(c)) {
    return INT16_C(c);
}
pub fn INT_FAST16_C(c: anytype) callconv(.Inline) @TypeOf(INT32_C(c)) {
    return INT32_C(c);
}
pub fn UINT16_C(c: anytype) callconv(.Inline) @TypeOf(c) {
    return c;
}
pub fn UINT_LEAST16_C(c: anytype) callconv(.Inline) @TypeOf(UINT16_C(c)) {
    return UINT16_C(c);
}
pub fn UINT_FAST16_C(c: anytype) callconv(.Inline) @TypeOf(UINT32_C(c)) {
    return UINT32_C(c);
}
pub fn INT32_C(c: anytype) callconv(.Inline) @TypeOf(c) {
    return c;
}
pub fn INT_LEAST32_C(c: anytype) callconv(.Inline) @TypeOf(INT32_C(c)) {
    return INT32_C(c);
}
pub fn INT_FAST32_C(c: anytype) callconv(.Inline) @TypeOf(INT32_C(c)) {
    return INT32_C(c);
}
pub fn UINT_LEAST32_C(c: anytype) callconv(.Inline) @TypeOf(UINT32_C(c)) {
    return UINT32_C(c);
}
pub fn UINT_FAST32_C(c: anytype) callconv(.Inline) @TypeOf(UINT32_C(c)) {
    return UINT32_C(c);
}
pub fn INT_LEAST64_C(c: anytype) callconv(.Inline) @TypeOf(INT64_C(c)) {
    return INT64_C(c);
}
pub fn INT_FAST64_C(c: anytype) callconv(.Inline) @TypeOf(INT64_C(c)) {
    return INT64_C(c);
}
pub fn UINT_LEAST64_C(c: anytype) callconv(.Inline) @TypeOf(UINT64_C(c)) {
    return UINT64_C(c);
}
pub fn UINT_FAST64_C(c: anytype) callconv(.Inline) @TypeOf(UINT64_C(c)) {
    return UINT64_C(c);
}
pub fn INTMAX_C(c: anytype) callconv(.Inline) @TypeOf(INT64_C(c)) {
    return INT64_C(c);
}
pub fn UINTMAX_C(c: anytype) callconv(.Inline) @TypeOf(UINT64_C(c)) {
    return UINT64_C(c);
}
pub fn INTPTR_C(c: anytype) callconv(.Inline) @TypeOf(INT64_C(c)) {
    return INT64_C(c);
}
pub fn UINTPTR_C(c: anytype) callconv(.Inline) @TypeOf(UINT64_C(c)) {
    return UINT64_C(c);
}
pub fn PTRDIFF_C(c: anytype) callconv(.Inline) @TypeOf(INT64_C(c)) {
    return INT64_C(c);
}
pub const INT8_MIN = -128;
pub const INT8_MAX = 127;
pub const INT_LEAST8_MIN = INT8_MIN;
pub const INT_LEAST8_MAX = INT8_MAX;
pub const INT_FAST8_MIN = INT8_MIN;
pub const INT_FAST8_MAX = INT8_MAX;
pub const UINT8_MAX = 255;
pub const UINT_LEAST8_MAX = UINT8_MAX;
pub const UINT_FAST8_MAX = UINT8_MAX;
pub const INT16_MIN = -32768;
pub const INT16_MAX = 32767;
pub const INT_LEAST16_MIN = INT16_MIN;
pub const INT_LEAST16_MAX = INT16_MAX;
pub const INT_FAST16_MIN = INT32_MIN;
pub const INT_FAST16_MAX = INT32_MAX;
pub const UINT16_MAX = 65535;
pub const UINT_LEAST16_MAX = UINT16_MAX;
pub const UINT_FAST16_MAX = UINT32_MAX;
pub const INT32_MIN = -2147483647 - 1;
pub const INT32_MAX = 2147483647;
pub const INT_LEAST32_MIN = INT32_MIN;
pub const INT_LEAST32_MAX = INT32_MAX;
pub const INT_FAST32_MIN = INT32_MIN;
pub const INT_FAST32_MAX = INT32_MAX;
pub const UINT32_MAX = @as(c_uint, 4294967295);
pub const UINT_LEAST32_MAX = UINT32_MAX;
pub const UINT_FAST32_MAX = UINT32_MAX;
pub const INT64_MIN = INT64_C(-9223372036854775807) - 1;
pub const INT64_MAX = INT64_C(9223372036854775807);
pub const INT_LEAST64_MIN = INT64_MIN;
pub const INT_LEAST64_MAX = INT64_MAX;
pub const INT_FAST64_MIN = INT64_MIN;
pub const INT_FAST64_MAX = INT64_MAX;
pub const UINT64_MAX = UINT64_C(18446744073709551615);
pub const UINT_LEAST64_MAX = UINT64_MAX;
pub const UINT_FAST64_MAX = UINT64_MAX;
pub const INTMAX_MIN = INT64_MIN;
pub const INTMAX_MAX = INT64_MAX;
pub const UINTMAX_MAX = UINT64_MAX;
pub const SIG_ATOMIC_MAX = INT32_MAX;
pub const SIG_ATOMIC_MIN = INT32_MIN;
pub const WINT_MAX = UINT32_MAX;
pub const WINT_MIN = 0;
pub const INTPTR_MIN = INT64_MIN;
pub const INTPTR_MAX = INT64_MAX;
pub const UINTPTR_MAX = UINT64_MAX;
pub const PTRDIFF_MIN = INT64_MIN;
pub const PTRDIFF_MAX = INT64_MAX;
pub const SIZE_MAX = UINT64_MAX;
pub const __BITS_PER_LONG = 64;
pub const __FD_SETSIZE = 1024;
pub const __bitwise = __bitwise__;
pub const __aligned_u64 = __u64 ++ __attribute__(aligned(8));
pub const __aligned_be64 = __be64 ++ __attribute__(aligned(8));
pub const __aligned_le64 = __le64 ++ __attribute__(aligned(8));
pub const JNIEXPORT = __attribute__(visibility("default"));
pub const JNI_FALSE = 0;
pub const JNI_TRUE = 1;
pub const JNI_VERSION_1_1 = 0x00010001;
pub const JNI_VERSION_1_2 = 0x00010002;
pub const JNI_VERSION_1_4 = 0x00010004;
pub const JNI_VERSION_1_6 = 0x00010006;
pub const JNI_OK = 0;
pub const JNI_ERR = -1;
pub const JNI_EDETACHED = -2;
pub const JNI_EVERSION = -3;
pub const JNI_ENOMEM = -4;
pub const JNI_EEXIST = -5;
pub const JNI_EINVAL = -6;
pub const JNI_COMMIT = 1;
pub const JNI_ABORT = 2;
pub const AMOTION_EVENT_ACTION_POINTER_INDEX_SHIFT = 8;
pub const __PRI_64_prefix = "l";
pub const __PRI_PTR_prefix = "l";
pub const __PRI_FAST_prefix = __PRI_PTR_prefix;
pub const PRId8 = "d";
pub const PRId16 = "d";
pub const PRId32 = "d";
pub const PRId64 = __PRI_64_prefix ++ "d";
pub const PRIdLEAST8 = "d";
pub const PRIdLEAST16 = "d";
pub const PRIdLEAST32 = "d";
pub const PRIdLEAST64 = __PRI_64_prefix ++ "d";
pub const PRIdFAST8 = "d";
pub const PRIdFAST16 = __PRI_FAST_prefix ++ "d";
pub const PRIdFAST32 = __PRI_FAST_prefix ++ "d";
pub const PRIdFAST64 = __PRI_64_prefix ++ "d";
pub const PRIdMAX = "jd";
pub const PRIdPTR = __PRI_PTR_prefix ++ "d";
pub const PRIi8 = "i";
pub const PRIi16 = "i";
pub const PRIi32 = "i";
pub const PRIi64 = __PRI_64_prefix ++ "i";
pub const PRIiLEAST8 = "i";
pub const PRIiLEAST16 = "i";
pub const PRIiLEAST32 = "i";
pub const PRIiLEAST64 = __PRI_64_prefix ++ "i";
pub const PRIiFAST8 = "i";
pub const PRIiFAST16 = __PRI_FAST_prefix ++ "i";
pub const PRIiFAST32 = __PRI_FAST_prefix ++ "i";
pub const PRIiFAST64 = __PRI_64_prefix ++ "i";
pub const PRIiMAX = "ji";
pub const PRIiPTR = __PRI_PTR_prefix ++ "i";
pub const PRIo8 = "o";
pub const PRIo16 = "o";
pub const PRIo32 = "o";
pub const PRIo64 = __PRI_64_prefix ++ "o";
pub const PRIoLEAST8 = "o";
pub const PRIoLEAST16 = "o";
pub const PRIoLEAST32 = "o";
pub const PRIoLEAST64 = __PRI_64_prefix ++ "o";
pub const PRIoFAST8 = "o";
pub const PRIoFAST16 = __PRI_FAST_prefix ++ "o";
pub const PRIoFAST32 = __PRI_FAST_prefix ++ "o";
pub const PRIoFAST64 = __PRI_64_prefix ++ "o";
pub const PRIoMAX = "jo";
pub const PRIoPTR = __PRI_PTR_prefix ++ "o";
pub const PRIu8 = "u";
pub const PRIu16 = "u";
pub const PRIu32 = "u";
pub const PRIu64 = __PRI_64_prefix ++ "u";
pub const PRIuLEAST8 = "u";
pub const PRIuLEAST16 = "u";
pub const PRIuLEAST32 = "u";
pub const PRIuLEAST64 = __PRI_64_prefix ++ "u";
pub const PRIuFAST8 = "u";
pub const PRIuFAST16 = __PRI_FAST_prefix ++ "u";
pub const PRIuFAST32 = __PRI_FAST_prefix ++ "u";
pub const PRIuFAST64 = __PRI_64_prefix ++ "u";
pub const PRIuMAX = "ju";
pub const PRIuPTR = __PRI_PTR_prefix ++ "u";
pub const PRIx8 = "x";
pub const PRIx16 = "x";
pub const PRIx32 = "x";
pub const PRIx64 = __PRI_64_prefix ++ "x";
pub const PRIxLEAST8 = "x";
pub const PRIxLEAST16 = "x";
pub const PRIxLEAST32 = "x";
pub const PRIxLEAST64 = __PRI_64_prefix ++ "x";
pub const PRIxFAST8 = "x";
pub const PRIxFAST16 = __PRI_FAST_prefix ++ "x";
pub const PRIxFAST32 = __PRI_FAST_prefix ++ "x";
pub const PRIxFAST64 = __PRI_64_prefix ++ "x";
pub const PRIxMAX = "jx";
pub const PRIxPTR = __PRI_PTR_prefix ++ "x";
pub const PRIX8 = "X";
pub const PRIX16 = "X";
pub const PRIX32 = "X";
pub const PRIX64 = __PRI_64_prefix ++ "X";
pub const PRIXLEAST8 = "X";
pub const PRIXLEAST16 = "X";
pub const PRIXLEAST32 = "X";
pub const PRIXLEAST64 = __PRI_64_prefix ++ "X";
pub const PRIXFAST8 = "X";
pub const PRIXFAST16 = __PRI_FAST_prefix ++ "X";
pub const PRIXFAST32 = __PRI_FAST_prefix ++ "X";
pub const PRIXFAST64 = __PRI_64_prefix ++ "X";
pub const PRIXMAX = "jX";
pub const PRIXPTR = __PRI_PTR_prefix ++ "X";
pub const SCNd8 = "hhd";
pub const SCNd16 = "hd";
pub const SCNd32 = "d";
pub const SCNd64 = __PRI_64_prefix ++ "d";
pub const SCNdLEAST8 = "hhd";
pub const SCNdLEAST16 = "hd";
pub const SCNdLEAST32 = "d";
pub const SCNdLEAST64 = __PRI_64_prefix ++ "d";
pub const SCNdFAST8 = "hhd";
pub const SCNdFAST16 = __PRI_FAST_prefix ++ "d";
pub const SCNdFAST32 = __PRI_FAST_prefix ++ "d";
pub const SCNdFAST64 = __PRI_64_prefix ++ "d";
pub const SCNdMAX = "jd";
pub const SCNdPTR = __PRI_PTR_prefix ++ "d";
pub const SCNi8 = "hhi";
pub const SCNi16 = "hi";
pub const SCNi32 = "i";
pub const SCNi64 = __PRI_64_prefix ++ "i";
pub const SCNiLEAST8 = "hhi";
pub const SCNiLEAST16 = "hi";
pub const SCNiLEAST32 = "i";
pub const SCNiLEAST64 = __PRI_64_prefix ++ "i";
pub const SCNiFAST8 = "hhi";
pub const SCNiFAST16 = __PRI_FAST_prefix ++ "i";
pub const SCNiFAST32 = __PRI_FAST_prefix ++ "i";
pub const SCNiFAST64 = __PRI_64_prefix ++ "i";
pub const SCNiMAX = "ji";
pub const SCNiPTR = __PRI_PTR_prefix ++ "i";
pub const SCNo8 = "hho";
pub const SCNo16 = "ho";
pub const SCNo32 = "o";
pub const SCNo64 = __PRI_64_prefix ++ "o";
pub const SCNoLEAST8 = "hho";
pub const SCNoLEAST16 = "ho";
pub const SCNoLEAST32 = "o";
pub const SCNoLEAST64 = __PRI_64_prefix ++ "o";
pub const SCNoFAST8 = "hho";
pub const SCNoFAST16 = __PRI_FAST_prefix ++ "o";
pub const SCNoFAST32 = __PRI_FAST_prefix ++ "o";
pub const SCNoFAST64 = __PRI_64_prefix ++ "o";
pub const SCNoMAX = "jo";
pub const SCNoPTR = __PRI_PTR_prefix ++ "o";
pub const SCNu8 = "hhu";
pub const SCNu16 = "hu";
pub const SCNu32 = "u";
pub const SCNu64 = __PRI_64_prefix ++ "u";
pub const SCNuLEAST8 = "hhu";
pub const SCNuLEAST16 = "hu";
pub const SCNuLEAST32 = "u";
pub const SCNuLEAST64 = __PRI_64_prefix ++ "u";
pub const SCNuFAST8 = "hhu";
pub const SCNuFAST16 = __PRI_FAST_prefix ++ "u";
pub const SCNuFAST32 = __PRI_FAST_prefix ++ "u";
pub const SCNuFAST64 = __PRI_64_prefix ++ "u";
pub const SCNuMAX = "ju";
pub const SCNuPTR = __PRI_PTR_prefix ++ "u";
pub const SCNx8 = "hhx";
pub const SCNx16 = "hx";
pub const SCNx32 = "x";
pub const SCNx64 = __PRI_64_prefix ++ "x";
pub const SCNxLEAST8 = "hhx";
pub const SCNxLEAST16 = "hx";
pub const SCNxLEAST32 = "x";
pub const SCNxLEAST64 = __PRI_64_prefix ++ "x";
pub const SCNxFAST8 = "hhx";
pub const SCNxFAST16 = __PRI_FAST_prefix ++ "x";
pub const SCNxFAST32 = __PRI_FAST_prefix ++ "x";
pub const SCNxFAST64 = __PRI_64_prefix ++ "x";
pub const SCNxMAX = "jx";
pub const SCNxPTR = __PRI_PTR_prefix ++ "x";
pub const log_id = enum_log_id;
pub const _jfieldID = struct__jfieldID;
pub const _jmethodID = struct__jmethodID;
pub const JNIInvokeInterface = struct_JNIInvokeInterface;
pub const _JNIEnv = struct__JNIEnv;
pub const _JavaVM = struct__JavaVM;
pub const ADataSpace = enum_ADataSpace;
pub const AHardwareBuffer_Format = enum_AHardwareBuffer_Format;
pub const AHardwareBuffer_UsageFlags = enum_AHardwareBuffer_UsageFlags;
pub const ANativeWindow_LegacyFormat = enum_ANativeWindow_LegacyFormat;
pub const ANativeWindowTransform = enum_ANativeWindowTransform;

pub extern fn __system_property_get(name: [*:0]const u8, value: [*]u8) callconv(.C) c_int;
