.class public Lcom/qihoo360/replugin/gen/RePluginHostConfig;
.super Ljava/lang/Object;
.source "RePluginHostConfig.java"


# static fields
.field public static ACTIVITY_PIT_COUNT_NTS_SINGLE_INSTANCE:I

.field public static ACTIVITY_PIT_COUNT_NTS_SINGLE_TASK:I

.field public static ACTIVITY_PIT_COUNT_NTS_SINGLE_TOP:I

.field public static ACTIVITY_PIT_COUNT_NTS_STANDARD:I

.field public static ACTIVITY_PIT_COUNT_TASK:I

.field public static ACTIVITY_PIT_COUNT_TS_SINGLE_INSTANCE:I

.field public static ACTIVITY_PIT_COUNT_TS_SINGLE_TASK:I

.field public static ACTIVITY_PIT_COUNT_TS_SINGLE_TOP:I

.field public static ACTIVITY_PIT_COUNT_TS_STANDARD:I

.field public static ACTIVITY_PIT_USE_APPCOMPAT:Z

.field public static ADAPTER_COMPATIBLE_VERSION:I

.field public static ADAPTER_CURRENT_VERSION:I

.field public static PERSISTENT_ENABLE:Z

.field public static PERSISTENT_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 10
    const-string v0, ":GuardService"

    sput-object v0, Lcom/qihoo360/replugin/gen/RePluginHostConfig;->PERSISTENT_NAME:Ljava/lang/String;

    .line 13
    const/4 v0, 0x1

    sput-boolean v0, Lcom/qihoo360/replugin/gen/RePluginHostConfig;->PERSISTENT_ENABLE:Z

    .line 16
    const/4 v0, 0x2

    sput v0, Lcom/qihoo360/replugin/gen/RePluginHostConfig;->ACTIVITY_PIT_COUNT_TS_STANDARD:I

    .line 17
    sput v0, Lcom/qihoo360/replugin/gen/RePluginHostConfig;->ACTIVITY_PIT_COUNT_TS_SINGLE_TOP:I

    .line 18
    sput v0, Lcom/qihoo360/replugin/gen/RePluginHostConfig;->ACTIVITY_PIT_COUNT_TS_SINGLE_TASK:I

    .line 19
    const/4 v1, 0x3

    sput v1, Lcom/qihoo360/replugin/gen/RePluginHostConfig;->ACTIVITY_PIT_COUNT_TS_SINGLE_INSTANCE:I

    .line 22
    const/4 v2, 0x6

    sput v2, Lcom/qihoo360/replugin/gen/RePluginHostConfig;->ACTIVITY_PIT_COUNT_NTS_STANDARD:I

    .line 23
    sput v0, Lcom/qihoo360/replugin/gen/RePluginHostConfig;->ACTIVITY_PIT_COUNT_NTS_SINGLE_TOP:I

    .line 24
    sput v1, Lcom/qihoo360/replugin/gen/RePluginHostConfig;->ACTIVITY_PIT_COUNT_NTS_SINGLE_TASK:I

    .line 25
    sput v0, Lcom/qihoo360/replugin/gen/RePluginHostConfig;->ACTIVITY_PIT_COUNT_NTS_SINGLE_INSTANCE:I

    .line 28
    sput v0, Lcom/qihoo360/replugin/gen/RePluginHostConfig;->ACTIVITY_PIT_COUNT_TASK:I

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qihoo360/replugin/gen/RePluginHostConfig;->ACTIVITY_PIT_USE_APPCOMPAT:Z

    .line 38
    const/16 v0, 0xa

    sput v0, Lcom/qihoo360/replugin/gen/RePluginHostConfig;->ADAPTER_COMPATIBLE_VERSION:I

    .line 41
    const/16 v0, 0xc

    sput v0, Lcom/qihoo360/replugin/gen/RePluginHostConfig;->ADAPTER_CURRENT_VERSION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
