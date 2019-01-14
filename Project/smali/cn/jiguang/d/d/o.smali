.class public final Lcn/jiguang/d/d/o;
.super Ljava/lang/Object;


# static fields
.field public static a:Lorg/json/JSONObject;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/util/concurrent/ExecutorService;

.field private static f:Ljava/util/concurrent/ExecutorService;

.field private static final g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcn/jiguang/d/d/o;->b:Ljava/lang/String;

    const-string v0, "/v1/report"

    sput-object v0, Lcn/jiguang/d/d/o;->c:Ljava/lang/String;

    const-string v0, "/v2/report"

    sput-object v0, Lcn/jiguang/d/d/o;->d:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/jiguang/d/d/o;->e:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/jiguang/d/d/o;->f:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    sput-object v0, Lcn/jiguang/d/d/o;->a:Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jiguang/d/d/o;->g:Ljava/lang/Object;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/jiguang/d/a/d;->d(Landroid/content/Context;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-string v1, "ReportUtils"

    const-string v2, " miss uid, generate report token failed"

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-static {v0}, Lcn/jiguang/d/a/d;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/jiguang/g/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/jiguang/g/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    sget-object p0, Lcn/jiguang/d/a;->f:Lcn/jiguang/c/b;

    invoke-interface {p0}, Lcn/jiguang/c/b;->f()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcn/jiguang/d/d/o;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "ReportUtils"

    const-string v1, "unexpected!"

    invoke-static {v0, v1, p0}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcn/jiguang/d/d/o;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "ReportUtils"

    const-string v0, "unexpected, report ip is null"

    invoke-static {p0, v0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    sget-object v0, Lcn/jiguang/d/d/o;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcn/jiguang/d/d/o;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    sput-object p0, Lcn/jiguang/d/d/o;->b:Ljava/lang/String;

    const-string p0, "ReportUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sis report url:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/jiguang/d/d/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcn/jiguang/d/d/o;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string p0, "ReportUtils"

    const-string p1, " body is null,generate report token failed"

    :goto_0
    invoke-static {p0, p1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/jiguang/d/d/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Lcn/jiguang/d/a/d;->d(Landroid/content/Context;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    const-string p0, "ReportUtils"

    const-string p1, " miss uid,generate report token failed"

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcn/jiguang/d/a/d;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/jiguang/g/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/jiguang/g/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lorg/json/JSONArray;I)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ltz v1, :cond_3

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_2

    :try_start_0
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v2, v5

    const v6, 0x32000

    if-le v2, v6, :cond_0

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    return-object p1

    :cond_0
    add-int/2addr v3, v5

    const v6, 0xa000

    if-le v3, v6, :cond_1

    :try_start_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v3

    move v3, v5

    goto :goto_3

    :catch_0
    move-exception v4

    move-object v0, v3

    goto :goto_1

    :catch_1
    move-exception v4

    :goto_1
    move v3, v5

    goto :goto_2

    :cond_1
    :try_start_3
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v4

    :goto_2
    const-string v5, "ReportUtils"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {p1}, Lcn/jiguang/d/d/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez p0, :cond_1

    const-string p0, "ReportUtils"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "context is null , give up read "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [B

    invoke-virtual {p0, p1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p0}, Lcn/jiguang/d/d/o;->a(Ljava/io/Closeable;)V

    :try_start_2
    new-instance p0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {p0, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {p0}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "ReportUtils"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is null, return null"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    const-string p1, "ReportUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "can\'t build "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " into JsonObject, give up read :"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_1
    move-exception p0

    const-string p1, "ReportUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "can\'t encoding "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", give up read :"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p0, v0

    goto :goto_2

    :catch_4
    move-exception p1

    move-object p0, v0

    :goto_0
    :try_start_3
    const-string v2, "ReportUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "can\'t read "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", give up read :"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {p0}, Lcn/jiguang/d/d/o;->a(Ljava/io/Closeable;)V

    return-object v0

    :catch_5
    move-exception p1

    move-object p0, v0

    :goto_1
    :try_start_4
    const-string v2, "ReportUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "can\'t open "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " inputStream, give up read  :"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {p0}, Lcn/jiguang/d/d/o;->a(Ljava/io/Closeable;)V

    return-object v0

    :goto_2
    invoke-static {p0}, Lcn/jiguang/d/d/o;->a(Ljava/io/Closeable;)V

    throw p1

    :cond_3
    :goto_3
    const-string p0, "ReportUtils"

    const-string p1, "file_name is null , give up read "

    invoke-static {p0, p1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "content"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    invoke-static {v0, p1}, Lcn/jiguang/d/g/f;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "ReportUtils"

    const-string v1, "clearReportLogFile with appkey changed "

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "jpush_stat_cache.json"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Z

    invoke-static {p0}, Lcn/jiguang/d/d/o;->c(Landroid/content/Context;)V

    const-string v0, "jpush_stat_cache_history.json"

    invoke-static {p0, v0, v1}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 7

    sget-object v0, Lcn/jiguang/d/d/o;->a:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcn/jiguang/d/d/o;->a:Lorg/json/JSONObject;

    const v1, 0x32000

    if-lt p1, v1, :cond_1

    invoke-static {p0}, Lcn/jiguang/d/d/o;->c(Landroid/content/Context;)V

    return-void

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v3, 0x0

    :goto_0
    add-int/2addr p1, v3

    sub-int/2addr p1, v1

    if-gtz p1, :cond_2

    return-void

    :cond_2
    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_7

    :try_start_1
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_5

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_4

    if-lt v4, p1, :cond_3

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_3
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "utf-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v4, v5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_6

    const-string p1, "content"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    sput-object v0, Lcn/jiguang/d/d/o;->a:Lorg/json/JSONObject;

    const-string p1, "jpush_stat_cache_history.json"

    invoke-static {p0, p1, v0}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    return-void

    :catch_2
    move-exception p0

    :cond_7
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcn/jiguang/d/d/l;",
            ">;",
            "Lorg/json/JSONObject;",
            "Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-static {p0}, Lcn/jiguang/g/a;->c(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p3, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jiguang/d/d/l;

    invoke-virtual {v1}, Lcn/jiguang/d/d/l;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1}, Lcn/jiguang/d/d/l;->b()Ljava/io/File;

    move-result-object v3

    invoke-static {p0, v2, v3, p2}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/io/File;Lorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcn/jiguang/d/d/l;->b()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {p0, p3}, Lcn/jiguang/d/d/m;->a(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p3, :cond_2

    const-string p3, "ReportUtils"

    const-string v1, "no network, only wrap history"

    invoke-static {p3, v1}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/io/File;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    invoke-static {p0, v1, p3, p2}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/io/File;Lorg/json/JSONObject;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 1

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Lorg/json/JSONArray;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONArray;Lcn/jiguang/d/d/q;)V
    .locals 6

    const-string v0, "ReportUtils"

    const-string v1, "Action - sendLogRoutine with report CallBack"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, -0x1

    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    const-string v2, "ReportUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "log size:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    :try_start_1
    const-string v2, "content"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    invoke-static {v0, p0}, Lcn/jiguang/d/d/o;->a(Lorg/json/JSONObject;Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    invoke-interface {p2, v1}, Lcn/jiguang/d/d/q;->a(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x1

    :try_start_3
    const-string v2, "ReportUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "send log slice:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v2, "ReportUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "send log slice:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {p0, v0, p1}, Lcn/jiguang/d/d/i;->a(Landroid/content/Context;Lorg/json/JSONObject;Z)I

    move-result p0

    if-eqz p2, :cond_4

    const/16 p1, 0xc8

    if-ne p0, p1, :cond_3

    const/4 v1, 0x0

    :cond_3
    invoke-interface {p2, v1}, Lcn/jiguang/d/d/q;->a(I)V

    :cond_4
    return-void

    :catch_2
    move-exception p0

    const-string p1, "ReportUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "wrap container exception, give up send log:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    invoke-interface {p2, v1}, Lcn/jiguang/d/d/q;->a(I)V

    :cond_5
    return-void

    :catch_3
    move-exception p0

    const-string p1, "ReportUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "put content exception, give up send log:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_6

    invoke-interface {p2, v1}, Lcn/jiguang/d/d/q;->a(I)V

    :cond_6
    return-void

    :cond_7
    :goto_2
    const-string v0, "ReportUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " items:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_8

    invoke-interface {p2, v1}, Lcn/jiguang/d/d/q;->a(I)V

    :cond_8
    return-void
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "ReportUtils"

    const-string p1, "context is null , give up send log"

    invoke-static {p0, p1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcn/jiguang/d/d/o;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/jiguang/d/d/r;

    invoke-direct {v1, p0, p1, p2}, Lcn/jiguang/d/d/r;-><init>(Landroid/content/Context;Lorg/json/JSONArray;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "ReportUtils"

    const-string p1, "item is null , give up send log"

    invoke-static {p0, p1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Lorg/json/JSONArray;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/io/File;Lorg/json/JSONObject;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {p2}, Lcn/jiguang/d/d/m;->a(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcn/jiguang/d/d/l;->b(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p3, :cond_2

    invoke-static {p1, p3}, Lcn/jiguang/d/g/f;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcn/jiguang/d/d/m;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    invoke-static {p0}, Lcn/jiguang/g/a;->c(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_4

    const-string p0, "ReportUtils"

    const-string p1, "no network, give up upload"

    invoke-static {p0, p1}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const/4 p3, 0x1

    invoke-static {p0, p1, p3}, Lcn/jiguang/d/d/i;->a(Landroid/content/Context;Lorg/json/JSONObject;Z)I

    move-result p0

    const/16 p3, 0xc8

    if-ne p0, p3, :cond_5

    const-string p0, "ReportUtils"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "upload json success: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/jiguang/d/g/f;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcn/jiguang/d/g/c;->a(Ljava/io/File;)V

    return-void

    :cond_5
    const-string p2, "ReportUtils"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "upload json failed("

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "): "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcn/jiguang/d/g/f;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_1
    const-string p0, "ReportUtils"

    const-string p1, "upload content is empty, do nothing"

    invoke-static {p0, p1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Lorg/json/JSONArray;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONArray;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    invoke-static {p0}, Lcn/jiguang/d/d/o;->c(Landroid/content/Context;)V

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    :try_start_0
    const-string p2, "content"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    :goto_3
    sput-object p1, Lcn/jiguang/d/d/o;->a:Lorg/json/JSONObject;

    const-string p2, "jpush_stat_cache_history.json"

    invoke-static {p0, p2, p1}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Z

    return-void
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONArray;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONArray;",
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONArray;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcn/jiguang/d/d/o;->c(Landroid/content/Context;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_5

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :try_start_0
    const-string p3, "content"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    :goto_2
    sput-object p1, Lcn/jiguang/d/d/o;->a:Lorg/json/JSONObject;

    const-string p2, "jpush_stat_cache_history.json"

    invoke-static {p0, p2, p1}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Z

    :cond_5
    return-void
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;Z)V
    .locals 2

    sget-object v0, Lcn/jiguang/d/d/o;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/jiguang/d/d/p;

    invoke-direct {v1, p0, p1, p2}, Lcn/jiguang/d/d/p;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 8

    invoke-static {p1}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "ReportUtils"

    const-string p1, "file_name is null , give up save "

    :goto_0
    invoke-static {p0, p1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-static {p1}, Lcn/jiguang/d/d/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez p0, :cond_1

    const-string p0, "ReportUtils"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "context is null , give up save "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object v2, Lcn/jiguang/d/d/o;->g:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v3, ""

    const/4 v4, 0x1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "jpush_stat_cache_history.json"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v5, :cond_2

    :try_start_1
    const-string v5, "ReportUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "save log in writeHistoryLog:\n"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_2
    const-string v5, "ReportUtils"

    const-string v6, "save log in writeHistoryLog"

    invoke-static {v5, v6, p2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_2
    :goto_1
    const/4 p2, 0x0

    :try_start_3
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    const-string p1, "UTF-8"

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {p0}, Lcn/jiguang/d/d/o;->a(Ljava/io/Closeable;)V

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    return v4

    :catchall_0
    move-exception p1

    move-object p2, p0

    goto/16 :goto_6

    :catch_1
    move-exception p1

    move-object p2, p0

    goto :goto_2

    :catch_2
    move-exception p1

    move-object p2, p0

    goto :goto_3

    :catch_3
    move-exception p1

    move-object p2, p0

    goto :goto_4

    :catch_4
    move-exception p1

    move-object p2, p0

    goto :goto_5

    :catchall_1
    move-exception p1

    goto/16 :goto_6

    :catch_5
    move-exception p1

    :goto_2
    :try_start_6
    const-string p0, "ReportUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Filepath error of ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] , give up save :"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-static {p2}, Lcn/jiguang/d/d/o;->a(Ljava/io/Closeable;)V

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    return v1

    :catch_6
    move-exception p1

    :goto_3
    :try_start_8
    const-string p0, "ReportUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "can\'t write "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , give up save :"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-static {p2}, Lcn/jiguang/d/d/o;->a(Ljava/io/Closeable;)V

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    return v1

    :catch_7
    move-exception p1

    :goto_4
    :try_start_a
    const-string p0, "ReportUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "can\'t encoding "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , give up save :"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    invoke-static {p2}, Lcn/jiguang/d/d/o;->a(Ljava/io/Closeable;)V

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    return v1

    :catch_8
    move-exception p1

    :goto_5
    :try_start_c
    const-string p0, "ReportUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "can\'t open "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " outputStream, give up save :"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    invoke-static {p2}, Lcn/jiguang/d/d/o;->a(Ljava/io/Closeable;)V

    monitor-exit v2

    return v1

    :goto_6
    invoke-static {p2}, Lcn/jiguang/d/d/o;->a(Ljava/io/Closeable;)V

    throw p1

    :catchall_2
    move-exception p0

    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    throw p0
.end method

.method private static a(Lorg/json/JSONObject;Landroid/content/Context;)Z
    .locals 5

    const-string v0, "platform"

    const-string v1, "a"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p1}, Lcn/jiguang/d/a/d;->d(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v2, 0x0

    if-nez v4, :cond_0

    const-string p0, "ReportUtils"

    const-string p1, "miss uid when wrap container info"

    :goto_0
    invoke-static {p0, p1}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    const-string v3, "uid"

    invoke-virtual {p0, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {p1}, Lcn/jiguang/d/a/d;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "ReportUtils"

    const-string p1, "miss app_key when wrap container info"

    goto :goto_0

    :cond_1
    const-string v0, "app_key"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcn/jiguang/d/d/b;->a()Lcn/jiguang/d/d/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/jiguang/d/d/b;->a(Lorg/json/JSONObject;)Z

    const-string p1, "core_sdk_ver"

    const-string v0, "1.1.9"

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, ""

    invoke-static {p1}, Lcn/jiguang/d/a/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "channel"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_2
    const-string p1, "ReportUtils"

    const-string v0, "miss channel when wrap container info,but continue report..."

    invoke-static {p1, v0}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object p1, Lcn/jiguang/d/a;->i:Ljava/lang/String;

    invoke-static {p1}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "app_version"

    sget-object v0, Lcn/jiguang/d/a;->i:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_3
    const-string p0, "ReportUtils"

    const-string p1, "miss app version when wrap container info,but continue report..."

    invoke-static {p0, p1}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method private static b()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/jiguang/d/d/o;->b:Ljava/lang/String;

    invoke-static {v0}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CN"

    sget-object v1, Lcn/jiguang/d/a;->f:Lcn/jiguang/c/b;

    invoke-interface {v1}, Lcn/jiguang/c/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/jiguang/d/a/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/d/d/o;->a(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    sget-object v0, Lcn/jiguang/d/d/o;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0, p0}, Lcn/jiguang/d/d/o;->a(Lorg/json/JSONObject;Landroid/content/Context;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "ReportUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wrapContainerInfo exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    :try_start_0
    const-string v0, "itime"

    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getReportTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "type"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "account_id"

    invoke-static {p0}, Lcn/jiguang/d/a/d;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    const-string p2, "ReportUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fillBase exception:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method static synthetic b(Landroid/content/Context;Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 11

    const-string v0, "jpush_stat_cache_history.json"

    sget-object v1, Lcn/jiguang/d/d/o;->a:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sput-object v0, Lcn/jiguang/d/d/o;->a:Lorg/json/JSONObject;

    :cond_0
    sget-object v0, Lcn/jiguang/d/d/o;->a:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_1
    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :cond_2
    const/4 v2, 0x0

    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lcn/jiguang/g/a;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "content"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "jpush_stat_cache_history.json"

    invoke-static {p0, p1, v0}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_4
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_c

    const p1, 0xa000

    invoke-static {v1, p1}, Lcn/jiguang/d/d/o;->a(Lorg/json/JSONArray;I)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :try_start_1
    const-string v4, "ReportUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "log size:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "utf-8"

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    :goto_2
    const-string v1, "ReportUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "log divided into "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " parts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_c

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONArray;

    if-nez v1, :cond_c

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x1

    if-gtz v5, :cond_5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_5
    :try_start_2
    const-string v5, "content"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    invoke-static {v0, p0}, Lcn/jiguang/d/d/o;->a(Lorg/json/JSONObject;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {p0, v0}, Lcn/jiguang/d/d/o;->b(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :cond_6
    :try_start_4
    const-string v5, "ReportUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "send log slice:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v5

    const-string v5, "ReportUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "send log slice:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-static {p0, v0, v6}, Lcn/jiguang/d/d/i;->a(Landroid/content/Context;Lorg/json/JSONObject;Z)I

    move-result v5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/16 v8, 0xc8

    if-nez v7, :cond_8

    sget-object v7, Lcn/jiguang/api/SdkType;->JANALYTICS:Lcn/jiguang/api/SdkType;

    invoke-virtual {v7}, Lcn/jiguang/api/SdkType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "ReportUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",report "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v5, v8, :cond_7

    const-string v10, "success"

    goto :goto_5

    :cond_7
    const-string v10, "failed"

    :goto_5
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-eq v5, v8, :cond_b

    const/16 v7, 0x191

    if-eq v5, v7, :cond_a

    const/16 v6, 0x194

    if-eq v5, v6, :cond_9

    const/16 v6, 0x1ad

    if-eq v5, v6, :cond_9

    const/16 v6, 0x1f4

    if-eq v5, v6, :cond_9

    packed-switch v5, :pswitch_data_0

    goto :goto_6

    :cond_9
    :pswitch_0
    invoke-static {p0, v0, v3}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/ArrayList;)V

    goto :goto_6

    :cond_a
    invoke-static {p0}, Lcn/jiguang/d/d/o;->c(Landroid/content/Context;)V

    const/4 v1, 0x1

    goto :goto_6

    :catch_3
    move-exception p1

    const-string p2, "ReportUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wrap container exception, give up send log:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcn/jiguang/d/d/o;->b(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void

    :catch_4
    move-exception v5

    const-string v6, "ReportUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "put content exception, give up send log:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :pswitch_1
    invoke-static {p0, v0, v4, v3}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONArray;Ljava/util/ArrayList;)V

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 1

    sput-object p1, Lcn/jiguang/d/d/o;->a:Lorg/json/JSONObject;

    const-string v0, "jpush_stat_cache_history.json"

    invoke-static {p0, v0, p1}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Z

    return-void
.end method

.method static synthetic b(Landroid/content/Context;Lorg/json/JSONObject;Z)V
    .locals 3

    invoke-static {p0}, Lcn/jiguang/d/d/o;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-static {p1, v0}, Lcn/jiguang/d/d/o;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p2, :cond_0

    const-string p2, "prior"

    goto :goto_0

    :cond_0
    const-string p2, "normal"

    :goto_0
    if-nez v0, :cond_1

    const-string v1, "ReportUtils"

    const-string v2, "wrap data failed"

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "nowrap"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcn/jiguang/d/d/m;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/List;

    goto :goto_1

    :cond_1
    invoke-static {p0, p2, p1}, Lcn/jiguang/d/d/m;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x0

    :goto_2
    const/4 p2, 0x0

    invoke-static {p0, p1, v0, p2}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcn/jiguang/d/d/o;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jiguang/d/d/o;->b:Ljava/lang/String;

    invoke-static {p0}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/jiguang/d/d/o;->b:Ljava/lang/String;

    invoke-static {v0}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcn/jiguang/d/d/o;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcn/jiguang/d/a;->f:Lcn/jiguang/c/b;

    invoke-interface {v0}, Lcn/jiguang/c/b;->f()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {}, Lcn/jiguang/d/d/o;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcn/jiguang/d/d/o;->a:Lorg/json/JSONObject;

    const-string v1, "jpush_stat_cache_history.json"

    invoke-static {p0, v1, v0}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "jpush_stat_cache_history.json"

    invoke-static {v0}, Lcn/jiguang/d/d/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "ReportUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delete file success filename:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "jpush_stat_cache_history.json"

    invoke-static {v1}, Lcn/jiguang/d/d/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    const-string v0, "ReportUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "clearHistotyFileContent e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception p0

    const-string v0, "ReportUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "clearHistotyFileContent e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/16 v0, 0xa

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p0, "getBasicAuthorization"

    const-string v0, "basic authorization encode failed"

    invoke-static {p0, v0}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcn/jiguang/d/g/h;->a([B)[B

    move-result-object p0

    invoke-static {p0}, Lcn/jiguang/g/a;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "ReportUtils"

    const-string v0, "file_name is null , give up save "

    invoke-static {p0, v0}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "jpush_stat_cache_history.json"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "history_file"

    return-object p0

    :cond_1
    const-string p0, "current_session_file"

    return-object p0
.end method
