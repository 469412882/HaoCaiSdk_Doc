.class public Lcom/qihoo360/replugin/sdk/net/g;
.super Ljava/lang/Object;
.source "g.java"

# interfaces
.implements Lcom/qihoo360/replugin/sdk/net/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/qihoo360/replugin/sdk/net/f<",
        "Lcom/qihoo360/replugin/sdk/net/j;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/gson/Gson;

.field private final b:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;)V
    .locals 0
    .param p1, "var1"    # Lcom/google/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;)V"
        }
    .end annotation

    .line 14
    .local p0, "this":Lcom/qihoo360/replugin/sdk/net/g;, "Lcom/qihoo360/replugin/sdk/net/g<TT;>;"
    .local p2, "var2":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/qihoo360/replugin/sdk/net/g;->a:Lcom/google/gson/Gson;

    .line 16
    iput-object p2, p0, Lcom/qihoo360/replugin/sdk/net/g;->b:Lcom/google/gson/TypeAdapter;

    .line 17
    return-void
.end method


# virtual methods
.method public a(Lcom/qihoo360/replugin/sdk/net/j;)Ljava/lang/Object;
    .locals 3
    .param p1, "var1"    # Lcom/qihoo360/replugin/sdk/net/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qihoo360/replugin/sdk/net/j;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    .local p0, "this":Lcom/qihoo360/replugin/sdk/net/g;, "Lcom/qihoo360/replugin/sdk/net/g<TT;>;"
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/sdk/net/j;->a()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 21
    .local v0, "var2":Ljava/io/InputStreamReader;
    iget-object v1, p0, Lcom/qihoo360/replugin/sdk/net/g;->a:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->newJsonReader(Ljava/io/Reader;)Lcom/google/gson/stream/JsonReader;

    move-result-object v1

    .line 25
    .local v1, "var3":Lcom/google/gson/stream/JsonReader;
    :try_start_0
    iget-object v2, p0, Lcom/qihoo360/replugin/sdk/net/g;->b:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .local v2, "var4":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/qihoo360/replugin/sdk/net/j;->b()V

    .line 28
    nop

    .line 30
    return-object v2

    .line 27
    .end local v2    # "var4":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Lcom/qihoo360/replugin/sdk/net/j;->b()V

    .line 28
    throw v2
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    .local p0, "this":Lcom/qihoo360/replugin/sdk/net/g;, "Lcom/qihoo360/replugin/sdk/net/g<TT;>;"
    check-cast p1, Lcom/qihoo360/replugin/sdk/net/j;

    invoke-virtual {p0, p1}, Lcom/qihoo360/replugin/sdk/net/g;->a(Lcom/qihoo360/replugin/sdk/net/j;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
