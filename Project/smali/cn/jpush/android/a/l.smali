.class public final Lcn/jpush/android/a/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jpush/android/a/l$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcn/jpush/android/a/l;

.field private static final b:Ljava/lang/Object;


# instance fields
.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcn/jpush/android/a/l$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jpush/android/a/l;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/a/l;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 309
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Lcn/jpush/android/a/l$a;)Lcn/jpush/android/a/l$a;
    .locals 3

    .line 163
    const-string v0, "TagAliasNewProtoRetryHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action - onUpdateCacheNode,responseJson:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",tagAliasCacheNode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    if-nez p1, :cond_0

    .line 165
    const-string p0, "TagAliasNewProtoRetryHelper"

    const-string p1, "tagAliasCacheNode was null"

    invoke-static {p0, p1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/4 p0, 0x0

    return-object p0

    .line 168
    :cond_0
    const-string v0, "op"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    const-string v1, "get"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    iget v0, p1, Lcn/jpush/android/a/l$a;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 172
    :try_start_0
    const-string v0, "tags"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 173
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 176
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_2

    .line 179
    iget-object p0, p1, Lcn/jpush/android/a/l$a;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 182
    :catch_0
    move-exception p0

    .line 183
    const-string v0, "TagAliasNewProtoRetryHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parse tag list failed - error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_2
    :goto_1
    goto :goto_2

    .line 186
    :cond_3
    const-string v0, "alias"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 187
    if-eqz p0, :cond_4

    .line 188
    iput-object p0, p1, Lcn/jpush/android/a/l$a;->e:Ljava/lang/String;

    .line 192
    :cond_4
    :goto_2
    return-object p1
.end method

.method public static a()Lcn/jpush/android/a/l;
    .locals 2

    .line 44
    sget-object v0, Lcn/jpush/android/a/l;->a:Lcn/jpush/android/a/l;

    if-nez v0, :cond_1

    .line 45
    sget-object v0, Lcn/jpush/android/a/l;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcn/jpush/android/a/l;->a:Lcn/jpush/android/a/l;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcn/jpush/android/a/l;

    invoke-direct {v1}, Lcn/jpush/android/a/l;-><init>()V

    sput-object v1, Lcn/jpush/android/a/l;->a:Lcn/jpush/android/a/l;

    .line 49
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 51
    :cond_1
    :goto_0
    sget-object v0, Lcn/jpush/android/a/l;->a:Lcn/jpush/android/a/l;

    return-object v0
.end method

.method protected static a(Landroid/content/Context;IJ)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 301
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_6

    .line 3228
    :cond_0
    const-string v4, "TAFreezeEndTime"

    const-wide/16 v5, -0x1

    invoke-static {v0, v4, v5, v6}, Lcn/jiguang/api/MultiSpHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v7

    .line 3229
    const-wide/16 v9, 0x708

    cmp-long v4, v7, v9

    const-wide/16 v9, 0x0

    if-lez v4, :cond_1

    .line 3230
    nop

    .line 3232
    move-wide v7, v9

    :cond_1
    const-string v4, "TAFreezeSetTime"

    invoke-static {v0, v4, v5, v6}, Lcn/jiguang/api/MultiSpHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v11

    .line 3234
    cmp-long v4, v7, v5

    if-eqz v4, :cond_5

    cmp-long v4, v11, v5

    if-nez v4, :cond_2

    goto :goto_1

    .line 3241
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long v15, v13, v11

    cmp-long v4, v15, v9

    if-ltz v4, :cond_4

    .line 3242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v13, v9, v11

    cmp-long v4, v13, v7

    if-lez v4, :cond_3

    goto :goto_0

    .line 3248
    :cond_3
    goto :goto_2

    .line 3243
    :cond_4
    :goto_0
    const-string v4, "TAFreezeSetTime"

    invoke-static {v0, v4, v5, v6}, Lcn/jiguang/api/MultiSpHelper;->commitLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 3244
    const-string v4, "TAFreezeEndTime"

    invoke-static {v0, v4, v5, v6}, Lcn/jiguang/api/MultiSpHelper;->commitLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 3245
    const-string v4, "JPushCommon"

    const-string v5, "incorrect timestamp"

    invoke-static {v4, v5}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 3246
    nop

    .line 301
    const/4 v4, 0x1

    goto :goto_3

    .line 3235
    :cond_5
    :goto_1
    nop

    .line 301
    :goto_2
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_6

    .line 302
    const-string v2, "TagAliasNewProtoRetryHelper"

    const-string v4, "tag/alias action was freezed"

    invoke-static {v2, v4}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    sget v2, Lcn/jpush/android/api/JPushInterface$a;->u:I

    move-wide/from16 v4, p2

    invoke-static {v0, v1, v2, v4, v5}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    .line 304
    return v3

    .line 306
    :cond_6
    return v2
.end method

.method private a(Landroid/content/Context;Lcn/jpush/android/a/l$a;)Z
    .locals 9

    .line 242
    const-string v0, "TagAliasNewProtoRetryHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action - onSendAgain, tagAliasCacheNode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 244
    const-string p1, "TagAliasNewProtoRetryHelper"

    const-string p2, "onSendAgain - tagAliasCacheNode was null"

    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return v0

    .line 248
    :cond_0
    iget v1, p2, Lcn/jpush/android/a/l$a;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 249
    iget-object v4, p2, Lcn/jpush/android/a/l$a;->d:Ljava/util/ArrayList;

    iget-wide v5, p2, Lcn/jpush/android/a/l$a;->c:J

    iget v7, p2, Lcn/jpush/android/a/l$a;->b:I

    iget v8, p2, Lcn/jpush/android/a/l$a;->g:I

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;Ljava/util/List;JII)Lcn/jpush/a/c;

    move-result-object v1

    goto :goto_0

    .line 251
    :cond_1
    iget v1, p2, Lcn/jpush/android/a/l$a;->a:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 252
    iget-object v1, p2, Lcn/jpush/android/a/l$a;->e:Ljava/lang/String;

    iget-wide v3, p2, Lcn/jpush/android/a/l$a;->c:J

    iget v5, p2, Lcn/jpush/android/a/l$a;->a:I

    invoke-static {p1, v1, v3, v4, v5}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;Ljava/lang/String;JI)Lcn/jpush/a/c;

    move-result-object v1

    .line 257
    :goto_0
    if-eqz v1, :cond_3

    .line 258
    iget v0, p2, Lcn/jpush/android/a/l$a;->h:I

    const/16 v3, 0xc8

    if-le v0, v3, :cond_2

    .line 259
    iget-object v0, p0, Lcn/jpush/android/a/l;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v3, p2, Lcn/jpush/android/a/l$a;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget v0, p2, Lcn/jpush/android/a/l$a;->a:I

    sget v1, Lcn/jpush/android/api/JPushInterface$a;->o:I

    iget-wide v3, p2, Lcn/jpush/android/a/l$a;->c:J

    invoke-static {p1, v0, v1, v3, v4}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    .line 261
    const-string p1, "TagAliasNewProtoRetryHelper"

    const-string p2, "same tag/alias request times greate than 200"

    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 263
    :cond_2
    invoke-static {p1, v1}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;Lcn/jpush/a/c;)V

    .line 264
    iget p1, p2, Lcn/jpush/android/a/l$a;->h:I

    add-int/2addr p1, v2

    iput p1, p2, Lcn/jpush/android/a/l$a;->h:I

    .line 265
    iget-object p1, p0, Lcn/jpush/android/a/l;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v0, p2, Lcn/jpush/android/a/l$a;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string p1, "TagAliasNewProtoRetryHelper"

    const-string p2, "send request success"

    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :goto_1
    return v2

    .line 270
    :cond_3
    return v0

    .line 254
    :cond_4
    const-string p1, "TagAliasNewProtoRetryHelper"

    const-string p2, "unsupport proto type"

    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return v0
.end method


# virtual methods
.method public final a(J)I
    .locals 3

    .line 198
    const-string v0, "TagAliasNewProtoRetryHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action - onTagAliasTimeOut :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcn/jpush/android/a/l;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/jpush/android/a/l$a;

    .line 200
    const-string p2, "TagAliasNewProtoRetryHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onTagAliasTimeOut,removed cachenode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    if-eqz p1, :cond_0

    .line 202
    iget p1, p1, Lcn/jpush/android/a/l$a;->a:I

    return p1

    .line 204
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Landroid/content/Context;JILorg/json/JSONObject;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 5

    .line 79
    const-string v0, "TagAliasNewProtoRetryHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action - onTagAliasResponse, seqID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcn/jpush/android/a/l;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/a/l$a;

    .line 81
    const-string v1, "TagAliasNewProtoRetryHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tagAliasCacheNode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcn/jpush/android/a/l;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    if-nez v0, :cond_0

    .line 94
    const-string p1, "TagAliasNewProtoRetryHelper"

    const-string p2, "tagAliasCacheNode was null"

    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-object p6

    .line 98
    :cond_0
    nop

    .line 1223
    const-string p2, "TagAliasNewProtoRetryHelper"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "action - CheckAndSendAgain, errorCode:"

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",tagAliasCacheNode:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    const/4 p2, 0x0

    const/4 p3, 0x1

    if-ne p4, p3, :cond_2

    iget v1, v0, Lcn/jpush/android/a/l$a;->h:I

    if-nez v1, :cond_2

    .line 1226
    iget v1, v0, Lcn/jpush/android/a/l$a;->h:I

    add-int/2addr v1, p3

    iput v1, v0, Lcn/jpush/android/a/l$a;->h:I

    .line 1227
    iget v1, v0, Lcn/jpush/android/a/l$a;->a:I

    iget-wide v2, v0, Lcn/jpush/android/a/l$a;->c:J

    invoke-static {p1, v1, v2, v3}, Lcn/jpush/android/a/l;->a(Landroid/content/Context;IJ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1228
    nop

    .line 98
    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 1230
    :cond_1
    invoke-direct {p0, p1, v0}, Lcn/jpush/android/a/l;->a(Landroid/content/Context;Lcn/jpush/android/a/l$a;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1231
    goto :goto_0

    .line 1234
    :cond_2
    nop

    .line 98
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 99
    const-string p1, "TagAliasNewProtoRetryHelper"

    const-string p2, "retry action was sended"

    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-object v2

    .line 103
    :cond_3
    if-eqz p4, :cond_9

    .line 105
    const/16 p2, 0x64

    if-ne p4, p2, :cond_6

    .line 106
    const-string p3, "wait"

    const-wide/16 v1, -0x1

    invoke-virtual {p5, p3, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 107
    const-string p3, "TagAliasNewProtoRetryHelper"

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v3, "set tag/alias action will freeze "

    invoke-direct {p5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " seconds"

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p3, p5}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-wide/16 v3, 0x0

    cmp-long p3, v1, v3

    if-lez p3, :cond_6

    .line 109
    nop

    .line 2213
    cmp-long p3, v1, v3

    if-gez p3, :cond_4

    .line 2214
    const-string p1, "JPushCommon"

    const-string p3, "freeze end time was incorrect!"

    invoke-static {p1, p3}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2215
    goto :goto_2

    .line 2217
    :cond_4
    const-wide/16 v3, 0x708

    cmp-long p3, v1, v3

    if-lez p3, :cond_5

    .line 2218
    const-string p3, "JPushCommon"

    const-string p5, "freeze end time was greate than half an hour"

    invoke-static {p3, p5}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2219
    nop

    .line 2221
    move-wide v1, v3

    :cond_5
    const-string p3, "TAFreezeSetTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {p1, p3, v3, v4}, Lcn/jiguang/api/MultiSpHelper;->commitLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 2222
    const-string p3, "TAFreezeEndTime"

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-static {p1, p3, v1, v2}, Lcn/jiguang/api/MultiSpHelper;->commitLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 112
    :cond_6
    :goto_2
    iget p1, v0, Lcn/jpush/android/a/l$a;->a:I

    .line 2274
    if-eqz p1, :cond_8

    .line 2277
    if-eq p4, p2, :cond_7

    packed-switch p4, :pswitch_data_0

    goto :goto_3

    .line 2293
    :pswitch_0
    sget p4, Lcn/jpush/android/api/JPushInterface$a;->t:I

    goto :goto_4

    .line 2290
    :pswitch_1
    sget p4, Lcn/jpush/android/api/JPushInterface$a;->s:I

    goto :goto_4

    .line 2288
    :pswitch_2
    sget p4, Lcn/jpush/android/api/JPushInterface$a;->r:I

    goto :goto_4

    .line 2286
    :pswitch_3
    sget p4, Lcn/jpush/android/api/JPushInterface$a;->q:I

    goto :goto_4

    .line 2284
    :pswitch_4
    sget p4, Lcn/jpush/android/api/JPushInterface$a;->p:I

    goto :goto_4

    .line 2282
    :pswitch_5
    sget p4, Lcn/jpush/android/api/JPushInterface$a;->o:I

    goto :goto_4

    .line 2279
    :pswitch_6
    goto :goto_4

    .line 2295
    :cond_7
    sget p4, Lcn/jpush/android/api/JPushInterface$a;->u:I

    goto :goto_4

    .line 2297
    :cond_8
    :goto_3
    nop

    .line 112
    :goto_4
    nop

    .line 113
    const-string p1, "tagalias_errorcode"

    invoke-virtual {p6, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    const-string p1, "TagAliasNewProtoRetryHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "mapped errorCode:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-object p6

    .line 118
    :cond_9
    iput p2, v0, Lcn/jpush/android/a/l$a;->h:I

    .line 120
    iget p4, v0, Lcn/jpush/android/a/l$a;->b:I

    const/4 v1, 0x5

    if-ne p4, v1, :cond_a

    .line 121
    const-string p4, "total"

    const/4 v3, -0x1

    invoke-virtual {p5, p4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, v0, Lcn/jpush/android/a/l$a;->f:I

    .line 122
    const-string p4, "curr"

    invoke-virtual {p5, p4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, v0, Lcn/jpush/android/a/l$a;->g:I

    .line 123
    invoke-static {p5, v0}, Lcn/jpush/android/a/l;->a(Lorg/json/JSONObject;Lcn/jpush/android/a/l$a;)Lcn/jpush/android/a/l$a;

    .line 126
    :cond_a
    nop

    .line 3208
    if-nez v0, :cond_b

    .line 3209
    const-string p4, "TagAliasNewProtoRetryHelper"

    const-string v3, "tagAlias cache was null"

    invoke-static {p4, v3}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3210
    nop

    .line 126
    :goto_5
    const/4 p4, 0x0

    goto :goto_6

    .line 3212
    :cond_b
    const-string p4, "TagAliasNewProtoRetryHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "action - onTagAliasResponse, tagAliasCacheNode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p4, v3}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3213
    iget p4, v0, Lcn/jpush/android/a/l$a;->g:I

    iget v3, v0, Lcn/jpush/android/a/l$a;->f:I

    if-lt p4, v3, :cond_c

    .line 3214
    const-string p4, "TagAliasNewProtoRetryHelper"

    const-string v3, "all tags info was loaded"

    invoke-static {p4, v3}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3215
    goto :goto_5

    .line 3217
    :cond_c
    nop

    .line 126
    const/4 p4, 0x1

    :goto_6
    if-eqz p4, :cond_e

    .line 127
    iget p4, v0, Lcn/jpush/android/a/l$a;->g:I

    add-int/2addr p4, p3

    iput p4, v0, Lcn/jpush/android/a/l$a;->g:I

    .line 128
    const-string p4, "TagAliasNewProtoRetryHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "load next page, currpage:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcn/jpush/android/a/l$a;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",totalPage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcn/jpush/android/a/l$a;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p4, v3}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget p4, v0, Lcn/jpush/android/a/l$a;->a:I

    iget-wide v3, v0, Lcn/jpush/android/a/l$a;->c:J

    invoke-static {p1, p4, v3, v4}, Lcn/jpush/android/a/l;->a(Landroid/content/Context;IJ)Z

    move-result p4

    if-eqz p4, :cond_d

    .line 130
    return-object v2

    .line 132
    :cond_d
    invoke-direct {p0, p1, v0}, Lcn/jpush/android/a/l;->a(Landroid/content/Context;Lcn/jpush/android/a/l$a;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 133
    const-string p1, "TagAliasNewProtoRetryHelper"

    const-string p2, "get next page request was sended"

    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-object v2

    .line 138
    :cond_e
    iget p1, v0, Lcn/jpush/android/a/l$a;->b:I

    if-ne p1, v1, :cond_10

    .line 139
    iget p1, v0, Lcn/jpush/android/a/l$a;->a:I

    if-ne p1, p3, :cond_f

    .line 140
    iget-object p1, v0, Lcn/jpush/android/a/l$a;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_12

    .line 141
    const-string p1, "tags"

    iget-object p2, v0, Lcn/jpush/android/a/l$a;->d:Ljava/util/ArrayList;

    invoke-virtual {p6, p1, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_7

    .line 143
    :cond_f
    iget p1, v0, Lcn/jpush/android/a/l$a;->a:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_12

    .line 144
    iget-object p1, v0, Lcn/jpush/android/a/l$a;->e:Ljava/lang/String;

    if-eqz p1, :cond_12

    .line 145
    const-string p1, "alias"

    iget-object p2, v0, Lcn/jpush/android/a/l$a;->e:Ljava/lang/String;

    invoke-virtual {p6, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_7

    .line 148
    :cond_10
    iget p1, v0, Lcn/jpush/android/a/l$a;->b:I

    const/4 p4, 0x6

    if-ne p1, p4, :cond_12

    .line 149
    iget p1, v0, Lcn/jpush/android/a/l$a;->a:I

    if-ne p1, p3, :cond_11

    .line 150
    const-string p1, "validated"

    const-string p3, "validated"

    invoke-virtual {p5, p3, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p6, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_7

    .line 152
    :cond_11
    const-string p1, "TagAliasNewProtoRetryHelper"

    const-string p2, "unsupport  proto type"

    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_12
    :goto_7
    return-object p6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(IIJLjava/util/ArrayList;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 58
    new-instance v8, Lcn/jpush/android/a/l$a;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcn/jpush/android/a/l$a;-><init>(Lcn/jpush/android/a/l;IIJLjava/util/ArrayList;Ljava/lang/String;)V

    .line 59
    const-string p1, "TagAliasNewProtoRetryHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "action - createNewCacheNode, tagAliasCacheNode:"

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object p1, p0, Lcn/jpush/android/a/l;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public final a(I)Z
    .locals 2

    .line 63
    iget-object v0, p0, Lcn/jpush/android/a/l;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jpush/android/a/l;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcn/jpush/android/a/l;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 65
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jpush/android/a/l$a;

    .line 66
    if-eqz v1, :cond_0

    iget v1, v1, Lcn/jpush/android/a/l$a;->a:I

    if-ne v1, p1, :cond_0

    .line 67
    const/4 p1, 0x0

    return p1

    .line 69
    :cond_0
    goto :goto_0

    .line 71
    :cond_1
    const/4 p1, 0x1

    return p1
.end method
