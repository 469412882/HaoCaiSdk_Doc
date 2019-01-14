.class final Lcom/qihoo360/loader2/alc/ActivityController$2;
.super Ljava/lang/Object;
.source "ActivityController.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qihoo360/loader2/alc/ActivityController;->install4x(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 181
    const-string v0, "onActivityCreated"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 182
    array-length v0, p3

    if-lez v0, :cond_6

    aget-object v0, p3, v1

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_6

    .line 183
    aget-object v0, p3, v1

    check-cast v0, Landroid/app/Activity;

    .line 184
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 185
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    invoke-static {}, Lcom/qihoo360/loader2/alc/ActivityController;->access$300()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_0

    .line 187
    const-string v2, "ws000"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityCreated: a="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " total="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qihoo360/loader2/alc/ActivityController;->access$300()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    :cond_0
    goto/16 :goto_1

    .line 190
    :cond_1
    const-string v0, "onActivityDestroyed"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 191
    array-length v0, p3

    if-lez v0, :cond_6

    aget-object v0, p3, v1

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_6

    .line 192
    aget-object v0, p3, v1

    check-cast v0, Landroid/app/Activity;

    .line 193
    .restart local v0    # "activity":Landroid/app/Activity;
    invoke-static {}, Lcom/qihoo360/loader2/alc/ActivityController;->access$300()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 193
    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_4

    .line 194
    invoke-static {}, Lcom/qihoo360/loader2/alc/ActivityController;->access$300()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 195
    .local v2, "a":Landroid/app/Activity;
    if-eq v2, v0, :cond_2

    if-nez v2, :cond_3

    .line 196
    :cond_2
    invoke-static {}, Lcom/qihoo360/loader2/alc/ActivityController;->access$300()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 193
    .end local v2    # "a":Landroid/app/Activity;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 199
    .end local v1    # "index":I
    :cond_4
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_5

    .line 200
    const-string v1, "ws000"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityDestroyed: a="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " total="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qihoo360/loader2/alc/ActivityController;->access$300()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_5
    invoke-static {}, Lcom/qihoo360/loader2/alc/ActivityController;->access$200()Lcom/qihoo360/loader2/alc/ActivityController$IActivityUpdate;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 203
    invoke-static {}, Lcom/qihoo360/loader2/alc/ActivityController;->access$200()Lcom/qihoo360/loader2/alc/ActivityController$IActivityUpdate;

    move-result-object v1

    invoke-interface {v1}, Lcom/qihoo360/loader2/alc/ActivityController$IActivityUpdate;->handleActivityUpdate()V

    .line 207
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_6
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method
