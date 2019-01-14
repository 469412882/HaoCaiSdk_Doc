.class public Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;
.super Ljava/lang/Object;
.source "XmlNamespaces.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XmlNamespace"
.end annotation


# instance fields
.field private prefix:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;->prefix:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;->uri:Ljava/lang/String;

    .line 97
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$1;

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;

    .line 90
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;->uri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;

    .line 90
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;->prefix:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 109
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 110
    return v0

    .line 113
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 117
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;

    .line 119
    .local v2, "namespace":Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;
    iget-object v3, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;->prefix:Ljava/lang/String;

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;->prefix:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 120
    return v1

    .line 122
    :cond_2
    iget-object v3, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;->uri:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, v2, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;->uri:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 123
    return v1

    .line 125
    :cond_3
    iget-object v3, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;->prefix:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;->prefix:Ljava/lang/String;

    iget-object v4, v2, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;->prefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 126
    return v1

    .line 128
    :cond_4
    iget-object v3, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;->uri:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;->uri:Ljava/lang/String;

    iget-object v4, v2, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;->uri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 129
    return v1

    .line 132
    :cond_5
    return v0

    .line 114
    .end local v2    # "namespace":Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;
    :cond_6
    :goto_0
    return v1
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 138
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/qihoo360/replugin/ext/parser/parser/XmlNamespaces$XmlNamespace;->uri:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 139
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method
