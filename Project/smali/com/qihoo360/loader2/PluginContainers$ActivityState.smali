.class final Lcom/qihoo360/loader2/PluginContainers$ActivityState;
.super Ljava/lang/Object;
.source "PluginContainers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/loader2/PluginContainers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActivityState"
.end annotation


# instance fields
.field activity:Ljava/lang/String;

.field final container:Ljava/lang/String;

.field plugin:Ljava/lang/String;

.field final refs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field state:I

.field timestamp:J


# direct methods
.method public constructor <init>(Lcom/qihoo360/loader2/PluginContainers$ActivityState;)V
    .locals 2
    .param p1, "state"    # Lcom/qihoo360/loader2/PluginContainers$ActivityState;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iget-object v0, p1, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->container:Ljava/lang/String;

    iput-object v0, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->container:Ljava/lang/String;

    .line 156
    iget v0, p1, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->state:I

    iput v0, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->state:I

    .line 157
    iget-object v0, p1, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->plugin:Ljava/lang/String;

    iput-object v0, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->plugin:Ljava/lang/String;

    .line 158
    iget-object v0, p1, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->activity:Ljava/lang/String;

    iput-object v0, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->activity:Ljava/lang/String;

    .line 159
    iget-wide v0, p1, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->timestamp:J

    iput-wide v0, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->timestamp:J

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->refs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->refs:Ljava/util/ArrayList;

    .line 161
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "container"    # Ljava/lang/String;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->container:Ljava/lang/String;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->refs:Ljava/util/ArrayList;

    .line 152
    return-void
.end method

.method static synthetic access$100(Lcom/qihoo360/loader2/PluginContainers$ActivityState;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J

    .line 135
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->restore(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$200(Lcom/qihoo360/loader2/PluginContainers$ActivityState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->occupy(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/qihoo360/loader2/PluginContainers$ActivityState;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->isTarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/qihoo360/loader2/PluginContainers$ActivityState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qihoo360/loader2/PluginContainers$ActivityState;

    .line 135
    invoke-direct {p0}, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->hasRef()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/qihoo360/loader2/PluginContainers$ActivityState;)V
    .locals 0
    .param p0, "x0"    # Lcom/qihoo360/loader2/PluginContainers$ActivityState;

    .line 135
    invoke-direct {p0}, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->recycle()V

    return-void
.end method

.method static synthetic access$600(Lcom/qihoo360/loader2/PluginContainers$ActivityState;)V
    .locals 0
    .param p0, "x0"    # Lcom/qihoo360/loader2/PluginContainers$ActivityState;

    .line 135
    invoke-direct {p0}, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->finishRefs()V

    return-void
.end method

.method static synthetic access$700(Lcom/qihoo360/loader2/PluginContainers$ActivityState;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/app/Activity;

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->create(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$800(Lcom/qihoo360/loader2/PluginContainers$ActivityState;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qihoo360/loader2/PluginContainers$ActivityState;
    .param p1, "x1"    # Landroid/app/Activity;

    .line 135
    invoke-direct {p0, p1}, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->removeRef(Landroid/app/Activity;)V

    return-void
.end method

.method private final addRef(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 292
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 293
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 294
    return-void

    .line 296
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    :cond_0
    goto :goto_0

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->refs:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    return-void
.end method

.method private final cleanRefs()V
    .locals 5

    .line 281
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 283
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 284
    const-string v2, "ws001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PACM: clean refs: exist a="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    :cond_0
    goto :goto_0

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 289
    return-void
.end method

.method private final create(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 3
    .param p1, "plugin"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .line 236
    iget v0, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->state:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    iget v0, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->state:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    iget v0, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->state:I

    if-nez v0, :cond_2

    .line 255
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_1

    .line 256
    const-string v0, "ws001"

    const-string v1, "PACM: create: relaunch activity: blank"

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_1
    return-void

    .line 260
    :cond_2
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_3

    .line 261
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PACM: create: invalid s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->state:I

    invoke-static {v2}, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->toName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " e=registered c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->container:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_3
    return-void

    .line 237
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->plugin:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 238
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_5

    .line 239
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PACM: create: invalid plugin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " this.plugin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->plugin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_5
    return-void

    .line 243
    :cond_6
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->activity:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 244
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_7

    .line 245
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PACM: create: invalid a="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " this.a="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->activity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_7
    return-void

    .line 249
    :cond_8
    iget v0, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->state:I

    if-ne v0, v1, :cond_9

    .line 250
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_9

    .line 251
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PACM: create: relaunch activity: history: container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->container:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " plugin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_9
    invoke-direct {p0, p2}, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->addRef(Landroid/app/Activity;)V

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->timestamp:J

    .line 268
    return-void
.end method

.method private final finishRefs()V
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 312
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 313
    .local v2, "a":Landroid/app/Activity;
    if-eqz v2, :cond_0

    .line 314
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 316
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    .end local v2    # "a":Landroid/app/Activity;
    :cond_0
    goto :goto_0

    .line 317
    :cond_1
    return-void
.end method

.method private final hasRef()Z
    .locals 4

    .line 271
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 271
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 272
    iget-object v2, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->refs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 273
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 274
    iget-object v3, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->refs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 271
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 277
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private final isTarget(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "plugin"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->plugin:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->activity:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x1

    return v0

    .line 191
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final occupy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "plugin"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;

    .line 195
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->state:I

    .line 203
    iput-object p1, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->plugin:Ljava/lang/String;

    .line 204
    iput-object p2, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->activity:Ljava/lang/String;

    .line 205
    invoke-direct {p0}, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->cleanRefs()V

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->timestamp:J

    .line 209
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->plugin:Ljava/lang/String;

    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->activity:Ljava/lang/String;

    iget-object v2, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->container:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/qihoo360/loader2/PluginContainers;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void

    .line 196
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_2

    .line 197
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PACM: occupy: invalid s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->state:I

    invoke-static {v2}, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->toName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " plugin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_2
    return-void
.end method

.method private final recycle()V
    .locals 2

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->state:I

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->plugin:Ljava/lang/String;

    .line 229
    iput-object v0, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->activity:Ljava/lang/String;

    .line 230
    invoke-direct {p0}, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->cleanRefs()V

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->timestamp:J

    .line 232
    return-void
.end method

.method private final removeRef(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 301
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 301
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 302
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->refs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 303
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 304
    iget-object v2, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->refs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 305
    goto :goto_1

    .line 301
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 308
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method private final restore(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "plugin"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;
    .param p3, "timestamp"    # J

    .line 213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->state:I

    .line 220
    iput-object p1, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->plugin:Ljava/lang/String;

    .line 221
    iput-object p2, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->activity:Ljava/lang/String;

    .line 222
    invoke-direct {p0}, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->cleanRefs()V

    .line 223
    iput-wide p3, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->timestamp:J

    .line 224
    return-void

    .line 214
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_2

    .line 215
    const-string v0, "ws001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PACM: restore: invalid s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->state:I

    invoke-static {v2}, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->toName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " plugin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_2
    return-void
.end method

.method static final toName(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 176
    packed-switch p0, :pswitch_data_0

    .line 184
    const-string v0, "unknown"

    return-object v0

    .line 182
    :pswitch_0
    const-string v0, "restored"

    return-object v0

    .line 180
    :pswitch_1
    const-string v0, "occupied"

    return-object v0

    .line 178
    :pswitch_2
    const-string v0, "none"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method final forwardSelf(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 4
    .param p1, "activity1"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 322
    :try_start_0
    new-instance v0, Lcom/qihoo360/loader2/PluginIntent;

    invoke-direct {v0, p2}, Lcom/qihoo360/loader2/PluginIntent;-><init>(Landroid/content/Intent;)V

    .line 323
    .local v0, "ii":Lcom/qihoo360/loader2/PluginIntent;
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->plugin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qihoo360/loader2/PluginIntent;->setPlugin(Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->activity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qihoo360/loader2/PluginIntent;->setActivity(Ljava/lang/String;)V

    .line 325
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Lcom/qihoo360/loader2/PluginIntent;->setProcess(I)V

    .line 326
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->container:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qihoo360/loader2/PluginIntent;->setContainer(Ljava/lang/String;)V

    .line 328
    const-string v1, "compatible"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 330
    new-instance v1, Landroid/content/ComponentName;

    invoke-static {}, Lcom/qihoo360/replugin/base/IPC;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->container:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 332
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    .end local v0    # "ii":Lcom/qihoo360/loader2/PluginIntent;
    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "f.a fs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 165
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->state:I

    invoke-static {v1}, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->toName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " plugin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->plugin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "p":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " activity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->activity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "a":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->refs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "sz":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ActivityState {container="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qihoo360/loader2/PluginContainers$ActivityState;->container:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 172
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "p":Ljava/lang/String;
    .end local v2    # "a":Ljava/lang/String;
    .end local v3    # "sz":Ljava/lang/String;
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
