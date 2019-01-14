.class public Lcn/jpush/android/service/TagAliasReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 29
    if-nez p2, :cond_0

    .line 30
    const-string p1, "TagAliasReceiver"

    const-string p2, "TagAliasOperator onReceive intent is null"

    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void

    .line 33
    :cond_0
    const-string v0, "tagalias_seqid"

    const-wide/16 v1, -0x1

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 34
    const-string v0, "tagalias_errorcode"

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 35
    cmp-long v0, v5, v1

    if-nez v0, :cond_1

    .line 36
    const-string p1, "TagAliasReceiver"

    const-string p2, "TagAliasOperator onReceive rid is invalide"

    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void

    .line 39
    :cond_1
    invoke-static {}, Lcn/jpush/android/service/d;->a()Lcn/jpush/android/service/d;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lcn/jpush/android/service/d;->a(Landroid/content/Context;JILandroid/content/Intent;)V

    .line 40
    return-void
.end method
