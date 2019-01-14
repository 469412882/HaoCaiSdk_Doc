.class public Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceEndTag;
.super Ljava/lang/Object;
.source "XmlNamespaceEndTag.java"


# instance fields
.field private prefix:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceEndTag;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceEndTag;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceEndTag;->prefix:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceEndTag;->uri:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceEndTag;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceEndTag;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
