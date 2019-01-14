.class public Lcom/qihoo360/loader2/PluginStatusController;
.super Ljava/lang/Object;
.source "PluginStatusController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/loader2/PluginStatusController$PluginStatus;
    }
.end annotation


# static fields
.field private static final KEY_STATUS_NAME_PREFIX:Ljava/lang/String; = "ps-"

.field private static final PREF_FILE:Ljava/lang/String; = "plugins"

.field public static final STATUS_DISABLE_BY_CLOUD:I = -0x2

.field public static final STATUS_DISABLE_BY_CRASH:I = -0x1

.field public static final STATUS_OK:I

.field private static sAppContext:Landroid/app/Application;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    return-void
.end method

.method private static addStatusToPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pn"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/lang/String;

    .line 172
    const-string v0, "plugins"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 173
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ps-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 174
    return-void
.end method

.method public static clearStatus()V
    .locals 5

    .line 136
    sget-object v0, Lcom/qihoo360/loader2/PluginStatusController;->sAppContext:Landroid/app/Application;

    const-string v1, "plugins"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 137
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 138
    .local v1, "e":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 139
    .local v3, "key":Ljava/lang/String;
    const-string v4, "ps-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 140
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 142
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 143
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 144
    return-void
.end method

.method public static getStatus(Ljava/lang/String;)I
    .locals 1
    .param p0, "pn"    # Ljava/lang/String;

    .line 96
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/qihoo360/loader2/PluginStatusController;->getStatus(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getStatus(Ljava/lang/String;I)I
    .locals 5
    .param p0, "pn"    # Ljava/lang/String;
    .param p1, "ver"    # I

    .line 107
    invoke-static {p0}, Lcom/qihoo360/loader2/PluginStatusController;->getStatusImpl(Ljava/lang/String;)Lcom/qihoo360/loader2/PluginStatusController$PluginStatus;

    move-result-object v0

    .line 110
    .local v0, "ps":Lcom/qihoo360/loader2/PluginStatusController$PluginStatus;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 111
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_0

    .line 112
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PStatusC.getStatus(): ps is null. pn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    return v1

    .line 118
    :cond_1
    const/4 v2, -0x1

    if-eq p1, v2, :cond_3

    invoke-virtual {v0}, Lcom/qihoo360/loader2/PluginStatusController$PluginStatus;->getVersion()I

    move-result v2

    if-eq v2, p1, :cond_3

    .line 119
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_2

    .line 120
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PStatusC.getStatus(): ver not match. ver="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; expect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/qihoo360/loader2/PluginStatusController$PluginStatus;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; pn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_2
    return v1

    .line 124
    :cond_3
    invoke-virtual {v0}, Lcom/qihoo360/loader2/PluginStatusController$PluginStatus;->getStatus()I

    move-result v1

    .line 125
    .local v1, "st":I
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_4

    .line 126
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PStatusC.getStatus(): ver match. ver="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; pn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; st="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_4
    return v1
.end method

.method private static getStatusFromPref(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pn"    # Ljava/lang/String;

    .line 182
    const-string v0, "plugins"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 183
    .local v0, "pref":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ps-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getStatusImpl(Ljava/lang/String;)Lcom/qihoo360/loader2/PluginStatusController$PluginStatus;
    .locals 5
    .param p0, "pn"    # Ljava/lang/String;

    .line 152
    sget-object v0, Lcom/qihoo360/loader2/PluginStatusController;->sAppContext:Landroid/app/Application;

    invoke-static {v0, p0}, Lcom/qihoo360/loader2/PluginStatusController;->getStatusFromPref(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "pst":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 154
    return-object v2

    .line 159
    :cond_0
    :try_start_0
    new-instance v1, Lcom/qihoo360/loader2/PluginStatusController$PluginStatus;

    invoke-direct {v1, v0}, Lcom/qihoo360/loader2/PluginStatusController$PluginStatus;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .local v1, "ps":Lcom/qihoo360/loader2/PluginStatusController$PluginStatus;
    nop

    .line 166
    nop

    .line 168
    return-object v1

    .line 160
    .end local v1    # "ps":Lcom/qihoo360/loader2/PluginStatusController$PluginStatus;
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Lorg/json/JSONException;
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_1

    .line 163
    const-string v3, "ws001"

    const-string v4, "PStatusC.getStatus(): json err."

    invoke-static {v3, v4, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    :cond_1
    sget-object v3, Lcom/qihoo360/loader2/PluginStatusController;->sAppContext:Landroid/app/Application;

    invoke-static {v3, p0}, Lcom/qihoo360/loader2/PluginStatusController;->removeStatusToPref(Landroid/content/Context;Ljava/lang/String;)V

    .line 166
    return-object v2
.end method

.method private static removeStatusToPref(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pn"    # Ljava/lang/String;

    .line 177
    const-string v0, "plugins"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 178
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ps-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 179
    return-void
.end method

.method public static setAppContext(Landroid/app/Application;)V
    .locals 0
    .param p0, "context"    # Landroid/app/Application;

    .line 148
    sput-object p0, Lcom/qihoo360/loader2/PluginStatusController;->sAppContext:Landroid/app/Application;

    .line 149
    return-void
.end method

.method public static setStatus(Ljava/lang/String;II)V
    .locals 4
    .param p0, "pn"    # Ljava/lang/String;
    .param p1, "ver"    # I
    .param p2, "status"    # I

    .line 72
    if-nez p2, :cond_1

    .line 73
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PStatusC.setStatus(): Status is OK, Clear. pn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; ver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    sget-object v0, Lcom/qihoo360/loader2/PluginStatusController;->sAppContext:Landroid/app/Application;

    invoke-static {v0, p0}, Lcom/qihoo360/loader2/PluginStatusController;->removeStatusToPref(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    return-void

    .line 79
    :cond_1
    new-instance v0, Lcom/qihoo360/loader2/PluginStatusController$PluginStatus;

    invoke-direct {v0, p0, p1, p2}, Lcom/qihoo360/loader2/PluginStatusController$PluginStatus;-><init>(Ljava/lang/String;II)V

    .line 80
    .local v0, "ps":Lcom/qihoo360/loader2/PluginStatusController$PluginStatus;
    sget-object v1, Lcom/qihoo360/loader2/PluginStatusController;->sAppContext:Landroid/app/Application;

    invoke-virtual {v0}, Lcom/qihoo360/loader2/PluginStatusController$PluginStatus;->toJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/qihoo360/loader2/PluginStatusController;->addStatusToPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_2

    .line 83
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PStatusC.setStatus(): Set Status, pn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; ver="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; st="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_2
    return-void
.end method
