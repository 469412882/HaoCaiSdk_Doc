.class Lcom/qihoo360/replugin/component/service/server/ProcessBindRecord;
.super Ljava/lang/Object;
.source "ProcessBindRecord.java"


# instance fields
.field final client:Lcom/qihoo360/replugin/component/service/server/ProcessRecord;

.field final connections:Lcom/qihoo360/replugin/utils/basic/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qihoo360/replugin/utils/basic/ArraySet<",
            "Lcom/qihoo360/replugin/component/service/server/ConnectionBindRecord;",
            ">;"
        }
    .end annotation
.end field

.field final intent:Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;

.field final service:Lcom/qihoo360/replugin/component/service/server/ServiceRecord;


# direct methods
.method constructor <init>(Lcom/qihoo360/replugin/component/service/server/ServiceRecord;Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;Lcom/qihoo360/replugin/component/service/server/ProcessRecord;)V
    .locals 1
    .param p1, "service"    # Lcom/qihoo360/replugin/component/service/server/ServiceRecord;
    .param p2, "intent"    # Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;
    .param p3, "client"    # Lcom/qihoo360/replugin/component/service/server/ProcessRecord;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/qihoo360/replugin/utils/basic/ArraySet;

    invoke-direct {v0}, Lcom/qihoo360/replugin/utils/basic/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/replugin/component/service/server/ProcessBindRecord;->connections:Lcom/qihoo360/replugin/utils/basic/ArraySet;

    .line 44
    iput-object p1, p0, Lcom/qihoo360/replugin/component/service/server/ProcessBindRecord;->service:Lcom/qihoo360/replugin/component/service/server/ServiceRecord;

    .line 45
    iput-object p2, p0, Lcom/qihoo360/replugin/component/service/server/ProcessBindRecord;->intent:Lcom/qihoo360/replugin/component/service/server/IntentBindRecord;

    .line 46
    iput-object p3, p0, Lcom/qihoo360/replugin/component/service/server/ProcessBindRecord;->client:Lcom/qihoo360/replugin/component/service/server/ProcessRecord;

    .line 47
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProcessBindRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qihoo360/replugin/component/service/server/ProcessBindRecord;->service:Lcom/qihoo360/replugin/component/service/server/ServiceRecord;

    iget-object v1, v1, Lcom/qihoo360/replugin/component/service/server/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qihoo360/replugin/component/service/server/ProcessBindRecord;->client:Lcom/qihoo360/replugin/component/service/server/ProcessRecord;

    iget v1, v1, Lcom/qihoo360/replugin/component/service/server/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
