.class public Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;
.super Ljava/lang/Object;
.source "PluginProviderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;
    }
.end annotation


# static fields
.field private static final SCHEME_AND_SSP:Ljava/lang/String; = "content://"

.field private static final TAG:Ljava/lang/String; = "PluginProviderHelper"


# instance fields
.field private final mAuthority:Ljava/lang/String;

.field mProviderAuthorityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/ContentProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;->mProviderAuthorityMap:Ljava/util/Map;

    .line 47
    iput-object p1, p0, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;->mAuthority:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private installProvider(Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;Ljava/lang/String;)Landroid/content/ContentProvider;
    .locals 9
    .param p1, "pu"    # Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;
    .param p2, "auth"    # Ljava/lang/String;

    .line 141
    iget-object v0, p1, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;->plugin:Ljava/lang/String;

    invoke-static {v0}, Lcom/qihoo360/i/Factory;->queryPluginComponentList(Ljava/lang/String;)Lcom/qihoo360/replugin/component/ComponentList;

    move-result-object v0

    .line 142
    .local v0, "col":Lcom/qihoo360/replugin/component/ComponentList;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 143
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_0

    .line 144
    const-string v2, "PluginProviderHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installProvider(): Fetch Component List Error! auth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    return-object v1

    .line 148
    :cond_1
    invoke-virtual {v0, p2}, Lcom/qihoo360/replugin/component/ComponentList;->getProviderByAuthority(Ljava/lang/String;)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    .line 149
    .local v2, "pi":Landroid/content/pm/ProviderInfo;
    if-nez v2, :cond_3

    .line 150
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_2

    .line 151
    const-string v3, "PluginProviderHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "installProvider(): Not register! auth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_2
    return-object v1

    .line 157
    :cond_3
    iget-object v3, p1, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;->plugin:Ljava/lang/String;

    invoke-static {v3}, Lcom/qihoo360/i/Factory;->queryPluginContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v3

    .line 158
    .local v3, "plgc":Landroid/content/Context;
    if-nez v3, :cond_5

    .line 159
    sget-boolean v4, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v4, :cond_4

    .line 160
    const-string v4, "PluginProviderHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "installProvider(): Fetch Context Error! auth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_4
    return-object v1

    .line 164
    :cond_5
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 165
    .local v4, "cl":Ljava/lang/ClassLoader;
    if-nez v4, :cond_7

    .line 166
    sget-boolean v5, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v5, :cond_6

    .line 167
    const-string v5, "PluginProviderHelper"

    const-string v6, "installProvider(): ClassLoader is Null!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_6
    return-object v1

    .line 173
    :cond_7
    :try_start_0
    iget-object v5, v2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentProvider;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 179
    .local v5, "cp":Landroid/content/ContentProvider;
    nop

    .line 178
    nop

    .line 183
    :try_start_1
    invoke-virtual {v5, v3, v2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    nop

    .line 194
    return-object v5

    .line 184
    :catch_0
    move-exception v6

    .line 189
    .local v6, "e":Ljava/lang/Throwable;
    sget-boolean v7, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v7, :cond_8

    .line 190
    const-string v7, "PluginProviderHelper"

    const-string v8, "installProvider(): Attach info fail!"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    :cond_8
    return-object v1

    .line 174
    .end local v5    # "cp":Landroid/content/ContentProvider;
    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v5

    .line 175
    .local v5, "e":Ljava/lang/Throwable;
    sget-boolean v6, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v6, :cond_9

    .line 176
    const-string v6, "PluginProviderHelper"

    const-string v7, "installProvider(): New instance fail!"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    :cond_9
    return-object v1
.end method

.method private removeHostAuthorityAndInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "plugin"    # Ljava/lang/String;

    .line 135
    const-string v0, "content://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 136
    .local v0, "startsWith":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getProvider(Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;)Landroid/content/ContentProvider;
    .locals 5
    .param p1, "pu"    # Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;

    .line 100
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 101
    const-string v0, "PluginProviderHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProvider(): Start... pu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    iget-object v0, p1, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;->transferredUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "auth":Ljava/lang/String;
    iget-object v1, p0, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;->mProviderAuthorityMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentProvider;

    .line 108
    .local v1, "cp":Landroid/content/ContentProvider;
    if-eqz v1, :cond_2

    .line 109
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_1

    .line 110
    const-string v2, "PluginProviderHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProvider(): Exists! Return now. cp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_1
    return-object v1

    .line 116
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;->installProvider(Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;Ljava/lang/String;)Landroid/content/ContentProvider;

    move-result-object v1

    .line 117
    if-nez v1, :cond_4

    .line 118
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_3

    .line 119
    const-string v2, "PluginProviderHelper"

    const-string v3, "getProvider(): Install fail!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_3
    const/4 v2, 0x0

    return-object v2

    .line 125
    :cond_4
    iget-object v2, p0, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;->mProviderAuthorityMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_5

    .line 128
    const-string v2, "PluginProviderHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProvider(): Okay! pu="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; cp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_5
    return-object v1
.end method

.method public toPluginUri(Landroid/net/Uri;)Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .line 56
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "PluginProviderHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toPluginUri(): Start... Uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;->mAuthority:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 61
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_1

    .line 62
    const-string v0, "PluginProviderHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toPluginUri(): Authority error! auth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_1
    return-object v1

    .line 67
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 68
    .local v0, "fs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_4

    .line 69
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_3

    .line 70
    const-string v2, "PluginProviderHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toPluginUri(): Less than 2 fragments, size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_3
    return-object v1

    .line 76
    :cond_4
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 79
    .local v2, "pn":Ljava/lang/String;
    invoke-static {v2}, Lcom/qihoo360/replugin/RePlugin;->isPluginInstalled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 80
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_5

    .line 81
    const-string v3, "PluginProviderHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toPluginUri(): Plugin not exists! pn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_5
    return-object v1

    .line 87
    :cond_6
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "ut":Ljava/lang/String;
    invoke-direct {p0, v1, v2}, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper;->removeHostAuthorityAndInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "tut":Ljava/lang/String;
    new-instance v4, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;

    invoke-direct {v4}, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;-><init>()V

    .line 91
    .local v4, "pu":Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;
    iput-object v2, v4, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;->plugin:Ljava/lang/String;

    .line 92
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v4, Lcom/qihoo360/replugin/component/provider/PluginProviderHelper$PluginUri;->transferredUri:Landroid/net/Uri;

    .line 93
    sget-boolean v5, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v5, :cond_7

    .line 94
    const-string v5, "PluginProviderHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toPluginUri(): End! t-uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_7
    return-object v4
.end method
