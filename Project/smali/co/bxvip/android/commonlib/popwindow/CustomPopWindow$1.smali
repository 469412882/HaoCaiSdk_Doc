.class Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$1;
.super Ljava/lang/Object;
.source "CustomPopWindow.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->build()Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;


# direct methods
.method constructor <init>(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;)V
    .locals 0
    .param p1, "this$0"    # Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;

    .line 183
    iput-object p1, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$1;->this$0:Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 185
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 186
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$1;->this$0:Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;

    invoke-static {v0}, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->access$000(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 187
    const/4 v0, 0x1

    return v0

    .line 189
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
