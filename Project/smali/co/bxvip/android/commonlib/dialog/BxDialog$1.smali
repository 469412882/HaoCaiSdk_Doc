.class Lco/bxvip/android/commonlib/dialog/BxDialog$1;
.super Ljava/lang/Object;
.source "BxDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/android/commonlib/dialog/BxDialog;->setGCCanceledOnTouchOutside(Z)Lco/bxvip/android/commonlib/dialog/BxDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/bxvip/android/commonlib/dialog/BxDialog;


# direct methods
.method constructor <init>(Lco/bxvip/android/commonlib/dialog/BxDialog;)V
    .locals 0
    .param p1, "this$0"    # Lco/bxvip/android/commonlib/dialog/BxDialog;

    .line 159
    iput-object p1, p0, Lco/bxvip/android/commonlib/dialog/BxDialog$1;->this$0:Lco/bxvip/android/commonlib/dialog/BxDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 162
    iget-object v0, p0, Lco/bxvip/android/commonlib/dialog/BxDialog$1;->this$0:Lco/bxvip/android/commonlib/dialog/BxDialog;

    invoke-virtual {v0}, Lco/bxvip/android/commonlib/dialog/BxDialog;->dismiss()V

    .line 163
    iget-object v0, p0, Lco/bxvip/android/commonlib/dialog/BxDialog$1;->this$0:Lco/bxvip/android/commonlib/dialog/BxDialog;

    invoke-static {v0}, Lco/bxvip/android/commonlib/dialog/BxDialog;->access$000(Lco/bxvip/android/commonlib/dialog/BxDialog;)Lco/bxvip/android/commonlib/dialog/CanceledOnTouchOutsideInterf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lco/bxvip/android/commonlib/dialog/BxDialog$1;->this$0:Lco/bxvip/android/commonlib/dialog/BxDialog;

    invoke-static {v0}, Lco/bxvip/android/commonlib/dialog/BxDialog;->access$000(Lco/bxvip/android/commonlib/dialog/BxDialog;)Lco/bxvip/android/commonlib/dialog/CanceledOnTouchOutsideInterf;

    move-result-object v0

    invoke-interface {v0}, Lco/bxvip/android/commonlib/dialog/CanceledOnTouchOutsideInterf;->CanceledListener()V

    .line 166
    :cond_0
    return-void
.end method
