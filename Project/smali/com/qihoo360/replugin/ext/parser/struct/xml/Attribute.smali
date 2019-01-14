.class public Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;
.super Ljava/lang/Object;
.source "Attribute.java"


# instance fields
.field private name:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field private rawValue:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getRawValue()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;->rawValue:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;->name:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setNamespace(Ljava/lang/String;)V
    .locals 0
    .param p1, "namespace"    # Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;->namespace:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setRawValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "rawValue"    # Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;->rawValue:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;->value:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attribute{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", namespace=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;->namespace:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
