.class public Lorg/greenrobot/eventbus/EventBus;
.super Ljava/lang/Object;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/eventbus/EventBus$PostCallback;,
        Lorg/greenrobot/eventbus/EventBus$PostingThreadState;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUILDER:Lorg/greenrobot/eventbus/EventBusBuilder;

.field public static TAG:Ljava/lang/String;

.field static volatile defaultInstance:Lorg/greenrobot/eventbus/EventBus;

.field private static final eventTypesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final asyncPoster:Lorg/greenrobot/eventbus/AsyncPoster;

.field private final backgroundPoster:Lorg/greenrobot/eventbus/BackgroundPoster;

.field private final currentPostingThreadState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/greenrobot/eventbus/EventBus$PostingThreadState;",
            ">;"
        }
    .end annotation
.end field

.field private final eventInheritance:Z

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final indexCount:I

.field private final logNoSubscriberMessages:Z

.field private final logSubscriberExceptions:Z

.field private final logger:Lorg/greenrobot/eventbus/Logger;

.field private final mainThreadPoster:Lorg/greenrobot/eventbus/Poster;

.field private final mainThreadSupport:Lorg/greenrobot/eventbus/MainThreadSupport;

.field private final sendNoSubscriberEvent:Z

.field private final sendSubscriberExceptionEvent:Z

.field private final stickyEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final subscriberMethodFinder:Lorg/greenrobot/eventbus/SubscriberMethodFinder;

.field private final subscriptionsByEventType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/greenrobot/eventbus/Subscription;",
            ">;>;"
        }
    .end annotation
.end field

.field private final throwSubscriberException:Z

.field private final typesBySubscriber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-string v0, "EventBus"

    sput-object v0, Lorg/greenrobot/eventbus/EventBus;->TAG:Ljava/lang/String;

    .line 46
    new-instance v0, Lorg/greenrobot/eventbus/EventBusBuilder;

    invoke-direct {v0}, Lorg/greenrobot/eventbus/EventBusBuilder;-><init>()V

    sput-object v0, Lorg/greenrobot/eventbus/EventBus;->DEFAULT_BUILDER:Lorg/greenrobot/eventbus/EventBusBuilder;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/greenrobot/eventbus/EventBus;->eventTypesCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 106
    sget-object v0, Lorg/greenrobot/eventbus/EventBus;->DEFAULT_BUILDER:Lorg/greenrobot/eventbus/EventBusBuilder;

    invoke-direct {p0, v0}, Lorg/greenrobot/eventbus/EventBus;-><init>(Lorg/greenrobot/eventbus/EventBusBuilder;)V

    .line 107
    return-void
.end method

.method constructor <init>(Lorg/greenrobot/eventbus/EventBusBuilder;)V
    .locals 4
    .param p1, "builder"    # Lorg/greenrobot/eventbus/EventBusBuilder;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lorg/greenrobot/eventbus/EventBus$1;

    invoke-direct {v0, p0}, Lorg/greenrobot/eventbus/EventBus$1;-><init>(Lorg/greenrobot/eventbus/EventBus;)V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->currentPostingThreadState:Ljava/lang/ThreadLocal;

    .line 110
    invoke-virtual {p1}, Lorg/greenrobot/eventbus/EventBusBuilder;->getLogger()Lorg/greenrobot/eventbus/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->logger:Lorg/greenrobot/eventbus/Logger;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->typesBySubscriber:Ljava/util/Map;

    .line 113
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->stickyEvents:Ljava/util/Map;

    .line 114
    invoke-virtual {p1}, Lorg/greenrobot/eventbus/EventBusBuilder;->getMainThreadSupport()Lorg/greenrobot/eventbus/MainThreadSupport;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->mainThreadSupport:Lorg/greenrobot/eventbus/MainThreadSupport;

    .line 115
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->mainThreadSupport:Lorg/greenrobot/eventbus/MainThreadSupport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->mainThreadSupport:Lorg/greenrobot/eventbus/MainThreadSupport;

    invoke-interface {v0, p0}, Lorg/greenrobot/eventbus/MainThreadSupport;->createPoster(Lorg/greenrobot/eventbus/EventBus;)Lorg/greenrobot/eventbus/Poster;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->mainThreadPoster:Lorg/greenrobot/eventbus/Poster;

    .line 116
    new-instance v0, Lorg/greenrobot/eventbus/BackgroundPoster;

    invoke-direct {v0, p0}, Lorg/greenrobot/eventbus/BackgroundPoster;-><init>(Lorg/greenrobot/eventbus/EventBus;)V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->backgroundPoster:Lorg/greenrobot/eventbus/BackgroundPoster;

    .line 117
    new-instance v0, Lorg/greenrobot/eventbus/AsyncPoster;

    invoke-direct {v0, p0}, Lorg/greenrobot/eventbus/AsyncPoster;-><init>(Lorg/greenrobot/eventbus/EventBus;)V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->asyncPoster:Lorg/greenrobot/eventbus/AsyncPoster;

    .line 118
    iget-object v0, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->subscriberInfoIndexes:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->subscriberInfoIndexes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lorg/greenrobot/eventbus/EventBus;->indexCount:I

    .line 119
    new-instance v0, Lorg/greenrobot/eventbus/SubscriberMethodFinder;

    iget-object v1, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->subscriberInfoIndexes:Ljava/util/List;

    iget-boolean v2, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->strictMethodVerification:Z

    iget-boolean v3, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->ignoreGeneratedIndex:Z

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/SubscriberMethodFinder;-><init>(Ljava/util/List;ZZ)V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->subscriberMethodFinder:Lorg/greenrobot/eventbus/SubscriberMethodFinder;

    .line 121
    iget-boolean v0, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->logSubscriberExceptions:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->logSubscriberExceptions:Z

    .line 122
    iget-boolean v0, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->logNoSubscriberMessages:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->logNoSubscriberMessages:Z

    .line 123
    iget-boolean v0, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->sendSubscriberExceptionEvent:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->sendSubscriberExceptionEvent:Z

    .line 124
    iget-boolean v0, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->sendNoSubscriberEvent:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->sendNoSubscriberEvent:Z

    .line 125
    iget-boolean v0, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->throwSubscriberException:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->throwSubscriberException:Z

    .line 126
    iget-boolean v0, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->eventInheritance:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->eventInheritance:Z

    .line 127
    iget-object v0, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->executorService:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 128
    return-void
.end method

.method static addInterfaces(Ljava/util/List;[Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 482
    .local p0, "eventTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .local p1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 483
    .local v2, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 484
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v3}, Lorg/greenrobot/eventbus/EventBus;->addInterfaces(Ljava/util/List;[Ljava/lang/Class;)V

    .line 482
    .end local v2    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 488
    :cond_1
    return-void
.end method

.method public static builder()Lorg/greenrobot/eventbus/EventBusBuilder;
    .locals 1

    .line 92
    new-instance v0, Lorg/greenrobot/eventbus/EventBusBuilder;

    invoke-direct {v0}, Lorg/greenrobot/eventbus/EventBusBuilder;-><init>()V

    return-object v0
.end method

.method private checkPostStickyEventToSubscription(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V
    .locals 1
    .param p1, "newSubscription"    # Lorg/greenrobot/eventbus/Subscription;
    .param p2, "stickyEvent"    # Ljava/lang/Object;

    .line 200
    if-eqz p2, :cond_0

    .line 203
    invoke-direct {p0}, Lorg/greenrobot/eventbus/EventBus;->isMainThread()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lorg/greenrobot/eventbus/EventBus;->postToSubscription(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;Z)V

    .line 205
    :cond_0
    return-void
.end method

.method public static clearCaches()V
    .locals 1

    .line 97
    invoke-static {}, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->clearCaches()V

    .line 98
    sget-object v0, Lorg/greenrobot/eventbus/EventBus;->eventTypesCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 99
    return-void
.end method

.method public static getDefault()Lorg/greenrobot/eventbus/EventBus;
    .locals 2

    .line 81
    sget-object v0, Lorg/greenrobot/eventbus/EventBus;->defaultInstance:Lorg/greenrobot/eventbus/EventBus;

    if-nez v0, :cond_1

    .line 82
    const-class v0, Lorg/greenrobot/eventbus/EventBus;

    monitor-enter v0

    .line 83
    :try_start_0
    sget-object v1, Lorg/greenrobot/eventbus/EventBus;->defaultInstance:Lorg/greenrobot/eventbus/EventBus;

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Lorg/greenrobot/eventbus/EventBus;

    invoke-direct {v1}, Lorg/greenrobot/eventbus/EventBus;-><init>()V

    sput-object v1, Lorg/greenrobot/eventbus/EventBus;->defaultInstance:Lorg/greenrobot/eventbus/EventBus;

    .line 86
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 88
    :cond_1
    :goto_0
    sget-object v0, Lorg/greenrobot/eventbus/EventBus;->defaultInstance:Lorg/greenrobot/eventbus/EventBus;

    return-object v0
.end method

.method private handleSubscriberException(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "subscription"    # Lorg/greenrobot/eventbus/Subscription;
    .param p2, "event"    # Ljava/lang/Object;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 516
    instance-of v0, p2, Lorg/greenrobot/eventbus/SubscriberExceptionEvent;

    if-eqz v0, :cond_0

    .line 517
    iget-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->logSubscriberExceptions:Z

    if-eqz v0, :cond_3

    .line 519
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->logger:Lorg/greenrobot/eventbus/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubscriberExceptionEvent subscriber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lorg/greenrobot/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " threw an exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3}, Lorg/greenrobot/eventbus/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 521
    move-object v0, p2

    check-cast v0, Lorg/greenrobot/eventbus/SubscriberExceptionEvent;

    .line 522
    .local v0, "exEvent":Lorg/greenrobot/eventbus/SubscriberExceptionEvent;
    iget-object v1, p0, Lorg/greenrobot/eventbus/EventBus;->logger:Lorg/greenrobot/eventbus/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initial event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lorg/greenrobot/eventbus/SubscriberExceptionEvent;->causingEvent:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " caused exception in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lorg/greenrobot/eventbus/SubscriberExceptionEvent;->causingSubscriber:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lorg/greenrobot/eventbus/SubscriberExceptionEvent;->throwable:Ljava/lang/Throwable;

    invoke-interface {v1, v2, v3, v4}, Lorg/greenrobot/eventbus/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 524
    .end local v0    # "exEvent":Lorg/greenrobot/eventbus/SubscriberExceptionEvent;
    goto :goto_0

    .line 526
    :cond_0
    iget-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->throwSubscriberException:Z

    if-eqz v0, :cond_1

    .line 527
    new-instance v0, Lorg/greenrobot/eventbus/EventBusException;

    const-string v1, "Invoking subscriber failed"

    invoke-direct {v0, v1, p3}, Lorg/greenrobot/eventbus/EventBusException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 529
    :cond_1
    iget-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->logSubscriberExceptions:Z

    if-eqz v0, :cond_2

    .line 530
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->logger:Lorg/greenrobot/eventbus/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not dispatch event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to subscribing class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lorg/greenrobot/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    .line 531
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 530
    invoke-interface {v0, v1, v2, p3}, Lorg/greenrobot/eventbus/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 533
    :cond_2
    iget-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->sendSubscriberExceptionEvent:Z

    if-eqz v0, :cond_3

    .line 534
    new-instance v0, Lorg/greenrobot/eventbus/SubscriberExceptionEvent;

    iget-object v1, p1, Lorg/greenrobot/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    invoke-direct {v0, p0, p3, p2, v1}, Lorg/greenrobot/eventbus/SubscriberExceptionEvent;-><init>(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 536
    .restart local v0    # "exEvent":Lorg/greenrobot/eventbus/SubscriberExceptionEvent;
    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 539
    .end local v0    # "exEvent":Lorg/greenrobot/eventbus/SubscriberExceptionEvent;
    :cond_3
    :goto_0
    return-void
.end method

.method private isMainThread()Z
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->mainThreadSupport:Lorg/greenrobot/eventbus/MainThreadSupport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->mainThreadSupport:Lorg/greenrobot/eventbus/MainThreadSupport;

    invoke-interface {v0}, Lorg/greenrobot/eventbus/MainThreadSupport;->isMainThread()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private static lookupAllEventTypes(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 464
    .local p0, "eventClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/greenrobot/eventbus/EventBus;->eventTypesCache:Ljava/util/Map;

    monitor-enter v0

    .line 465
    :try_start_0
    sget-object v1, Lorg/greenrobot/eventbus/EventBus;->eventTypesCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 466
    .local v1, "eventTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-nez v1, :cond_1

    .line 467
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 468
    move-object v2, p0

    .line 469
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v2, :cond_0

    .line 470
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/greenrobot/eventbus/EventBus;->addInterfaces(Ljava/util/List;[Ljava/lang/Class;)V

    .line 472
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 474
    :cond_0
    sget-object v3, Lorg/greenrobot/eventbus/EventBus;->eventTypesCache:Ljava/util/Map;

    invoke-interface {v3, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    monitor-exit v0

    return-object v1

    .line 477
    .end local v1    # "eventTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private postSingleEvent(Ljava/lang/Object;Lorg/greenrobot/eventbus/EventBus$PostingThreadState;)V
    .locals 7
    .param p1, "event"    # Ljava/lang/Object;
    .param p2, "postingState"    # Lorg/greenrobot/eventbus/EventBus$PostingThreadState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    .line 377
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 378
    .local v0, "eventClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 379
    .local v1, "subscriptionFound":Z
    iget-boolean v2, p0, Lorg/greenrobot/eventbus/EventBus;->eventInheritance:Z

    if-eqz v2, :cond_1

    .line 380
    invoke-static {v0}, Lorg/greenrobot/eventbus/EventBus;->lookupAllEventTypes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 381
    .local v2, "eventTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 382
    .local v3, "countTypes":I
    const/4 v4, 0x0

    .line 382
    .local v4, "h":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 383
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 384
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2, v5}, Lorg/greenrobot/eventbus/EventBus;->postSingleEventForEventType(Ljava/lang/Object;Lorg/greenrobot/eventbus/EventBus$PostingThreadState;Ljava/lang/Class;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 382
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 386
    .end local v2    # "eventTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local v3    # "countTypes":I
    .end local v4    # "h":I
    :cond_0
    goto :goto_1

    .line 387
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lorg/greenrobot/eventbus/EventBus;->postSingleEventForEventType(Ljava/lang/Object;Lorg/greenrobot/eventbus/EventBus$PostingThreadState;Ljava/lang/Class;)Z

    move-result v1

    .line 389
    :goto_1
    if-nez v1, :cond_3

    .line 390
    iget-boolean v2, p0, Lorg/greenrobot/eventbus/EventBus;->logNoSubscriberMessages:Z

    if-eqz v2, :cond_2

    .line 391
    iget-object v2, p0, Lorg/greenrobot/eventbus/EventBus;->logger:Lorg/greenrobot/eventbus/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No subscribers registered for event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/greenrobot/eventbus/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 393
    :cond_2
    iget-boolean v2, p0, Lorg/greenrobot/eventbus/EventBus;->sendNoSubscriberEvent:Z

    if-eqz v2, :cond_3

    const-class v2, Lorg/greenrobot/eventbus/NoSubscriberEvent;

    if-eq v0, v2, :cond_3

    const-class v2, Lorg/greenrobot/eventbus/SubscriberExceptionEvent;

    if-eq v0, v2, :cond_3

    .line 395
    new-instance v2, Lorg/greenrobot/eventbus/NoSubscriberEvent;

    invoke-direct {v2, p0, p1}, Lorg/greenrobot/eventbus/NoSubscriberEvent;-><init>(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 398
    :cond_3
    return-void
.end method

.method private postSingleEventForEventType(Ljava/lang/Object;Lorg/greenrobot/eventbus/EventBus$PostingThreadState;Ljava/lang/Class;)Z
    .locals 7
    .param p1, "event"    # Ljava/lang/Object;
    .param p2, "postingState"    # Lorg/greenrobot/eventbus/EventBus$PostingThreadState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/greenrobot/eventbus/EventBus$PostingThreadState;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 402
    .local p3, "eventClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    .line 403
    :try_start_0
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 404
    .local v0, "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lorg/greenrobot/eventbus/Subscription;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 405
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 406
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/greenrobot/eventbus/Subscription;

    .line 407
    .local v3, "subscription":Lorg/greenrobot/eventbus/Subscription;
    iput-object p1, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->event:Ljava/lang/Object;

    .line 408
    iput-object v3, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->subscription:Lorg/greenrobot/eventbus/Subscription;

    .line 409
    move v4, v1

    .line 411
    .local v4, "aborted":Z
    const/4 v5, 0x0

    :try_start_1
    iget-boolean v6, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->isMainThread:Z

    invoke-direct {p0, v3, p1, v6}, Lorg/greenrobot/eventbus/EventBus;->postToSubscription(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;Z)V

    .line 412
    iget-boolean v6, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->canceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v6

    .line 414
    iput-object v5, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->event:Ljava/lang/Object;

    .line 415
    iput-object v5, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->subscription:Lorg/greenrobot/eventbus/Subscription;

    .line 416
    iput-boolean v1, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->canceled:Z

    .line 417
    nop

    .line 418
    if-eqz v4, :cond_0

    .line 419
    goto :goto_1

    .line 421
    .end local v3    # "subscription":Lorg/greenrobot/eventbus/Subscription;
    .end local v4    # "aborted":Z
    :cond_0
    goto :goto_0

    .line 414
    .restart local v3    # "subscription":Lorg/greenrobot/eventbus/Subscription;
    .restart local v4    # "aborted":Z
    :catchall_0
    move-exception v2

    iput-object v5, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->event:Ljava/lang/Object;

    .line 415
    iput-object v5, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->subscription:Lorg/greenrobot/eventbus/Subscription;

    .line 416
    iput-boolean v1, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->canceled:Z

    throw v2

    .line 422
    .end local v3    # "subscription":Lorg/greenrobot/eventbus/Subscription;
    .end local v4    # "aborted":Z
    :cond_1
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 424
    :cond_2
    return v1

    .line 404
    .end local v0    # "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lorg/greenrobot/eventbus/Subscription;>;"
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private postToSubscription(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "subscription"    # Lorg/greenrobot/eventbus/Subscription;
    .param p2, "event"    # Ljava/lang/Object;
    .param p3, "isMainThread"    # Z

    .line 428
    sget-object v0, Lorg/greenrobot/eventbus/EventBus$2;->$SwitchMap$org$greenrobot$eventbus$ThreadMode:[I

    iget-object v1, p1, Lorg/greenrobot/eventbus/Subscription;->subscriberMethod:Lorg/greenrobot/eventbus/SubscriberMethod;

    iget-object v1, v1, Lorg/greenrobot/eventbus/SubscriberMethod;->threadMode:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-virtual {v1}, Lorg/greenrobot/eventbus/ThreadMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 458
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown thread mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lorg/greenrobot/eventbus/Subscription;->subscriberMethod:Lorg/greenrobot/eventbus/SubscriberMethod;

    iget-object v2, v2, Lorg/greenrobot/eventbus/SubscriberMethod;->threadMode:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :pswitch_0
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->asyncPoster:Lorg/greenrobot/eventbus/AsyncPoster;

    invoke-virtual {v0, p1, p2}, Lorg/greenrobot/eventbus/AsyncPoster;->enqueue(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    .line 456
    goto :goto_0

    .line 448
    :pswitch_1
    if-eqz p3, :cond_0

    .line 449
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->backgroundPoster:Lorg/greenrobot/eventbus/BackgroundPoster;

    invoke-virtual {v0, p1, p2}, Lorg/greenrobot/eventbus/BackgroundPoster;->enqueue(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    goto :goto_0

    .line 451
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/eventbus/EventBus;->invokeSubscriber(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    .line 453
    goto :goto_0

    .line 440
    :pswitch_2
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->mainThreadPoster:Lorg/greenrobot/eventbus/Poster;

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->mainThreadPoster:Lorg/greenrobot/eventbus/Poster;

    invoke-interface {v0, p1, p2}, Lorg/greenrobot/eventbus/Poster;->enqueue(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    goto :goto_0

    .line 444
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/eventbus/EventBus;->invokeSubscriber(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    .line 446
    goto :goto_0

    .line 433
    :pswitch_3
    if-eqz p3, :cond_2

    .line 434
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/eventbus/EventBus;->invokeSubscriber(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    goto :goto_0

    .line 436
    :cond_2
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->mainThreadPoster:Lorg/greenrobot/eventbus/Poster;

    invoke-interface {v0, p1, p2}, Lorg/greenrobot/eventbus/Poster;->enqueue(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    .line 438
    goto :goto_0

    .line 430
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/eventbus/EventBus;->invokeSubscriber(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    .line 431
    nop

    .line 460
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private subscribe(Ljava/lang/Object;Lorg/greenrobot/eventbus/SubscriberMethod;)V
    .locals 10
    .param p1, "subscriber"    # Ljava/lang/Object;
    .param p2, "subscriberMethod"    # Lorg/greenrobot/eventbus/SubscriberMethod;

    .line 150
    iget-object v0, p2, Lorg/greenrobot/eventbus/SubscriberMethod;->eventType:Ljava/lang/Class;

    .line 151
    .local v0, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Lorg/greenrobot/eventbus/Subscription;

    invoke-direct {v1, p1, p2}, Lorg/greenrobot/eventbus/Subscription;-><init>(Ljava/lang/Object;Lorg/greenrobot/eventbus/SubscriberMethod;)V

    .line 152
    .local v1, "newSubscription":Lorg/greenrobot/eventbus/Subscription;
    iget-object v2, p0, Lorg/greenrobot/eventbus/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 153
    .local v2, "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lorg/greenrobot/eventbus/Subscription;>;"
    if-nez v2, :cond_0

    .line 154
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    move-object v2, v3

    .line 155
    iget-object v3, p0, Lorg/greenrobot/eventbus/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    new-instance v3, Lorg/greenrobot/eventbus/EventBusException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Subscriber "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " already registered to event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/greenrobot/eventbus/EventBusException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 163
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    .line 164
    .local v3, "size":I
    const/4 v4, 0x0

    .line 164
    .local v4, "i":I
    :goto_1
    if-gt v4, v3, :cond_4

    .line 165
    if-eq v4, v3, :cond_3

    iget v5, p2, Lorg/greenrobot/eventbus/SubscriberMethod;->priority:I

    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/greenrobot/eventbus/Subscription;

    iget-object v6, v6, Lorg/greenrobot/eventbus/Subscription;->subscriberMethod:Lorg/greenrobot/eventbus/SubscriberMethod;

    iget v6, v6, Lorg/greenrobot/eventbus/SubscriberMethod;->priority:I

    if-le v5, v6, :cond_2

    goto :goto_2

    .line 164
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 166
    :cond_3
    :goto_2
    invoke-virtual {v2, v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 167
    nop

    .line 171
    .end local v4    # "i":I
    :cond_4
    iget-object v4, p0, Lorg/greenrobot/eventbus/EventBus;->typesBySubscriber:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 172
    .local v4, "subscribedEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-nez v4, :cond_5

    .line 173
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v5

    .line 174
    iget-object v5, p0, Lorg/greenrobot/eventbus/EventBus;->typesBySubscriber:Ljava/util/Map;

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_5
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iget-boolean v5, p2, Lorg/greenrobot/eventbus/SubscriberMethod;->sticky:Z

    if-eqz v5, :cond_9

    .line 179
    iget-boolean v5, p0, Lorg/greenrobot/eventbus/EventBus;->eventInheritance:Z

    if-eqz v5, :cond_8

    .line 184
    iget-object v5, p0, Lorg/greenrobot/eventbus/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 185
    .local v5, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/Object;>;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 186
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    .line 187
    .local v8, "candidateEventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 188
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 189
    .local v9, "stickyEvent":Ljava/lang/Object;
    invoke-direct {p0, v1, v9}, Lorg/greenrobot/eventbus/EventBus;->checkPostStickyEventToSubscription(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    .line 191
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    .end local v8    # "candidateEventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "stickyEvent":Ljava/lang/Object;
    :cond_6
    goto :goto_3

    .line 192
    .end local v5    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/Object;>;>;"
    :cond_7
    goto :goto_4

    .line 193
    :cond_8
    iget-object v5, p0, Lorg/greenrobot/eventbus/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 194
    .local v5, "stickyEvent":Ljava/lang/Object;
    invoke-direct {p0, v1, v5}, Lorg/greenrobot/eventbus/EventBus;->checkPostStickyEventToSubscription(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    .line 197
    .end local v5    # "stickyEvent":Ljava/lang/Object;
    :cond_9
    :goto_4
    return-void
.end method

.method private unsubscribeByEventType(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 6
    .param p1, "subscriber"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 223
    .local p2, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 224
    .local v0, "subscriptions":Ljava/util/List;, "Ljava/util/List<Lorg/greenrobot/eventbus/Subscription;>;"
    if-eqz v0, :cond_1

    .line 225
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 226
    .local v1, "size":I
    const/4 v2, 0x0

    move v3, v1

    const/4 v1, 0x0

    .line 226
    .local v1, "i":I
    .local v3, "size":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 227
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/greenrobot/eventbus/Subscription;

    .line 228
    .local v4, "subscription":Lorg/greenrobot/eventbus/Subscription;
    iget-object v5, v4, Lorg/greenrobot/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    if-ne v5, p1, :cond_0

    .line 229
    iput-boolean v2, v4, Lorg/greenrobot/eventbus/Subscription;->active:Z

    .line 230
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 231
    add-int/lit8 v1, v1, -0x1

    .line 232
    add-int/lit8 v3, v3, -0x1

    .line 226
    .end local v4    # "subscription":Lorg/greenrobot/eventbus/Subscription;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_1
    return-void
.end method


# virtual methods
.method public cancelEventDelivery(Ljava/lang/Object;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/Object;

    .line 282
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->currentPostingThreadState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;

    .line 283
    .local v0, "postingState":Lorg/greenrobot/eventbus/EventBus$PostingThreadState;
    iget-boolean v1, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->isPosting:Z

    if-nez v1, :cond_0

    .line 284
    new-instance v1, Lorg/greenrobot/eventbus/EventBusException;

    const-string v2, "This method may only be called from inside event handling methods on the posting thread"

    invoke-direct {v1, v2}, Lorg/greenrobot/eventbus/EventBusException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    :cond_0
    if-nez p1, :cond_1

    .line 287
    new-instance v1, Lorg/greenrobot/eventbus/EventBusException;

    const-string v2, "Event may not be null"

    invoke-direct {v1, v2}, Lorg/greenrobot/eventbus/EventBusException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_1
    iget-object v1, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->event:Ljava/lang/Object;

    if-eq v1, p1, :cond_2

    .line 289
    new-instance v1, Lorg/greenrobot/eventbus/EventBusException;

    const-string v2, "Only the currently handled event may be aborted"

    invoke-direct {v1, v2}, Lorg/greenrobot/eventbus/EventBusException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 290
    :cond_2
    iget-object v1, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->subscription:Lorg/greenrobot/eventbus/Subscription;

    iget-object v1, v1, Lorg/greenrobot/eventbus/Subscription;->subscriberMethod:Lorg/greenrobot/eventbus/SubscriberMethod;

    iget-object v1, v1, Lorg/greenrobot/eventbus/SubscriberMethod;->threadMode:Lorg/greenrobot/eventbus/ThreadMode;

    sget-object v2, Lorg/greenrobot/eventbus/ThreadMode;->POSTING:Lorg/greenrobot/eventbus/ThreadMode;

    if-eq v1, v2, :cond_3

    .line 291
    new-instance v1, Lorg/greenrobot/eventbus/EventBusException;

    const-string v2, " event handlers may only abort the incoming event"

    invoke-direct {v1, v2}, Lorg/greenrobot/eventbus/EventBusException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 294
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->canceled:Z

    .line 295
    return-void
.end method

.method getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 552
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getLogger()Lorg/greenrobot/eventbus/Logger;
    .locals 1

    .line 559
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->logger:Lorg/greenrobot/eventbus/Logger;

    return-object v0
.end method

.method public getStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 315
    .local p1, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->stickyEvents:Ljava/util/Map;

    monitor-enter v0

    .line 316
    :try_start_0
    iget-object v1, p0, Lorg/greenrobot/eventbus/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 317
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasSubscriberForEvent(Ljava/lang/Class;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 359
    .local p1, "eventClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lorg/greenrobot/eventbus/EventBus;->lookupAllEventTypes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 360
    .local v0, "eventTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 361
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 362
    .local v2, "countTypes":I
    const/4 v3, 0x0

    .line 362
    .local v3, "h":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 363
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 365
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    .line 366
    :try_start_0
    iget-object v5, p0, Lorg/greenrobot/eventbus/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 367
    .local v5, "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lorg/greenrobot/eventbus/Subscription;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 369
    const/4 v1, 0x1

    return v1

    .line 362
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lorg/greenrobot/eventbus/Subscription;>;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 367
    .restart local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 373
    .end local v2    # "countTypes":I
    .end local v3    # "h":I
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    return v1
.end method

.method invokeSubscriber(Lorg/greenrobot/eventbus/PendingPost;)V
    .locals 3
    .param p1, "pendingPost"    # Lorg/greenrobot/eventbus/PendingPost;

    .line 497
    iget-object v0, p1, Lorg/greenrobot/eventbus/PendingPost;->event:Ljava/lang/Object;

    .line 498
    .local v0, "event":Ljava/lang/Object;
    iget-object v1, p1, Lorg/greenrobot/eventbus/PendingPost;->subscription:Lorg/greenrobot/eventbus/Subscription;

    .line 499
    .local v1, "subscription":Lorg/greenrobot/eventbus/Subscription;
    invoke-static {p1}, Lorg/greenrobot/eventbus/PendingPost;->releasePendingPost(Lorg/greenrobot/eventbus/PendingPost;)V

    .line 500
    iget-boolean v2, v1, Lorg/greenrobot/eventbus/Subscription;->active:Z

    if-eqz v2, :cond_0

    .line 501
    invoke-virtual {p0, v1, v0}, Lorg/greenrobot/eventbus/EventBus;->invokeSubscriber(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    .line 503
    :cond_0
    return-void
.end method

.method invokeSubscriber(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V
    .locals 4
    .param p1, "subscription"    # Lorg/greenrobot/eventbus/Subscription;
    .param p2, "event"    # Ljava/lang/Object;

    .line 507
    :try_start_0
    iget-object v0, p1, Lorg/greenrobot/eventbus/Subscription;->subscriberMethod:Lorg/greenrobot/eventbus/SubscriberMethod;

    iget-object v0, v0, Lorg/greenrobot/eventbus/SubscriberMethod;->method:Ljava/lang/reflect/Method;

    iget-object v1, p1, Lorg/greenrobot/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 510
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 508
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 509
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lorg/greenrobot/eventbus/EventBus;->handleSubscriberException(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 512
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_0
    nop

    .line 513
    return-void
.end method

.method public declared-synchronized isRegistered(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "subscriber"    # Ljava/lang/Object;

    monitor-enter p0

    .line 218
    :try_start_0
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->typesBySubscriber:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 218
    .end local p1    # "subscriber":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public post(Ljava/lang/Object;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/Object;

    .line 253
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->currentPostingThreadState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;

    .line 254
    .local v0, "postingState":Lorg/greenrobot/eventbus/EventBus$PostingThreadState;
    iget-object v1, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->eventQueue:Ljava/util/List;

    .line 255
    .local v1, "eventQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    iget-boolean v2, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->isPosting:Z

    if-nez v2, :cond_2

    .line 258
    invoke-direct {p0}, Lorg/greenrobot/eventbus/EventBus;->isMainThread()Z

    move-result v2

    iput-boolean v2, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->isMainThread:Z

    .line 259
    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->isPosting:Z

    .line 260
    iget-boolean v2, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->canceled:Z

    if-eqz v2, :cond_0

    .line 261
    new-instance v2, Lorg/greenrobot/eventbus/EventBusException;

    const-string v3, "Internal error. Abort state was not reset"

    invoke-direct {v2, v3}, Lorg/greenrobot/eventbus/EventBusException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 264
    :cond_0
    :goto_0
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 265
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lorg/greenrobot/eventbus/EventBus;->postSingleEvent(Ljava/lang/Object;Lorg/greenrobot/eventbus/EventBus$PostingThreadState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 268
    :cond_1
    iput-boolean v2, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->isPosting:Z

    .line 269
    iput-boolean v2, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->isMainThread:Z

    .line 270
    goto :goto_1

    .line 268
    :catchall_0
    move-exception v3

    iput-boolean v2, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->isPosting:Z

    .line 269
    iput-boolean v2, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->isMainThread:Z

    throw v3

    .line 272
    :cond_2
    :goto_1
    return-void
.end method

.method public postSticky(Ljava/lang/Object;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/Object;

    .line 302
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->stickyEvents:Ljava/util/Map;

    monitor-enter v0

    .line 303
    :try_start_0
    iget-object v1, p0, Lorg/greenrobot/eventbus/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 307
    return-void

    .line 304
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public register(Ljava/lang/Object;)V
    .locals 4
    .param p1, "subscriber"    # Ljava/lang/Object;

    .line 139
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 140
    .local v0, "subscriberClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lorg/greenrobot/eventbus/EventBus;->subscriberMethodFinder:Lorg/greenrobot/eventbus/SubscriberMethodFinder;

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->findSubscriberMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 141
    .local v1, "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lorg/greenrobot/eventbus/SubscriberMethod;>;"
    monitor-enter p0

    .line 142
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/greenrobot/eventbus/SubscriberMethod;

    .line 143
    .local v3, "subscriberMethod":Lorg/greenrobot/eventbus/SubscriberMethod;
    invoke-direct {p0, p1, v3}, Lorg/greenrobot/eventbus/EventBus;->subscribe(Ljava/lang/Object;Lorg/greenrobot/eventbus/SubscriberMethod;)V

    .line 144
    .end local v3    # "subscriberMethod":Lorg/greenrobot/eventbus/SubscriberMethod;
    goto :goto_0

    .line 145
    :cond_0
    monitor-exit p0

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeAllStickyEvents()V
    .locals 2

    .line 353
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->stickyEvents:Ljava/util/Map;

    monitor-enter v0

    .line 354
    :try_start_0
    iget-object v1, p0, Lorg/greenrobot/eventbus/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 355
    monitor-exit v0

    .line 356
    return-void

    .line 355
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 326
    .local p1, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->stickyEvents:Ljava/util/Map;

    monitor-enter v0

    .line 327
    :try_start_0
    iget-object v1, p0, Lorg/greenrobot/eventbus/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 328
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeStickyEvent(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "event"    # Ljava/lang/Object;

    .line 337
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->stickyEvents:Ljava/util/Map;

    monitor-enter v0

    .line 338
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 339
    .local v1, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lorg/greenrobot/eventbus/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 340
    .local v2, "existingEvent":Ljava/lang/Object;
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 341
    iget-object v3, p0, Lorg/greenrobot/eventbus/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const/4 v3, 0x1

    monitor-exit v0

    return v3

    .line 344
    :cond_0
    const/4 v3, 0x0

    monitor-exit v0

    return v3

    .line 346
    .end local v1    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "existingEvent":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventBus[indexCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/greenrobot/eventbus/EventBus;->indexCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eventInheritance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/greenrobot/eventbus/EventBus;->eventInheritance:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized unregister(Ljava/lang/Object;)V
    .locals 5
    .param p1, "subscriber"    # Ljava/lang/Object;

    monitor-enter p0

    .line 240
    :try_start_0
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->typesBySubscriber:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 241
    .local v0, "subscribedTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-eqz v0, :cond_1

    .line 242
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 243
    .local v2, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, v2}, Lorg/greenrobot/eventbus/EventBus;->unsubscribeByEventType(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 244
    .end local v2    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 245
    :cond_0
    iget-object v1, p0, Lorg/greenrobot/eventbus/EventBus;->typesBySubscriber:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 247
    :cond_1
    iget-object v1, p0, Lorg/greenrobot/eventbus/EventBus;->logger:Lorg/greenrobot/eventbus/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Subscriber to unregister was not registered before: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/greenrobot/eventbus/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :goto_1
    monitor-exit p0

    return-void

    .line 239
    .end local v0    # "subscribedTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local p1    # "subscriber":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
