.class public final Lcn/jpush/android/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 3

    .line 97
    const-string v0, "notification_num"

    sget v1, Lcn/jpush/android/api/JPushInterface;->a:I

    invoke-static {p0, v0, v1}, Lcn/jiguang/api/MultiSpHelper;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    .line 98
    const-string v0, "JPushCommon"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "max notification:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return p0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pluginPlatformRegid"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/jiguang/api/MultiSpHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pluginPlatformRegid"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcn/jiguang/api/MultiSpHelper;->commitString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public static a(Landroid/content/Context;IZ)V
    .locals 3

    .line 79
    if-eqz p2, :cond_1

    .line 80
    invoke-static {}, Lcn/jpush/android/a/i;->b()I

    move-result p2

    .line 81
    const-string v0, "JPushCommon"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "number in queue: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    if-ge p1, p2, :cond_0

    .line 83
    sub-int/2addr p2, p1

    .line 84
    const-string v0, "JPushCommon"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "decreaseNotification:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {p0, p2}, Lcn/jpush/android/api/b;->a(Landroid/content/Context;I)V

    .line 87
    :cond_0
    const-string p2, "notification_num"

    invoke-static {p0, p2, p1}, Lcn/jiguang/api/MultiSpHelper;->commitInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 88
    return-void

    .line 89
    :cond_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 90
    const-string v0, "intent.MULTI_PROCESS"

    invoke-static {p0, p2, v0}, Lcn/jpush/android/service/c;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 91
    const-string v0, "multi_type"

    const/4 v1, 0x2

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    const-string v0, "notification_maxnum"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    sget-object p1, Lcn/jpush/android/a;->a:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcn/jiguang/api/JCoreInterface;->sendAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 95
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 147
    if-nez p3, :cond_1

    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->canCallDirect()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 151
    const-string v0, "intent.MULTI_PROCESS"

    invoke-static {p0, p3, v0}, Lcn/jpush/android/service/c;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 152
    const-string v0, "multi_type"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 153
    const-string v0, "notification_buidler_id"

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string p1, "notification_buidler"

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    sget-object p1, Lcn/jpush/android/a;->a:Ljava/lang/String;

    invoke-static {p0, p1, p3}, Lcn/jiguang/api/JCoreInterface;->sendAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 157
    return-void

    .line 148
    :cond_1
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "jpush_save_custom_builder"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcn/jiguang/api/MultiSpHelper;->commitString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .line 107
    if-nez p2, :cond_1

    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->canCallDirect()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 111
    const-string v0, "intent.MULTI_PROCESS"

    invoke-static {p0, p2, v0}, Lcn/jpush/android/service/c;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 112
    const-string v0, "multi_type"

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    const-string v0, "silence_push_time"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sget-object p1, Lcn/jpush/android/a;->a:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcn/jiguang/api/JCoreInterface;->sendAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 116
    return-void

    .line 108
    :cond_1
    :goto_0
    const-string p2, "setting_silence_push_time"

    invoke-static {p0, p2, p1}, Lcn/jiguang/api/MultiSpHelper;->commitString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 121
    const-string v0, "setting_push_time"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcn/jiguang/api/MultiSpHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;IZ)V
    .locals 2

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pluginPlatformRegidupload"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcn/jiguang/api/MultiSpHelper;->commitBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 187
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .line 124
    if-nez p2, :cond_1

    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->canCallDirect()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 128
    const-string v0, "intent.MULTI_PROCESS"

    invoke-static {p0, p2, v0}, Lcn/jpush/android/service/c;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 129
    const-string v0, "multi_type"

    const/4 v1, 0x3

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    const-string v0, "enable_push_time"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-object p1, Lcn/jpush/android/a;->a:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcn/jiguang/api/JCoreInterface;->sendAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 133
    return-void

    .line 125
    :cond_1
    :goto_0
    const-string p2, "setting_push_time"

    invoke-static {p0, p2, p1}, Lcn/jiguang/api/MultiSpHelper;->commitString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;I)Z
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pluginPlatformRegidupload"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/jiguang/api/MultiSpHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
