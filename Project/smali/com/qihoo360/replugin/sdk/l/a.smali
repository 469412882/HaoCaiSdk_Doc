.class public Lcom/qihoo360/replugin/sdk/l/a;
.super Ljava/lang/Object;
.source "a.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "level"    # I
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "controller"    # Ljava/lang/String;
    .param p4, "extra"    # Ljava/lang/String;

    .line 35
    :try_start_0
    const-string v0, "a.b.c.d.e.http"

    const-string v1, "pluginLog"

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/RePlugin;->fetchBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 36
    .local v0, "var0":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 37
    invoke-static {v0}, La/b/c/d/e/log/ILog$Stub;->asInterface(Landroid/os/IBinder;)La/b/c/d/e/log/ILog;

    move-result-object v1

    .line 38
    .local v1, "var1":La/b/c/d/e/log/ILog;
    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, La/b/c/d/e/log/ILog;->upLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v0    # "var0":Landroid/os/IBinder;
    .end local v1    # "var1":La/b/c/d/e/log/ILog;
    :cond_0
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 42
    :goto_0
    return-void
.end method
