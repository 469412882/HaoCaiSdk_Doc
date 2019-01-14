.class public Lcom/qihoo360/replugin/sdk/net/c;
.super Ljava/lang/Object;
.source "c.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/replugin/sdk/net/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0
    .param p1, "var1"    # Ljava/lang/reflect/Type;

    .line 9
    .local p0, "this":Lcom/qihoo360/replugin/sdk/net/c;, "Lcom/qihoo360/replugin/sdk/net/c<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/qihoo360/replugin/sdk/net/c;->a:Ljava/lang/reflect/Type;

    .line 11
    return-void
.end method


# virtual methods
.method public a(Lcom/qihoo360/replugin/sdk/net/e;)Lcom/qihoo360/replugin/sdk/net/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qihoo360/replugin/sdk/net/e<",
            "TT;>;)",
            "Lcom/qihoo360/replugin/sdk/net/e<",
            "TT;>;"
        }
    .end annotation

    .line 14
    .local p0, "this":Lcom/qihoo360/replugin/sdk/net/c;, "Lcom/qihoo360/replugin/sdk/net/c<TT;>;"
    .local p1, "var1":Lcom/qihoo360/replugin/sdk/net/e;, "Lcom/qihoo360/replugin/sdk/net/e<TT;>;"
    new-instance v0, Lcom/qihoo360/replugin/sdk/net/c$a;

    invoke-direct {v0, p0, p1}, Lcom/qihoo360/replugin/sdk/net/c$a;-><init>(Lcom/qihoo360/replugin/sdk/net/c;Lcom/qihoo360/replugin/sdk/net/e;)V

    return-object v0
.end method
