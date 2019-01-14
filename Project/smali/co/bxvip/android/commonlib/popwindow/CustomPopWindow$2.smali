.class Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$2;
.super Ljava/lang/Object;
.source "CustomPopWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 193
    iput-object p1, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$2;->this$0:Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 195
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 196
    .local v0, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 197
    .local v1, "y":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    if-ltz v0, :cond_0

    iget-object v2, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$2;->this$0:Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;

    invoke-static {v2}, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->access$100(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;)I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    iget-object v2, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$2;->this$0:Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;

    invoke-static {v2}, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->access$200(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;)I

    move-result v2

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    const-string v2, "CustomPopWindow"

    const-string v4, "out side "

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v2, "CustomPopWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$2;->this$0:Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;

    invoke-static {v5}, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->access$000(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;)Landroid/widget/PopupWindow;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$2;->this$0:Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;

    invoke-static {v5}, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->access$000(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;)Landroid/widget/PopupWindow;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " x:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " y  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return v3

    .line 198
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    .line 199
    const-string v2, "CustomPopWindow"

    const-string v4, "out side ..."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return v3

    .line 202
    :cond_2
    const/4 v2, 0x0

    return v2
.end method
