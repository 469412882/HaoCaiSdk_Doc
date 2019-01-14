.class public Lcn/jiguang/a/a/d/c;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:Z

.field private static volatile c:Lcn/jiguang/a/a/d/c;


# instance fields
.field private d:Ljava/util/concurrent/ExecutorService;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/jiguang/a/a/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private h:J

.field private i:J

.field private j:J

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:J

.field private q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lorg/json/JSONObject;

.field private final s:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/jiguang/a/a/d/c;->c:Lcn/jiguang/a/a/d/c;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jiguang/a/a/d/c;->a:Z

    sput-boolean v0, Lcn/jiguang/a/a/d/c;->b:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/a/a/d/c;->d:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jiguang/a/a/d/c;->e:Ljava/lang/String;

    iput-object v0, p0, Lcn/jiguang/a/a/d/c;->f:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/jiguang/a/a/d/c;->g:Ljava/util/ArrayList;

    const-wide/16 v1, 0x1e

    iput-wide v1, p0, Lcn/jiguang/a/a/d/c;->h:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcn/jiguang/a/a/d/c;->i:J

    iput-wide v1, p0, Lcn/jiguang/a/a/d/c;->j:J

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcn/jiguang/a/a/d/c;->k:Z

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcn/jiguang/a/a/d/c;->l:Z

    iput-boolean v4, p0, Lcn/jiguang/a/a/d/c;->m:Z

    iput-boolean v3, p0, Lcn/jiguang/a/a/d/c;->n:Z

    iput-boolean v4, p0, Lcn/jiguang/a/a/d/c;->o:Z

    iput-wide v1, p0, Lcn/jiguang/a/a/d/c;->p:J

    iput-object v0, p0, Lcn/jiguang/a/a/d/c;->q:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcn/jiguang/a/a/d/c;->r:Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/jiguang/a/a/d/c;->s:Ljava/lang/Object;

    return-void
.end method

.method public static a()Lcn/jiguang/a/a/d/c;
    .locals 2

    sget-object v0, Lcn/jiguang/a/a/d/c;->c:Lcn/jiguang/a/a/d/c;

    if-nez v0, :cond_0

    const-class v0, Lcn/jiguang/a/a/d/c;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcn/jiguang/a/a/d/c;

    invoke-direct {v1}, Lcn/jiguang/a/a/d/c;-><init>()V

    sput-object v1, Lcn/jiguang/a/a/d/c;->c:Lcn/jiguang/a/a/d/c;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    sget-object v0, Lcn/jiguang/a/a/d/c;->c:Lcn/jiguang/a/a/d/c;

    return-object v0
.end method

.method private a(Landroid/content/Context;J)Lorg/json/JSONObject;
    .locals 4

    invoke-static {}, Lcn/jiguang/a/b/c;->a()Lcn/jiguang/a/b/c;

    move-result-object v0

    const-string v1, "cur_session_start"

    iget-wide v2, p0, Lcn/jiguang/a/a/d/c;->i:J

    invoke-virtual {v0, p1, v1, v2, v3}, Lcn/jiguang/a/b/c;->b(Landroid/content/Context;Ljava/lang/String;J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcn/jiguang/d/a/d;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {p1}, Lcn/jiguang/g/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/jiguang/g/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/jiguang/a/a/d/c;->f:Ljava/lang/String;

    invoke-static {}, Lcn/jiguang/a/b/c;->a()Lcn/jiguang/a/b/c;

    move-result-object p2

    const-string p3, "session_id"

    iget-object v0, p0, Lcn/jiguang/a/a/d/c;->f:Ljava/lang/String;

    invoke-virtual {p2, p1, p3, v0}, Lcn/jiguang/a/b/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-static {p2}, Lcn/jiguang/a/a/d/c;->a(Lorg/json/JSONObject;)V

    const-string p3, "active_launch"

    invoke-static {p1, p2, p3}, Lcn/jiguang/d/d/o;->b(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    const-string p1, "session_id"

    iget-object p3, p0, Lcn/jiguang/a/a/d/c;->f:Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcn/jiguang/a/a/d/c;Landroid/content/Context;)V
    .locals 14

    iget-boolean v0, p0, Lcn/jiguang/a/a/d/c;->l:Z

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcn/jiguang/a/a/d/c;->l:Z

    const-string v0, "JPushSA"

    const-string v5, "statistics start"

    invoke-static {v0, v5}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/a/b/c;->a()Lcn/jiguang/a/b/c;

    move-result-object v0

    const-string v5, "last_pause"

    const-wide/16 v6, -0x1

    invoke-virtual {v0, p1, v5, v6, v7}, Lcn/jiguang/a/b/c;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v8

    iget-wide v10, p0, Lcn/jiguang/a/a/d/c;->i:J

    sub-long v12, v10, v8

    cmp-long v0, v8, v6

    if-eqz v0, :cond_1

    iget-wide v5, p0, Lcn/jiguang/a/a/d/c;->h:J

    mul-long v5, v5, v1

    cmp-long v0, v12, v5

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_0
    iget-wide v5, p0, Lcn/jiguang/a/a/d/c;->i:J

    iget-wide v7, p0, Lcn/jiguang/a/a/d/c;->j:J

    sub-long v9, v5, v7

    iget-wide v5, p0, Lcn/jiguang/a/a/d/c;->h:J

    mul-long v5, v5, v1

    cmp-long v0, v9, v5

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcn/jiguang/a/a/d/c;->k:Z

    iget-boolean v0, p0, Lcn/jiguang/a/a/d/c;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const-string v0, "JPushSA"

    const-string v2, "new statistics session"

    invoke-static {v0, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-wide v2, p0, Lcn/jiguang/a/a/d/c;->i:J

    invoke-direct {p0, p1, v2, v3}, Lcn/jiguang/a/a/d/c;->a(Landroid/content/Context;J)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    iget-object v2, p0, Lcn/jiguang/a/a/d/c;->s:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcn/jiguang/a/a/d/c;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v4, :cond_3

    :try_start_1
    const-string v4, "active_terminate"

    invoke-static {p1, v3, v4}, Lcn/jiguang/d/d/o;->b(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    :goto_1
    :try_start_2
    const-string v4, "jpush_stat_cache.json"

    invoke-static {p1, v4, v1}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Z

    iput-object v1, p0, Lcn/jiguang/a/a/d/c;->r:Lorg/json/JSONObject;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/jiguang/a/a/d/c;->g:Ljava/util/ArrayList;

    :cond_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-lez p0, :cond_4

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_4
    invoke-static {p1, v0}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_5
    invoke-static {}, Lcn/jiguang/a/b/c;->a()Lcn/jiguang/a/b/c;

    move-result-object v0

    const-string v2, "session_id"

    invoke-virtual {v0, p1, v2, v1}, Lcn/jiguang/a/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/jiguang/a/a/d/c;->f:Ljava/lang/String;

    return-void
.end method

.method private static a(Lorg/json/JSONObject;)V
    .locals 3

    invoke-static {}, Lcn/jiguang/d/g/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const-string v2, "date"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "time"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic b(Lcn/jiguang/a/a/d/c;Landroid/content/Context;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v2, :cond_a

    iget-object v3, v1, Lcn/jiguang/a/a/d/c;->s:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcn/jiguang/a/b/c;->a()Lcn/jiguang/a/b/c;

    move-result-object v4

    const-string v5, "last_pause"

    iget-wide v6, v1, Lcn/jiguang/a/a/d/c;->j:J

    invoke-virtual {v4, v2, v5, v6, v7}, Lcn/jiguang/a/b/c;->b(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-static {}, Lcn/jiguang/a/b/c;->a()Lcn/jiguang/a/b/c;

    move-result-object v4

    const-string v5, "cur_seesion_end"

    iget-wide v6, v1, Lcn/jiguang/a/a/d/c;->j:J

    invoke-virtual {v4, v2, v5, v6, v7}, Lcn/jiguang/a/b/c;->b(Landroid/content/Context;Ljava/lang/String;J)V

    iget-boolean v4, v1, Lcn/jiguang/a/a/d/c;->m:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    iput-boolean v5, v1, Lcn/jiguang/a/a/d/c;->m:Z

    iget-boolean v4, v1, Lcn/jiguang/a/a/d/c;->k:Z

    if-nez v4, :cond_2

    invoke-direct/range {p0 .. p1}, Lcn/jiguang/a/a/d/c;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-direct/range {p0 .. p1}, Lcn/jiguang/a/a/d/c;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v6, "activities"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v7, v8, :cond_1

    :try_start_1
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    new-instance v8, Lcn/jiguang/a/a/d/a;

    invoke-direct {v8, v9, v10, v11}, Lcn/jiguang/a/a/d/a;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v8, v0

    :try_start_2
    const-string v9, "JPushSA"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, v1, Lcn/jiguang/a/a/d/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcn/jiguang/a/a/d/c;->g:Ljava/util/ArrayList;

    iget-object v4, v1, Lcn/jiguang/a/a/d/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-direct/range {p0 .. p1}, Lcn/jiguang/a/a/d/c;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :cond_3
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    :goto_2
    iget-object v7, v1, Lcn/jiguang/a/a/d/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_4

    iget-object v7, v1, Lcn/jiguang/a/a/d/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/jiguang/a/a/d/a;

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v9, v7, Lcn/jiguang/a/a/d/a;->a:Ljava/lang/String;

    iget-wide v10, v7, Lcn/jiguang/a/a/d/a;->b:J

    invoke-virtual {v8, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    :try_start_4
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-lez v5, :cond_5

    :try_start_5
    const-string v5, "activities"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catch_2
    move-exception v0

    :cond_5
    :goto_4
    :try_start_6
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-lez v5, :cond_9

    :try_start_7
    invoke-static {}, Lcn/jiguang/a/b/c;->a()Lcn/jiguang/a/b/c;

    move-result-object v5

    const-string v6, "cur_session_start"

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v2, v6, v7, v8}, Lcn/jiguang/a/b/c;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v5

    const-wide/16 v9, 0xa

    cmp-long v11, v5, v7

    const-wide/16 v12, 0x3e8

    if-nez v11, :cond_7

    iget-wide v5, v1, Lcn/jiguang/a/a/d/c;->j:J

    iget-wide v14, v1, Lcn/jiguang/a/a/d/c;->p:J

    const/4 v11, 0x0

    sub-long v16, v5, v14

    cmp-long v5, v16, v7

    if-lez v5, :cond_6

    div-long v9, v16, v12

    :cond_6
    invoke-static {}, Lcn/jiguang/a/b/c;->a()Lcn/jiguang/a/b/c;

    move-result-object v5

    const-string v6, "cur_session_start"

    iget-wide v7, v1, Lcn/jiguang/a/a/d/c;->p:J

    invoke-virtual {v5, v2, v6, v7, v8}, Lcn/jiguang/a/b/c;->b(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_5

    :cond_7
    iget-wide v7, v1, Lcn/jiguang/a/a/d/c;->j:J

    const/4 v9, 0x0

    sub-long v9, v7, v5

    div-long/2addr v9, v12

    :goto_5
    const-string v5, "duration"

    invoke-virtual {v4, v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "itime"

    invoke-static {}, Lcn/jiguang/d/a/a;->t()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "session_id"

    iget-object v6, v1, Lcn/jiguang/a/a/d/c;->f:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v4}, Lcn/jiguang/a/a/d/c;->a(Lorg/json/JSONObject;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_6

    :catch_3
    move-exception v0

    :goto_6
    :try_start_8
    iput-object v4, v1, Lcn/jiguang/a/a/d/c;->r:Lorg/json/JSONObject;

    iget-object v5, v1, Lcn/jiguang/a/a/d/c;->r:Lorg/json/JSONObject;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v5, :cond_8

    :try_start_9
    iget-object v1, v1, Lcn/jiguang/a/a/d/c;->r:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "utf-8"

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v2, v1}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;I)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v1, v0

    :try_start_a
    const-string v5, "JPushSA"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catch_5
    move-exception v0

    :cond_8
    :goto_7
    const-string v1, "jpush_stat_cache.json"

    invoke-static {v2, v1, v4}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Z

    :cond_9
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v1

    :cond_a
    return-void
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    iget-boolean v0, p0, Lcn/jiguang/a/a/d/c;->o:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "JPushSA"

    const-string p2, "stat function has been disabled"

    invoke-static {p1, p2}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "JPushSA"

    const-string p2, "context is null"

    invoke-static {p1, p2}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_2

    const-string p1, "JPushSA"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Context should be an Activity on this method : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/jiguang/e/d;->j(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private d(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/a/a/d/c;->r:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const-string v0, "jpush_stat_cache.json"

    invoke-static {p1, v0}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcn/jiguang/a/a/d/c;->r:Lorg/json/JSONObject;

    :cond_0
    iget-object p1, p0, Lcn/jiguang/a/a/d/c;->r:Lorg/json/JSONObject;

    return-object p1
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "onResume"

    invoke-direct {p0, p1, v0}, Lcn/jiguang/a/a/d/c;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcn/jiguang/a/a/d/c;->a:Z

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcn/jiguang/a/a/d/c;->n:Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    iget-boolean v1, p0, Lcn/jiguang/a/a/d/c;->n:Z

    if-eqz v1, :cond_1

    const-string p1, "JPushSA"

    const-string v0, "JCoreInterface.onResume() must be called after called JCoreInterface.onPause() and JPushInterface.onResume should not be called more time in last Activity or Fragment  "

    invoke-static {p1, v0}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iput-boolean v0, p0, Lcn/jiguang/a/a/d/c;->n:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jiguang/a/a/d/c;->i:J

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/a/a/d/c;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :try_start_1
    iget-object v0, p0, Lcn/jiguang/a/a/d/c;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/jiguang/a/a/d/f;

    invoke-direct {v1, p0, p1}, Lcn/jiguang/a/a/d/f;-><init>(Lcn/jiguang/a/a/d/c;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcn/jiguang/a/a/d/c;->n:Z

    if-eqz v0, :cond_0

    const-string p1, "JPushSA"

    const-string p2, "JCoreInterface.onResume() must be called after called JCoreInterface.onPause() in last Activity or Fragment"

    invoke-static {p1, p2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jiguang/a/a/d/c;->n:Z

    iput-object p2, p0, Lcn/jiguang/a/a/d/c;->e:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jiguang/a/a/d/c;->i:J

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Lcn/jiguang/a/a/d/c;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcn/jiguang/a/a/d/d;

    invoke-direct {v0, p0, p1}, Lcn/jiguang/a/a/d/d;-><init>(Lcn/jiguang/a/a/d/c;Landroid/content/Context;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 6

    const-string v0, "onPause"

    invoke-direct {p0, p1, v0}, Lcn/jiguang/a/a/d/c;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcn/jiguang/a/a/d/c;->b:Z

    :try_start_0
    iput-boolean v0, p0, Lcn/jiguang/a/a/d/c;->n:Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    iget-boolean v0, p0, Lcn/jiguang/a/a/d/c;->n:Z

    if-nez v0, :cond_1

    const-string p1, "JPushSA"

    const-string v0, "JCoreInterface.onPause() must be called after called JCoreInterface.onResume() and JPushInterface.onPause should not be called more time in this Activity or Fragment ; "

    invoke-static {p1, v0}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jiguang/a/a/d/c;->n:Z

    iget-object v0, p0, Lcn/jiguang/a/a/d/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/jiguang/a/a/d/c;->e:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jiguang/a/a/d/c;->j:J

    iget-wide v0, p0, Lcn/jiguang/a/a/d/c;->j:J

    iget-wide v2, p0, Lcn/jiguang/a/a/d/c;->i:J

    sub-long v4, v0, v2

    const-wide/16 v0, 0x3e8

    div-long/2addr v4, v0

    new-instance v0, Lcn/jiguang/a/a/d/a;

    iget-object v1, p0, Lcn/jiguang/a/a/d/c;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v4, v5}, Lcn/jiguang/a/a/d/a;-><init>(Ljava/lang/String;J)V

    iget-object v1, p0, Lcn/jiguang/a/a/d/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v0, p0, Lcn/jiguang/a/a/d/c;->i:J

    iput-wide v0, p0, Lcn/jiguang/a/a/d/c;->p:J

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :try_start_1
    iget-object v0, p0, Lcn/jiguang/a/a/d/c;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/jiguang/a/a/d/g;

    invoke-direct {v1, p0, p1}, Lcn/jiguang/a/a/d/g;-><init>(Lcn/jiguang/a/a/d/c;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    return-void

    :catch_2
    move-exception p1

    return-void

    :cond_2
    const-string p1, "JPushSA"

    const-string v0, "the activity pass by onPause didn\'t match last one passed by onResume"

    invoke-static {p1, v0}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    iget-boolean v0, p0, Lcn/jiguang/a/a/d/c;->n:Z

    if-nez v0, :cond_0

    const-string p1, "JPushSA"

    const-string p2, "JCoreInterface.onPause() must be called after called JCoreInterface.onResume() in this Activity or Fragment"

    invoke-static {p1, p2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jiguang/a/a/d/c;->n:Z

    iget-object v0, p0, Lcn/jiguang/a/a/d/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jiguang/a/a/d/c;->e:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jiguang/a/a/d/c;->j:J

    iget-wide v0, p0, Lcn/jiguang/a/a/d/c;->j:J

    iget-wide v2, p0, Lcn/jiguang/a/a/d/c;->i:J

    sub-long v4, v0, v2

    const-wide/16 v0, 0x3e8

    div-long/2addr v4, v0

    new-instance p2, Lcn/jiguang/a/a/d/a;

    iget-object v0, p0, Lcn/jiguang/a/a/d/c;->e:Ljava/lang/String;

    invoke-direct {p2, v0, v4, v5}, Lcn/jiguang/a/a/d/a;-><init>(Ljava/lang/String;J)V

    iget-object v0, p0, Lcn/jiguang/a/a/d/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Lcn/jiguang/a/a/d/c;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcn/jiguang/a/a/d/e;

    invoke-direct {v0, p0, p1}, Lcn/jiguang/a/a/d/e;-><init>(Lcn/jiguang/a/a/d/c;Landroid/content/Context;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    return-void

    :cond_1
    const-string p1, "JPushSA"

    const-string p2, "page name didn\'t match the last one passed by onResume"

    invoke-static {p1, p2}, Lcn/jiguang/e/d;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/a/a/d/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/jiguang/a/a/d/c;->n:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jiguang/a/a/d/c;->j:J

    iget-wide v0, p0, Lcn/jiguang/a/a/d/c;->j:J

    iget-wide v2, p0, Lcn/jiguang/a/a/d/c;->i:J

    const/4 v4, 0x0

    sub-long v4, v0, v2

    const-wide/16 v0, 0x3e8

    div-long/2addr v4, v0

    new-instance v0, Lcn/jiguang/a/a/d/a;

    iget-object v1, p0, Lcn/jiguang/a/a/d/c;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v4, v5}, Lcn/jiguang/a/a/d/a;-><init>(Ljava/lang/String;J)V

    iget-object v1, p0, Lcn/jiguang/a/a/d/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcn/jiguang/a/a/d/c;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/jiguang/a/a/d/h;

    invoke-direct {v1, p0, p1}, Lcn/jiguang/a/a/d/h;-><init>(Lcn/jiguang/a/a/d/c;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-exception p1

    :cond_0
    return-void

    :catch_1
    move-exception p1

    return-void
.end method
