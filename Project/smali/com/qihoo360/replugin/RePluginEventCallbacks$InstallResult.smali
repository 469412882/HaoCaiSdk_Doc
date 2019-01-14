.class public final enum Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;
.super Ljava/lang/Enum;
.source "RePluginEventCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/replugin/RePluginEventCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InstallResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

.field public static final enum COPY_APK_FAIL:Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

.field public static final enum READ_PKG_INFO_FAIL:Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

.field public static final enum SUCCEED:Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

.field public static final enum V5_FILE_BUILD_FAIL:Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

.field public static final enum V5_FILE_UPDATE_FAIL:Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

.field public static final enum VERIFY_SIGN_FAIL:Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

.field public static final enum VERIFY_VER_FAIL:Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 110
    new-instance v0, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

    const-string v1, "SUCCEED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;->SUCCEED:Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

    .line 111
    new-instance v0, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

    const-string v1, "V5_FILE_BUILD_FAIL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;->V5_FILE_BUILD_FAIL:Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

    .line 112
    new-instance v0, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

    const-string v1, "V5_FILE_UPDATE_FAIL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;->V5_FILE_UPDATE_FAIL:Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

    .line 113
    new-instance v0, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

    const-string v1, "READ_PKG_INFO_FAIL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;->READ_PKG_INFO_FAIL:Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

    .line 114
    new-instance v0, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

    const-string v1, "VERIFY_SIGN_FAIL"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;->VERIFY_SIGN_FAIL:Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

    .line 115
    new-instance v0, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

    const-string v1, "VERIFY_VER_FAIL"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;->VERIFY_VER_FAIL:Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

    .line 116
    new-instance v0, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

    const-string v1, "COPY_APK_FAIL"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;->COPY_APK_FAIL:Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

    .line 109
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

    sget-object v1, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;->SUCCEED:Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;->V5_FILE_BUILD_FAIL:Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;->V5_FILE_UPDATE_FAIL:Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;->READ_PKG_INFO_FAIL:Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;->VERIFY_SIGN_FAIL:Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

    aput-object v1, v0, v6

    sget-object v1, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;->VERIFY_VER_FAIL:Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

    aput-object v1, v0, v7

    sget-object v1, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;->COPY_APK_FAIL:Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

    aput-object v1, v0, v8

    sput-object v0, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;->$VALUES:[Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 109
    const-class v0, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

    return-object v0
.end method

.method public static values()[Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;
    .locals 1

    .line 109
    sget-object v0, Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;->$VALUES:[Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

    invoke-virtual {v0}, [Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qihoo360/replugin/RePluginEventCallbacks$InstallResult;

    return-object v0
.end method
