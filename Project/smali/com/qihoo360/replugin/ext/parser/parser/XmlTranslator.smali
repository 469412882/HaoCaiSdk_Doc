.class public Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;
.super Ljava/lang/Object;
.source "XmlTranslator.java"

# interfaces
.implements Lcom/qihoo360/replugin/ext/parser/parser/XmlStreamer;


# instance fields
.field private isLastStartTag:Z

.field private namespaces:Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces;

.field private sb:Ljava/lang/StringBuilder;

.field private shift:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;->shift:I

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;->sb:Ljava/lang/StringBuilder;

    .line 51
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;->sb:Ljava/lang/StringBuilder;

    const-string v1, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    new-instance v0, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces;

    invoke-direct {v0}, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;->namespaces:Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces;

    .line 53
    return-void
.end method

.method private appendShift(I)V
    .locals 3
    .param p1, "shift"    # I

    .line 129
    const/4 v0, 0x0

    .line 129
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;->sb:Ljava/lang/StringBuilder;

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private onAttribute(Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;)V
    .locals 4
    .param p1, "attribute"    # Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;

    .line 88
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;->sb:Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;->namespaces:Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces;->getPrefixViaUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "namespace":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p1}, Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    :cond_1
    invoke-virtual {p1}, Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qihoo360/replugin/ext/parser/utils/xml/XmlEscaper;->escapeXml10(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "escapedFinalValue":Ljava/lang/String;
    iget-object v2, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    return-void
.end method


# virtual methods
.method public getXml()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onEndTag(Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeEndTag;)V
    .locals 2
    .param p1, "xmlNodeEndTag"    # Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeEndTag;

    .line 103
    iget v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;->shift:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;->shift:I

    .line 104
    iget-boolean v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;->isLastStartTag:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;->sb:Ljava/lang/StringBuilder;

    const-string v1, " />\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 107
    :cond_0
    iget v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;->shift:I

    invoke-direct {p0, v0}, Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;->appendShift(I)V

    .line 108
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;->sb:Ljava/lang/StringBuilder;

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p1}, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeEndTag;->getNamespace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeEndTag;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeEndTag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;->sb:Ljava/lang/StringBuilder;

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;->isLastStartTag:Z

    .line 116
    return-void
.end method

.method public onNamespaceEnd(Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceEndTag;)V
    .locals 1
    .param p1, "tag"    # Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceEndTag;

    .line 125
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;->namespaces:Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces;

    invoke-virtual {v0, p1}, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces;->removeNamespace(Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceEndTag;)V

    .line 126
    return-void
.end method

.method public onNamespaceStart(Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceStartTag;)V
    .locals 1
    .param p1, "tag"    # Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceStartTag;

    .line 120
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;->namespaces:Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces;

    invoke-virtual {v0, p1}, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces;->addNamespace(Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceStartTag;)V

    .line 121
    return-void
.end method

.method public onStartTag(Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeStartTag;)V
    .locals 5
    .param p1, "xmlNodeStartTag"    # Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeStartTag;

    .line 57
    iget-boolean v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;->isLastStartTag:Z

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;->sb:Ljava/lang/StringBuilder;

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :cond_0
    iget v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;->shift:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;->shift:I

    invoke-direct {p0, v0}, Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;->appendShift(I)V

    .line 61
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;->sb:Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p1}, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeStartTag;->getNamespace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;->namespaces:Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeStartTag;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces;->getPrefixViaUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "prefix":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 65
    iget-object v1, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeStartTag;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeStartTag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;->namespaces:Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces;

    invoke-virtual {v0}, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces;->consumeNameSpaces()Ljava/util/List;

    move-result-object v0

    .line 73
    .local v0, "nps":Ljava/util/List;, "Ljava/util/List<Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 74
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;

    .line 75
    .local v2, "np":Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;
    iget-object v3, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;->sb:Ljava/lang/StringBuilder;

    const-string v4, " xmlns:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v2}, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .end local v2    # "np":Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;
    goto :goto_1

    .line 80
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;->isLastStartTag:Z

    .line 82
    invoke-virtual {p1}, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNodeStartTag;->getAttributes()Lcom/qihoo360/replugin/ext/parser/struct/xml/Attributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qihoo360/replugin/ext/parser/struct/xml/Attributes;->value()[Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 83
    .local v4, "attribute":Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;
    invoke-direct {p0, v4}, Lcom/qihoo360/replugin/ext/parser/parser/XmlTranslator;->onAttribute(Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;)V

    .line 82
    .end local v4    # "attribute":Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 85
    :cond_4
    return-void
.end method
