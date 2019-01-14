.class public final Lcn/jiguang/d/g/g;
.super Ljava/lang/Object;


# static fields
.field private static e:Lcn/jiguang/d/g/g;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/ExecutorService;

.field private c:Ljava/util/concurrent/ScheduledExecutorService;

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/jiguang/d/g/g;

    invoke-direct {v0}, Lcn/jiguang/d/g/g;-><init>()V

    sput-object v0, Lcn/jiguang/d/g/g;->e:Lcn/jiguang/d/g/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/jiguang/d/g/g;->a:Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/d/g/g;->b:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/d/g/g;->c:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v0, 0x5

    iput-wide v0, p0, Lcn/jiguang/d/g/g;->d:J

    return-void
.end method

.method public static a()Lcn/jiguang/d/g/g;
    .locals 1

    sget-object v0, Lcn/jiguang/d/g/g;->e:Lcn/jiguang/d/g/g;

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    const-string v0, "ThreadUtil"

    const-string v1, "Action - shutdownExcutorService"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    const-string p0, "ThreadUtil"

    const-string v0, "executor was null"

    invoke-static {p0, v0}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x64

    invoke-interface {p0, v1, v2, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v1, v2, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ThreadUtil"

    const-string v1, "Pool did not terminate"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const-string p0, "ThreadUtil"

    const-string v0, "current thread is interrupted by self"

    invoke-static {p0, v0}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    :goto_0
    const-string p0, "ThreadUtil"

    const-string v0, "Action - shutdownExcutorService - end"

    invoke-static {p0, v0}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcn/jiguang/d/g/g;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/d/g/g;->b:Ljava/util/concurrent/ExecutorService;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/jiguang/d/g/g;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "ThreadUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "execute error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
