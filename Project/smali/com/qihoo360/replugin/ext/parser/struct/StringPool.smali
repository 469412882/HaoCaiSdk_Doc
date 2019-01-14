.class public Lcom/qihoo360/replugin/ext/parser/struct/StringPool;
.super Ljava/lang/Object;
.source "StringPool.java"


# instance fields
.field private pool:[Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "poolSize"    # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/qihoo360/replugin/ext/parser/struct/StringPool;->pool:[Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/String;
    .locals 1
    .param p1, "idx"    # I

    .line 42
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/struct/StringPool;->pool:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public set(ILjava/lang/String;)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/struct/StringPool;->pool:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 47
    return-void
.end method
