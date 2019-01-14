.class Lcom/qihoo360/replugin/sdk/c/c$a;
.super Ljava/lang/Object;
.source "c.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/replugin/sdk/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:I

.field c:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    return-void
.end method

.method synthetic constructor <init>(Lcom/qihoo360/replugin/sdk/c/c$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qihoo360/replugin/sdk/c/c$1;

    .line 154
    invoke-direct {p0}, Lcom/qihoo360/replugin/sdk/c/c$a;-><init>()V

    return-void
.end method
