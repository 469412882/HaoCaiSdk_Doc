.class public final Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;
.super Ljava/lang/Object;
.source "CustomDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/bxvip/android/commonlib/dialog/CustomDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private cancelTouchout:Z

.field private context:Landroid/content/Context;

.field private height:I

.field private layoutResId:I

.field private resStyle:I

.field private view:Landroid/view/View;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;->context:Landroid/content/Context;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;

    .line 76
    iget-object v0, p0, Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;)I
    .locals 1
    .param p0, "x0"    # Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;

    .line 76
    iget v0, p0, Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;->height:I

    return v0
.end method

.method static synthetic access$200(Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;)I
    .locals 1
    .param p0, "x0"    # Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;

    .line 76
    iget v0, p0, Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;->width:I

    return v0
.end method

.method static synthetic access$300(Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;

    .line 76
    iget-boolean v0, p0, Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;->cancelTouchout:Z

    return v0
.end method

.method static synthetic access$400(Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;)I
    .locals 1
    .param p0, "x0"    # Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;

    .line 76
    iget v0, p0, Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;->layoutResId:I

    return v0
.end method

.method static synthetic access$500(Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;

    .line 76
    iget-object v0, p0, Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;)I
    .locals 1
    .param p0, "x0"    # Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;

    .line 76
    iget v0, p0, Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;->resStyle:I

    return v0
.end method


# virtual methods
.method public build()Lco/bxvip/android/commonlib/dialog/CustomDialog;
    .locals 2

    .line 121
    new-instance v0, Lco/bxvip/android/commonlib/dialog/CustomDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lco/bxvip/android/commonlib/dialog/CustomDialog;-><init>(Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;Lco/bxvip/android/commonlib/dialog/CustomDialog$1;)V

    return-object v0
.end method

.method public setCancelTouchout(Z)Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;
    .locals 0
    .param p1, "val"    # Z

    .line 101
    iput-boolean p1, p0, Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;->cancelTouchout:Z

    .line 102
    return-object p0
.end method

.method public setHeight(I)Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;
    .locals 0
    .param p1, "val"    # I

    .line 91
    iput p1, p0, Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;->height:I

    .line 92
    return-object p0
.end method

.method public setLayoutResId(I)Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;
    .locals 0
    .param p1, "val"    # I

    .line 106
    iput p1, p0, Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;->layoutResId:I

    .line 107
    return-object p0
.end method

.method public setResStyle(I)Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;
    .locals 0
    .param p1, "val"    # I

    .line 116
    iput p1, p0, Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;->resStyle:I

    .line 117
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;
    .locals 0
    .param p1, "val"    # Landroid/view/View;

    .line 111
    iput-object p1, p0, Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;->view:Landroid/view/View;

    .line 112
    return-object p0
.end method

.method public setWidth(I)Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;
    .locals 0
    .param p1, "val"    # I

    .line 96
    iput p1, p0, Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;->width:I

    .line 97
    return-object p0
.end method
