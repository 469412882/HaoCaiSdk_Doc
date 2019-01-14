.class Lcom/qihoo360/replugin/sdk/net/c$a;
.super Ljava/lang/Object;
.source "c.java"

# interfaces
.implements Lcom/qihoo360/replugin/sdk/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/replugin/sdk/net/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/qihoo360/replugin/sdk/net/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private b:Lcom/qihoo360/replugin/sdk/net/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qihoo360/replugin/sdk/net/e<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/qihoo360/replugin/sdk/net/c;


# direct methods
.method public constructor <init>(Lcom/qihoo360/replugin/sdk/net/c;Lcom/qihoo360/replugin/sdk/net/e;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qihoo360/replugin/sdk/net/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qihoo360/replugin/sdk/net/e<",
            "TT;>;)V"
        }
    .end annotation

    .line 20
    .local p0, "this":Lcom/qihoo360/replugin/sdk/net/c$a;, "Lcom/qihoo360/replugin/sdk/net/c<TT;>.a<TT;>;"
    .local p2, "var1":Lcom/qihoo360/replugin/sdk/net/e;, "Lcom/qihoo360/replugin/sdk/net/e<TT;>;"
    iput-object p1, p0, Lcom/qihoo360/replugin/sdk/net/c$a;->this$0:Lcom/qihoo360/replugin/sdk/net/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p2, p0, Lcom/qihoo360/replugin/sdk/net/c$a;->b:Lcom/qihoo360/replugin/sdk/net/e;

    .line 22
    return-void
.end method


# virtual methods
.method public a()Lcom/qihoo360/replugin/sdk/net/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qihoo360/replugin/sdk/net/Response<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    .local p0, "this":Lcom/qihoo360/replugin/sdk/net/c$a;, "Lcom/qihoo360/replugin/sdk/net/c<TT;>.a<TT;>;"
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/net/c$a;->b:Lcom/qihoo360/replugin/sdk/net/e;

    invoke-interface {v0}, Lcom/qihoo360/replugin/sdk/net/e;->a()Lcom/qihoo360/replugin/sdk/net/Response;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/qihoo360/replugin/sdk/net/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qihoo360/replugin/sdk/net/e<",
            "TT;>;"
        }
    .end annotation

    .line 29
    .local p0, "this":Lcom/qihoo360/replugin/sdk/net/c$a;, "Lcom/qihoo360/replugin/sdk/net/c<TT;>.a<TT;>;"
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/net/c$a;->b:Lcom/qihoo360/replugin/sdk/net/e;

    invoke-interface {v0}, Lcom/qihoo360/replugin/sdk/net/e;->b()Lcom/qihoo360/replugin/sdk/net/e;

    move-result-object v0

    return-object v0
.end method
