.class public Lco/bxvip/skin/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# static fields
.field private static final DEFTYPE_COLOR:Ljava/lang/String; = "color"

.field private static final DEFTYPE_DRAWABLE:Ljava/lang/String; = "drawable"

.field private static final DEFTYPE_MIPMAP:Ljava/lang/String; = "mipmap"


# instance fields
.field private mPluginPackageName:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field private mSuffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "pluginPackageName"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lco/bxvip/skin/ResourceManager;->mResources:Landroid/content/res/Resources;

    .line 24
    iput-object p2, p0, Lco/bxvip/skin/ResourceManager;->mPluginPackageName:Ljava/lang/String;

    .line 26
    if-nez p3, :cond_0

    .line 27
    const-string p3, ""

    .line 29
    :cond_0
    iput-object p3, p0, Lco/bxvip/skin/ResourceManager;->mSuffix:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private appendSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lco/bxvip/skin/ResourceManager;->mSuffix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lco/bxvip/skin/ResourceManager;->mSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    return-object v0

    .line 68
    :cond_0
    return-object p1
.end method


# virtual methods
.method public getColor(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1}, Lco/bxvip/skin/ResourceManager;->appendSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lco/bxvip/skin/utils/L;->e(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lco/bxvip/skin/ResourceManager;->mResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lco/bxvip/skin/ResourceManager;->mResources:Landroid/content/res/Resources;

    const-string v2, "color"

    iget-object v3, p0, Lco/bxvip/skin/ResourceManager;->mPluginPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getColorStateList(Ljava/lang/String;)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 54
    :try_start_0
    invoke-direct {p0, p1}, Lco/bxvip/skin/ResourceManager;->appendSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lco/bxvip/skin/utils/L;->e(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lco/bxvip/skin/ResourceManager;->mResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lco/bxvip/skin/ResourceManager;->mResources:Landroid/content/res/Resources;

    const-string v2, "color"

    iget-object v3, p0, Lco/bxvip/skin/ResourceManager;->mPluginPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 60
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    .line 36
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-direct {p0, p1}, Lco/bxvip/skin/ResourceManager;->appendSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lco/bxvip/skin/ResourceManager;->mPluginPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lco/bxvip/skin/utils/L;->e(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lco/bxvip/skin/ResourceManager;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lco/bxvip/skin/ResourceManager;->mResources:Landroid/content/res/Resources;

    const-string v3, "drawable"

    iget-object v4, p0, Lco/bxvip/skin/ResourceManager;->mPluginPackageName:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 42
    goto :goto_0

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 41
    iget-object v2, p0, Lco/bxvip/skin/ResourceManager;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lco/bxvip/skin/ResourceManager;->mResources:Landroid/content/res/Resources;

    const-string v4, "mipmap"

    iget-object v5, p0, Lco/bxvip/skin/ResourceManager;->mPluginPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 43
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_0
    return-object v0
.end method
