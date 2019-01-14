.class Lcom/qihoo360/loader2/PluginIntent;
.super Ljava/lang/Object;
.source "PluginIntent.java"


# static fields
.field public static final EXTRA_ACTIVITY:Ljava/lang/String; = "activity:"

.field public static final EXTRA_CONTAINER:Ljava/lang/String; = "container:"

.field public static final EXTRA_COUNTER:Ljava/lang/String; = "counter:"

.field public static final EXTRA_PLUGIN:Ljava/lang/String; = "plugin:"

.field public static final EXTRA_PROCESS:Ljava/lang/String; = "process:"


# instance fields
.field private final mIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/qihoo360/loader2/PluginIntent;->mIntent:Landroid/content/Intent;

    .line 50
    return-void
.end method

.method private final getI(Ljava/lang/String;I)I
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .line 82
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginIntent;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 83
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 84
    const-string v1, ""

    .line 85
    .local v1, "v":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 86
    .local v3, "category":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 88
    goto :goto_1

    .line 90
    .end local v3    # "category":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 91
    :cond_1
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 93
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .local v2, "i":I
    return v2

    .line 95
    .end local v2    # "i":I
    :catch_0
    move-exception v2

    .line 97
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "ws001"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/qihoo360/replugin/helper/LogRelease;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .end local v1    # "v":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_2
    return p2
.end method

.method private final getS(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginIntent;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 66
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 67
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 68
    .local v2, "category":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 71
    .end local v2    # "category":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 73
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private final remove(Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginIntent;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 54
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 55
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 56
    .local v2, "category":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    iget-object v1, p0, Lcom/qihoo360/loader2/PluginIntent;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 58
    goto :goto_1

    .line 60
    .end local v2    # "category":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 62
    :cond_1
    :goto_1
    return-void
.end method

.method private final setI(Ljava/lang/String;I)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 106
    invoke-direct {p0, p1}, Lcom/qihoo360/loader2/PluginIntent;->remove(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginIntent;->mIntent:Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    return-void
.end method

.method private final setS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0, p1}, Lcom/qihoo360/loader2/PluginIntent;->remove(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginIntent;->mIntent:Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    return-void
.end method


# virtual methods
.method final getActivity()Ljava/lang/String;
    .locals 1

    .line 130
    const-string v0, "activity:"

    invoke-direct {p0, v0}, Lcom/qihoo360/loader2/PluginIntent;->getS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getContainer()Ljava/lang/String;
    .locals 1

    .line 146
    const-string v0, "container:"

    invoke-direct {p0, v0}, Lcom/qihoo360/loader2/PluginIntent;->getS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getCounter()I
    .locals 2

    .line 154
    const-string v0, "counter:"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/qihoo360/loader2/PluginIntent;->getI(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method final getOriginal()Ljava/lang/String;
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/qihoo360/loader2/PluginIntent;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 115
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 118
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method final getPlugin()Ljava/lang/String;
    .locals 1

    .line 122
    const-string v0, "plugin:"

    invoke-direct {p0, v0}, Lcom/qihoo360/loader2/PluginIntent;->getS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getProcess()I
    .locals 2

    .line 138
    const-string v0, "process:"

    const/high16 v1, -0x80000000

    invoke-direct {p0, v0, v1}, Lcom/qihoo360/loader2/PluginIntent;->getI(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method final setActivity(Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Ljava/lang/String;

    .line 134
    const-string v0, "activity:"

    invoke-direct {p0, v0, p1}, Lcom/qihoo360/loader2/PluginIntent;->setS(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method final setContainer(Ljava/lang/String;)V
    .locals 1
    .param p1, "container"    # Ljava/lang/String;

    .line 150
    const-string v0, "container:"

    invoke-direct {p0, v0, p1}, Lcom/qihoo360/loader2/PluginIntent;->setS(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method final setCounter(I)V
    .locals 1
    .param p1, "counter"    # I

    .line 158
    const-string v0, "counter:"

    invoke-direct {p0, v0, p1}, Lcom/qihoo360/loader2/PluginIntent;->setI(Ljava/lang/String;I)V

    .line 159
    return-void
.end method

.method final setPlugin(Ljava/lang/String;)V
    .locals 1
    .param p1, "plugin"    # Ljava/lang/String;

    .line 126
    const-string v0, "plugin:"

    invoke-direct {p0, v0, p1}, Lcom/qihoo360/loader2/PluginIntent;->setS(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method final setProcess(I)V
    .locals 1
    .param p1, "process"    # I

    .line 142
    const-string v0, "process:"

    invoke-direct {p0, v0, p1}, Lcom/qihoo360/loader2/PluginIntent;->setI(Ljava/lang/String;I)V

    .line 143
    return-void
.end method
