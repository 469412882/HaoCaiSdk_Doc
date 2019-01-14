.class final Lcom/qihoo360/replugin/utils/InterpretDex2OatHelper$StreamConsumer$1;
.super Ljava/lang/Object;
.source "InterpretDex2OatHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qihoo360/replugin/utils/InterpretDex2OatHelper$StreamConsumer;->consumeInputStream(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$is:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/qihoo360/replugin/utils/InterpretDex2OatHelper$StreamConsumer$1;->val$is:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/qihoo360/replugin/utils/InterpretDex2OatHelper$StreamConsumer$1;->val$is:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 98
    return-void

    .line 101
    :cond_0
    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 103
    .local v0, "buffer":[B
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/qihoo360/replugin/utils/InterpretDex2OatHelper$StreamConsumer$1;->val$is:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/qihoo360/replugin/utils/InterpretDex2OatHelper$StreamConsumer$1;->val$is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 109
    :catchall_0
    move-exception v1

    .line 110
    :try_start_2
    iget-object v2, p0, Lcom/qihoo360/replugin/utils/InterpretDex2OatHelper$StreamConsumer$1;->val$is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 113
    goto :goto_1

    .line 111
    :catch_0
    move-exception v2

    .line 113
    :goto_1
    throw v1

    .line 106
    :catch_1
    move-exception v1

    .line 110
    :try_start_3
    iget-object v1, p0, Lcom/qihoo360/replugin/utils/InterpretDex2OatHelper$StreamConsumer$1;->val$is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 113
    :goto_2
    goto :goto_3

    .line 111
    :catch_2
    move-exception v1

    .line 114
    nop

    .line 115
    :goto_3
    return-void
.end method
