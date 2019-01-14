.class Lco/bxvip/refresh/BxRefreshLayout$1;
.super Ljava/lang/Object;
.source "BxRefreshLayout.java"

# interfaces
.implements Lco/bxvip/refresh/OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/refresh/BxRefreshLayout;->initGestureDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/bxvip/refresh/BxRefreshLayout;


# direct methods
.method constructor <init>(Lco/bxvip/refresh/BxRefreshLayout;)V
    .locals 0
    .param p1, "this$0"    # Lco/bxvip/refresh/BxRefreshLayout;

    .line 227
    iput-object p1, p0, Lco/bxvip/refresh/BxRefreshLayout$1;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 230
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$1;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v0}, Lco/bxvip/refresh/BxRefreshLayout;->access$000(Lco/bxvip/refresh/BxRefreshLayout;)Lco/bxvip/refresh/processor/IDecorator;

    move-result-object v0

    invoke-interface {v0, p1}, Lco/bxvip/refresh/processor/IDecorator;->onFingerDown(Landroid/view/MotionEvent;)V

    .line 231
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 1
    .param p1, "downEvent"    # Landroid/view/MotionEvent;
    .param p2, "upEvent"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .line 245
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$1;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v0}, Lco/bxvip/refresh/BxRefreshLayout;->access$000(Lco/bxvip/refresh/BxRefreshLayout;)Lco/bxvip/refresh/processor/IDecorator;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lco/bxvip/refresh/processor/IDecorator;->onFingerFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 246
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 8
    .param p1, "downEvent"    # Landroid/view/MotionEvent;
    .param p2, "currentEvent"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 235
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$1;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v0}, Lco/bxvip/refresh/BxRefreshLayout;->access$000(Lco/bxvip/refresh/BxRefreshLayout;)Lco/bxvip/refresh/processor/IDecorator;

    move-result-object v1

    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$1;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v0}, Lco/bxvip/refresh/BxRefreshLayout;->access$100(Lco/bxvip/refresh/BxRefreshLayout;)F

    move-result v6

    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$1;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v0}, Lco/bxvip/refresh/BxRefreshLayout;->access$200(Lco/bxvip/refresh/BxRefreshLayout;)F

    move-result v7

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v7}, Lco/bxvip/refresh/processor/IDecorator;->onFingerScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFFF)V

    .line 236
    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;Z)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "isFling"    # Z

    .line 240
    iget-object v0, p0, Lco/bxvip/refresh/BxRefreshLayout$1;->this$0:Lco/bxvip/refresh/BxRefreshLayout;

    invoke-static {v0}, Lco/bxvip/refresh/BxRefreshLayout;->access$000(Lco/bxvip/refresh/BxRefreshLayout;)Lco/bxvip/refresh/processor/IDecorator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lco/bxvip/refresh/processor/IDecorator;->onFingerUp(Landroid/view/MotionEvent;Z)V

    .line 241
    return-void
.end method
