.class Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;
.super Ljava/lang/Object;
.source "IntentBindRecord.java"


# instance fields
.field final apps:Lcom/qihoo360/replugin/utils/basic/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qihoo360/replugin/utils/basic/ArrayMap<",
            "Lcom/qihoo360/replugin/component/service/server/ProcessRecord;",
            "Lcom/qihoo360/replugin/component/service/server/ProcessBindRecord;",
            ">;"
        }
    .end annotation
.end field

.field binder:Landroid/os/IBinder;

.field hasBound:Z

.field final intent:Landroid/content/Intent$FilterComparison;

.field final service:Lcom/qihoo360/replugin/component/service/server/ServiceRecord;

.field stringName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qihoo360/replugin/component/service/server/ServiceRecord;Landroid/content/Intent$FilterComparison;)V
    .locals 1
    .param p1, "service"    # Lcom/qihoo360/replugin/component/service/server/ServiceRecord;
    .param p2, "intent"    # Landroid/content/Intent$FilterComparison;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-direct {v0}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;->apps:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    .line 57
    iput-object p1, p0, Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;->service:Lcom/qihoo360/replugin/component/service/server/ServiceRecord;

    .line 58
    iput-object p2, p0, Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 59
    return-void
.end method


# virtual methods
.method collectFlags()I
    .locals 5

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "flags":I
    iget-object v1, p0, Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;->apps:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v1}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 63
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 64
    iget-object v2, p0, Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;->apps:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v2, v1}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qihoo360/replugin/component/service/server/ProcessBindRecord;

    iget-object v2, v2, Lcom/qihoo360/replugin/component/service/server/ProcessBindRecord;->connections:Lcom/qihoo360/replugin/utils/basic/ArraySet;

    .line 65
    .local v2, "connections":Lcom/qihoo360/replugin/utils/basic/ArraySet;, "Lcom/qihoo360/replugin/utils/basic/ArraySet<Lcom/qihoo360/replugin/component/service/server/ConnectionBindRecord;>;"
    invoke-virtual {v2}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 65
    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_0

    .line 66
    invoke-virtual {v2, v3}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qihoo360/replugin/component/service/server/ConnectionBindRecord;

    iget v4, v4, Lcom/qihoo360/replugin/component/service/server/ConnectionBindRecord;->flags:I

    or-int/2addr v0, v4

    .line 65
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 63
    .end local v2    # "connections":Lcom/qihoo360/replugin/utils/basic/ArraySet;, "Lcom/qihoo360/replugin/utils/basic/ArraySet<Lcom/qihoo360/replugin/component/service/server/ConnectionBindRecord;>;"
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 69
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;->stringName:Ljava/lang/String;

    return-object v0

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 78
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "IntentBindRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p0}, Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;->collectFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 82
    const-string v1, "CR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;->service:Lcom/qihoo360/replugin/component/service/server/ServiceRecord;

    iget-object v1, v1, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    iget-object v2, p0, Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    if-eqz v2, :cond_2

    .line 87
    iget-object v2, p0, Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v2}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    iget-object v1, p0, Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;->apps:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v1}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 92
    iget-object v1, p0, Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;->apps:Lcom/qihoo360/replugin/utils/basic/ArrayMap;

    invoke-virtual {v1}, Lcom/qihoo360/replugin/utils/basic/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_3
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;->stringName:Ljava/lang/String;

    .line 96
    iget-object v1, p0, Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;->stringName:Ljava/lang/String;

    return-object v1
.end method
