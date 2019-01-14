.class public Lorg/greenrobot/eventbus/util/ExceptionToResourceMapping;
.super Ljava/lang/Object;
.source "ExceptionToResourceMapping.java"


# instance fields
.field public final throwableToMsgIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/eventbus/util/ExceptionToResourceMapping;->throwableToMsgIdMap:Ljava/util/Map;

    .line 38
    return-void
.end method


# virtual methods
.method public addMapping(Ljava/lang/Class;I)Lorg/greenrobot/eventbus/util/ExceptionToResourceMapping;
    .locals 2
    .param p2, "msgId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;I)",
            "Lorg/greenrobot/eventbus/util/ExceptionToResourceMapping;"
        }
    .end annotation

    .line 84
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    iget-object v0, p0, Lorg/greenrobot/eventbus/util/ExceptionToResourceMapping;->throwableToMsgIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-object p0
.end method

.method public mapThrowable(Ljava/lang/Throwable;)Ljava/lang/Integer;
    .locals 6
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 42
    move-object v0, p1

    .line 43
    .local v0, "throwableToCheck":Ljava/lang/Throwable;
    const/16 v1, 0x14

    .line 46
    .local v1, "depthToGo":I
    :goto_0
    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/util/ExceptionToResourceMapping;->mapThrowableFlat(Ljava/lang/Throwable;)Ljava/lang/Integer;

    move-result-object v2

    .line 47
    .local v2, "resId":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 48
    return-object v2

    .line 50
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 51
    add-int/lit8 v1, v1, -0x1

    .line 52
    if-lez v1, :cond_2

    if-eq v0, p1, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    .line 58
    .end local v2    # "resId":Ljava/lang/Integer;
    :cond_1
    goto :goto_0

    .line 53
    .restart local v2    # "resId":Ljava/lang/Integer;
    :cond_2
    :goto_1
    const-string v3, "EventBus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No specific message resource ID found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v3, 0x0

    return-object v3
.end method

.method protected mapThrowableFlat(Ljava/lang/Throwable;)Ljava/lang/Integer;
    .locals 8
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 65
    .local v0, "throwableClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    iget-object v1, p0, Lorg/greenrobot/eventbus/util/ExceptionToResourceMapping;->throwableToMsgIdMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 66
    .local v1, "resId":Ljava/lang/Integer;
    if-nez v1, :cond_2

    .line 67
    const/4 v2, 0x0

    .line 68
    .local v2, "closestClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    iget-object v3, p0, Lorg/greenrobot/eventbus/util/ExceptionToResourceMapping;->throwableToMsgIdMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 69
    .local v3, "mappings":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Class<+Ljava/lang/Throwable;>;Ljava/lang/Integer;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 70
    .local v5, "mapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Ljava/lang/Throwable;>;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    .line 71
    .local v6, "candidate":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    invoke-virtual {v6, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 72
    if-eqz v2, :cond_0

    invoke-virtual {v2, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 73
    :cond_0
    move-object v2, v6

    .line 74
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v1, v7

    check-cast v1, Ljava/lang/Integer;

    .line 77
    .end local v5    # "mapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Ljava/lang/Throwable;>;Ljava/lang/Integer;>;"
    .end local v6    # "candidate":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    :cond_1
    goto :goto_0

    .line 80
    .end local v2    # "closestClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    .end local v3    # "mappings":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Class<+Ljava/lang/Throwable;>;Ljava/lang/Integer;>;>;"
    :cond_2
    return-object v1
.end method
