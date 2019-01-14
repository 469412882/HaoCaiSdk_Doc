.class public Lcom/qihoo360/loader2/PluginProviderStub;
.super Ljava/lang/Object;
.source "PluginProviderStub.java"


# static fields
.field private static final KEY_COOKIE:Ljava/lang/String; = "cookie"

.field private static final KEY_METHOD:Ljava/lang/String; = "main_method"

.field private static final METHOD_START_PROCESS:Ljava/lang/String; = "start_process"

.field private static final PROJECTION_MAIN:[Ljava/lang/String;

.field private static final SELECTION_MAIN_BINDER:Ljava/lang/String; = "main_binder"

.field private static final SELECTION_MAIN_PREF:Ljava/lang/String; = "main_pref"

.field private static final URL_PARAM_KEY_LOADED:Ljava/lang/String; = "loaded"

.field static sPref:Lcom/qihoo360/loader2/sp/IPref;

.field static sPrefImpl:Lcom/qihoo360/loader2/sp/PrefImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "main"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/qihoo360/loader2/PluginProviderStub;->PROJECTION_MAIN:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getPref(Landroid/content/Context;)Lcom/qihoo360/loader2/sp/IPref;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    sget-object v0, Lcom/qihoo360/loader2/PluginProviderStub;->sPref:Lcom/qihoo360/loader2/sp/IPref;

    if-nez v0, :cond_1

    .line 217
    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->isPersistentProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-static {}, Lcom/qihoo360/loader2/PluginProviderStub;->initPref()V

    goto :goto_0

    .line 221
    :cond_0
    invoke-static {p0}, Lcom/qihoo360/loader2/PluginProviderStub;->proxyFetchHostPref(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v0

    .line 222
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Lcom/qihoo360/loader2/PluginProviderStub$1;

    invoke-direct {v1}, Lcom/qihoo360/loader2/PluginProviderStub$1;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 229
    invoke-static {v0}, Lcom/qihoo360/loader2/sp/IPref$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qihoo360/loader2/sp/IPref;

    move-result-object v1

    sput-object v1, Lcom/qihoo360/loader2/PluginProviderStub;->sPref:Lcom/qihoo360/loader2/sp/IPref;

    .line 232
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_1
    :goto_0
    sget-object v0, Lcom/qihoo360/loader2/PluginProviderStub;->sPref:Lcom/qihoo360/loader2/sp/IPref;

    return-object v0
.end method

.method static final initPref()V
    .locals 1

    .line 236
    sget-object v0, Lcom/qihoo360/loader2/PluginProviderStub;->sPrefImpl:Lcom/qihoo360/loader2/sp/PrefImpl;

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Lcom/qihoo360/loader2/sp/PrefImpl;

    invoke-direct {v0}, Lcom/qihoo360/loader2/sp/PrefImpl;-><init>()V

    sput-object v0, Lcom/qihoo360/loader2/PluginProviderStub;->sPrefImpl:Lcom/qihoo360/loader2/sp/PrefImpl;

    .line 238
    sget-object v0, Lcom/qihoo360/loader2/PluginProviderStub;->sPrefImpl:Lcom/qihoo360/loader2/sp/PrefImpl;

    sput-object v0, Lcom/qihoo360/loader2/PluginProviderStub;->sPref:Lcom/qihoo360/loader2/sp/IPref;

    .line 240
    :cond_0
    return-void
.end method

.method static final proxyFetchHostBinder(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 145
    const-string v0, "main_binder"

    invoke-static {p0, v0}, Lcom/qihoo360/loader2/PluginProviderStub;->proxyFetchHostBinder(Landroid/content/Context;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method private static final proxyFetchHostBinder(Landroid/content/Context;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selection"    # Ljava/lang/String;

    .line 163
    const/4 v0, 0x0

    move-object v1, v0

    .line 165
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Lcom/qihoo360/replugin/component/process/ProcessPitProviderPersist;->URI:Landroid/net/Uri;

    .line 166
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/qihoo360/loader2/PluginProviderStub;->PROJECTION_MAIN:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 167
    if-nez v1, :cond_1

    .line 168
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_0

    .line 169
    const-string v2, "ws001"

    const-string v4, "proxy fetch binder: cursor is null"

    invoke-static {v2, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :cond_0
    nop

    .line 182
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v3    # "uri":Landroid/net/Uri;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Landroid/database/Cursor;)V

    return-object v0

    .line 173
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 176
    :cond_2
    invoke-static {v1}, Lcom/qihoo360/loader2/BinderCursor;->getBinder(Landroid/database/Cursor;)Landroid/os/IBinder;

    move-result-object v0

    .line 177
    .local v0, "binder":Landroid/os/IBinder;
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_3

    .line 178
    const-string v2, "ws001"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "proxy fetch binder: binder="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    :cond_3
    goto :goto_0

    .line 182
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v3    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/qihoo360/replugin/utils/CloseableUtils;->closeQuietly(Landroid/database/Cursor;)V

    throw v0
.end method

.method static final proxyFetchHostPref(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 153
    const-string v0, "main_pref"

    invoke-static {p0, v0}, Lcom/qihoo360/loader2/PluginProviderStub;->proxyFetchHostBinder(Landroid/content/Context;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method static final proxyStartPluginProcess(Landroid/content/Context;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I

    .line 193
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 194
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "main_method"

    const-string v2, "start_process"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v1, "cookie"

    sget-object v2, Lcom/qihoo360/loader2/PMF;->sPluginMgr:Lcom/qihoo360/loader2/PmBase;

    iget-wide v2, v2, Lcom/qihoo360/loader2/PmBase;->mLocalCookie:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Lcom/qihoo360/replugin/component/process/ProcessPitProviderBase;->buildUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 197
    .local v1, "uri":Landroid/net/Uri;
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_1

    .line 198
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "proxyStartPluginProcess insert.rc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, "null"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_1
    if-nez v1, :cond_3

    .line 201
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_2

    .line 202
    const-string v2, "ws001"

    const-string v3, "proxyStartPluginProcess failed"

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_2
    const/4 v2, 0x0

    return v2

    .line 207
    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method public static final stubMain(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .line 74
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stubMain projection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " selection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    const-string v0, "main_binder"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    sget-object v0, Lcom/qihoo360/loader2/PMF;->sPluginMgr:Lcom/qihoo360/loader2/PmBase;

    invoke-virtual {v0}, Lcom/qihoo360/loader2/PmBase;->getHostBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/qihoo360/loader2/BinderCursor;->queryBinder(Landroid/os/IBinder;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 82
    :cond_1
    const-string v0, "main_pref"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    invoke-static {}, Lcom/qihoo360/loader2/PluginProviderStub;->initPref()V

    .line 85
    sget-object v0, Lcom/qihoo360/loader2/PluginProviderStub;->sPrefImpl:Lcom/qihoo360/loader2/sp/PrefImpl;

    invoke-static {v0}, Lcom/qihoo360/loader2/BinderCursor;->queryBinder(Landroid/os/IBinder;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 88
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final stubPlugin(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 99
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stubPlugin values="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    const-string v0, "main_method"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "method":Ljava/lang/String;
    const-string v1, "start_process"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 107
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "process"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "loaded=1"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 108
    .local v1, "rc":Landroid/net/Uri;
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_1

    .line 109
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "plugin provider: return uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_1
    const-string v2, "cookie"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 115
    .local v2, "cookie":J
    sget-object v4, Lcom/qihoo360/loader2/PMF;->sPluginMgr:Lcom/qihoo360/loader2/PmBase;

    iget-wide v4, v4, Lcom/qihoo360/loader2/PmBase;->mLocalCookie:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_3

    .line 116
    sget-boolean v4, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v4, :cond_2

    .line 117
    const-string v4, "ws001"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set cookie: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_2
    sget-object v4, Lcom/qihoo360/loader2/PMF;->sPluginMgr:Lcom/qihoo360/loader2/PmBase;

    iput-wide v2, v4, Lcom/qihoo360/loader2/PmBase;->mLocalCookie:J

    goto :goto_0

    .line 123
    :cond_3
    sget-object v4, Lcom/qihoo360/loader2/PMF;->sPluginMgr:Lcom/qihoo360/loader2/PmBase;

    iget-wide v4, v4, Lcom/qihoo360/loader2/PmBase;->mLocalCookie:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_5

    .line 124
    sget-boolean v4, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v4, :cond_4

    .line 125
    const-string v4, "ws001"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reset cookie: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_4
    sget-object v4, Lcom/qihoo360/loader2/PMF;->sPluginMgr:Lcom/qihoo360/loader2/PmBase;

    iput-wide v2, v4, Lcom/qihoo360/loader2/PmBase;->mLocalCookie:J

    .line 130
    invoke-static {}, Lcom/qihoo360/loader2/PluginProcessMain;->connectToHostSvc()V

    .line 134
    :cond_5
    :goto_0
    return-object v1

    .line 137
    .end local v1    # "rc":Landroid/net/Uri;
    .end local v2    # "cookie":J
    :cond_6
    const/4 v1, 0x0

    return-object v1
.end method
