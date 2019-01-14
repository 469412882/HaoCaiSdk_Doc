.class public abstract Lcom/qihoo360/replugin/component/provider/PluginPitProviderBase;
.super Landroid/content/ContentProvider;
.source "PluginPitProviderBase.java"


# static fields
.field public static final AUTHORITY_PREFIX:Ljava/lang/String;


# instance fields
.field mHelper:Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".Plugin.NP."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qihoo360/replugin/component/provider/PluginPitProviderBase;->AUTHORITY_PREFIX:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 40
    new-instance v0, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;

    invoke-direct {v0, p1}, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qihoo360/replugin/component/provider/PluginPitProviderBase;->mHelper:Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;

    .line 41
    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .line 106
    iget-object v0, p0, Lcom/qihoo360/replugin/component/provider/PluginPitProviderBase;->mHelper:Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;

    invoke-virtual {v0, p1}, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;->toPluginUri(Landroid/net/Uri;)Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;

    move-result-object v0

    .line 107
    .local v0, "pu":Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 108
    return v1

    .line 110
    :cond_0
    iget-object v2, p0, Lcom/qihoo360/replugin/component/provider/PluginPitProviderBase;->mHelper:Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;

    invoke-virtual {v2, v0}, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;->getProvider(Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;)Landroid/content/ContentProvider;

    move-result-object v2

    .line 111
    .local v2, "cp":Landroid/content/ContentProvider;
    if-nez v2, :cond_1

    .line 112
    return v1

    .line 114
    :cond_1
    iget-object v1, v0, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;->transferredUri:Landroid/net/Uri;

    invoke-virtual {v2, v1, p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v1

    return v1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/qihoo360/replugin/component/provider/PluginPitProviderBase;->mHelper:Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;

    invoke-virtual {v0, p1}, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;->toPluginUri(Landroid/net/Uri;)Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;

    move-result-object v0

    .line 120
    .local v0, "pu":Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 121
    return v1

    .line 123
    :cond_0
    iget-object v2, p0, Lcom/qihoo360/replugin/component/provider/PluginPitProviderBase;->mHelper:Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;

    invoke-virtual {v2, v0}, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;->getProvider(Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;)Landroid/content/ContentProvider;

    move-result-object v2

    .line 124
    .local v2, "cp":Landroid/content/ContentProvider;
    if-nez v2, :cond_1

    .line 125
    return v1

    .line 127
    :cond_1
    iget-object v1, v0, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;->transferredUri:Landroid/net/Uri;

    invoke-virtual {v2, v1, p2, p3}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 80
    iget-object v0, p0, Lcom/qihoo360/replugin/component/provider/PluginPitProviderBase;->mHelper:Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;

    invoke-virtual {v0, p1}, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;->toPluginUri(Landroid/net/Uri;)Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;

    move-result-object v0

    .line 81
    .local v0, "pu":Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 82
    return-object v1

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/qihoo360/replugin/component/provider/PluginPitProviderBase;->mHelper:Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;

    invoke-virtual {v2, v0}, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;->getProvider(Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;)Landroid/content/ContentProvider;

    move-result-object v2

    .line 85
    .local v2, "cp":Landroid/content/ContentProvider;
    if-nez v2, :cond_1

    .line 86
    return-object v1

    .line 88
    :cond_1
    iget-object v1, v0, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;->transferredUri:Landroid/net/Uri;

    invoke-virtual {v2, v1}, Landroid/content/ContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 93
    iget-object v0, p0, Lcom/qihoo360/replugin/component/provider/PluginPitProviderBase;->mHelper:Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;

    invoke-virtual {v0, p1}, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;->toPluginUri(Landroid/net/Uri;)Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;

    move-result-object v0

    .line 94
    .local v0, "pu":Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 95
    return-object v1

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/qihoo360/replugin/component/provider/PluginPitProviderBase;->mHelper:Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;

    invoke-virtual {v2, v0}, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;->getProvider(Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;)Landroid/content/ContentProvider;

    move-result-object v2

    .line 98
    .local v2, "cp":Landroid/content/ContentProvider;
    if-nez v2, :cond_1

    .line 99
    return-object v1

    .line 101
    :cond_1
    iget-object v1, v0, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;->transferredUri:Landroid/net/Uri;

    invoke-virtual {v2, v1, p2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public onCreate()Z
    .locals 1

    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public onLowMemory()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/qihoo360/replugin/component/provider/PluginPitProviderBase;->mHelper:Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;

    iget-object v0, v0, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;->mProviderAuthorityMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentProvider;

    .line 146
    .local v1, "cp":Landroid/content/ContentProvider;
    invoke-virtual {v1}, Landroid/content/ContentProvider;->onLowMemory()V

    .line 147
    .end local v1    # "cp":Landroid/content/ContentProvider;
    goto :goto_0

    .line 148
    :cond_0
    invoke-super {p0}, Landroid/content/ContentProvider;->onLowMemory()V

    .line 149
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2
    .param p1, "level"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/qihoo360/replugin/component/provider/PluginPitProviderBase;->mHelper:Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;

    iget-object v0, v0, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;->mProviderAuthorityMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentProvider;

    .line 155
    .local v1, "cp":Landroid/content/ContentProvider;
    invoke-virtual {v1, p1}, Landroid/content/ContentProvider;->onTrimMemory(I)V

    .line 156
    .end local v1    # "cp":Landroid/content/ContentProvider;
    goto :goto_0

    .line 157
    :cond_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->onTrimMemory(I)V

    .line 158
    return-void
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/qihoo360/replugin/component/provider/PluginPitProviderBase;->mHelper:Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;

    invoke-virtual {v0, p1}, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;->toPluginUri(Landroid/net/Uri;)Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;

    move-result-object v0

    .line 52
    .local v0, "pu":Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 53
    return-object v1

    .line 55
    :cond_0
    iget-object v2, p0, Lcom/qihoo360/replugin/component/provider/PluginPitProviderBase;->mHelper:Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;

    invoke-virtual {v2, v0}, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;->getProvider(Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;)Landroid/content/ContentProvider;

    move-result-object v2

    .line 56
    .local v2, "cp":Landroid/content/ContentProvider;
    if-nez v2, :cond_1

    .line 57
    return-object v1

    .line 59
    :cond_1
    iget-object v4, v0, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;->transferredUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    move-object v0, p0

    .line 67
    iget-object v1, v0, Lcom/qihoo360/replugin/component/provider/PluginPitProviderBase;->mHelper:Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;

    move-object v2, p1

    invoke-virtual {v1, v2}, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;->toPluginUri(Landroid/net/Uri;)Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;

    move-result-object v1

    .line 68
    .local v1, "pu":Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;
    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 69
    return-object v3

    .line 71
    :cond_0
    iget-object v4, v0, Lcom/qihoo360/replugin/component/provider/PluginPitProviderBase;->mHelper:Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;

    invoke-virtual {v4, v1}, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;->getProvider(Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;)Landroid/content/ContentProvider;

    move-result-object v4

    .line 72
    .local v4, "cp":Landroid/content/ContentProvider;
    if-nez v4, :cond_1

    .line 73
    return-object v3

    .line 75
    :cond_1
    iget-object v6, v1, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;->transferredUri:Landroid/net/Uri;

    move-object v5, v4

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-virtual/range {v5 .. v11}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    return-object v3
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/qihoo360/replugin/component/provider/PluginPitProviderBase;->mHelper:Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;

    invoke-virtual {v0, p1}, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;->toPluginUri(Landroid/net/Uri;)Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;

    move-result-object v0

    .line 133
    .local v0, "pu":Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 134
    return v1

    .line 136
    :cond_0
    iget-object v2, p0, Lcom/qihoo360/replugin/component/provider/PluginPitProviderBase;->mHelper:Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;

    invoke-virtual {v2, v0}, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;->getProvider(Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;)Landroid/content/ContentProvider;

    move-result-object v2

    .line 137
    .local v2, "cp":Landroid/content/ContentProvider;
    if-nez v2, :cond_1

    .line 138
    return v1

    .line 140
    :cond_1
    iget-object v1, v0, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;->transferredUri:Landroid/net/Uri;

    invoke-virtual {v2, v1, p2, p3, p4}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method
