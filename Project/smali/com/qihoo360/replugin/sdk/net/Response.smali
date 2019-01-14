.class public final Lcom/qihoo360/replugin/sdk/net/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final body:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mErrorBody:[B

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSuccess:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 19
    .local p0, "this":Lcom/qihoo360/replugin/sdk/net/Response;, "Lcom/qihoo360/replugin/sdk/net/Response<TT;>;"
    .local p1, "var1":Ljava/lang/Object;, "TT;"
    .local p2, "var2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/qihoo360/replugin/sdk/net/Response;->body:Ljava/lang/Object;

    .line 21
    iput-object p2, p0, Lcom/qihoo360/replugin/sdk/net/Response;->mHeaders:Ljava/util/Map;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qihoo360/replugin/sdk/net/Response;->mSuccess:Z

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;[B)V
    .locals 1
    .param p2, "var2"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    .line 25
    .local p0, "this":Lcom/qihoo360/replugin/sdk/net/Response;, "Lcom/qihoo360/replugin/sdk/net/Response<TT;>;"
    .local p1, "var1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/qihoo360/replugin/sdk/net/Response;->mHeaders:Ljava/util/Map;

    .line 27
    iput-object p2, p0, Lcom/qihoo360/replugin/sdk/net/Response;->mErrorBody:[B

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qihoo360/replugin/sdk/net/Response;->body:Ljava/lang/Object;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qihoo360/replugin/sdk/net/Response;->mSuccess:Z

    .line 30
    return-void
.end method

.method public static error([BLjava/util/Map;)Lcom/qihoo360/replugin/sdk/net/Response;
    .locals 1
    .param p0, "var0"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/qihoo360/replugin/sdk/net/Response<",
            "TT;>;"
        }
    .end annotation

    .line 16
    .local p1, "var1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/qihoo360/replugin/sdk/net/Response;

    invoke-direct {v0, p1, p0}, Lcom/qihoo360/replugin/sdk/net/Response;-><init>(Ljava/util/Map;[B)V

    return-object v0
.end method

.method public static success(Ljava/lang/Object;Ljava/util/Map;)Lcom/qihoo360/replugin/sdk/net/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/qihoo360/replugin/sdk/net/Response<",
            "TT;>;"
        }
    .end annotation

    .line 12
    .local p0, "var0":Ljava/lang/Object;, "TT;"
    .local p1, "var1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/qihoo360/replugin/sdk/net/Response;

    invoke-direct {v0, p0, p1}, Lcom/qihoo360/replugin/sdk/net/Response;-><init>(Ljava/lang/Object;Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public body()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 37
    .local p0, "this":Lcom/qihoo360/replugin/sdk/net/Response;, "Lcom/qihoo360/replugin/sdk/net/Response<TT;>;"
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/net/Response;->body:Ljava/lang/Object;

    return-object v0
.end method

.method public getErrorBody()[B
    .locals 1

    .line 41
    .local p0, "this":Lcom/qihoo360/replugin/sdk/net/Response;, "Lcom/qihoo360/replugin/sdk/net/Response<TT;>;"
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/net/Response;->mErrorBody:[B

    return-object v0
.end method

.method public headers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33
    .local p0, "this":Lcom/qihoo360/replugin/sdk/net/Response;, "Lcom/qihoo360/replugin/sdk/net/Response<TT;>;"
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/net/Response;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 45
    .local p0, "this":Lcom/qihoo360/replugin/sdk/net/Response;, "Lcom/qihoo360/replugin/sdk/net/Response<TT;>;"
    iget-boolean v0, p0, Lcom/qihoo360/replugin/sdk/net/Response;->mSuccess:Z

    return v0
.end method
