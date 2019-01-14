.class public Lco/bxvip/android/commonlib/db/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final DEBUG:Z

.field public static final logTAG:Ljava/lang/String; = "RePlugin-DB"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    const-string v0, "true"

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lco/bxvip/android/commonlib/db/BuildConfig;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
