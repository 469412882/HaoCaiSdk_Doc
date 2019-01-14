.class public Lcom/qihoo360/replugin/sdk/net/j;
.super Ljava/lang/Object;
.source "j.java"


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs a([Ljava/io/Closeable;)V
    .locals 5
    .param p0, "var0"    # [Ljava/io/Closeable;

    .line 38
    if-eqz p0, :cond_1

    .line 39
    move-object v0, p0

    .line 40
    .local v0, "var1":[Ljava/io/Closeable;
    array-length v1, p0

    .line 42
    .local v1, "var2":I
    const/4 v2, 0x0

    .line 42
    .local v2, "var3":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 43
    aget-object v3, v0, v2

    .line 44
    .local v3, "var4":Ljava/io/Closeable;
    if-eqz v3, :cond_0

    .line 46
    :try_start_0
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_1

    .line 47
    :catch_0
    move-exception v4

    .line 48
    .local v4, "var6":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 42
    .end local v3    # "var4":Ljava/io/Closeable;
    .end local v4    # "var6":Ljava/io/IOException;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    .end local v0    # "var1":[Ljava/io/Closeable;
    .end local v1    # "var2":I
    .end local v2    # "var3":I
    :cond_1
    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/net/j;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method public a(J)V
    .locals 0
    .param p1, "var1"    # J

    .line 22
    iput-wide p1, p0, Lcom/qihoo360/replugin/sdk/net/j;->b:J

    .line 23
    return-void
.end method

.method public a(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "var1"    # Ljava/io/InputStream;

    .line 18
    iput-object p1, p0, Lcom/qihoo360/replugin/sdk/net/j;->a:Ljava/io/InputStream;

    .line 19
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "var1"    # Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/qihoo360/replugin/sdk/net/j;->c:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public b()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/net/j;->a:Ljava/io/InputStream;

    invoke-virtual {p0, v0}, Lcom/qihoo360/replugin/sdk/net/j;->a(Ljava/io/InputStream;)V

    .line 35
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "var1"    # Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/qihoo360/replugin/sdk/net/j;->d:Ljava/lang/String;

    .line 31
    return-void
.end method
