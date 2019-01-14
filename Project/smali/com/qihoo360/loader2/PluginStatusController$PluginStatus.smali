.class Lcom/qihoo360/loader2/PluginStatusController$PluginStatus;
.super Ljava/lang/Object;
.source "PluginStatusController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/loader2/PluginStatusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PluginStatus"
.end annotation


# instance fields
.field mJo:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qihoo360/loader2/PluginStatusController$PluginStatus;->mJo:Lorg/json/JSONObject;

    .line 204
    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .locals 4
    .param p1, "pn"    # Ljava/lang/String;
    .param p2, "ver"    # I
    .param p3, "status"    # I

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/loader2/PluginStatusController$PluginStatus;->mJo:Lorg/json/JSONObject;

    .line 193
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginStatusController$PluginStatus;->mJo:Lorg/json/JSONObject;

    const-string v1, "pn"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginStatusController$PluginStatus;->mJo:Lorg/json/JSONObject;

    const-string v1, "ver"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 195
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginStatusController$PluginStatus;->mJo:Lorg/json/JSONObject;

    const-string v1, "ctime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 196
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginStatusController$PluginStatus;->mJo:Lorg/json/JSONObject;

    const-string v1, "st"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 200
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method


# virtual methods
.method public getChangeTime()J
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginStatusController$PluginStatus;->mJo:Lorg/json/JSONObject;

    const-string v1, "ctime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStatus()I
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginStatusController$PluginStatus;->mJo:Lorg/json/JSONObject;

    const-string v1, "st"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVersion()I
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginStatusController$PluginStatus;->mJo:Lorg/json/JSONObject;

    const-string v1, "ver"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method toJsonString()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginStatusController$PluginStatus;->mJo:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
