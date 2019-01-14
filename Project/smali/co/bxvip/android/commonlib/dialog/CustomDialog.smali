.class public Lco/bxvip/android/commonlib/dialog/CustomDialog;
.super Landroid/app/AlertDialog;
.source "CustomDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;
    }
.end annotation


# instance fields
.field private cancelTouchout:Z

.field private height:I

.field private layoutResId:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

.field private mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private resStyle:I

.field private view:Landroid/view/View;

.field private width:I


# direct methods
.method private constructor <init>(Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;)V
    .locals 1
    .param p1, "builder"    # Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;

    .line 33
    const v0, 0x1030011

    invoke-direct {p0, p1, v0}, Lco/bxvip/android/commonlib/dialog/CustomDialog;-><init>(Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;I)V
    .locals 2
    .param p1, "builder"    # Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;
    .param p2, "themeResId"    # I

    .line 37
    invoke-static {p1}, Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;->access$000(Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lco/bxvip/android/commonlib/dialog/CustomDialog;->height:I

    .line 22
    iput v0, p0, Lco/bxvip/android/commonlib/dialog/CustomDialog;->width:I

    .line 23
    iput-boolean v0, p0, Lco/bxvip/android/commonlib/dialog/CustomDialog;->cancelTouchout:Z

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lco/bxvip/android/commonlib/dialog/CustomDialog;->layoutResId:I

    .line 26
    const/4 v1, 0x0

    iput-object v1, p0, Lco/bxvip/android/commonlib/dialog/CustomDialog;->view:Landroid/view/View;

    .line 27
    iput v0, p0, Lco/bxvip/android/commonlib/dialog/CustomDialog;->resStyle:I

    .line 30
    iput-object v1, p0, Lco/bxvip/android/commonlib/dialog/CustomDialog;->mViews:Landroid/util/SparseArray;

    .line 38
    invoke-static {p1}, Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;->access$100(Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;)I

    move-result v0

    iput v0, p0, Lco/bxvip/android/commonlib/dialog/CustomDialog;->height:I

    .line 39
    invoke-static {p1}, Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;->access$200(Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;)I

    move-result v0

    iput v0, p0, Lco/bxvip/android/commonlib/dialog/CustomDialog;->width:I

    .line 40
    invoke-static {p1}, Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;->access$300(Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lco/bxvip/android/commonlib/dialog/CustomDialog;->cancelTouchout:Z

    .line 41
    invoke-static {p1}, Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;->access$400(Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;)I

    move-result v0

    iput v0, p0, Lco/bxvip/android/commonlib/dialog/CustomDialog;->layoutResId:I

    .line 42
    invoke-static {p1}, Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;->access$500(Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/bxvip/android/commonlib/dialog/CustomDialog;->setView(Landroid/view/View;)V

    .line 43
    invoke-static {p1}, Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;->access$600(Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;)I

    move-result v0

    iput v0, p0, Lco/bxvip/android/commonlib/dialog/CustomDialog;->resStyle:I

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lco/bxvip/android/commonlib/dialog/CustomDialog;->mViews:Landroid/util/SparseArray;

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;Lco/bxvip/android/commonlib/dialog/CustomDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;
    .param p2, "x1"    # Lco/bxvip/android/commonlib/dialog/CustomDialog$1;

    .line 19
    invoke-direct {p0, p1}, Lco/bxvip/android/commonlib/dialog/CustomDialog;-><init>(Lco/bxvip/android/commonlib/dialog/CustomDialog$Builder;)V

    return-void
.end method


# virtual methods
.method public getView(I)Landroid/view/View;
    .locals 2
    .param p1, "viewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lco/bxvip/android/commonlib/dialog/CustomDialog;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 69
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0, p1}, Lco/bxvip/android/commonlib/dialog/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lco/bxvip/android/commonlib/dialog/CustomDialog;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    :cond_0
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 49
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 50
    iget v0, p0, Lco/bxvip/android/commonlib/dialog/CustomDialog;->layoutResId:I

    invoke-virtual {p0, v0}, Lco/bxvip/android/commonlib/dialog/CustomDialog;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lco/bxvip/android/commonlib/dialog/CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 52
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-nez v0, :cond_0

    .line 53
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    move-object v0, v1

    .line 55
    :cond_0
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 56
    iget v1, p0, Lco/bxvip/android/commonlib/dialog/CustomDialog;->height:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 57
    iget v1, p0, Lco/bxvip/android/commonlib/dialog/CustomDialog;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 58
    invoke-virtual {p0}, Lco/bxvip/android/commonlib/dialog/CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 59
    return-void
.end method
