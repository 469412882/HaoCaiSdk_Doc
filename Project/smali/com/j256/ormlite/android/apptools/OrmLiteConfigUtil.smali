.class public Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;
.super Ljava/lang/Object;
.source "OrmLiteConfigUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil$ClassComparator;
    }
.end annotation


# static fields
.field protected static final RAW_DIR_NAME:Ljava/lang/String; = "raw"

.field protected static final RESOURCE_DIR_NAME:Ljava/lang/String; = "res"

.field private static final classComparator:Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil$ClassComparator;

.field private static final databaseType:Lcom/j256/ormlite/db/DatabaseType;

.field protected static maxFindSourceLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    const/16 v0, 0x14

    sput v0, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;->maxFindSourceLevel:I

    .line 75
    new-instance v0, Lcom/j256/ormlite/db/SqliteAndroidDatabaseType;

    invoke-direct {v0}, Lcom/j256/ormlite/db/SqliteAndroidDatabaseType;-><init>()V

    sput-object v0, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    .line 76
    new-instance v0, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil$ClassComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil$ClassComparator;-><init>(Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil$1;)V

    sput-object v0, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;->classComparator:Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil$ClassComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static classHasAnnotations(Ljava/lang/Class;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 364
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 365
    const-class v1, Lcom/j256/ormlite/table/DatabaseTable;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 366
    return v2

    .line 370
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 376
    .local v1, "fields":[Ljava/lang/reflect/Field;
    nop

    .line 375
    nop

    .line 377
    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    .line 378
    .local v5, "field":Ljava/lang/reflect/Field;
    const-class v6, Lcom/j256/ormlite/field/DatabaseField;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    if-nez v6, :cond_2

    const-class v6, Lcom/j256/ormlite/field/ForeignCollectionField;

    .line 379
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    if-eqz v6, :cond_1

    goto :goto_2

    .line 377
    .end local v5    # "field":Ljava/lang/reflect/Field;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 380
    .restart local v5    # "field":Ljava/lang/reflect/Field;
    :cond_2
    :goto_2
    return v2

    .line 384
    .end local v5    # "field":Ljava/lang/reflect/Field;
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object p0, v2

    .line 390
    nop

    .line 391
    .end local v1    # "fields":[Ljava/lang/reflect/Field;
    goto :goto_0

    .line 385
    .restart local v1    # "fields":[Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    .line 387
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not get super class for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 388
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "     "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 389
    return v0

    .line 371
    .end local v1    # "fields":[Ljava/lang/reflect/Field;
    .end local v2    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 373
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not load get delcared fields from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 374
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "     "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 375
    return v0

    .line 393
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_4
    return v0
.end method

.method private static findAnnotatedClasses(Ljava/util/List;Ljava/io/File;I)V
    .locals 17
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/io/File;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    .local p0, "classList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    move-object/from16 v1, p0

    .line 283
    move/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_7

    aget-object v7, v3, v6

    .line 284
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 286
    sget v8, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;->maxFindSourceLevel:I

    if-ge v2, v8, :cond_6

    .line 287
    add-int/lit8 v8, v2, 0x1

    invoke-static {v1, v7, v8}, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;->findAnnotatedClasses(Ljava/util/List;Ljava/io/File;I)V

    goto/16 :goto_2

    .line 292
    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".java"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 293
    goto/16 :goto_2

    .line 295
    :cond_1
    invoke-static {v7}, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;->getPackageOfClass(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    .line 296
    .local v8, "packageName":Ljava/lang/String;
    if-nez v8, :cond_2

    .line 297
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not find package name for: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 298
    goto/16 :goto_2

    .line 301
    :cond_2
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 302
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const-string v11, ".java"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v9, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 303
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 306
    .local v10, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 312
    .local v11, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 311
    nop

    .line 313
    invoke-static {v11}, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;->classHasAnnotations(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 314
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_3
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_5

    aget-object v15, v12, v14

    .line 319
    .local v15, "innerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v15}, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;->classHasAnnotations(Ljava/lang/Class;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 320
    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 318
    .end local v15    # "innerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 328
    :cond_5
    goto :goto_2

    .line 323
    :catch_0
    move-exception v0

    move-object v12, v0

    .line 325
    .local v12, "t":Ljava/lang/Throwable;
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not load inner classes for: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 326
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "     "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 327
    goto :goto_2

    .line 307
    .end local v11    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    move-object v11, v0

    .line 309
    .local v11, "t":Ljava/lang/Throwable;
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Could not load class file for: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 310
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "     "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 311
    nop

    .line 283
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "className":Ljava/lang/String;
    .end local v11    # "t":Ljava/lang/Throwable;
    :cond_6
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 330
    :cond_7
    return-void
.end method

.method protected static findRawDir(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .param p0, "dir"    # Ljava/io/File;

    .line 262
    const/4 v0, 0x0

    .line 262
    .local v0, "i":I
    :goto_0
    if-eqz p0, :cond_1

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 263
    invoke-static {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;->findResRawDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 264
    .local v1, "rawDir":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 265
    return-object v1

    .line 267
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    .line 262
    .end local v1    # "rawDir":Ljava/io/File;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static findResRawDir(Ljava/io/File;)Ljava/io/File;
    .locals 8
    .param p0, "dir"    # Ljava/io/File;

    .line 425
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 426
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "res"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 427
    new-instance v5, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil$1;

    invoke-direct {v5}, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil$1;-><init>()V

    invoke-virtual {v4, v5}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v5

    .line 433
    .local v5, "rawFiles":[Ljava/io/File;
    array-length v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 434
    aget-object v0, v5, v2

    return-object v0

    .line 425
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "rawFiles":[Ljava/io/File;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 438
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getPackageOfClass(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 405
    .local v0, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 407
    const/4 v2, 0x0

    .line 417
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 407
    return-object v2

    .line 409
    :cond_0
    :try_start_1
    const-string v2, "package"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 410
    const-string v2, "[ \t;]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 411
    .local v2, "parts":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const-string v5, "package"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 412
    aget-object v3, v2, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 412
    return-object v3

    .line 415
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "parts":[Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 417
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "argCount":I
    const/4 v1, 0x0

    .line 85
    .local v1, "sortClasses":Z
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 86
    aget-object v2, p0, v0

    .line 87
    .local v2, "arg":Ljava/lang/String;
    const-string v3, "-s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    const/4 v1, 0x1

    .line 85
    .end local v2    # "arg":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_1

    .line 95
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Usage: OrmLiteConfigUtil [-s] config-file-name"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_1
    aget-object v2, p0, v0

    invoke-static {v2, v1}, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;->writeConfigFile(Ljava/lang/String;Z)V

    .line 98
    return-void
.end method

.method public static writeConfigFile(Ljava/io/File;)V
    .locals 1
    .param p0, "configFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;->writeConfigFile(Ljava/io/File;Z)V

    .line 151
    return-void
.end method

.method public static writeConfigFile(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .param p0, "configFile"    # Ljava/io/File;
    .param p1, "searchDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;->writeConfigFile(Ljava/io/File;Ljava/io/File;Z)V

    .line 168
    return-void
.end method

.method public static writeConfigFile(Ljava/io/File;Ljava/io/File;Z)V
    .locals 2
    .param p0, "configFile"    # Ljava/io/File;
    .param p1, "searchDir"    # Ljava/io/File;
    .param p2, "sortClasses"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v0, "classList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;->findAnnotatedClasses(Ljava/util/List;Ljava/io/File;I)V

    .line 180
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    invoke-static {p0, v1, p2}, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;->writeConfigFile(Ljava/io/File;[Ljava/lang/Class;Z)V

    .line 181
    return-void
.end method

.method public static writeConfigFile(Ljava/io/File;Z)V
    .locals 2
    .param p0, "configFile"    # Ljava/io/File;
    .param p1, "sortClasses"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/io/File;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;->writeConfigFile(Ljava/io/File;Ljava/io/File;Z)V

    .line 161
    return-void
.end method

.method public static writeConfigFile(Ljava/io/File;[Ljava/lang/Class;)V
    .locals 1
    .param p0, "configFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;->writeConfigFile(Ljava/io/File;[Ljava/lang/Class;Z)V

    .line 188
    return-void
.end method

.method public static writeConfigFile(Ljava/io/File;[Ljava/lang/Class;Z)V
    .locals 3
    .param p0, "configFile"    # Ljava/io/File;
    .param p2, "sortClasses"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "[",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing configurations to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 199
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1, p2}, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;->writeConfigFile(Ljava/io/OutputStream;[Ljava/lang/Class;Z)V

    .line 200
    return-void
.end method

.method public static writeConfigFile(Ljava/io/OutputStream;Ljava/io/File;)V
    .locals 1
    .param p0, "outputStream"    # Ljava/io/OutputStream;
    .param p1, "searchDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;->writeConfigFile(Ljava/io/OutputStream;Ljava/io/File;Z)V

    .line 207
    return-void
.end method

.method public static writeConfigFile(Ljava/io/OutputStream;Ljava/io/File;Z)V
    .locals 2
    .param p0, "outputStream"    # Ljava/io/OutputStream;
    .param p1, "searchDir"    # Ljava/io/File;
    .param p2, "sortClasses"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v0, "classList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;->findAnnotatedClasses(Ljava/util/List;Ljava/io/File;I)V

    .line 219
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    invoke-static {p0, v1, p2}, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;->writeConfigFile(Ljava/io/OutputStream;[Ljava/lang/Class;Z)V

    .line 220
    return-void
.end method

.method public static writeConfigFile(Ljava/io/OutputStream;[Ljava/lang/Class;)V
    .locals 1
    .param p0, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;->writeConfigFile(Ljava/io/OutputStream;[Ljava/lang/Class;Z)V

    .line 227
    return-void
.end method

.method public static writeConfigFile(Ljava/io/OutputStream;[Ljava/lang/Class;Z)V
    .locals 4
    .param p0, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "sortClasses"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "[",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 239
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/Class;

    .line 240
    .local v1, "sortedClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v2, p1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    sget-object v2, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;->classComparator:Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil$ClassComparator;

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 242
    move-object p1, v1

    .line 244
    .end local v1    # "sortedClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x1000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 246
    .local v1, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    invoke-static {v1}, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;->writeHeader(Ljava/io/BufferedWriter;)V

    .line 247
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    .line 248
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1, v3, p2}, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;->writeConfigForTable(Ljava/io/BufferedWriter;Ljava/lang/Class;Z)V

    .line 247
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Done."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 254
    nop

    .line 255
    return-void

    .line 253
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    throw v0
.end method

.method public static writeConfigFile(Ljava/lang/String;)V
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;->writeConfigFile(Ljava/lang/String;Z)V

    .line 106
    return-void
.end method

.method public static writeConfigFile(Ljava/lang/String;Z)V
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "sortClasses"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v0, "classList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    new-instance v1, Ljava/io/File;

    const-string v2, "."

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;->findAnnotatedClasses(Ljava/util/List;Ljava/io/File;I)V

    .line 118
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    invoke-static {p0, v1, p1}, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;->writeConfigFile(Ljava/lang/String;[Ljava/lang/Class;Z)V

    .line 119
    return-void
.end method

.method public static writeConfigFile(Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;->writeConfigFile(Ljava/lang/String;[Ljava/lang/Class;Z)V

    .line 126
    return-void
.end method

.method public static writeConfigFile(Ljava/lang/String;[Ljava/lang/Class;Z)V
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;
    .param p2, "sortClasses"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Ljava/io/File;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;->findRawDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 137
    .local v0, "rawDir":Ljava/io/File;
    if-nez v0, :cond_0

    .line 138
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Could not find raw directory which is typically in the res directory"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 142
    .local v1, "configFile":Ljava/io/File;
    invoke-static {v1, p1, p2}, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;->writeConfigFile(Ljava/io/File;[Ljava/lang/Class;Z)V

    .line 144
    .end local v1    # "configFile":Ljava/io/File;
    :goto_0
    return-void
.end method

.method private static writeConfigForTable(Ljava/io/BufferedWriter;Ljava/lang/Class;Z)V
    .locals 8
    .param p0, "writer"    # Ljava/io/BufferedWriter;
    .param p2, "sortClasses"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedWriter;",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-static {v0, p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->extractTableName(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "tableName":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v1, "fieldConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/field/DatabaseFieldConfig;>;"
    move-object v2, p1

    .line 338
    .local v2, "working":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v2, :cond_2

    .line 339
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 340
    .local v6, "field":Ljava/lang/reflect/Field;
    sget-object v7, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-static {v7, v0, v6}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->fromField(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;

    move-result-object v7

    .line 341
    .local v7, "fieldConfig":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    if-eqz v7, :cond_0

    .line 342
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "fieldConfig":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 338
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 346
    .end local v2    # "working":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 347
    .local v2, "e":Ljava/lang/Error;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " because we got an error finding its definition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v2}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 347
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 349
    return-void

    .line 350
    .end local v2    # "e":Ljava/lang/Error;
    :cond_2
    nop

    .line 351
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 352
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " because no annotated fields found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 353
    return-void

    .line 356
    :cond_3
    new-instance v2, Lcom/j256/ormlite/table/DatabaseTableConfig;

    invoke-direct {v2, p1, v0, v1}, Lcom/j256/ormlite/table/DatabaseTableConfig;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;)V

    .line 357
    .local v2, "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<*>;"
    invoke-static {p0, v2}, Lcom/j256/ormlite/table/DatabaseTableConfigLoader;->write(Ljava/io/BufferedWriter;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    .line 358
    const-string v3, "#################################"

    invoke-virtual {p0, v3}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 359
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 360
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrote config for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method private static writeHeader(Ljava/io/BufferedWriter;)V
    .locals 4
    .param p0, "writer"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->append(C)Ljava/io/Writer;

    .line 274
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 275
    const-string v1, "# generated on "

    invoke-virtual {p0, v1}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy/MM/dd hh:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 276
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 277
    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->append(C)Ljava/io/Writer;

    .line 278
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 279
    return-void
.end method
