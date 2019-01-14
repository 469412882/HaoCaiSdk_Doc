.class public Lco/bxvip/android/commonlib/loadingdialog/LoadingView;
.super Ljava/lang/Object;
.source "LoadingView.java"


# static fields
.field private static loadingLayoutView:Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static loadingView:Lco/bxvip/android/commonlib/dialog/BxDialog;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lco/bxvip/android/commonlib/loadingdialog/LoadingView;->loadingView:Lco/bxvip/android/commonlib/dialog/BxDialog;

    .line 19
    sput-object v0, Lco/bxvip/android/commonlib/loadingdialog/LoadingView;->loadingLayoutView:Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancel()V
    .locals 1

    .line 74
    sget-object v0, Lco/bxvip/android/commonlib/loadingdialog/LoadingView;->loadingLayoutView:Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lco/bxvip/android/commonlib/loadingdialog/LoadingView;->loadingLayoutView:Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;

    iget-object v0, v0, Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;->loadingBar:Lco/bxvip/wedgit/BxToolIconView;

    invoke-virtual {v0}, Lco/bxvip/wedgit/BxToolIconView;->stopProgressRun()V

    .line 77
    :cond_0
    sget-object v0, Lco/bxvip/android/commonlib/loadingdialog/LoadingView;->loadingView:Lco/bxvip/android/commonlib/dialog/BxDialog;

    if-eqz v0, :cond_1

    sget-object v0, Lco/bxvip/android/commonlib/loadingdialog/LoadingView;->loadingView:Lco/bxvip/android/commonlib/dialog/BxDialog;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/dialog/BxDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lco/bxvip/android/commonlib/loadingdialog/LoadingView;->loadingView:Lco/bxvip/android/commonlib/dialog/BxDialog;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/dialog/BxDialog;->dismissCancel()Lco/bxvip/android/commonlib/dialog/BxDialog;

    .line 78
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lco/bxvip/android/commonlib/loadingdialog/LoadingView;->loadingLayoutView:Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;

    .line 79
    sput-object v0, Lco/bxvip/android/commonlib/loadingdialog/LoadingView;->loadingView:Lco/bxvip/android/commonlib/dialog/BxDialog;

    .line 80
    return-void
.end method

.method public static dismiss()V
    .locals 1

    .line 56
    sget-object v0, Lco/bxvip/android/commonlib/loadingdialog/LoadingView;->loadingLayoutView:Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;

    if-eqz v0, :cond_0

    sget-object v0, Lco/bxvip/android/commonlib/loadingdialog/LoadingView;->loadingLayoutView:Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;

    iget-object v0, v0, Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;->loadingBar:Lco/bxvip/wedgit/BxToolIconView;

    invoke-virtual {v0}, Lco/bxvip/wedgit/BxToolIconView;->stopProgressRun()V

    .line 57
    :cond_0
    sget-object v0, Lco/bxvip/android/commonlib/loadingdialog/LoadingView;->loadingView:Lco/bxvip/android/commonlib/dialog/BxDialog;

    if-eqz v0, :cond_1

    sget-object v0, Lco/bxvip/android/commonlib/loadingdialog/LoadingView;->loadingView:Lco/bxvip/android/commonlib/dialog/BxDialog;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/dialog/BxDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lco/bxvip/android/commonlib/loadingdialog/LoadingView;->loadingView:Lco/bxvip/android/commonlib/dialog/BxDialog;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/dialog/BxDialog;->dismiss()V

    .line 58
    :cond_1
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 27
    new-instance v0, Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;

    invoke-direct {v0, p0}, Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;-><init>(Landroid/content/Context;)V

    sput-object v0, Lco/bxvip/android/commonlib/loadingdialog/LoadingView;->loadingLayoutView:Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;

    .line 30
    new-instance v0, Lco/bxvip/android/commonlib/dialog/BxDialog;

    invoke-direct {v0, p0}, Lco/bxvip/android/commonlib/dialog/BxDialog;-><init>(Landroid/content/Context;)V

    sget-object v1, Lco/bxvip/android/commonlib/loadingdialog/LoadingView;->loadingLayoutView:Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;

    invoke-virtual {v0, v1}, Lco/bxvip/android/commonlib/dialog/BxDialog;->loadLayout(Landroid/view/View;)Lco/bxvip/android/commonlib/dialog/BxDialog;

    move-result-object v0

    sput-object v0, Lco/bxvip/android/commonlib/loadingdialog/LoadingView;->loadingView:Lco/bxvip/android/commonlib/dialog/BxDialog;

    .line 31
    return-void
.end method

.method public static initForcibly(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 39
    new-instance v0, Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;

    invoke-direct {v0, p0}, Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;-><init>(Landroid/content/Context;)V

    sput-object v0, Lco/bxvip/android/commonlib/loadingdialog/LoadingView;->loadingLayoutView:Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;

    .line 41
    new-instance v0, Lco/bxvip/android/commonlib/dialog/BxDialog;

    invoke-direct {v0, p0}, Lco/bxvip/android/commonlib/dialog/BxDialog;-><init>(Landroid/content/Context;)V

    sget-object v1, Lco/bxvip/android/commonlib/loadingdialog/LoadingView;->loadingLayoutView:Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;

    invoke-virtual {v0, v1}, Lco/bxvip/android/commonlib/dialog/BxDialog;->loadLayout(Landroid/view/View;)Lco/bxvip/android/commonlib/dialog/BxDialog;

    move-result-object v0

    sput-object v0, Lco/bxvip/android/commonlib/loadingdialog/LoadingView;->loadingView:Lco/bxvip/android/commonlib/dialog/BxDialog;

    .line 42
    return-void
.end method

.method public static setKeyBackListener(Lco/bxvip/android/commonlib/dialog/BxDialog$OnclickListener;)V
    .locals 1
    .param p0, "OnclickListener"    # Lco/bxvip/android/commonlib/dialog/BxDialog$OnclickListener;

    .line 66
    sget-object v0, Lco/bxvip/android/commonlib/loadingdialog/LoadingView;->loadingView:Lco/bxvip/android/commonlib/dialog/BxDialog;

    invoke-virtual {v0, p0}, Lco/bxvip/android/commonlib/dialog/BxDialog;->setKeyCodeBack(Lco/bxvip/android/commonlib/dialog/BxDialog$OnclickListener;)Lco/bxvip/android/commonlib/dialog/BxDialog;

    .line 67
    return-void
.end method

.method public static show()V
    .locals 1

    .line 48
    sget-object v0, Lco/bxvip/android/commonlib/loadingdialog/LoadingView;->loadingLayoutView:Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;

    if-eqz v0, :cond_0

    sget-object v0, Lco/bxvip/android/commonlib/loadingdialog/LoadingView;->loadingLayoutView:Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;

    iget-object v0, v0, Lco/bxvip/android/commonlib/loadingdialog/LoadingViewLayout;->loadingBar:Lco/bxvip/wedgit/BxToolIconView;

    invoke-virtual {v0}, Lco/bxvip/wedgit/BxToolIconView;->startProgressRun()V

    .line 49
    :cond_0
    sget-object v0, Lco/bxvip/android/commonlib/loadingdialog/LoadingView;->loadingView:Lco/bxvip/android/commonlib/dialog/BxDialog;

    if-eqz v0, :cond_1

    sget-object v0, Lco/bxvip/android/commonlib/loadingdialog/LoadingView;->loadingView:Lco/bxvip/android/commonlib/dialog/BxDialog;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/dialog/BxDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lco/bxvip/android/commonlib/loadingdialog/LoadingView;->loadingView:Lco/bxvip/android/commonlib/dialog/BxDialog;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/dialog/BxDialog;->show()V

    .line 50
    :cond_1
    return-void
.end method
