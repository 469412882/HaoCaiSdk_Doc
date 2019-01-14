.class public Lcom/qihoo360/replugin/component/activity/ActivityInjector;
.super Ljava/lang/Object;
.source "ActivityInjector.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "activity-injector"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getIcon(Landroid/app/Activity;Landroid/content/pm/ActivityInfo;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "ai"    # Landroid/content/pm/ActivityInfo;

    .line 173
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 176
    .local v0, "res":Landroid/content/res/Resources;
    iget v1, p1, Landroid/content/pm/ActivityInfo;->icon:I

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/component/activity/ActivityInjector;->getIconById(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 179
    .local v1, "iconDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 180
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v0, v2}, Lcom/qihoo360/replugin/component/activity/ActivityInjector;->getIconById(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 184
    :cond_0
    if-nez v1, :cond_1

    .line 185
    invoke-static {}, Lcom/qihoo360/replugin/RePluginInternal;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 186
    .local v2, "appContext":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 187
    .local v3, "appResource":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 188
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v3, v5}, Lcom/qihoo360/replugin/component/activity/ActivityInjector;->getIconById(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 191
    .end local v2    # "appContext":Landroid/content/Context;
    .end local v3    # "appResource":Landroid/content/res/Resources;
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v2, 0x0

    .line 192
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    .line 193
    move-object v3, v1

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 196
    :cond_2
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_3

    .line 197
    const-string v3, "activity-injector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bitmap = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_3
    return-object v2
.end method

.method private static getIconById(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .line 203
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 204
    return-object v0

    .line 207
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 208
    :catch_0
    move-exception v1

    .line 209
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 210
    return-object v0
.end method

.method private static getLabel(Landroid/app/Activity;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "ai"    # Landroid/content/pm/ActivityInfo;

    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 135
    .local v0, "res":Landroid/content/res/Resources;
    iget v1, p1, Landroid/content/pm/ActivityInfo;->labelRes:I

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/component/activity/ActivityInjector;->getLabelById(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "label":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-static {v0, v2}, Lcom/qihoo360/replugin/component/activity/ActivityInjector;->getLabelById(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    .line 143
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    invoke-static {}, Lcom/qihoo360/replugin/RePluginInternal;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 145
    .local v2, "appContext":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 146
    .local v3, "appResource":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 147
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-static {v3, v5}, Lcom/qihoo360/replugin/component/activity/ActivityInjector;->getLabelById(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    .line 150
    .end local v2    # "appContext":Landroid/content/Context;
    .end local v3    # "appResource":Landroid/content/res/Resources;
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_2

    .line 151
    const-string v2, "activity-injector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "label = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_2
    return-object v1
.end method

.method private static getLabelById(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .line 157
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 158
    return-object v0

    .line 161
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 162
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 164
    return-object v0
.end method

.method private static inject(Landroid/app/Activity;Landroid/content/pm/ActivityInfo;I)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "ai"    # Landroid/content/pm/ActivityInfo;
    .param p2, "frameworkVer"    # I

    .line 76
    const/4 v0, 0x4

    if-lt p2, v0, :cond_0

    .line 77
    invoke-static {p0, p1}, Lcom/qihoo360/replugin/component/activity/ActivityInjector;->injectTaskDescription(Landroid/app/Activity;Landroid/content/pm/ActivityInfo;)V

    .line 79
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static inject(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "plugin"    # Ljava/lang/String;
    .param p2, "realActivity"    # Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qihoo360/loader2/MP;->getPlugin(Ljava/lang/String;Z)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v1

    .line 61
    .local v1, "pi":Lcom/qihoo360/replugin/model/PluginInfo;
    if-nez v1, :cond_0

    .line 62
    return v0

    .line 64
    :cond_0
    invoke-static {p1}, Lcom/qihoo360/replugin/RePlugin;->fetchComponentList(Ljava/lang/String;)Lcom/qihoo360/replugin/component/ComponentList;

    move-result-object v2

    .line 65
    .local v2, "cl":Lcom/qihoo360/replugin/component/ComponentList;
    if-nez v2, :cond_1

    .line 66
    return v0

    .line 69
    :cond_1
    invoke-virtual {v2, p2}, Lcom/qihoo360/replugin/component/ComponentList;->getActivity(Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 70
    .local v3, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/qihoo360/replugin/model/PluginInfo;->getFrameworkVersion()I

    move-result v4

    invoke-static {p0, v3, v4}, Lcom/qihoo360/replugin/component/activity/ActivityInjector;->inject(Landroid/app/Activity;Landroid/content/pm/ActivityInfo;I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    nop

    :cond_2
    return v0
.end method

.method private static injectTaskDescription(Landroid/app/Activity;Landroid/content/pm/ActivityInfo;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "ai"    # Landroid/content/pm/ActivityInfo;

    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 90
    return-void

    .line 93
    :cond_0
    if-eqz p0, :cond_6

    if-nez p1, :cond_1

    goto :goto_1

    .line 97
    :cond_1
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_2

    .line 98
    const-string v0, "activity-injector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v0, "activity-injector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ai = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_2
    invoke-static {p0, p1}, Lcom/qihoo360/replugin/component/activity/ActivityInjector;->getLabel(Landroid/app/Activity;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "label":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 106
    return-void

    .line 110
    :cond_3
    invoke-static {p0, p1}, Lcom/qihoo360/replugin/component/activity/ActivityInjector;->getIcon(Landroid/app/Activity;Landroid/content/pm/ActivityInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 114
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_4

    .line 115
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v2, v0, v1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 115
    .local v2, "td":Landroid/app/ActivityManager$TaskDescription;
    goto :goto_0

    .line 117
    .end local v2    # "td":Landroid/app/ActivityManager$TaskDescription;
    :cond_4
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v2, v0}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;)V

    .line 120
    .restart local v2    # "td":Landroid/app/ActivityManager$TaskDescription;
    :goto_0
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_5

    .line 121
    const-string v3, "activity-injector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "td = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_5
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 125
    return-void

    .line 94
    .end local v0    # "label":Ljava/lang/String;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "td":Landroid/app/ActivityManager$TaskDescription;
    :cond_6
    :goto_1
    return-void
.end method
