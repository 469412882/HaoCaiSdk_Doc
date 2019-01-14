.class public Lco/bxvip/skin/utils/L;
.super Ljava/lang/Object;
.source "L.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Skin"

.field private static debug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const/4 v0, 0x1

    sput-boolean v0, Lco/bxvip/skin/utils/L;->debug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 13
    sget-boolean v0, Lco/bxvip/skin/utils/L;->debug:Z

    if-eqz v0, :cond_0

    .line 14
    const-string v0, "Skin"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_0
    return-void
.end method
