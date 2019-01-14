.class public final Lcn/jiguang/a/a/c/i;
.super Ljava/lang/Thread;


# static fields
.field private static a:Ljava/util/concurrent/ExecutorService;

.field private static final b:Ljava/lang/Object;

.field private static c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static j:Ljava/net/CookieManager;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/content/Context;

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/jiguang/a/a/c/i;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jiguang/a/a/c/i;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcn/jiguang/a/a/c/i;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/jiguang/a/a/c/i;->h:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/jiguang/a/a/c/i;->h:I

    iget-object v0, p0, Lcn/jiguang/a/a/c/i;->d:Ljava/lang/String;

    invoke-static {p1, v0}, Lcn/jiguang/g/a;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/jiguang/a/a/c/i;->e:Ljava/lang/String;

    invoke-static {p1, v1}, Lcn/jiguang/g/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/jiguang/a/a/c/i;->f:Ljava/lang/String;

    invoke-static {p1, v2}, Lcn/jiguang/g/a;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/net/CookieManager;

    invoke-direct {v3}, Ljava/net/CookieManager;-><init>()V

    sput-object v3, Lcn/jiguang/a/a/c/i;->j:Ljava/net/CookieManager;

    sget-object v4, Ljava/net/CookiePolicy;->ACCEPT_ALL:Ljava/net/CookiePolicy;

    invoke-virtual {v3, v4}, Ljava/net/CookieManager;->setCookiePolicy(Ljava/net/CookiePolicy;)V

    sget-object v3, Lcn/jiguang/a/a/c/i;->j:Ljava/net/CookieManager;

    invoke-static {v3}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    iput-object p1, p0, Lcn/jiguang/a/a/c/i;->g:Landroid/content/Context;

    iput-object v0, p0, Lcn/jiguang/a/a/c/i;->d:Ljava/lang/String;

    iput-object v1, p0, Lcn/jiguang/a/a/c/i;->e:Ljava/lang/String;

    iput-object v2, p0, Lcn/jiguang/a/a/c/i;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2

    invoke-static {p0}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "ChinaTelecom"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    return v1

    :cond_1
    const-string v0, "ChinaMobile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    return v1

    :cond_2
    const-string v0, "ChinaUnicom"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;IJZLjava/io/File;Ljava/lang/String;)Lcn/jiguang/a/a/c/j;
    .locals 33

    move-object/from16 v1, p2

    move/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    const-string v5, "PhoneNumberUtil"

    const-string v6, "Action - httpPostFile "

    invoke-static {v5, v6}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "PhoneNumberUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "urls:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v13, :cond_0

    invoke-virtual/range {p7 .. p7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object v7, v13

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " keyset:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  filename:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v13, :cond_1

    invoke-virtual/range {p7 .. p7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    move-object v7, v13

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " isTemporaryRedirect:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v5, 0xc8

    cmp-long v7, p4, v5

    if-ltz v7, :cond_3

    const-wide/32 v5, 0xea60

    cmp-long v7, p4, v5

    if-lez v7, :cond_2

    goto :goto_2

    :cond_2
    move-wide/from16 v10, p4

    goto :goto_3

    :cond_3
    :goto_2
    const-wide/16 v3, 0x7d0

    move-wide v10, v3

    :goto_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v9, "--"

    const-string v7, "\r\n"

    const-string v8, "multipart/form-data"

    sget-object v3, Lcn/jiguang/a/a/c/i;->j:Ljava/net/CookieManager;

    if-nez v3, :cond_4

    new-instance v3, Ljava/net/CookieManager;

    invoke-direct {v3}, Ljava/net/CookieManager;-><init>()V

    sput-object v3, Lcn/jiguang/a/a/c/i;->j:Ljava/net/CookieManager;

    :cond_4
    const/4 v5, 0x0

    move-wide/from16 v20, v10

    const/4 v3, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v19, 0x0

    :goto_4
    :try_start_0
    invoke-static/range {p1 .. p2}, Lcn/jiguang/net/HttpUtils;->getHttpURLConnectionWithProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v11
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_23
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_21
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/16 v4, 0x7530

    :try_start_1
    invoke-virtual {v11, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v11, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v11, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v11, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v4, "POST"

    invoke-virtual {v11, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v4, "Charset"

    const-string v10, "UTF-8"

    invoke-virtual {v11, v4, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "User-Agent"

    const-string v10, "Mozilla/5.0 (Linux; Android 5.1.1; Nexus 6 Build/LYZ28E) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.23 Mobile Safari/537.36"

    invoke-virtual {v11, v4, v10}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcn/jiguang/a/a/c/i;->j:Ljava/net/CookieManager;

    invoke-virtual {v4}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v4

    invoke-interface {v4}, Ljava/net/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4
    :try_end_1
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_1 .. :try_end_1} :catch_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1f
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_1e
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-lez v4, :cond_5

    :try_start_2
    const-string v4, "Cookie"

    const-string v10, ";"

    sget-object v5, Lcn/jiguang/a/a/c/i;->j:Ljava/net/CookieManager;

    invoke-virtual {v5}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v5

    invoke-interface {v5}, Ljava/net/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_2 .. :try_end_2} :catch_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v4, v16

    goto/16 :goto_28

    :catch_0
    move-exception v0

    move-object v2, v0

    move/from16 v28, v3

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v4, v16

    move-wide/from16 v30, v20

    const/4 v3, 0x0

    const/16 v6, 0xc8

    const/16 v12, 0x194

    const/16 v22, 0x0

    goto/16 :goto_1d

    :catch_1
    move-exception v0

    move-object v2, v0

    move/from16 v28, v3

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v4, v16

    move-wide/from16 v30, v20

    const/4 v3, 0x0

    const/16 v6, 0xc8

    const/16 v12, 0x194

    const/16 v22, 0x0

    goto/16 :goto_1f

    :cond_5
    :goto_5
    :try_start_3
    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v4, "PhoneNumberUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "file:"

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_3 .. :try_end_3} :catch_20
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1f
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_1e
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v13, :cond_7

    :try_start_4
    const-string v4, "Content-Type"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ";boundary="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v6, "Content-Disposition:\u00a0form-data;\u00a0name=\""

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\";\u00a0filename=\""

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p7 .. p7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "Content-Type:\u00a0application/octet-stream;\u00a0charset=UTF-8"

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->write([B)V

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v6, 0x400

    new-array v6, v6, [B

    :goto_6
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    move-result v10
    :try_end_4
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_4 .. :try_end_4} :catch_20
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v25, v8

    const/4 v8, -0x1

    if-eq v10, v8, :cond_6

    const/4 v8, 0x0

    :try_start_5
    invoke-virtual {v5, v6, v8, v10}, Ljava/io/DataOutputStream;->write([BII)V

    move-object/from16 v8, v25

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v2, v0

    move/from16 v28, v3

    move-object/from16 v27, v9

    move-object/from16 v4, v16

    move-wide/from16 v30, v20

    move-object/from16 v26, v25

    const/4 v3, 0x0

    const/16 v6, 0xc8

    const/16 v12, 0x194

    const/16 v22, 0x0

    move-object/from16 v25, v7

    goto/16 :goto_1d

    :catch_3
    move-exception v0

    move-object v2, v0

    move/from16 v28, v3

    move-object/from16 v27, v9

    move-object/from16 v4, v16

    move-wide/from16 v30, v20

    move-object/from16 v26, v25

    const/4 v3, 0x0

    const/16 v6, 0xc8

    const/16 v12, 0x194

    const/16 v22, 0x0

    move-object/from16 v25, v7

    goto/16 :goto_1f

    :cond_6
    const/4 v8, 0x0

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->write([B)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_5 .. :try_end_5} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_7

    :cond_7
    move-object/from16 v25, v8

    const/4 v8, 0x0

    :goto_7
    :try_start_6
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10
    :try_end_6
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_6 .. :try_end_6} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1c
    .catch Ljava/lang/AssertionError; {:try_start_6 .. :try_end_6} :catch_1b
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lcn/jiguang/a/a/c/i;->a(Ljava/util/Map;)V

    const-string v4, "PhoneNumberUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "rspCode:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_7 .. :try_end_7} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_19
    .catch Ljava/lang/AssertionError; {:try_start_7 .. :try_end_7} :catch_18
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const/16 v4, 0x12e

    if-ne v10, v4, :cond_d

    :try_start_8
    const-string v4, "Location"

    invoke-virtual {v11, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v4, "PhoneNumberUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "location:"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/lang/AssertionError; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-ltz p3, :cond_a

    add-int/lit8 v6, p3, -0x1

    const-wide/16 v18, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move v8, v3

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    const/16 v22, 0x0

    move/from16 v28, v8

    move-object/from16 v26, v25

    move-object/from16 v25, v7

    move-wide/from16 v7, v18

    move-object/from16 v27, v9

    move v9, v12

    move/from16 v29, v10

    move-wide/from16 v30, v20

    move-object/from16 v10, v23

    move-object v2, v11

    const/16 v12, 0x194

    move-object/from16 v11, v24

    :try_start_9
    invoke-direct/range {v3 .. v11}, Lcn/jiguang/a/a/c/i;->a(Landroid/content/Context;Ljava/lang/String;IJZLjava/io/File;Ljava/lang/String;)Lcn/jiguang/a/a/c/j;

    move-result-object v3
    :try_end_9
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/AssertionError; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object/from16 v4, v16

    if-eqz v4, :cond_8

    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    return-object v3

    :catchall_1
    move-exception v0

    move-object/from16 v4, v16

    goto/16 :goto_27

    :catch_5
    move-exception v0

    move-object/from16 v4, v16

    move-object v11, v2

    move/from16 v18, v29

    const/4 v3, 0x0

    goto :goto_a

    :catch_6
    move-exception v0

    move-object/from16 v4, v16

    move-object v11, v2

    move/from16 v18, v29

    const/4 v3, 0x0

    goto :goto_b

    :catch_7
    move-exception v0

    move-object/from16 v4, v16

    move/from16 v5, v29

    const/4 v3, 0x0

    goto/16 :goto_c

    :cond_a
    move-object v2, v11

    move-object/from16 v4, v16

    if-eqz v4, :cond_b

    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_9

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_b
    :goto_9
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    const/4 v3, 0x0

    return-object v3

    :catch_9
    move-exception v0

    move/from16 v28, v3

    move-object/from16 v27, v9

    move/from16 v29, v10

    move-object v2, v11

    move-object/from16 v4, v16

    move-wide/from16 v30, v20

    move-object/from16 v26, v25

    const/4 v3, 0x0

    const/16 v12, 0x194

    const/16 v22, 0x0

    move-object/from16 v25, v7

    move/from16 v18, v29

    :goto_a
    const/16 v6, 0xc8

    goto/16 :goto_1a

    :catch_a
    move-exception v0

    move/from16 v28, v3

    move-object/from16 v27, v9

    move/from16 v29, v10

    move-object v2, v11

    move-object/from16 v4, v16

    move-wide/from16 v30, v20

    move-object/from16 v26, v25

    const/4 v3, 0x0

    const/16 v12, 0x194

    const/16 v22, 0x0

    move-object/from16 v25, v7

    move/from16 v18, v29

    :goto_b
    const/16 v6, 0xc8

    goto/16 :goto_1b

    :catch_b
    move-exception v0

    move/from16 v28, v3

    move-object/from16 v27, v9

    move-object v2, v11

    move-object/from16 v4, v16

    move-wide/from16 v30, v20

    move-object/from16 v26, v25

    const/4 v3, 0x0

    const/16 v12, 0x194

    const/16 v22, 0x0

    move-object/from16 v25, v7

    move v5, v10

    :goto_c
    const/16 v6, 0xc8

    goto/16 :goto_22

    :cond_d
    move/from16 v28, v3

    move-object/from16 v27, v9

    move v5, v10

    move-object v2, v11

    move-object/from16 v4, v16

    move-wide/from16 v30, v20

    move-object/from16 v26, v25

    const/4 v3, 0x0

    const/16 v6, 0xc8

    const/16 v12, 0x194

    const/16 v22, 0x0

    move-object/from16 v25, v7

    if-ne v5, v6, :cond_1a

    :try_start_c
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7
    :try_end_c
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_c .. :try_end_c} :catch_16
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_15
    .catch Ljava/lang/AssertionError; {:try_start_c .. :try_end_c} :catch_14
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :try_start_d
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4
    :try_end_d
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_d .. :try_end_d} :catch_13
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_12
    .catch Ljava/lang/AssertionError; {:try_start_d .. :try_end_d} :catch_11
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    new-instance v8, Ljava/lang/String;

    invoke-static {v7}, Lcn/jiguang/g/j;->a(Ljava/io/InputStream;)[B

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-direct {v8, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_e
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_e .. :try_end_e} :catch_10
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_f
    .catch Ljava/lang/AssertionError; {:try_start_e .. :try_end_e} :catch_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v7, :cond_e

    :try_start_f
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    goto :goto_d

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_e
    :goto_d
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_f
    if-lt v5, v6, :cond_11

    const/16 v2, 0x12c

    if-ge v5, v2, :cond_11

    if-nez v8, :cond_10

    :try_start_10
    const-string v1, "PhoneNumberUtil"

    const-string v2, "Unexpected: server responsed NULL"

    invoke-static {v1, v2, v3}, Lcn/jiguang/e/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "<<error>>"
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_d

    move-object v8, v1

    goto :goto_e

    :catch_d
    move-exception v0

    move-object v1, v0

    const-string v2, "PhoneNumberUtil"

    const-string v3, "parse entity error"

    invoke-static {v2, v3, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    :cond_10
    :goto_e
    move-object v1, v8

    goto/16 :goto_12

    :cond_11
    const/16 v2, 0x1f4

    const/16 v6, 0x190

    if-lt v5, v6, :cond_18

    if-ge v5, v2, :cond_18

    if-ne v6, v5, :cond_12

    const-string v2, "PhoneNumberUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Server response failure:400 - "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "server fail"

    goto/16 :goto_12

    :cond_12
    const/16 v2, 0x191

    if-ne v2, v5, :cond_13

    const-string v2, "PhoneNumberUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Request not authorized:401 - "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_10

    :cond_13
    if-ne v12, v5, :cond_14

    const-string v2, "PhoneNumberUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Request path does not exist: 404 - "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_10

    :cond_14
    const/16 v2, 0x196

    if-ne v2, v5, :cond_15

    const-string v2, "PhoneNumberUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "not acceptable:406 - "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_10

    :cond_15
    const/16 v2, 0x198

    if-ne v2, v5, :cond_16

    const-string v2, "PhoneNumberUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "request timeout:408 - "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_10

    :cond_16
    const/16 v2, 0x199

    if-ne v2, v5, :cond_17

    const-string v2, "PhoneNumberUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "conflict:409 - "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_10

    :cond_17
    move-object v1, v3

    goto :goto_12

    :cond_18
    if-lt v5, v2, :cond_19

    const/16 v2, 0x258

    if-ge v5, v2, :cond_19

    const-string v2, "PhoneNumberUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Server error - "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_f

    :cond_19
    const-string v2, "PhoneNumberUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Other wrong response status - "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_f
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", url:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_10
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    const-string v1, "<<error>>"

    :goto_12
    new-instance v2, Lcn/jiguang/a/a/c/j;

    invoke-direct {v2, v5, v4, v1}, Lcn/jiguang/a/a/c/j;-><init>(ILjava/util/Map;Ljava/lang/String;)V

    return-object v2

    :catch_e
    move-exception v0

    move-object v11, v2

    move-object/from16 v17, v4

    goto :goto_13

    :catch_f
    move-exception v0

    move-object v11, v2

    move-object/from16 v17, v4

    goto :goto_14

    :catch_10
    move-exception v0

    move-object/from16 v17, v4

    goto :goto_15

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v11, v2

    move-object v4, v7

    goto/16 :goto_28

    :catch_11
    move-exception v0

    move-object v11, v2

    :goto_13
    move/from16 v18, v5

    move-object v4, v7

    goto/16 :goto_1a

    :catch_12
    move-exception v0

    move-object v11, v2

    :goto_14
    move/from16 v18, v5

    move-object v4, v7

    goto/16 :goto_1b

    :catch_13
    move-exception v0

    :goto_15
    move-object v4, v7

    goto/16 :goto_22

    :catch_14
    move-exception v0

    move-object v11, v2

    goto :goto_17

    :catch_15
    move-exception v0

    move-object v11, v2

    goto :goto_18

    :catch_16
    move-exception v0

    goto/16 :goto_22

    :cond_1a
    if-eqz v4, :cond_1b

    :try_start_11
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_17

    goto :goto_16

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1b
    :goto_16
    if-eqz v2, :cond_20

    goto/16 :goto_24

    :catch_18
    move-exception v0

    move/from16 v28, v3

    move-object/from16 v27, v9

    move v5, v10

    move-object v2, v11

    move-object/from16 v4, v16

    move-wide/from16 v30, v20

    move-object/from16 v26, v25

    const/4 v3, 0x0

    const/16 v6, 0xc8

    const/16 v12, 0x194

    const/16 v22, 0x0

    move-object/from16 v25, v7

    :goto_17
    move/from16 v18, v5

    goto/16 :goto_1a

    :catch_19
    move-exception v0

    move/from16 v28, v3

    move-object/from16 v27, v9

    move v5, v10

    move-object v2, v11

    move-object/from16 v4, v16

    move-wide/from16 v30, v20

    move-object/from16 v26, v25

    const/4 v3, 0x0

    const/16 v6, 0xc8

    const/16 v12, 0x194

    const/16 v22, 0x0

    move-object/from16 v25, v7

    :goto_18
    move/from16 v18, v5

    goto/16 :goto_1b

    :catch_1a
    move-exception v0

    move/from16 v28, v3

    move-object/from16 v27, v9

    move v5, v10

    move-object v2, v11

    move-object/from16 v4, v16

    move-wide/from16 v30, v20

    move-object/from16 v26, v25

    const/4 v3, 0x0

    const/16 v6, 0xc8

    const/16 v12, 0x194

    const/16 v22, 0x0

    move-object/from16 v25, v7

    goto/16 :goto_22

    :catch_1b
    move-exception v0

    move/from16 v28, v3

    move-object/from16 v27, v9

    move-object v2, v11

    move-object/from16 v4, v16

    move-wide/from16 v30, v20

    move-object/from16 v26, v25

    const/4 v3, 0x0

    const/16 v6, 0xc8

    const/16 v12, 0x194

    const/16 v22, 0x0

    move-object/from16 v25, v7

    goto :goto_1a

    :catch_1c
    move-exception v0

    move/from16 v28, v3

    move-object/from16 v27, v9

    move-object v2, v11

    move-object/from16 v4, v16

    move-wide/from16 v30, v20

    move-object/from16 v26, v25

    const/4 v3, 0x0

    const/16 v6, 0xc8

    const/16 v12, 0x194

    const/16 v22, 0x0

    move-object/from16 v25, v7

    goto :goto_1b

    :catch_1d
    move-exception v0

    move/from16 v28, v3

    move-object/from16 v27, v9

    move-object v2, v11

    move-object/from16 v4, v16

    move-wide/from16 v30, v20

    move-object/from16 v26, v25

    const/4 v3, 0x0

    const/16 v6, 0xc8

    const/16 v12, 0x194

    const/16 v22, 0x0

    move-object/from16 v25, v7

    goto :goto_1c

    :catchall_3
    move-exception v0

    move-object v2, v11

    move-object/from16 v4, v16

    :goto_19
    move-object v1, v0

    goto/16 :goto_28

    :catch_1e
    move-exception v0

    move/from16 v28, v3

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object v2, v11

    move-object/from16 v4, v16

    move-wide/from16 v30, v20

    const/4 v3, 0x0

    const/16 v6, 0xc8

    const/16 v12, 0x194

    const/16 v22, 0x0

    :goto_1a
    move-object v2, v0

    goto :goto_1d

    :catch_1f
    move-exception v0

    move/from16 v28, v3

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object v2, v11

    move-object/from16 v4, v16

    move-wide/from16 v30, v20

    const/4 v3, 0x0

    const/16 v6, 0xc8

    const/16 v12, 0x194

    const/16 v22, 0x0

    :goto_1b
    move-object v2, v0

    goto/16 :goto_1f

    :catch_20
    move-exception v0

    move/from16 v28, v3

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object v2, v11

    move-object/from16 v4, v16

    move-wide/from16 v30, v20

    const/4 v3, 0x0

    const/16 v6, 0xc8

    const/16 v12, 0x194

    const/16 v22, 0x0

    :goto_1c
    move/from16 v5, v18

    goto/16 :goto_22

    :catchall_4
    move-exception v0

    move-object/from16 v4, v16

    move-object v1, v0

    move-object/from16 v11, v19

    goto/16 :goto_28

    :catch_21
    move-exception v0

    move/from16 v28, v3

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v4, v16

    move-wide/from16 v30, v20

    const/4 v3, 0x0

    const/16 v6, 0xc8

    const/16 v12, 0x194

    const/16 v22, 0x0

    move-object v2, v0

    move-object/from16 v11, v19

    :goto_1d
    :try_start_12
    const-string v5, "PhoneNumberUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Catch AssertionError to avoid http close crash - "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/AssertionError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    if-eqz v4, :cond_1c

    :try_start_13
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_22

    goto :goto_1e

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1c
    :goto_1e
    if-eqz v11, :cond_1e

    goto :goto_21

    :catch_23
    move-exception v0

    move/from16 v28, v3

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v4, v16

    move-wide/from16 v30, v20

    const/4 v3, 0x0

    const/16 v6, 0xc8

    const/16 v12, 0x194

    const/16 v22, 0x0

    move-object v2, v0

    move-object/from16 v11, v19

    :goto_1f
    :try_start_14
    const-string v5, "PhoneNumberUtil"

    const-string v7, "http client execute error"

    invoke-static {v5, v7, v2}, Lcn/jiguang/e/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    if-eqz v4, :cond_1d

    :try_start_15
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_24

    goto :goto_20

    :catch_24
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1d
    :goto_20
    if-eqz v11, :cond_1e

    :goto_21
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1e
    move-object/from16 v16, v4

    move-object/from16 v19, v11

    move-object/from16 v2, v17

    move/from16 v5, v18

    goto :goto_25

    :catchall_5
    move-exception v0

    goto/16 :goto_19

    :catch_25
    move-exception v0

    move/from16 v28, v3

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v4, v16

    move-wide/from16 v30, v20

    const/4 v3, 0x0

    const/16 v6, 0xc8

    const/16 v12, 0x194

    const/16 v22, 0x0

    move/from16 v5, v18

    move-object/from16 v2, v19

    :goto_22
    :try_start_16
    const-string v7, "PhoneNumberUtil"

    const-string v8, "Catch SSLPeerUnverifiedException, http client execute error!"

    invoke-static {v7, v8}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    if-eqz v4, :cond_1f

    :try_start_17
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_26

    goto :goto_23

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1f
    :goto_23
    if-eqz v2, :cond_20

    :goto_24
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_20
    move-object/from16 v19, v2

    move-object/from16 v16, v4

    move-object/from16 v2, v17

    :goto_25
    if-eq v5, v12, :cond_23

    if-eq v5, v6, :cond_21

    invoke-static/range {p1 .. p1}, Lcn/jiguang/g/a;->c(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_21

    return-object v3

    :cond_21
    const/4 v4, 0x3

    move/from16 v6, v28

    if-lt v6, v4, :cond_22

    new-instance v1, Lcn/jiguang/a/a/c/j;

    const-string v3, "<<failed_with_retries>>"

    const/4 v4, -0x1

    invoke-direct {v1, v4, v2, v3}, Lcn/jiguang/a/a/c/j;-><init>(ILjava/util/Map;Ljava/lang/String;)V

    return-object v1

    :cond_22
    const/4 v4, -0x1

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v7, v30

    :try_start_18
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_18} :catch_27

    goto :goto_26

    :catch_27
    move-exception v0

    :goto_26
    move-object/from16 v17, v2

    move/from16 v18, v5

    move v3, v6

    move-wide/from16 v20, v7

    move-object/from16 v7, v25

    move-object/from16 v8, v26

    move-object/from16 v9, v27

    const/4 v5, 0x0

    move/from16 v12, p6

    goto/16 :goto_4

    :cond_23
    return-object v3

    :catchall_6
    move-exception v0

    :goto_27
    move-object v1, v0

    move-object v11, v2

    :goto_28
    if-eqz v4, :cond_24

    :try_start_19
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_28

    goto :goto_29

    :catch_28
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_24
    :goto_29
    if-eqz v11, :cond_25

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_25
    throw v1
.end method

.method private a(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcn/jiguang/a/a/c/i;->g:Landroid/content/Context;

    if-ltz p1, :cond_1

    const/4 v1, 0x3

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "number_url"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "http://182.92.20.189:9099/"

    invoke-static {v0, p1, v1}, Lcn/jiguang/d/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "http://182.92.20.189:9099/"

    :goto_1
    iput-object p1, p0, Lcn/jiguang/a/a/c/i;->i:Ljava/lang/String;

    const-string p1, "PhoneNumberUtil"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "base url:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jiguang/a/a/c/i;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/jiguang/a/a/c/i;->i:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;Lcn/jiguang/a/a/c/j;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/a/a/c/i;->g:Landroid/content/Context;

    invoke-static {v0, p2}, Lcn/jiguang/a/a/c/i;->a(Landroid/content/Context;Lcn/jiguang/a/a/c/j;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcn/jiguang/a/a/c/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/util/TreeMap;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "PhoneNumberUtil"

    const-string v0, "treeMap is null"

    invoke-static {p1, v0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcn/jiguang/a/a/c/i;->g:Landroid/content/Context;

    invoke-static {p1}, Lcn/jiguang/a/b/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "PhoneNumberUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "appSecret:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/jiguang/g/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PhoneNumberUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "treeMapValue:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PhoneNumberUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sign:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "PhoneNumberUtil"

    const-string v1, "Action - loadPhoneNumber"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jiguang/a/a/c/i;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const-string p0, "PhoneNumberUtil"

    const-string v0, "more than one load phonenumber thread is running"

    invoke-static {p0, v0}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcn/jiguang/a/a/c/i;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/jiguang/a/a/c/i;

    invoke-direct {v1, p0}, Lcn/jiguang/a/a/c/i;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "Set-Cookie"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcn/jiguang/a/a/c/i;->j:Ljava/net/CookieManager;

    invoke-virtual {v1}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/net/HttpCookie;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    invoke-interface {v1, v2, v0}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Lcn/jiguang/a/a/c/j;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "PhoneNumberUtil"

    const-string p1, "context did not init, return"

    invoke-static {p0, p1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    if-eqz p1, :cond_5

    :try_start_0
    const-string v1, "PhoneNumberUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save log in writeHistoryLog:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "PhoneNumberUtil"

    const-string v3, "save log in writeHistoryLog"

    invoke-static {v2, v3, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v1, 0x0

    const-string v2, "resp.raw"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcn/jiguang/a/a/c/j;->c:Ljava/util/Map;

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcn/jiguang/a/a/c/j;->c:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p1, Lcn/jiguang/a/a/c/j;->c:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v4, "\r\n\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcn/jiguang/a/a/c/j;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object p1, p1, Lcn/jiguang/a/a/c/j;->b:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :try_start_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p1}, Lcn/jiguang/d/d/o;->a(Ljava/io/Closeable;)V

    :try_start_3
    const-string p1, "resp.zip"

    invoke-virtual {p0, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "resp.raw"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcn/jiguang/g/f;->a(Ljava/util/Collection;Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v0, 0x1

    return v0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v0

    :catchall_0
    move-exception p0

    move-object v1, p1

    goto/16 :goto_7

    :catch_2
    move-exception p0

    move-object v1, p1

    goto :goto_3

    :catch_3
    move-exception p0

    move-object v1, p1

    goto :goto_4

    :catch_4
    move-exception p0

    move-object v1, p1

    goto :goto_5

    :catch_5
    move-exception p0

    move-object v1, p1

    goto :goto_6

    :catchall_1
    move-exception p0

    goto/16 :goto_7

    :catch_6
    move-exception p0

    :goto_3
    :try_start_4
    const-string p1, "PhoneNumberUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Filepath error of ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] , give up save :"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v1}, Lcn/jiguang/d/d/o;->a(Ljava/io/Closeable;)V

    return v0

    :catch_7
    move-exception p0

    :goto_4
    :try_start_5
    const-string p1, "PhoneNumberUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "can\'t write "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , give up save :"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v1}, Lcn/jiguang/d/d/o;->a(Ljava/io/Closeable;)V

    return v0

    :catch_8
    move-exception p0

    :goto_5
    :try_start_6
    const-string p1, "PhoneNumberUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "can\'t encoding "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , give up save :"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {v1}, Lcn/jiguang/d/d/o;->a(Ljava/io/Closeable;)V

    return v0

    :catch_9
    move-exception p0

    :goto_6
    :try_start_7
    const-string p1, "PhoneNumberUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "can\'t open "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " outputStream, give up save :"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-static {v1}, Lcn/jiguang/d/d/o;->a(Ljava/io/Closeable;)V

    return v0

    :goto_7
    invoke-static {v1}, Lcn/jiguang/d/d/o;->a(Ljava/io/Closeable;)V

    throw p0

    :cond_5
    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const-string v0, "PhoneNumberUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Action - getPhoneNumber imei:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " iccid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " imsi:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {p1}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "imei"

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p2}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "iccid"

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {p3}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "imsi"

    invoke-virtual {v0, p1, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p1, "version"

    iget-object p2, p0, Lcn/jiguang/a/a/c/i;->g:Landroid/content/Context;

    const-string p3, "number_version"

    const-string v1, "1.3.0"

    invoke-static {p2, p3, v1}, Lcn/jiguang/d/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "app_id"

    iget-object p2, p0, Lcn/jiguang/a/a/c/i;->g:Landroid/content/Context;

    const-string p3, "number_appid"

    const-string v1, "7"

    invoke-static {p2, p3, v1}, Lcn/jiguang/d/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "req_time"

    invoke-static {}, Lcn/jiguang/d/g/a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sign"

    invoke-direct {p0, v0}, Lcn/jiguang/a/a/c/i;->a(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, ""

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {p3, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p3

    goto :goto_0

    :catch_0
    move-exception p3

    goto :goto_0

    :cond_3
    const-string p2, "PhoneNumberUtil"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "url:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    :try_start_1
    iget-object v1, p0, Lcn/jiguang/a/a/c/i;->g:Landroid/content/Context;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcn/jiguang/a/a/c/i;->i:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "statistic/query?"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    const-wide/16 v4, 0x7530

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcn/jiguang/a/a/c/i;->a(Landroid/content/Context;Ljava/lang/String;IJZLjava/io/File;Ljava/lang/String;)Lcn/jiguang/a/a/c/j;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    const-string v0, "PhoneNumberUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " statusCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p3, Lcn/jiguang/a/a/c/j;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " rspData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Lcn/jiguang/a/a/c/j;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p3, Lcn/jiguang/a/a/c/j;->a:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_4

    return p2

    :cond_4
    iget-object v0, p3, Lcn/jiguang/a/a/c/j;->b:Ljava/lang/String;

    invoke-static {v0}, Lcn/jiguang/a/a/c/i;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    const-string p1, "code"

    const/4 p3, -0x1

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_5

    return p2

    :cond_5
    const-string p1, "num"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/jiguang/a/a/c/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_6
    iget-object v0, p3, Lcn/jiguang/a/a/c/j;->c:Ljava/util/Map;

    if-nez v0, :cond_7

    iget-object v0, p3, Lcn/jiguang/a/a/c/j;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    sget-object v0, Lcn/jiguang/a/a/c/i;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iput p2, p0, Lcn/jiguang/a/a/c/i;->h:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-direct {p0, p1, p3}, Lcn/jiguang/a/a/c/i;->a(Ljava/lang/String;Lcn/jiguang/a/a/c/j;)Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    :try_start_4
    iget-object p1, p0, Lcn/jiguang/a/a/c/i;->g:Landroid/content/Context;

    const-string p3, "resp.raw"

    invoke-virtual {p1, p3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    iget-object p1, p0, Lcn/jiguang/a/a/c/i;->g:Landroid/content/Context;

    const-string p3, "resp.zip"

    invoke-virtual {p1, p3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    invoke-direct {p0, v2}, Lcn/jiguang/a/a/c/i;->e(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_9
    return p2

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1

    :catch_2
    move-exception p1

    return p2
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "PhoneNumberUtil"

    const-string v0, "context is null"

    invoke-static {p0, v0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    invoke-static {p0, v0}, Lcn/jiguang/g/a;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2}, Lcn/jiguang/g/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1}, Lcn/jiguang/g/a;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/jiguang/g/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "PhoneNumberUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ret:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-direct {p0, p1}, Lcn/jiguang/a/a/c/i;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PhoneNumberUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "decodePhoneNumber decrypt data:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "PhoneNumberUtil"

    const-string v0, "after decrypted, phoneNumber is null"

    invoke-static {p1, v0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    sget-object v0, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "PhoneNumberUtil"

    const-string v0, "invalide phone number"

    invoke-static {p1, v0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v1

    :cond_1
    return-object p1
.end method

.method private static c(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    return-object v0

    :catch_0
    move-exception p0

    :cond_0
    return-object v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const-string v0, "PhoneNumberUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Action - getPhoneNumberWithAnalysisUrl url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "PhoneNumberUtil"

    const-string v0, "url is empty"

    invoke-static {p1, v0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcn/jiguang/a/a/c/i;->g:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/jiguang/a/a/c/i;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "statistic/query?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    const-wide/16 v6, 0x7530

    const/4 v8, 0x0

    new-instance v9, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/jiguang/a/a/c/i;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "resp.zip"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v10, "resp_data"

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lcn/jiguang/a/a/c/i;->a(Landroid/content/Context;Ljava/lang/String;IJZLjava/io/File;Ljava/lang/String;)Lcn/jiguang/a/a/c/j;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const-string v2, "PhoneNumberUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " statusCode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcn/jiguang/a/a/c/j;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " rspData:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcn/jiguang/a/a/c/j;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v0, Lcn/jiguang/a/a/c/j;->a:I

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_1

    return-object v1

    :cond_1
    iget-object v2, v0, Lcn/jiguang/a/a/c/j;->b:Ljava/lang/String;

    invoke-static {v2}, Lcn/jiguang/a/a/c/i;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string p1, "code"

    const/4 v0, -0x1

    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v3, :cond_2

    return-object v1

    :cond_2
    const-string p1, "num"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/jiguang/a/a/c/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    iget-object v2, v0, Lcn/jiguang/a/a/c/j;->c:Ljava/util/Map;

    if-nez v2, :cond_4

    iget-object v2, v0, Lcn/jiguang/a/a/c/j;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    iget v2, p0, Lcn/jiguang/a/a/c/i;->h:I

    const/4 v3, 0x4

    if-le v2, v3, :cond_5

    return-object v1

    :cond_5
    iget v2, p0, Lcn/jiguang/a/a/c/i;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/jiguang/a/a/c/i;->h:I

    :try_start_1
    invoke-direct {p0, p1, v0}, Lcn/jiguang/a/a/c/i;->a(Ljava/lang/String;Lcn/jiguang/a/a/c/j;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, p1

    return-object v1

    :catch_0
    move-exception p1

    :cond_6
    return-object v1

    :catch_1
    move-exception p1

    return-object v1
.end method

.method private e(Ljava/lang/String;)V
    .locals 4

    const-string v0, "PhoneNumberUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Acton - onDetchPhoneNumber phoneNumber:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/a/a/c/i;->g:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/a/a/c/i;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "number_num"

    :cond_0
    invoke-static {v0, v1, p1}, Lcn/jiguang/d/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "num"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcn/jiguang/a/a/c/i;->d:Ljava/lang/String;

    invoke-static {p1}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "imei"

    iget-object v1, p0, Lcn/jiguang/a/a/c/i;->d:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object p1, p0, Lcn/jiguang/a/a/c/i;->f:Ljava/lang/String;

    invoke-static {p1}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "imsi"

    iget-object v1, p0, Lcn/jiguang/a/a/c/i;->f:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object p1, p0, Lcn/jiguang/a/a/c/i;->e:Ljava/lang/String;

    invoke-static {p1}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "iccid"

    iget-object v1, p0, Lcn/jiguang/a/a/c/i;->e:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p1}, Lcn/jiguang/d/g/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-static {p1}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcn/jiguang/a/a/c/i;->g:Landroid/content/Context;

    const-string v2, "nb"

    invoke-static {v1, v0, v2}, Lcn/jiguang/d/d/o;->b(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "PhoneNumberUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enCrptyContent:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "PhoneNumberUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reprot content:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/jiguang/a/a/c/i;->g:Landroid/content/Context;

    invoke-static {p1, v0}, Lcn/jiguang/a/c/c;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcn/jiguang/a/a/c/i;->g:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/jiguang/a/b/a;->c(Landroid/content/Context;Z)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    return-void

    :catch_1
    move-exception p1

    const-string v0, "PhoneNumberUtil"

    const-string v1, "unexception"

    invoke-static {v0, v1, p1}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/a/a/c/i;->g:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/a/b/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/jiguang/d/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "PhoneNumberUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected - failed to AES decrypt.e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final run()V
    .locals 6

    sget-object v0, Lcn/jiguang/a/a/c/i;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/a/a/c/i;->d:Ljava/lang/String;

    invoke-static {v0}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/a/a/c/i;->e:Ljava/lang/String;

    invoke-static {v0}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/a/a/c/i;->f:Ljava/lang/String;

    invoke-static {v0}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PhoneNumberUtil"

    const-string v1, "all param is invalide"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcn/jiguang/a/a/c/i;->g:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/a/a/c/i;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "number_num"

    :cond_1
    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/jiguang/d/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-object v1, p0, Lcn/jiguang/a/a/c/i;->g:Landroid/content/Context;

    const-string v3, "nb_upload"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcn/jiguang/d/a/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcn/jiguang/a/a/c/i;->e(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_3
    :goto_0
    iget-object v0, p0, Lcn/jiguang/a/a/c/i;->g:Landroid/content/Context;

    const-string v1, "nb_lasttime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcn/jiguang/d/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v0, p0, Lcn/jiguang/a/a/c/i;->f:Ljava/lang/String;

    invoke-static {v0}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, -0x1

    if-nez v1, :cond_9

    const-string v1, "46000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "46002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "46007"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "46008"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const-string v1, "46001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "46006"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "46009"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    const-string v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "46005"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "46011"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_6
    const/4 v0, 0x2

    goto :goto_3

    :cond_7
    :goto_1
    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_9
    const/4 v0, -0x1

    :goto_3
    const-string v1, "PhoneNumberUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "providersIndex:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v0, v3, :cond_a

    invoke-direct {p0, v0}, Lcn/jiguang/a/a/c/i;->a(I)Ljava/lang/String;

    iget-object v0, p0, Lcn/jiguang/a/a/c/i;->i:Ljava/lang/String;

    invoke-static {v0}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcn/jiguang/a/a/c/i;->d:Ljava/lang/String;

    iget-object v1, p0, Lcn/jiguang/a/a/c/i;->e:Ljava/lang/String;

    iget-object v2, p0, Lcn/jiguang/a/a/c/i;->f:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcn/jiguang/a/a/c/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_6

    :cond_a
    const-string v0, ""

    :cond_b
    :goto_4
    const/4 v1, 0x3

    if-ge v2, v1, :cond_e

    invoke-direct {p0, v2}, Lcn/jiguang/a/a/c/i;->a(I)Ljava/lang/String;

    const-string v1, "PhoneNumberUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "providersIndex:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    iget-object v1, p0, Lcn/jiguang/a/a/c/i;->i:Ljava/lang/String;

    invoke-static {v1}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcn/jiguang/a/a/c/i;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_5

    :cond_c
    iget-object v0, p0, Lcn/jiguang/a/a/c/i;->i:Ljava/lang/String;

    iget-object v1, p0, Lcn/jiguang/a/a/c/i;->d:Ljava/lang/String;

    iget-object v3, p0, Lcn/jiguang/a/a/c/i;->e:Ljava/lang/String;

    iget-object v4, p0, Lcn/jiguang/a/a/c/i;->f:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcn/jiguang/a/a/c/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_6

    :cond_d
    :goto_5
    const-string v1, "PhoneNumberUtil"

    const-string v3, "same with lasted access url"

    invoke-static {v1, v3}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    :cond_e
    :goto_6
    sget-object v0, Lcn/jiguang/a/a/c/i;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method
