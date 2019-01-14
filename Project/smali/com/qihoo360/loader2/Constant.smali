.class public Lcom/qihoo360/loader2/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


# static fields
.field public static final ADAPTER_COMPATIBLE_VERSION:I

.field public static final ADAPTER_CURRENT_VERSION:I

.field public static final ENABLE_PLUGIN_ACTIVITY_AND_BINDER_RUN_IN_MAIN_UI_PROCESS:Z = true

.field public static final LOAD_PLUGIN_LOCK:Ljava/lang/String; = "plugin_v3_%s.lock"

.field public static final LOCAL_PLUGIN_APK_COVER_DIR:Ljava/lang/String; = "p_c"

.field public static final LOCAL_PLUGIN_APK_LIB_DIR:Ljava/lang/String; = "p_n"

.field public static final LOCAL_PLUGIN_APK_ODEX_SUB_DIR:Ljava/lang/String; = "p_od"

.field public static final LOCAL_PLUGIN_APK_SUB_DIR:Ljava/lang/String; = "p_a"

.field public static final LOCAL_PLUGIN_DATA_LIB_DIR:Ljava/lang/String; = "plugins_v3_libs"

.field public static final LOCAL_PLUGIN_DATA_SUB_DIR:Ljava/lang/String; = "plugins_v3_data"

.field public static final LOCAL_PLUGIN_FILE_PATTERN:Ljava/lang/String; = "^([^-]+)-([0-9]+)-([0-9]+)-([0-9]+).jar$"

.field public static final LOCAL_PLUGIN_INDEPENDENT_EXTRA_DEX_SUB_DIR:Ljava/lang/String; = "_ed"

.field public static final LOCAL_PLUGIN_INDEPENDENT_EXTRA_ODEX_SUB_DIR:Ljava/lang/String; = "_eod"

.field public static final LOCAL_PLUGIN_ODEX_SUB_DIR:Ljava/lang/String; = "plugins_v3_odex"

.field public static final LOCAL_PLUGIN_SUB_DIR:Ljava/lang/String; = "plugins_v3"

.field public static final LOG_V5_FILE_SEARCH:Z = false

.field public static final PLUGIN_NAME_UI:Ljava/lang/String; = "ui"

.field public static final SIMPLE_QUIT_CONTROLLER:Z = false

.field public static final STUB_PROCESS_COUNT:I = 0x2

.field public static final STUB_PROCESS_SUFFIX_PATTERN:Ljava/lang/String; = "^(.*):loader([0-1])$"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    sget v0, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ADAPTER_COMPATIBLE_VERSION:I

    sput v0, Lcom/qihoo360/loader2/Constant;->ADAPTER_COMPATIBLE_VERSION:I

    .line 34
    sget v0, Lcom/qihoo360/replugin/helper/HostConfigHelper;->ADAPTER_CURRENT_VERSION:I

    sput v0, Lcom/qihoo360/loader2/Constant;->ADAPTER_CURRENT_VERSION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
