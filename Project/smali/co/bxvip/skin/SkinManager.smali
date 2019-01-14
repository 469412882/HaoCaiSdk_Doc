.class public Lco/bxvip/skin/SkinManager;
.super Ljava/lang/Object;
.source "SkinManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/bxvip/skin/SkinManager$SingletonHolder;
    }
.end annotation


# instance fields
.field private mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurPluginPath:Ljava/lang/String;

.field private mCurPluginPkg:Ljava/lang/String;

.field private mPrefUtils:Lco/bxvip/skin/utils/PrefUtils;

.field private mResourceManager:Lco/bxvip/skin/ResourceManager;

.field private mResources:Landroid/content/res/Resources;

.field private mSuffix:Ljava/lang/String;

.field private usePlugin:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lco/bxvip/skin/SkinManager;->mSuffix:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/bxvip/skin/SkinManager;->mActivities:Ljava/util/List;

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Lco/bxvip/skin/SkinManager$1;)V
    .locals 0
    .param p1, "x0"    # Lco/bxvip/skin/SkinManager$1;

    .line 27
    invoke-direct {p0}, Lco/bxvip/skin/SkinManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lco/bxvip/skin/SkinManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lco/bxvip/skin/SkinManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lco/bxvip/skin/SkinManager;->loadPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lco/bxvip/skin/SkinManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lco/bxvip/skin/SkinManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lco/bxvip/skin/SkinManager;->updatePluginInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkPluginParamsThrow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "skinPath"    # Ljava/lang/String;
    .param p2, "skinPkgName"    # Ljava/lang/String;

    .line 108
    invoke-direct {p0, p1, p2}, Lco/bxvip/skin/SkinManager;->validPluginParams(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "skinPluginPath or skinPkgName not valid ! "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    return-void
.end method

.method private clearPluginInfo()V
    .locals 2

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lco/bxvip/skin/SkinManager;->mCurPluginPath:Ljava/lang/String;

    .line 148
    iput-object v0, p0, Lco/bxvip/skin/SkinManager;->mCurPluginPkg:Ljava/lang/String;

    .line 149
    const/4 v1, 0x0

    iput-boolean v1, p0, Lco/bxvip/skin/SkinManager;->usePlugin:Z

    .line 150
    iput-object v0, p0, Lco/bxvip/skin/SkinManager;->mSuffix:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lco/bxvip/skin/SkinManager;->mPrefUtils:Lco/bxvip/skin/utils/PrefUtils;

    invoke-virtual {v0}, Lco/bxvip/skin/utils/PrefUtils;->clear()Z

    .line 152
    return-void
.end method

.method public static getInstance()Lco/bxvip/skin/SkinManager;
    .locals 1

    .line 50
    sget-object v0, Lco/bxvip/skin/SkinManager$SingletonHolder;->sInstance:Lco/bxvip/skin/SkinManager;

    return-object v0
.end method

.method private getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 2
    .param p1, "skinPluginPath"    # Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lco/bxvip/skin/SkinManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 77
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    return-object v1
.end method

.method private loadPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "skinPath"    # Ljava/lang/String;
    .param p2, "skinPkgName"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    const-class v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    .line 83
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "addAssetPath"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 84
    .local v1, "addAssetPath":Ljava/lang/reflect/Method;
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v2, p0, Lco/bxvip/skin/SkinManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 87
    .local v2, "superRes":Landroid/content/res/Resources;
    new-instance v4, Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {v4, v0, v5, v6}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iput-object v4, p0, Lco/bxvip/skin/SkinManager;->mResources:Landroid/content/res/Resources;

    .line 88
    new-instance v4, Lco/bxvip/skin/ResourceManager;

    iget-object v5, p0, Lco/bxvip/skin/SkinManager;->mResources:Landroid/content/res/Resources;

    invoke-direct {v4, v5, p2, p3}, Lco/bxvip/skin/ResourceManager;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lco/bxvip/skin/SkinManager;->mResourceManager:Lco/bxvip/skin/ResourceManager;

    .line 89
    iput-boolean v3, p0, Lco/bxvip/skin/SkinManager;->usePlugin:Z

    .line 90
    return-void
.end method

.method private updatePluginInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "skinPluginPath"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lco/bxvip/skin/SkinManager;->mPrefUtils:Lco/bxvip/skin/utils/PrefUtils;

    invoke-virtual {v0, p1}, Lco/bxvip/skin/utils/PrefUtils;->putPluginPath(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lco/bxvip/skin/SkinManager;->mPrefUtils:Lco/bxvip/skin/utils/PrefUtils;

    invoke-virtual {v0, p2}, Lco/bxvip/skin/utils/PrefUtils;->putPluginPkg(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lco/bxvip/skin/SkinManager;->mPrefUtils:Lco/bxvip/skin/utils/PrefUtils;

    invoke-virtual {v0, p3}, Lco/bxvip/skin/utils/PrefUtils;->putPluginSuffix(Ljava/lang/String;)V

    .line 159
    iput-object p2, p0, Lco/bxvip/skin/SkinManager;->mCurPluginPkg:Ljava/lang/String;

    .line 160
    iput-object p1, p0, Lco/bxvip/skin/SkinManager;->mCurPluginPath:Ljava/lang/String;

    .line 161
    iput-object p3, p0, Lco/bxvip/skin/SkinManager;->mSuffix:Ljava/lang/String;

    .line 162
    return-void
.end method

.method private validPluginParams(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "skinPath"    # Ljava/lang/String;
    .param p2, "skinPkgName"    # Ljava/lang/String;

    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 99
    return v1

    .line 101
    :cond_1
    invoke-direct {p0, p1}, Lco/bxvip/skin/SkinManager;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 102
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 103
    return v1

    .line 104
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 94
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_3
    :goto_0
    return v1
.end method


# virtual methods
.method public apply(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 227
    invoke-static {p1}, Lco/bxvip/skin/attr/SkinAttrSupport;->getSkinViews(Landroid/app/Activity;)Ljava/util/List;

    move-result-object v0

    .line 228
    .local v0, "skinViews":Ljava/util/List;, "Ljava/util/List<Lco/bxvip/skin/attr/SkinView;>;"
    if-nez v0, :cond_0

    return-void

    .line 229
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/bxvip/skin/attr/SkinView;

    .line 230
    .local v2, "skinView":Lco/bxvip/skin/attr/SkinView;
    invoke-virtual {v2}, Lco/bxvip/skin/attr/SkinView;->apply()V

    .line 231
    .end local v2    # "skinView":Lco/bxvip/skin/attr/SkinView;
    goto :goto_0

    .line 232
    :cond_1
    return-void
.end method

.method public changeSkin(Ljava/lang/String;)V
    .locals 1
    .param p1, "suffix"    # Ljava/lang/String;

    .line 140
    invoke-direct {p0}, Lco/bxvip/skin/SkinManager;->clearPluginInfo()V

    .line 141
    iput-object p1, p0, Lco/bxvip/skin/SkinManager;->mSuffix:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lco/bxvip/skin/SkinManager;->mPrefUtils:Lco/bxvip/skin/utils/PrefUtils;

    invoke-virtual {v0, p1}, Lco/bxvip/skin/utils/PrefUtils;->putPluginSuffix(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lco/bxvip/skin/SkinManager;->notifyChangedListeners()V

    .line 144
    return-void
.end method

.method public changeSkin(Ljava/lang/String;Ljava/lang/String;Lco/bxvip/skin/callback/ISkinChangingCallback;)V
    .locals 1
    .param p1, "skinPluginPath"    # Ljava/lang/String;
    .param p2, "skinPluginPkg"    # Ljava/lang/String;
    .param p3, "callback"    # Lco/bxvip/skin/callback/ISkinChangingCallback;

    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lco/bxvip/skin/SkinManager;->changeSkin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/bxvip/skin/callback/ISkinChangingCallback;)V

    .line 167
    return-void
.end method

.method public changeSkin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/bxvip/skin/callback/ISkinChangingCallback;)V
    .locals 8
    .param p1, "skinPluginPath"    # Ljava/lang/String;
    .param p2, "skinPluginPkg"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "callback"    # Lco/bxvip/skin/callback/ISkinChangingCallback;

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeSkin = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lco/bxvip/skin/utils/L;->e(Ljava/lang/String;)V

    .line 180
    if-nez p4, :cond_0

    .line 181
    sget-object p4, Lco/bxvip/skin/callback/ISkinChangingCallback;->DEFAULT_SKIN_CHANGING_CALLBACK:Lco/bxvip/skin/callback/ISkinChangingCallback$DefaultSkinChangingCallback;

    .line 182
    :cond_0
    move-object v6, p4

    .line 184
    .local v6, "skinChangingCallback":Lco/bxvip/skin/callback/ISkinChangingCallback;
    invoke-interface {v6}, Lco/bxvip/skin/callback/ISkinChangingCallback;->onStart()V

    .line 187
    :try_start_0
    invoke-direct {p0, p1, p2}, Lco/bxvip/skin/SkinManager;->checkPluginParamsThrow(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    nop

    .line 193
    new-instance v7, Lco/bxvip/skin/SkinManager$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lco/bxvip/skin/SkinManager$1;-><init>(Lco/bxvip/skin/SkinManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/bxvip/skin/callback/ISkinChangingCallback;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 222
    invoke-virtual {v7, v0}, Lco/bxvip/skin/SkinManager$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 223
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "checkPlugin occur error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v1}, Lco/bxvip/skin/callback/ISkinChangingCallback;->onError(Ljava/lang/Exception;)V

    .line 190
    return-void
.end method

.method public getResourceManager()Lco/bxvip/skin/ResourceManager;
    .locals 4

    .line 127
    iget-boolean v0, p0, Lco/bxvip/skin/SkinManager;->usePlugin:Z

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lco/bxvip/skin/ResourceManager;

    iget-object v1, p0, Lco/bxvip/skin/SkinManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lco/bxvip/skin/SkinManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lco/bxvip/skin/SkinManager;->mSuffix:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lco/bxvip/skin/ResourceManager;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lco/bxvip/skin/SkinManager;->mResourceManager:Lco/bxvip/skin/ResourceManager;

    .line 130
    :cond_0
    iget-object v0, p0, Lco/bxvip/skin/SkinManager;->mResourceManager:Lco/bxvip/skin/ResourceManager;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lco/bxvip/skin/SkinManager;->mContext:Landroid/content/Context;

    .line 56
    new-instance v0, Lco/bxvip/skin/utils/PrefUtils;

    iget-object v1, p0, Lco/bxvip/skin/SkinManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lco/bxvip/skin/utils/PrefUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lco/bxvip/skin/SkinManager;->mPrefUtils:Lco/bxvip/skin/utils/PrefUtils;

    .line 58
    iget-object v0, p0, Lco/bxvip/skin/SkinManager;->mPrefUtils:Lco/bxvip/skin/utils/PrefUtils;

    invoke-virtual {v0}, Lco/bxvip/skin/utils/PrefUtils;->getPluginPath()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "skinPluginPath":Ljava/lang/String;
    iget-object v1, p0, Lco/bxvip/skin/SkinManager;->mPrefUtils:Lco/bxvip/skin/utils/PrefUtils;

    invoke-virtual {v1}, Lco/bxvip/skin/utils/PrefUtils;->getPluginPkgName()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "skinPluginPkg":Ljava/lang/String;
    iget-object v2, p0, Lco/bxvip/skin/SkinManager;->mPrefUtils:Lco/bxvip/skin/utils/PrefUtils;

    invoke-virtual {v2}, Lco/bxvip/skin/utils/PrefUtils;->getSuffix()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/bxvip/skin/SkinManager;->mSuffix:Ljava/lang/String;

    .line 62
    invoke-direct {p0, v0, v1}, Lco/bxvip/skin/SkinManager;->validPluginParams(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 63
    return-void

    .line 66
    :cond_0
    :try_start_0
    iget-object v2, p0, Lco/bxvip/skin/SkinManager;->mSuffix:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lco/bxvip/skin/SkinManager;->loadPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iput-object v0, p0, Lco/bxvip/skin/SkinManager;->mCurPluginPath:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lco/bxvip/skin/SkinManager;->mCurPluginPkg:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_0

    .line 69
    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lco/bxvip/skin/SkinManager;->mPrefUtils:Lco/bxvip/skin/utils/PrefUtils;

    invoke-virtual {v3}, Lco/bxvip/skin/utils/PrefUtils;->clear()Z

    .line 71
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public injectSkin(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v0, "skinViews":Ljava/util/List;, "Ljava/util/List<Lco/bxvip/skin/attr/SkinView;>;"
    invoke-static {p1, v0}, Lco/bxvip/skin/attr/SkinAttrSupport;->addSkinViews(Landroid/view/View;Ljava/util/List;)V

    .line 264
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/bxvip/skin/attr/SkinView;

    .line 265
    .local v2, "skinView":Lco/bxvip/skin/attr/SkinView;
    invoke-virtual {v2}, Lco/bxvip/skin/attr/SkinView;->apply()V

    .line 266
    .end local v2    # "skinView":Lco/bxvip/skin/attr/SkinView;
    goto :goto_0

    .line 267
    :cond_0
    return-void
.end method

.method public needChangeSkin()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lco/bxvip/skin/SkinManager;->usePlugin:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lco/bxvip/skin/SkinManager;->mSuffix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public notifyChangedListeners()V
    .locals 2

    .line 251
    iget-object v0, p0, Lco/bxvip/skin/SkinManager;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 252
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {p0, v1}, Lco/bxvip/skin/SkinManager;->apply(Landroid/app/Activity;)V

    .line 253
    .end local v1    # "activity":Landroid/app/Activity;
    goto :goto_0

    .line 254
    :cond_0
    return-void
.end method

.method public register(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 235
    iget-object v0, p0, Lco/bxvip/skin/SkinManager;->mActivities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lco/bxvip/skin/SkinManager$2;

    invoke-direct {v1, p0, p1}, Lco/bxvip/skin/SkinManager$2;-><init>(Lco/bxvip/skin/SkinManager;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 243
    return-void
.end method

.method public removeAnySkin()V
    .locals 1

    .line 115
    const-string v0, "removeAnySkin"

    invoke-static {v0}, Lco/bxvip/skin/utils/L;->e(Ljava/lang/String;)V

    .line 116
    invoke-direct {p0}, Lco/bxvip/skin/SkinManager;->clearPluginInfo()V

    .line 117
    invoke-virtual {p0}, Lco/bxvip/skin/SkinManager;->notifyChangedListeners()V

    .line 118
    return-void
.end method

.method public unregister(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 246
    iget-object v0, p0, Lco/bxvip/skin/SkinManager;->mActivities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 247
    return-void
.end method
