.class public Lcom/qihoo360/replugin/ext/parser/struct/xml/Attributes;
.super Ljava/lang/Object;
.source "Attributes.java"


# instance fields
.field private final attributes:[Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-array v0, p1, [Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;

    iput-object v0, p0, Lcom/qihoo360/replugin/ext/parser/struct/xml/Attributes;->attributes:[Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;

    .line 40
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/struct/xml/Attributes;->attributes:[Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 48
    .local v3, "attribute":Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;
    invoke-virtual {v3}, Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    invoke-virtual {v3}, Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 47
    .end local v3    # "attribute":Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "b"    # Z

    .line 60
    invoke-virtual {p0, p1}, Lcom/qihoo360/replugin/ext/parser/struct/xml/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public getInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 65
    invoke-virtual {p0, p1}, Lcom/qihoo360/replugin/ext/parser/struct/xml/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 67
    const/4 v1, 0x0

    return-object v1

    .line 69
    :cond_0
    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 72
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 76
    invoke-virtual {p0, p1}, Lcom/qihoo360/replugin/ext/parser/struct/xml/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 78
    const/4 v1, 0x0

    return-object v1

    .line 80
    :cond_0
    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 83
    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public set(ILcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "attribute"    # Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;

    .line 43
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/struct/xml/Attributes;->attributes:[Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;

    aput-object p2, v0, p1

    .line 44
    return-void
.end method

.method public size()I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/struct/xml/Attributes;->attributes:[Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;

    array-length v0, v0

    return v0
.end method

.method public value()[Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/struct/xml/Attributes;->attributes:[Lcom/qihoo360/replugin/ext/parser/struct/xml/Attribute;

    return-object v0
.end method
