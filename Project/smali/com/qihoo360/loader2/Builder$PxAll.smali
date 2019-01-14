.class final Lcom/qihoo360/loader2/Builder$PxAll;
.super Ljava/lang/Object;
.source "Builder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/loader2/Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PxAll"
.end annotation


# instance fields
.field private final all:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qihoo360/replugin/model/PluginInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final builtins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qihoo360/replugin/model/PluginInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final normals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qihoo360/replugin/model/PluginInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final others:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/qihoo360/replugin/model/PluginInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final v5:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qihoo360/replugin/model/PluginInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/loader2/Builder$PxAll;->builtins:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/loader2/Builder$PxAll;->v5:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/loader2/Builder$PxAll;->normals:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/loader2/Builder$PxAll;->others:Ljava/util/HashSet;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/loader2/Builder$PxAll;->all:Ljava/util/ArrayList;

    return-void
.end method

.method private final getBuiltin(Ljava/lang/String;)Lcom/qihoo360/replugin/model/PluginInfo;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/qihoo360/loader2/Builder$PxAll;->builtins:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/replugin/model/PluginInfo;

    .line 121
    .local v1, "pi":Lcom/qihoo360/replugin/model/PluginInfo;
    invoke-virtual {v1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    return-object v1

    .line 124
    .end local v1    # "pi":Lcom/qihoo360/replugin/model/PluginInfo;
    :cond_0
    goto :goto_0

    .line 125
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private final getV5(Ljava/lang/String;)Lcom/qihoo360/replugin/model/PluginInfo;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/qihoo360/loader2/Builder$PxAll;->v5:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/replugin/model/PluginInfo;

    .line 134
    .local v1, "pi":Lcom/qihoo360/replugin/model/PluginInfo;
    invoke-virtual {v1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    return-object v1

    .line 137
    .end local v1    # "pi":Lcom/qihoo360/replugin/model/PluginInfo;
    :cond_0
    goto :goto_0

    .line 138
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private final hasOlder(Ljava/util/ArrayList;Lcom/qihoo360/replugin/model/PluginInfo;)Z
    .locals 4
    .param p2, "info"    # Lcom/qihoo360/replugin/model/PluginInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/qihoo360/replugin/model/PluginInfo;",
            ">;",
            "Lcom/qihoo360/replugin/model/PluginInfo;",
            ")Z"
        }
    .end annotation

    .line 105
    .local p1, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qihoo360/replugin/model/PluginInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qihoo360/replugin/model/PluginInfo;

    .line 106
    .local v1, "pi":Lcom/qihoo360/replugin/model/PluginInfo;
    invoke-virtual {v1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    sget-object v2, Lcom/qihoo360/replugin/model/PluginInfo;->VERSION_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v2, v1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_0

    .line 108
    const/4 v0, 0x1

    return v0

    .line 111
    .end local v1    # "pi":Lcom/qihoo360/replugin/model/PluginInfo;
    :cond_0
    goto :goto_0

    .line 112
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final insert(Ljava/util/ArrayList;Lcom/qihoo360/replugin/model/PluginInfo;Z)Z
    .locals 6
    .param p2, "info"    # Lcom/qihoo360/replugin/model/PluginInfo;
    .param p3, "replace"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/qihoo360/replugin/model/PluginInfo;",
            ">;",
            "Lcom/qihoo360/replugin/model/PluginInfo;",
            "Z)Z"
        }
    .end annotation

    .line 79
    .local p1, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qihoo360/replugin/model/PluginInfo;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 79
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    .line 80
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qihoo360/replugin/model/PluginInfo;

    .line 82
    .local v2, "pi":Lcom/qihoo360/replugin/model/PluginInfo;
    invoke-virtual {v2}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 84
    if-eqz p3, :cond_0

    .line 85
    sget-object v4, Lcom/qihoo360/replugin/model/PluginInfo;->VERSION_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v4, v2, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_1

    .line 86
    return v0

    .line 89
    :cond_0
    sget-object v4, Lcom/qihoo360/replugin/model/PluginInfo;->VERSION_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v4, v2, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_1

    .line 90
    return v0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/qihoo360/loader2/Builder$PxAll;->others:Ljava/util/HashSet;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {p1, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 96
    return v3

    .line 79
    .end local v2    # "pi":Lcom/qihoo360/replugin/model/PluginInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    return v3
.end method


# virtual methods
.method final addBuiltin(Lcom/qihoo360/replugin/model/PluginInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 159
    iget-object v0, p0, Lcom/qihoo360/loader2/Builder$PxAll;->builtins:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/qihoo360/loader2/Builder$PxAll;->insert(Ljava/util/ArrayList;Lcom/qihoo360/replugin/model/PluginInfo;Z)Z

    .line 160
    iget-object v0, p0, Lcom/qihoo360/loader2/Builder$PxAll;->all:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, v1}, Lcom/qihoo360/loader2/Builder$PxAll;->insert(Ljava/util/ArrayList;Lcom/qihoo360/replugin/model/PluginInfo;Z)Z

    .line 161
    return-void
.end method

.method final addNormal(Lcom/qihoo360/replugin/model/PluginInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 178
    const/4 v0, 0x0

    .line 180
    .local v0, "pi":Lcom/qihoo360/replugin/model/PluginInfo;
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qihoo360/loader2/Builder$PxAll;->getBuiltin(Ljava/lang/String;)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v1

    move-object v0, v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersionValue()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersionValue()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 181
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_1

    .line 182
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "builtin plugin: normal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qihoo360/loader2/Builder$PxAll;->getV5(Ljava/lang/String;)Lcom/qihoo360/replugin/model/PluginInfo;

    move-result-object v1

    move-object v0, v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersionValue()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersionValue()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 185
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_1

    .line 186
    const-string v1, "ws001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "v5 plugin: normal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/qihoo360/loader2/Builder$PxAll;->normals:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lcom/qihoo360/loader2/Builder$PxAll;->insert(Ljava/util/ArrayList;Lcom/qihoo360/replugin/model/PluginInfo;Z)Z

    .line 194
    return-void

    .line 189
    :cond_2
    iget-object v1, p0, Lcom/qihoo360/loader2/Builder$PxAll;->others:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 190
    return-void
.end method

.method final addV5(Lcom/qihoo360/replugin/model/PluginInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 167
    iget-object v0, p0, Lcom/qihoo360/loader2/Builder$PxAll;->all:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/qihoo360/loader2/Builder$PxAll;->insert(Ljava/util/ArrayList;Lcom/qihoo360/replugin/model/PluginInfo;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/loader2/Builder$PxAll;->v5:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, v1}, Lcom/qihoo360/loader2/Builder$PxAll;->insert(Ljava/util/ArrayList;Lcom/qihoo360/replugin/model/PluginInfo;Z)Z

    .line 171
    return-void
.end method

.method final getOthers()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/qihoo360/replugin/model/PluginInfo;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/qihoo360/loader2/Builder$PxAll;->others:Ljava/util/HashSet;

    return-object v0
.end method

.method final getPlugins()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/qihoo360/replugin/model/PluginInfo;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/qihoo360/loader2/Builder$PxAll;->all:Ljava/util/ArrayList;

    return-object v0
.end method
