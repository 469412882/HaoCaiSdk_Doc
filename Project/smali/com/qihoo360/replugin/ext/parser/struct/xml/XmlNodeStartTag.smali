.class public Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeStartTag;
.super Ljava/lang/Object;
.source "XmlNodeStartTag.java"


# instance fields
.field private attributes:Lcom/qihoo360/replugin/ext/parser/struct/xml/Attributes;

.field private name:Ljava/lang/String;

.field private namespace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttributes()Lcom/qihoo360/replugin/ext/parser/struct/xml/Attributes;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeStartTag;->attributes:Lcom/qihoo360/replugin/ext/parser/struct/xml/Attributes;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeStartTag;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeStartTag;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public setAttributes(Lcom/qihoo360/replugin/ext/parser/struct/xml/Attributes;)V
    .locals 0
    .param p1, "attributes"    # Lcom/qihoo360/replugin/ext/parser/struct/xml/Attributes;

    .line 71
    iput-object p1, p0, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeStartTag;->attributes:Lcom/qihoo360/replugin/ext/parser/struct/xml/Attributes;

    .line 72
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeStartTag;->name:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setNamespace(Ljava/lang/String;)V
    .locals 0
    .param p1, "namespace"    # Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeStartTag;->namespace:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    iget-object v1, p0, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeStartTag;->namespace:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeStartTag;->namespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeStartTag;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
