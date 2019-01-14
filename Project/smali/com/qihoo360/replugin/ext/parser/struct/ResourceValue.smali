.class public abstract Lcom/qihoo360/replugin/ext/parser/struct/ResourceValue;
.super Ljava/lang/Object;
.source "ResourceValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/replugin/ext/parser/struct/ResourceValue$RawValue;,
        Lcom/qihoo360/replugin/ext/parser/struct/ResourceValue$StringResourceValue;
    }
.end annotation


# instance fields
.field protected final value:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/qihoo360/replugin/ext/parser/struct/ResourceValue;->value:I

    .line 40
    return-void
.end method

.method public static raw(IS)Lcom/qihoo360/replugin/ext/parser/struct/ResourceValue;
    .locals 2
    .param p0, "value"    # I
    .param p1, "type"    # S

    .line 47
    new-instance v0, Lcom/qihoo360/replugin/ext/parser/struct/ResourceValue$RawValue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/qihoo360/replugin/ext/parser/struct/ResourceValue$RawValue;-><init>(ISLcom/qihoo360/replugin/ext/parser/struct/ResourceValue$1;)V

    return-object v0
.end method

.method public static string(ILcom/qihoo360/replugin/ext/parser/struct/StringPool;)Lcom/qihoo360/replugin/ext/parser/struct/ResourceValue;
    .locals 2
    .param p0, "value"    # I
    .param p1, "stringPool"    # Lcom/qihoo360/replugin/ext/parser/struct/StringPool;

    .line 43
    new-instance v0, Lcom/qihoo360/replugin/ext/parser/struct/ResourceValue$StringResourceValue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/qihoo360/replugin/ext/parser/struct/ResourceValue$StringResourceValue;-><init>(ILcom/qihoo360/replugin/ext/parser/struct/StringPool;Lcom/qihoo360/replugin/ext/parser/struct/ResourceValue$1;)V

    return-object v0
.end method


# virtual methods
.method public abstract toStringValue()Ljava/lang/String;
.end method
