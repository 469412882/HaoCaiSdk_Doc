.class public Lcom/qihoo360/loader2/mgr/PluginProviderClient;
.super Ljava/lang/Object;
.source "PluginProviderClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acquireContentProviderClient(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ContentProviderClient;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 46
    invoke-static {p0, p1}, Lcom/qihoo360/replugin/component/provider/PluginProviderClient;->acquireContentProviderClient(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    return-object v0
.end method

.method public static bulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .line 82
    invoke-static {p0, p1, p2}, Lcom/qihoo360/replugin/component/provider/PluginProviderClient;->bulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method public static delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 89
    invoke-static {p0, p1, p2, p3}, Lcom/qihoo360/replugin/component/provider/PluginProviderClient;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 68
    invoke-static {p0, p1}, Lcom/qihoo360/replugin/component/provider/PluginProviderClient;->getType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static insert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 75
    invoke-static {p0, p1, p2}, Lcom/qihoo360/replugin/component/provider/PluginProviderClient;->insert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static notifyChange(Landroid/content/Context;Landroid/net/Uri;Landroid/database/ContentObserver;)V
    .locals 0
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .line 146
    invoke-static {p0, p1, p2}, Lcom/qihoo360/replugin/component/provider/PluginProviderClient;->notifyChange(Landroid/content/Context;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 147
    return-void
.end method

.method public static notifyChange(Landroid/content/Context;Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    .locals 0
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "b"    # Z

    .line 153
    invoke-static {p0, p1, p2, p3}, Lcom/qihoo360/replugin/component/provider/PluginProviderClient;->notifyChange(Landroid/content/Context;Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 154
    return-void
.end method

.method public static openFileDescriptor(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;

    .line 124
    invoke-static {p0, p1, p2}, Lcom/qihoo360/replugin/component/provider/PluginProviderClient;->openFileDescriptor(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static openFileDescriptor(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 132
    invoke-static {p0, p1, p2, p3}, Lcom/qihoo360/replugin/component/provider/PluginProviderClient;->openFileDescriptor(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static openInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 103
    invoke-static {p0, p1}, Lcom/qihoo360/replugin/component/provider/PluginProviderClient;->openInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static openOutputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 110
    invoke-static {p0, p1}, Lcom/qihoo360/replugin/component/provider/PluginProviderClient;->openOutputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static openOutputStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;

    .line 117
    invoke-static {p0, p1, p2}, Lcom/qihoo360/replugin/component/provider/PluginProviderClient;->openOutputStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 53
    invoke-static/range {p0 .. p5}, Lcom/qihoo360/replugin/component/provider/PluginProviderClient;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 61
    invoke-static/range {p0 .. p6}, Lcom/qihoo360/replugin/component/provider/PluginProviderClient;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    .locals 0
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendents"    # Z
    .param p3, "observer"    # Landroid/database/ContentObserver;

    .line 139
    invoke-static {p0, p1, p2, p3}, Lcom/qihoo360/replugin/component/provider/PluginProviderClient;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 140
    return-void
.end method

.method public static toCalledUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 160
    invoke-static {p0, p1}, Lcom/qihoo360/replugin/component/provider/PluginProviderClient;->toCalledUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static toCalledUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "plugin"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "process"    # I

    .line 167
    invoke-static {p0, p1, p2, p3}, Lcom/qihoo360/replugin/component/provider/PluginProviderClient;->toCalledUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 96
    invoke-static {p0, p1, p2, p3, p4}, Lcom/qihoo360/replugin/component/provider/PluginProviderClient;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
