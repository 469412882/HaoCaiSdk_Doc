.class Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces;
.super Ljava/lang/Object;
.source "XmlNamespaces.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;
    }
.end annotation


# instance fields
.field private namespaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;",
            ">;"
        }
    .end annotation
.end field

.field private newNamespaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces;->namespaces:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces;->newNamespaces:Ljava/util/List;

    .line 50
    return-void
.end method


# virtual methods
.method public addNamespace(Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceStartTag;)V
    .locals 4
    .param p1, "tag"    # Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceStartTag;

    .line 53
    new-instance v0, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceStartTag;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceStartTag;->getUri()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$1;)V

    .line 54
    .local v0, "namespace":Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;
    iget-object v1, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces;->namespaces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v1, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces;->newNamespaces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public consumeNameSpaces()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces;->newNamespaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v0, "xmlNamespaces":Ljava/util/List;, "Ljava/util/List<Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;>;"
    iget-object v1, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces;->newNamespaces:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 80
    iget-object v1, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces;->newNamespaces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 81
    return-object v0

    .line 83
    .end local v0    # "xmlNamespaces":Ljava/util/List;, "Ljava/util/List<Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;>;"
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPrefixViaUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 66
    return-object v0

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces;->namespaces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;

    .line 69
    .local v2, "namespace":Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;
    invoke-static {v2}, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;->access$100(Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    invoke-static {v2}, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;->access$200(Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 72
    .end local v2    # "namespace":Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;
    :cond_1
    goto :goto_0

    .line 73
    :cond_2
    return-object v0
.end method

.method public removeNamespace(Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceEndTag;)V
    .locals 4
    .param p1, "tag"    # Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceEndTag;

    .line 59
    new-instance v0, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceEndTag;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qihoo360/replugin/ext/parser/struct/xml/XmlNamespaceEndTag;->getUri()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$1;)V

    .line 60
    .local v0, "namespace":Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;
    iget-object v1, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces;->namespaces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 61
    iget-object v1, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces;->newNamespaces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method
