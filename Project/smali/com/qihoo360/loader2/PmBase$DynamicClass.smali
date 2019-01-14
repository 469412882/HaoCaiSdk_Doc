.class Lcom/qihoo360/loader2/PmBase$DynamicClass;
.super Ljava/lang/Object;
.source "PmBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/loader2/PmBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DynamicClass"
.end annotation


# instance fields
.field className:Ljava/lang/String;

.field classType:Ljava/lang/String;

.field defClass:Ljava/lang/Class;

.field plugin:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qihoo360/loader2/PmBase$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qihoo360/loader2/PmBase$1;

    .line 179
    invoke-direct {p0}, Lcom/qihoo360/loader2/PmBase$DynamicClass;-><init>()V

    return-void
.end method
