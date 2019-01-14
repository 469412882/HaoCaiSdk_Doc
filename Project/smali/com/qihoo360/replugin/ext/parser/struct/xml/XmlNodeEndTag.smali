.class public Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeEndTag;
.super Ljava/lang/Object;
.source "XmlNodeEndTag.java"


# instance fields
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
.method public getName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeEndTag;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeEndTag;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeEndTag;->name:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setNamespace(Ljava/lang/String;)V
    .locals 0
    .param p1, "namespace"    # Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeEndTag;->namespace:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v1, p0, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeEndTag;->namespace:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeEndTag;->namespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeEndTag;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
