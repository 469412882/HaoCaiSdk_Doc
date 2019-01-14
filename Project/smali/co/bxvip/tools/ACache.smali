.class public Lco/bxvip/tools/ACache;
.super Ljava/lang/Object;
.source "ACache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/bxvip/tools/ACache$Utils;,
        Lco/bxvip/tools/ACache$ACacheManager;,
        Lco/bxvip/tools/ACache$xFileOutputStream;
    }
.end annotation


# static fields
.field private static final MAX_COUNT:I = 0x7fffffff

.field private static final MAX_SIZE:I = 0x2faf080

.field public static final TIME_DAY:I = 0x15180

.field public static final TIME_HOUR:I = 0xe10

.field private static mInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lco/bxvip/tools/ACache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCache:Lco/bxvip/tools/ACache$ACacheManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lco/bxvip/tools/ACache;->mInstanceMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;JI)V
    .locals 9
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "max_size"    # J
    .param p4, "max_count"    # I

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t make dirs in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    new-instance v0, Lco/bxvip/tools/ACache$ACacheManager;

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    move v7, p4

    invoke-direct/range {v2 .. v8}, Lco/bxvip/tools/ACache$ACacheManager;-><init>(Lco/bxvip/tools/ACache;Ljava/io/File;JILco/bxvip/tools/ACache$1;)V

    iput-object v0, p0, Lco/bxvip/tools/ACache;->mCache:Lco/bxvip/tools/ACache$ACacheManager;

    .line 89
    return-void
.end method

.method static synthetic access$100(Lco/bxvip/tools/ACache;)Lco/bxvip/tools/ACache$ACacheManager;
    .locals 1
    .param p0, "x0"    # Lco/bxvip/tools/ACache;

    .line 45
    iget-object v0, p0, Lco/bxvip/tools/ACache;->mCache:Lco/bxvip/tools/ACache$ACacheManager;

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lco/bxvip/tools/ACache;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .line 54
    const-string v0, "ACache"

    invoke-static {p0, v0}, Lco/bxvip/tools/ACache;->get(Landroid/content/Context;Ljava/lang/String;)Lco/bxvip/tools/ACache;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;JI)Lco/bxvip/tools/ACache;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "max_zise"    # J
    .param p3, "max_count"    # I

    .line 67
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "ACache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    .local v0, "f":Ljava/io/File;
    invoke-static {v0, p1, p2, p3}, Lco/bxvip/tools/ACache;->get(Ljava/io/File;JI)Lco/bxvip/tools/ACache;

    move-result-object v1

    return-object v1
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Lco/bxvip/tools/ACache;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "cacheName"    # Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    .local v0, "f":Ljava/io/File;
    const-wide/32 v1, 0x2faf080

    const v3, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Lco/bxvip/tools/ACache;->get(Ljava/io/File;JI)Lco/bxvip/tools/ACache;

    move-result-object v1

    return-object v1
.end method

.method public static get(Ljava/io/File;)Lco/bxvip/tools/ACache;
    .locals 3
    .param p0, "cacheDir"    # Ljava/io/File;

    .line 63
    const-wide/32 v0, 0x2faf080

    const v2, 0x7fffffff

    invoke-static {p0, v0, v1, v2}, Lco/bxvip/tools/ACache;->get(Ljava/io/File;JI)Lco/bxvip/tools/ACache;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/io/File;JI)Lco/bxvip/tools/ACache;
    .locals 4
    .param p0, "cacheDir"    # Ljava/io/File;
    .param p1, "max_zise"    # J
    .param p3, "max_count"    # I

    .line 72
    sget-object v0, Lco/bxvip/tools/ACache;->mInstanceMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lco/bxvip/tools/ACache;->myPid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/bxvip/tools/ACache;

    .line 73
    .local v0, "manager":Lco/bxvip/tools/ACache;
    if-nez v0, :cond_0

    .line 74
    new-instance v1, Lco/bxvip/tools/ACache;

    invoke-direct {v1, p0, p1, p2, p3}, Lco/bxvip/tools/ACache;-><init>(Ljava/io/File;JI)V

    move-object v0, v1

    .line 75
    sget-object v1, Lco/bxvip/tools/ACache;->mInstanceMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lco/bxvip/tools/ACache;->myPid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_0
    return-object v0
.end method

.method private static myPid()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 571
    iget-object v0, p0, Lco/bxvip/tools/ACache;->mCache:Lco/bxvip/tools/ACache$ACacheManager;

    invoke-static {v0}, Lco/bxvip/tools/ACache$ACacheManager;->access$1600(Lco/bxvip/tools/ACache$ACacheManager;)V

    .line 572
    return-void
.end method

.method public file(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 551
    iget-object v0, p0, Lco/bxvip/tools/ACache;->mCache:Lco/bxvip/tools/ACache$ACacheManager;

    invoke-static {v0, p1}, Lco/bxvip/tools/ACache$ACacheManager;->access$300(Lco/bxvip/tools/ACache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 552
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    return-object v0

    .line 554
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public get(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lco/bxvip/tools/ACache;->mCache:Lco/bxvip/tools/ACache$ACacheManager;

    invoke-static {v0, p1}, Lco/bxvip/tools/ACache$ACacheManager;->access$500(Lco/bxvip/tools/ACache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 331
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    const/4 v1, 0x0

    return-object v1

    .line 333
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v1
.end method

.method public getAsBinary(Ljava/lang/String;)[B
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .line 354
    const/4 v0, 0x0

    .line 355
    .local v0, "RAFile":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    .line 357
    .local v1, "removeFile":Z
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lco/bxvip/tools/ACache;->mCache:Lco/bxvip/tools/ACache$ACacheManager;

    invoke-static {v3, p1}, Lco/bxvip/tools/ACache$ACacheManager;->access$500(Lco/bxvip/tools/ACache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 358
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    .line 359
    nop

    .line 373
    if-eqz v0, :cond_0

    .line 375
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 378
    goto :goto_0

    .line 376
    :catch_0
    move-exception v4

    .line 377
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 380
    .end local v4    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 381
    invoke-virtual {p0, p1}, Lco/bxvip/tools/ACache;->remove(Ljava/lang/String;)Z

    .line 359
    :cond_1
    return-object v2

    .line 360
    :cond_2
    :try_start_2
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v4

    .line 361
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v4, v4, [B

    .line 362
    .local v4, "byteArray":[B
    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->read([B)I

    .line 363
    invoke-static {v4}, Lco/bxvip/tools/ACache$Utils;->access$900([B)Z

    move-result v5

    if-nez v5, :cond_5

    .line 364
    invoke-static {v4}, Lco/bxvip/tools/ACache$Utils;->access$1000([B)[B

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 373
    if-eqz v0, :cond_3

    .line 375
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 378
    goto :goto_1

    .line 376
    :catch_1
    move-exception v2

    .line 377
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 380
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 381
    invoke-virtual {p0, p1}, Lco/bxvip/tools/ACache;->remove(Ljava/lang/String;)Z

    .line 364
    :cond_4
    return-object v5

    .line 366
    :cond_5
    const/4 v1, 0x1

    .line 367
    nop

    .line 373
    if-eqz v0, :cond_6

    .line 375
    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 378
    goto :goto_2

    .line 376
    :catch_2
    move-exception v5

    .line 377
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 380
    .end local v5    # "e":Ljava/io/IOException;
    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    .line 381
    invoke-virtual {p0, p1}, Lco/bxvip/tools/ACache;->remove(Ljava/lang/String;)Z

    .line 367
    :cond_7
    return-object v2

    .line 373
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "byteArray":[B
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 369
    :catch_3
    move-exception v3

    .line 370
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 371
    nop

    .line 373
    if-eqz v0, :cond_8

    .line 375
    :try_start_6
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 378
    goto :goto_3

    .line 376
    :catch_4
    move-exception v4

    .line 377
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 380
    .end local v4    # "e":Ljava/io/IOException;
    :cond_8
    :goto_3
    if-eqz v1, :cond_9

    .line 381
    invoke-virtual {p0, p1}, Lco/bxvip/tools/ACache;->remove(Ljava/lang/String;)Z

    .line 371
    :cond_9
    return-object v2

    .line 373
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_4
    if-eqz v0, :cond_a

    .line 375
    :try_start_7
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 378
    goto :goto_5

    .line 376
    :catch_5
    move-exception v3

    .line 377
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 380
    .end local v3    # "e":Ljava/io/IOException;
    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    .line 381
    invoke-virtual {p0, p1}, Lco/bxvip/tools/ACache;->remove(Ljava/lang/String;)Z

    .line 382
    :cond_b
    throw v2
.end method

.method public getAsBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 500
    invoke-virtual {p0, p1}, Lco/bxvip/tools/ACache;->getAsBinary(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 501
    const/4 v0, 0x0

    return-object v0

    .line 503
    :cond_0
    invoke-virtual {p0, p1}, Lco/bxvip/tools/ACache;->getAsBinary(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lco/bxvip/tools/ACache$Utils;->access$1200([B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getAsDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 538
    invoke-virtual {p0, p1}, Lco/bxvip/tools/ACache;->getAsBinary(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 539
    const/4 v0, 0x0

    return-object v0

    .line 541
    :cond_0
    invoke-virtual {p0, p1}, Lco/bxvip/tools/ACache;->getAsBinary(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lco/bxvip/tools/ACache$Utils;->access$1200([B)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lco/bxvip/tools/ACache$Utils;->access$1400(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getAsJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 272
    invoke-virtual {p0, p1}, Lco/bxvip/tools/ACache;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "JSONString":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .local v1, "obj":Lorg/json/JSONArray;
    return-object v1

    .line 276
    .end local v1    # "obj":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 277
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 278
    const/4 v2, 0x0

    return-object v2
.end method

.method public getAsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 230
    invoke-virtual {p0, p1}, Lco/bxvip/tools/ACache;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "JSONString":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .local v1, "obj":Lorg/json/JSONObject;
    return-object v1

    .line 234
    .end local v1    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 235
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 236
    const/4 v2, 0x0

    return-object v2
.end method

.method public getAsObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .line 437
    invoke-virtual {p0, p1}, Lco/bxvip/tools/ACache;->getAsBinary(Ljava/lang/String;)[B

    move-result-object v0

    .line 438
    .local v0, "data":[B
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 439
    const/4 v2, 0x0

    .line 440
    .local v2, "bais":Ljava/io/ByteArrayInputStream;
    move-object v3, v1

    .line 442
    .local v3, "ois":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v2, v4

    .line 443
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v4

    .line 444
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    .line 445
    .local v1, "reObject":Ljava/lang/Object;
    nop

    .line 451
    if-eqz v2, :cond_0

    .line 452
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 453
    :catch_0
    move-exception v4

    .line 454
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 454
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 455
    :cond_0
    :goto_0
    nop

    .line 457
    :goto_1
    if-eqz v3, :cond_1

    .line 458
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 459
    :catch_1
    move-exception v4

    .line 460
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 460
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 461
    :cond_1
    :goto_2
    nop

    .line 445
    :goto_3
    return-object v1

    .line 450
    .end local v1    # "reObject":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    goto :goto_8

    .line 446
    :catch_2
    move-exception v4

    .line 447
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 448
    nop

    .line 451
    if-eqz v2, :cond_2

    .line 452
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 453
    :catch_3
    move-exception v5

    .line 454
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 454
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 455
    :cond_2
    :goto_4
    nop

    .line 457
    :goto_5
    if-eqz v3, :cond_3

    .line 458
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    .line 459
    :catch_4
    move-exception v5

    .line 460
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 460
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 461
    :cond_3
    :goto_6
    nop

    .line 448
    :goto_7
    return-object v1

    .line 450
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_8
    nop

    .line 451
    if-eqz v2, :cond_4

    .line 452
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_9

    .line 453
    :catch_5
    move-exception v4

    .line 454
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 454
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_a

    .line 455
    :cond_4
    :goto_9
    nop

    .line 457
    :goto_a
    if-eqz v3, :cond_5

    .line 458
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_b

    .line 459
    :catch_6
    move-exception v4

    .line 460
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 460
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_c

    .line 461
    :cond_5
    :goto_b
    nop

    .line 462
    :goto_c
    throw v1

    .line 464
    .end local v2    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    :cond_6
    return-object v1
.end method

.method public getAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lco/bxvip/tools/ACache;->mCache:Lco/bxvip/tools/ACache$ACacheManager;

    invoke-static {v0, p1}, Lco/bxvip/tools/ACache$ACacheManager;->access$500(Lco/bxvip/tools/ACache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 165
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 166
    return-object v2

    .line 167
    :cond_0
    const/4 v1, 0x0

    .line 168
    .local v1, "removeFile":Z
    move-object v3, v2

    .line 170
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v4

    .line 171
    const-string v4, ""

    .line 173
    .local v4, "readString":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .line 173
    .local v6, "currentLine":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 174
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    goto :goto_0

    .line 176
    :cond_1
    invoke-static {v4}, Lco/bxvip/tools/ACache$Utils;->access$600(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 177
    invoke-static {v4}, Lco/bxvip/tools/ACache$Utils;->access$700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    if-eqz v3, :cond_2

    .line 188
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 191
    goto :goto_1

    .line 189
    :catch_0
    move-exception v2

    .line 190
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 193
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 194
    invoke-virtual {p0, p1}, Lco/bxvip/tools/ACache;->remove(Ljava/lang/String;)Z

    .line 177
    :cond_3
    return-object v5

    .line 179
    :cond_4
    const/4 v1, 0x1

    .line 180
    nop

    .line 186
    if-eqz v3, :cond_5

    .line 188
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 191
    goto :goto_2

    .line 189
    :catch_1
    move-exception v5

    .line 190
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 193
    .end local v5    # "e":Ljava/io/IOException;
    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 194
    invoke-virtual {p0, p1}, Lco/bxvip/tools/ACache;->remove(Ljava/lang/String;)Z

    .line 180
    :cond_6
    return-object v2

    .line 186
    .end local v4    # "readString":Ljava/lang/String;
    .end local v6    # "currentLine":Ljava/lang/String;
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 182
    :catch_2
    move-exception v4

    .line 183
    .local v4, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 184
    nop

    .line 186
    if-eqz v3, :cond_7

    .line 188
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 191
    goto :goto_3

    .line 189
    :catch_3
    move-exception v5

    .line 190
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 193
    .end local v5    # "e":Ljava/io/IOException;
    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 194
    invoke-virtual {p0, p1}, Lco/bxvip/tools/ACache;->remove(Ljava/lang/String;)Z

    .line 184
    :cond_8
    return-object v2

    .line 186
    .end local v4    # "e":Ljava/io/IOException;
    :goto_4
    if-eqz v3, :cond_9

    .line 188
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 191
    goto :goto_5

    .line 189
    :catch_4
    move-exception v4

    .line 190
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 193
    .end local v4    # "e":Ljava/io/IOException;
    :cond_9
    :goto_5
    if-eqz v1, :cond_a

    .line 194
    invoke-virtual {p0, p1}, Lco/bxvip/tools/ACache;->remove(Ljava/lang/String;)Z

    .line 195
    :cond_a
    throw v2
.end method

.method public put(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 321
    new-instance v0, Lco/bxvip/tools/ACache$xFileOutputStream;

    iget-object v1, p0, Lco/bxvip/tools/ACache;->mCache:Lco/bxvip/tools/ACache$ACacheManager;

    invoke-static {v1, p1}, Lco/bxvip/tools/ACache$ACacheManager;->access$300(Lco/bxvip/tools/ACache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lco/bxvip/tools/ACache$xFileOutputStream;-><init>(Lco/bxvip/tools/ACache;Ljava/io/File;)V

    return-object v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .line 479
    invoke-static {p2}, Lco/bxvip/tools/ACache$Utils;->access$1100(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lco/bxvip/tools/ACache;->put(Ljava/lang/String;[B)V

    .line 480
    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;
    .param p3, "saveTime"    # I

    .line 490
    invoke-static {p2}, Lco/bxvip/tools/ACache$Utils;->access$1100(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lco/bxvip/tools/ACache;->put(Ljava/lang/String;[BI)V

    .line 491
    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/drawable/Drawable;

    .line 517
    invoke-static {p2}, Lco/bxvip/tools/ACache$Utils;->access$1300(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lco/bxvip/tools/ACache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 518
    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/drawable/Drawable;
    .param p3, "saveTime"    # I

    .line 528
    invoke-static {p2}, Lco/bxvip/tools/ACache$Utils;->access$1300(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lco/bxvip/tools/ACache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 529
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    .line 396
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lco/bxvip/tools/ACache;->put(Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 397
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/Serializable;I)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;
    .param p3, "saveTime"    # I

    .line 407
    const/4 v0, 0x0

    .line 408
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 410
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v0, v2

    .line 411
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    .line 412
    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 413
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 414
    .local v2, "data":[B
    const/4 v3, -0x1

    if-eq p3, v3, :cond_0

    .line 415
    invoke-virtual {p0, p1, v2, p3}, Lco/bxvip/tools/ACache;->put(Ljava/lang/String;[BI)V

    goto :goto_0

    .line 417
    :cond_0
    invoke-virtual {p0, p1, v2}, Lco/bxvip/tools/ACache;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    .end local v2    # "data":[B
    :goto_0
    if-eqz v1, :cond_1

    .line 424
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 425
    :catch_0
    move-exception v2

    .line 427
    goto :goto_2

    .line 426
    :cond_1
    :goto_1
    goto :goto_2

    .line 422
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 419
    :catch_1
    move-exception v2

    .line 420
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 423
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_1

    .line 424
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 428
    :goto_2
    return-void

    .line 422
    :goto_3
    nop

    .line 423
    if-eqz v1, :cond_2

    .line 424
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 425
    :catch_2
    move-exception v3

    goto :goto_5

    .line 426
    :cond_2
    :goto_4
    nop

    .line 427
    :goto_5
    throw v2
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lco/bxvip/tools/ACache;->mCache:Lco/bxvip/tools/ACache$ACacheManager;

    invoke-static {v0, p1}, Lco/bxvip/tools/ACache$ACacheManager;->access$300(Lco/bxvip/tools/ACache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 127
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 129
    .local v1, "out":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v4, 0x400

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    move-object v1, v2

    .line 130
    invoke-virtual {v1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    if-eqz v1, :cond_0

    .line 136
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 137
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v2

    goto :goto_1

    .line 134
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 131
    :catch_1
    move-exception v2

    .line 132
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_0

    .line 136
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 137
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 140
    :goto_0
    goto :goto_2

    .line 138
    :catch_2
    move-exception v2

    .line 139
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 142
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    iget-object v2, p0, Lco/bxvip/tools/ACache;->mCache:Lco/bxvip/tools/ACache$ACacheManager;

    invoke-static {v2, v0}, Lco/bxvip/tools/ACache$ACacheManager;->access$200(Lco/bxvip/tools/ACache$ACacheManager;Ljava/io/File;)V

    .line 143
    nop

    .line 144
    return-void

    .line 134
    :goto_3
    if-eqz v1, :cond_1

    .line 136
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 137
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 140
    goto :goto_4

    .line 138
    :catch_3
    move-exception v3

    .line 139
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 142
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_4
    iget-object v3, p0, Lco/bxvip/tools/ACache;->mCache:Lco/bxvip/tools/ACache$ACacheManager;

    invoke-static {v3, v0}, Lco/bxvip/tools/ACache$ACacheManager;->access$200(Lco/bxvip/tools/ACache$ACacheManager;Ljava/io/File;)V

    .line 143
    throw v2
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "saveTime"    # I

    .line 154
    invoke-static {p3, p2}, Lco/bxvip/tools/ACache$Utils;->access$400(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lco/bxvip/tools/ACache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONArray;

    .line 251
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lco/bxvip/tools/ACache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONArray;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONArray;
    .param p3, "saveTime"    # I

    .line 262
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lco/bxvip/tools/ACache;->put(Ljava/lang/String;Ljava/lang/String;I)V

    .line 263
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONObject;

    .line 209
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lco/bxvip/tools/ACache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONObject;
    .param p3, "saveTime"    # I

    .line 220
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lco/bxvip/tools/ACache;->put(Ljava/lang/String;Ljava/lang/String;I)V

    .line 221
    return-void
.end method

.method public put(Ljava/lang/String;[B)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 293
    iget-object v0, p0, Lco/bxvip/tools/ACache;->mCache:Lco/bxvip/tools/ACache$ACacheManager;

    invoke-static {v0, p1}, Lco/bxvip/tools/ACache$ACacheManager;->access$300(Lco/bxvip/tools/ACache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 294
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 296
    .local v1, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 297
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    if-eqz v1, :cond_0

    .line 303
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 304
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 305
    :catch_0
    move-exception v2

    goto :goto_1

    .line 301
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 298
    :catch_1
    move-exception v2

    .line 299
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 301
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_0

    .line 303
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 304
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 307
    :goto_0
    goto :goto_2

    .line 305
    :catch_2
    move-exception v2

    .line 306
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 309
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    iget-object v2, p0, Lco/bxvip/tools/ACache;->mCache:Lco/bxvip/tools/ACache$ACacheManager;

    invoke-static {v2, v0}, Lco/bxvip/tools/ACache$ACacheManager;->access$200(Lco/bxvip/tools/ACache$ACacheManager;Ljava/io/File;)V

    .line 310
    nop

    .line 311
    return-void

    .line 301
    :goto_3
    if-eqz v1, :cond_1

    .line 303
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 304
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 307
    goto :goto_4

    .line 305
    :catch_3
    move-exception v3

    .line 306
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 309
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_4
    iget-object v3, p0, Lco/bxvip/tools/ACache;->mCache:Lco/bxvip/tools/ACache$ACacheManager;

    invoke-static {v3, v0}, Lco/bxvip/tools/ACache$ACacheManager;->access$200(Lco/bxvip/tools/ACache$ACacheManager;Ljava/io/File;)V

    .line 310
    throw v2
.end method

.method public put(Ljava/lang/String;[BI)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .param p3, "saveTime"    # I

    .line 344
    invoke-static {p3, p2}, Lco/bxvip/tools/ACache$Utils;->access$800(I[B)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lco/bxvip/tools/ACache;->put(Ljava/lang/String;[B)V

    .line 345
    return-void
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 564
    iget-object v0, p0, Lco/bxvip/tools/ACache;->mCache:Lco/bxvip/tools/ACache$ACacheManager;

    invoke-static {v0, p1}, Lco/bxvip/tools/ACache$ACacheManager;->access$1500(Lco/bxvip/tools/ACache$ACacheManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
