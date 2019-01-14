.class public abstract Lcn/jpush/android/data/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x781699e15e8c3b42L


# instance fields
.field public A:I

.field public B:Ljava/lang/String;

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:I

.field public H:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public I:Ljava/lang/String;

.field private a:Z

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:B

.field public f:Z

.field public g:I

.field public h:I

.field public i:Z

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:I

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:I

.field public r:Z

.field public s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public t:I

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-byte v0, p0, Lcn/jpush/android/data/b;->e:B

    .line 74
    iput v0, p0, Lcn/jpush/android/data/b;->h:I

    .line 90
    const/4 v1, -0x1

    iput v1, p0, Lcn/jpush/android/data/b;->l:I

    .line 118
    const/4 v2, 0x0

    iput-object v2, p0, Lcn/jpush/android/data/b;->s:Ljava/util/List;

    .line 161
    iput-boolean v0, p0, Lcn/jpush/android/data/b;->C:Z

    .line 162
    iput-boolean v0, p0, Lcn/jpush/android/data/b;->D:Z

    .line 163
    iput-boolean v0, p0, Lcn/jpush/android/data/b;->E:Z

    .line 165
    iput-boolean v0, p0, Lcn/jpush/android/data/b;->a:Z

    .line 166
    iput-boolean v0, p0, Lcn/jpush/android/data/b;->F:Z

    .line 167
    iput v1, p0, Lcn/jpush/android/data/b;->G:I

    .line 171
    iput-object v2, p0, Lcn/jpush/android/data/b;->H:Ljava/util/ArrayList;

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 360
    const-string v0, ".jpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 380
    :cond_0
    const-string p0, "Entity"

    const-string p1, "The url is not a picture resources."

    invoke-static {p0, p1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string p0, ""

    return-object p0

    .line 361
    :cond_1
    :goto_0
    const-string v0, "Entity"

    const-string v1, "The url is a picture resources."

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p2}, Lcn/jpush/android/d/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 365
    const-string p2, "Entity"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Big picture notification resource path: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const/4 p2, 0x5

    const-wide/16 v0, 0x1388

    const/4 v2, 0x4

    invoke-static {p1, p2, v0, v1, v2}, Lcn/jpush/android/b/a;->a(Ljava/lang/String;IJI)[B

    move-result-object p1

    .line 368
    if-eqz p1, :cond_2

    .line 370
    :try_start_0
    invoke-static {p0, p1}, Lcn/jpush/android/d/c;->a(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    return-object p0

    .line 372
    :catch_0
    move-exception p0

    .line 373
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 374
    const-string p0, ""

    return-object p0

    .line 377
    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method static a(Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .line 322
    nop

    .line 323
    const-string v0, "Entity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action:loadHtmlImageResources - urlPrefix:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-static {p2}, Lcn/jpush/android/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 325
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 326
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 327
    nop

    .line 328
    if-eqz v2, :cond_0

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 331
    :cond_0
    move-object v3, v2

    :goto_1
    const/4 v4, 0x5

    const-wide/16 v5, 0x1388

    const/4 v7, 0x4

    invoke-static {v3, v4, v5, v6, v7}, Lcn/jpush/android/b/a;->a(Ljava/lang/String;IJI)[B

    move-result-object v4

    .line 332
    if-eqz v4, :cond_3

    .line 334
    nop

    .line 335
    :try_start_0
    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 336
    invoke-static {v2}, Lcn/jpush/android/d/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 339
    :cond_1
    if-nez p4, :cond_2

    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p3}, Lcn/jpush/android/d/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 342
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p3}, Lcn/jpush/android/d/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 343
    :goto_2
    invoke-static {v2, v4}, Lcn/jpush/android/d/c;->a(Ljava/lang/String;[B)Z

    .line 344
    const-string v3, "Entity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Succeed to load image - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    goto :goto_0

    .line 345
    :catch_0
    move-exception v1

    .line 346
    const-string v2, "Entity"

    const-string v3, "Write storage error,  create img file fail."

    invoke-static {v2, v3, v1}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 347
    nop

    .line 348
    goto :goto_3

    .line 350
    :cond_3
    const/16 v1, 0x3fc

    invoke-static {p1, v3}, Lcn/jpush/android/d/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v1, v2, p1}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    .line 351
    nop

    .line 353
    nop

    .line 326
    :goto_3
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 355
    :cond_4
    return v1
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)V
.end method

.method public final a()Z
    .locals 1

    .line 254
    iget-boolean v0, p0, Lcn/jpush/android/data/b;->a:Z

    return v0
.end method

.method public final a(Landroid/content/Context;Lorg/json/JSONObject;)Z
    .locals 4

    .line 209
    const-string v0, "Entity"

    const-string v1, "action: parse - base entity"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v0, "full_screen"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcn/jpush/android/data/b;->r:Z

    .line 211
    const-string v0, "n_flag"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/data/b;->t:I

    .line 212
    const-string v0, "n_title"

    const-string v3, ""

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/data/b;->u:Ljava/lang/String;

    .line 213
    const-string v0, "n_content"

    const-string v3, ""

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/data/b;->v:Ljava/lang/String;

    .line 214
    const-string v0, "n_style"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/data/b;->w:I

    .line 215
    const-string v0, "n_big_text"

    const-string v3, ""

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/data/b;->x:Ljava/lang/String;

    .line 216
    const-string v0, "n_big_pic_path"

    const-string v3, ""

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/data/b;->y:Ljava/lang/String;

    .line 217
    const-string v0, "n_inbox"

    const-string v3, ""

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/data/b;->z:Ljava/lang/String;

    .line 218
    const-string v0, "n_extras"

    const-string v3, ""

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/data/b;->n:Ljava/lang/String;

    .line 219
    const-string v0, "n_priority"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/data/b;->A:I

    .line 220
    const-string v0, "n_category"

    const-string v3, ""

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/data/b;->B:Ljava/lang/String;

    .line 221
    const-string v0, "n_alert_type"

    const/4 v3, -0x1

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/data/b;->l:I

    .line 223
    iget-object v0, p0, Lcn/jpush/android/data/b;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    iget-boolean v0, p0, Lcn/jpush/android/data/b;->i:Z

    if-nez v0, :cond_1

    .line 225
    const-string p2, "Entity"

    const-string v0, "Invalid - empty notification title for internal"

    invoke-static {p2, v0}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object p2, p0, Lcn/jpush/android/data/b;->c:Ljava/lang/String;

    const/16 v0, 0x3e4

    .line 1033
    const/4 v2, 0x0

    invoke-static {p2, v0, v2, p1}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    .line 227
    return v1

    .line 230
    :cond_1
    const-string v0, "Entity"

    const-string v3, "Not found notificaiton title for developer mode. Use the application name."

    invoke-static {v0, v3}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-object v0, Lcn/jpush/android/a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcn/jpush/android/data/b;->u:Ljava/lang/String;

    .line 238
    :cond_2
    iget-object v0, p0, Lcn/jpush/android/data/b;->c:Ljava/lang/String;

    const-string v3, "ad_content"

    invoke-static {p1, v0, p2, v3}, Lcn/jpush/android/a/g;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 239
    if-nez p1, :cond_4

    .line 240
    iget-boolean p1, p0, Lcn/jpush/android/data/b;->i:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcn/jpush/android/data/b;->f:Z

    if-eqz p1, :cond_3

    .line 241
    return v2

    .line 243
    :cond_3
    return v1

    .line 246
    :cond_4
    iget-boolean p2, p0, Lcn/jpush/android/data/b;->i:Z

    if-eqz p2, :cond_5

    iget-boolean p2, p0, Lcn/jpush/android/data/b;->f:Z

    if-eqz p2, :cond_5

    .line 247
    iput-boolean v2, p0, Lcn/jpush/android/data/b;->a:Z

    .line 250
    :cond_5
    invoke-virtual {p0, p1}, Lcn/jpush/android/data/b;->a(Lorg/json/JSONObject;)Z

    move-result p1

    return p1
.end method

.method protected abstract a(Lorg/json/JSONObject;)Z
.end method
