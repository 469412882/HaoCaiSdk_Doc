.class Lcom/qihoo360/replugin/ext/parser/struct/ResourceValue$StringResourceValue;
.super Lcom/qihoo360/replugin/ext/parser/struct/ResourceValue;
.source "ResourceValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/replugin/ext/parser/struct/ResourceValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringResourceValue"
.end annotation


# instance fields
.field private final stringPool:Lcom/qihoo360/replugin/ext/parser/struct/StringPool;


# direct methods
.method private constructor <init>(ILcom/qihoo360/replugin/ext/parser/struct/StringPool;)V
    .locals 0
    .param p1, "value"    # I
    .param p2, "stringPool"    # Lcom/qihoo360/replugin/ext/parser/struct/StringPool;

    .line 56
    invoke-direct {p0, p1}, Lcom/qihoo360/replugin/ext/parser/struct/ResourceValue;-><init>(I)V

    .line 57
    iput-object p2, p0, Lcom/qihoo360/replugin/ext/parser/struct/ResourceValue$StringResourceValue;->stringPool:Lcom/qihoo360/replugin/ext/parser/struct/StringPool;

    .line 58
    return-void
.end method

.method synthetic constructor <init>(ILcom/qihoo360/replugin/ext/parser/struct/StringPool;Lcom/qihoo360/replugin/ext/parser/struct/ResourceValue$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/qihoo360/replugin/ext/parser/struct/StringPool;
    .param p3, "x2"    # Lcom/qihoo360/replugin/ext/parser/struct/ResourceValue$1;

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/qihoo360/replugin/ext/parser/struct/ResourceValue$StringResourceValue;-><init>(ILcom/qihoo360/replugin/ext/parser/struct/StringPool;)V

    return-void
.end method


# virtual methods
.method public toStringValue()Ljava/lang/String;
    .locals 2

    .line 62
    iget v0, p0, Lcom/qihoo360/replugin/ext/parser/struct/ResourceValue$StringResourceValue;->value:I

    if-ltz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/qihoo360/replugin/ext/parser/struct/ResourceValue$StringResourceValue;->stringPool:Lcom/qihoo360/replugin/ext/parser/struct/StringPool;

    iget v1, p0, Lcom/qihoo360/replugin/ext/parser/struct/ResourceValue$StringResourceValue;->value:I

    invoke-virtual {v0, v1}, Lcom/qihoo360/replugin/ext/parser/struct/StringPool;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 65
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
