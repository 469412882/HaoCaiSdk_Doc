.class public Lorg/greenrobot/eventbus/Logger$AndroidLogger;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Lorg/greenrobot/eventbus/Logger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/eventbus/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AndroidLogger"
.end annotation


# static fields
.field static final ANDROID_LOG_AVAILABLE:Z


# instance fields
.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    const/4 v0, 0x0

    move v1, v0

    .line 34
    .local v1, "android":Z
    :try_start_0
    const-string v2, "android.util.Log"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    move v1, v0

    .line 37
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 38
    :goto_0
    sput-boolean v1, Lorg/greenrobot/eventbus/Logger$AndroidLogger;->ANDROID_LOG_AVAILABLE:Z

    .line 39
    .end local v1    # "android":Z
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/greenrobot/eventbus/Logger$AndroidLogger;->tag:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public static isAndroidLogAvailable()Z
    .locals 1

    .line 42
    sget-boolean v0, Lorg/greenrobot/eventbus/Logger$AndroidLogger;->ANDROID_LOG_AVAILABLE:Z

    return v0
.end method


# virtual methods
.method public log(Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 2
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;

    .line 53
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    if-eq p1, v0, :cond_0

    .line 54
    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/Logger$AndroidLogger;->mapLevel(Ljava/util/logging/Level;)I

    move-result v0

    iget-object v1, p0, Lorg/greenrobot/eventbus/Logger$AndroidLogger;->tag:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "th"    # Ljava/lang/Throwable;

    .line 59
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    if-eq p1, v0, :cond_0

    .line 61
    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/Logger$AndroidLogger;->mapLevel(Ljava/util/logging/Level;)I

    move-result v0

    iget-object v1, p0, Lorg/greenrobot/eventbus/Logger$AndroidLogger;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    return-void
.end method

.method protected mapLevel(Ljava/util/logging/Level;)I
    .locals 2
    .param p1, "level"    # Ljava/util/logging/Level;

    .line 66
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    .line 67
    .local v0, "value":I
    const/16 v1, 0x320

    if-ge v0, v1, :cond_1

    .line 68
    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    .line 69
    const/4 v1, 0x2

    return v1

    .line 71
    :cond_0
    const/4 v1, 0x3

    return v1

    .line 73
    :cond_1
    const/16 v1, 0x384

    if-ge v0, v1, :cond_2

    .line 74
    const/4 v1, 0x4

    return v1

    .line 75
    :cond_2
    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_3

    .line 76
    const/4 v1, 0x5

    return v1

    .line 78
    :cond_3
    const/4 v1, 0x6

    return v1
.end method
