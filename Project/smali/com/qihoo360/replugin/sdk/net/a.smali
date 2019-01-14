.class public abstract Lcom/qihoo360/replugin/sdk/net/a;
.super Ljava/lang/Object;
.source "a.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/reflect/InvocationHandler;"
    }
.end annotation


# static fields
.field private static final THREAD_POOL:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final mThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/qihoo360/replugin/sdk/net/a;->THREAD_POOL:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    .local p0, "this":Lcom/qihoo360/replugin/sdk/net/a;, "Lcom/qihoo360/replugin/sdk/net/a<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lcom/qihoo360/replugin/sdk/net/a;->THREAD_POOL:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/qihoo360/replugin/sdk/net/a;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "var1"    # Ljava/util/concurrent/ExecutorService;

    .line 20
    .local p0, "this":Lcom/qihoo360/replugin/sdk/net/a;, "Lcom/qihoo360/replugin/sdk/net/a<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/qihoo360/replugin/sdk/net/a;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 22
    return-void
.end method


# virtual methods
.method public async()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 26
    .local p0, "this":Lcom/qihoo360/replugin/sdk/net/a;, "Lcom/qihoo360/replugin/sdk/net/a<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 26
    .local v0, "var1":Ljava/lang/reflect/Type;
    :goto_0
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0

    .line 30
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 31
    .local v1, "var2":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 32
    .local v2, "var3":[Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aget-object v6, v2, v5

    check-cast v6, Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-static {v3, v4, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "var1"    # Ljava/lang/Object;
    .param p2, "var2"    # Ljava/lang/reflect/Method;
    .param p3, "var3"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    .local p0, "this":Lcom/qihoo360/replugin/sdk/net/a;, "Lcom/qihoo360/replugin/sdk/net/a<TT;>;"
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/net/a;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/qihoo360/replugin/sdk/net/a$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/qihoo360/replugin/sdk/net/a$1;-><init>(Lcom/qihoo360/replugin/sdk/net/a;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The return type of proxy method must be void."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
