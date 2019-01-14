.class public Lcom/qihoo360/replugin/sdk/c/c;
.super Ljava/lang/Object;
.source "c.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/replugin/sdk/c/c$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static b:Ljava/io/File;

.field private static c:Z

.field private static d:Z

.field private static e:Z

.field private static f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    const-class v0, Lcom/qihoo360/replugin/sdk/c/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qihoo360/replugin/sdk/c/c;->a:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qihoo360/replugin/sdk/c/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/push_log.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/qihoo360/replugin/sdk/c/c;->b:Ljava/io/File;

    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qihoo360/replugin/sdk/c/c;->c:Z

    .line 20
    sput-boolean v0, Lcom/qihoo360/replugin/sdk/c/c;->d:Z

    .line 21
    sput-boolean v0, Lcom/qihoo360/replugin/sdk/c/c;->e:Z

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/qihoo360/replugin/sdk/c/c;->f:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "var0"    # Ljava/lang/String;
    .param p1, "var1"    # Ljava/lang/String;

    .line 33
    const/4 v0, 0x3

    const/4 v1, 0x0

    :try_start_0
    check-cast v1, Ljava/lang/Throwable;

    invoke-static {p0, p1, v0, v1}, Lcom/qihoo360/replugin/sdk/c/c;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)Lcom/qihoo360/replugin/sdk/c/c$a;

    move-result-object v0

    .line 34
    .local v0, "var3":Lcom/qihoo360/replugin/sdk/c/c$a;
    iget-boolean v1, v0, Lcom/qihoo360/replugin/sdk/c/c$a;->a:Z

    if-eqz v1, :cond_0

    .line 35
    iget v1, v0, Lcom/qihoo360/replugin/sdk/c/c$a;->b:I

    return v1

    .line 38
    :cond_0
    iget-object v1, v0, Lcom/qihoo360/replugin/sdk/c/c$a;->c:Ljava/lang/String;

    .line 39
    .local v1, "var2":Ljava/lang/String;
    sget-boolean v2, Lcom/qihoo360/replugin/sdk/c/c;->d:Z

    if-eqz v2, :cond_2

    .line 40
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    invoke-static {p1}, Lcom/qihoo360/replugin/sdk/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 44
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 48
    .end local v0    # "var3":Lcom/qihoo360/replugin/sdk/c/c$a;
    .end local v1    # "var2":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 50
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)Lcom/qihoo360/replugin/sdk/c/c$a;
    .locals 4
    .param p0, "var0"    # Ljava/lang/String;
    .param p1, "var1"    # Ljava/lang/String;
    .param p2, "var2"    # I
    .param p3, "var3"    # Ljava/lang/Throwable;

    .line 54
    new-instance v0, Lcom/qihoo360/replugin/sdk/c/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qihoo360/replugin/sdk/c/c$a;-><init>(Lcom/qihoo360/replugin/sdk/c/c$1;)V

    .line 56
    .local v0, "var5":Lcom/qihoo360/replugin/sdk/c/c$a;
    sget-boolean v1, Lcom/qihoo360/replugin/sdk/c/c;->e:Z

    if-eqz v1, :cond_1

    .line 57
    sget-boolean v1, Lcom/qihoo360/replugin/sdk/c/c;->c:Z

    if-eqz v1, :cond_2

    .line 58
    invoke-static {p1}, Lcom/qihoo360/replugin/sdk/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "var4":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 60
    invoke-static {p0, v1, p3}, Lcom/qihoo360/replugin/sdk/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    iput v2, v0, Lcom/qihoo360/replugin/sdk/c/c$a;->b:I

    goto :goto_0

    .line 63
    :cond_0
    invoke-static {p0, v1}, Lcom/qihoo360/replugin/sdk/c/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/qihoo360/replugin/sdk/c/c$a;->b:I

    .line 67
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/qihoo360/replugin/sdk/c/c$a;->a:Z

    .line 68
    iput-object v1, v0, Lcom/qihoo360/replugin/sdk/c/c$a;->c:Ljava/lang/String;

    goto :goto_1

    .line 71
    .end local v1    # "var4":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Lcom/qihoo360/replugin/sdk/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .restart local v1    # "var4":Ljava/lang/String;
    iput-object v1, v0, Lcom/qihoo360/replugin/sdk/c/c$a;->c:Ljava/lang/String;

    .line 73
    sget-object v2, Lcom/qihoo360/replugin/sdk/c/c;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .end local v1    # "var4":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/360Log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "var0"    # Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 124
    .local v0, "var1":[Ljava/lang/StackTraceElement;
    const-string v1, "<unknown>"

    .line 126
    .local v1, "var2":Ljava/lang/String;
    const/4 v2, 0x2

    const/4 v3, 0x2

    .line 126
    .local v3, "var3":I
    :goto_0
    array-length v4, v0

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 127
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 128
    .local v4, "var4":Ljava/lang/Class;
    const-class v6, Lcom/qihoo360/replugin/sdk/c/c;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 129
    aget-object v6, v0, v3

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 130
    .local v6, "var5":Ljava/lang/String;
    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 131
    const/16 v7, 0x24

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 132
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v0, v3

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    goto :goto_1

    .line 126
    .end local v4    # "var4":Ljava/lang/Class;
    .end local v6    # "var5":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 137
    .end local v3    # "var3":I
    :cond_1
    :goto_1
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "[%d] %s(%s): %s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    aput-object v1, v6, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v6, v2

    const/4 v2, 0x3

    aput-object p0, v6, v2

    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static declared-synchronized a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "var0"    # Ljava/io/File;
    .param p1, "var1"    # Ljava/lang/String;
    .param p2, "var2"    # Ljava/lang/String;
    .param p3, "var3"    # Ljava/lang/Throwable;

    const-class v0, Lcom/qihoo360/replugin/sdk/c/c;

    monitor-enter v0

    .line 88
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 89
    invoke-static {p0, p1, p2, p3}, Lcom/qihoo360/replugin/sdk/c/c;->c(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_0
    monitor-exit v0

    return-void

    .line 87
    .end local p0    # "var0":Ljava/io/File;
    .end local p1    # "var1":Ljava/lang/String;
    .end local p2    # "var2":Ljava/lang/String;
    .end local p3    # "var3":Ljava/lang/Throwable;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "var0"    # Ljava/lang/String;
    .param p1, "var1"    # Ljava/lang/String;
    .param p2, "var2"    # Ljava/lang/Throwable;

    const-class v0, Lcom/qihoo360/replugin/sdk/c/c;

    monitor-enter v0

    .line 84
    :try_start_0
    sget-object v1, Lcom/qihoo360/replugin/sdk/c/c;->b:Ljava/io/File;

    invoke-static {v1, p0, p1, p2}, Lcom/qihoo360/replugin/sdk/c/c;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit v0

    return-void

    .line 83
    .end local p0    # "var0":Ljava/lang/String;
    .end local p1    # "var1":Ljava/lang/String;
    .end local p2    # "var2":Ljava/lang/Throwable;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static b()Ljava/lang/String;
    .locals 5

    .line 141
    const/4 v0, 0x0

    .line 144
    .local v0, "var0":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss:SSS"

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 145
    .local v1, "var1":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 146
    .local v2, "var2":Ljava/util/Date;
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 149
    .end local v1    # "var1":Ljava/text/SimpleDateFormat;
    .end local v2    # "var2":Ljava/util/Date;
    goto :goto_0

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, "var3":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    .end local v1    # "var3":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "var0"    # Ljava/lang/String;
    .param p1, "var1"    # Ljava/lang/String;

    const-class v0, Lcom/qihoo360/replugin/sdk/c/c;

    monitor-enter v0

    .line 80
    :try_start_0
    sget-object v1, Lcom/qihoo360/replugin/sdk/c/c;->b:Ljava/io/File;

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v1, p0, p1, v2}, Lcom/qihoo360/replugin/sdk/c/c;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit v0

    return-void

    .line 79
    .end local p0    # "var0":Ljava/lang/String;
    .end local p1    # "var1":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static c(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p0, "var0"    # Ljava/io/File;
    .param p1, "var1"    # Ljava/lang/String;
    .param p2, "var2"    # Ljava/lang/String;
    .param p3, "var3"    # Ljava/lang/Throwable;

    .line 98
    const/4 v0, 0x0

    .line 101
    .local v0, "var4":Ljava/io/PrintStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qihoo360/replugin/sdk/c/b;->a(Ljava/lang/String;)Z

    .line 102
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 106
    :cond_0
    new-instance v1, Ljava/io/PrintStream;

    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v1

    .line 107
    const-string v1, "%S[%s] %s\n"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/qihoo360/replugin/sdk/c/c;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 108
    if-eqz p3, :cond_1

    .line 109
    invoke-virtual {p3, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_1
    if-eqz v0, :cond_2

    .line 115
    :goto_0
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    goto :goto_1

    .line 114
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, "var9":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    .end local v1    # "var9":Ljava/lang/Exception;
    if-eqz v0, :cond_2

    goto :goto_0

    .line 120
    :cond_2
    :goto_1
    return-void

    .line 114
    :goto_2
    if-eqz v0, :cond_3

    .line 115
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 118
    :cond_3
    throw v1
.end method
