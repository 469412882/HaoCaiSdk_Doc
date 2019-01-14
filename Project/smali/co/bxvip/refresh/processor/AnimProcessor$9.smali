.class Lco/bxvip/refresh/processor/AnimProcessor$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/refresh/processor/AnimProcessor;->animOverScrollBottom(FI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/bxvip/refresh/processor/AnimProcessor;

.field final synthetic val$overHeight:I

.field final synthetic val$time:I


# direct methods
.method constructor <init>(Lco/bxvip/refresh/processor/AnimProcessor;II)V
    .locals 0
    .param p1, "this$0"    # Lco/bxvip/refresh/processor/AnimProcessor;

    .line 373
    iput-object p1, p0, Lco/bxvip/refresh/processor/AnimProcessor$9;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    iput p2, p0, Lco/bxvip/refresh/processor/AnimProcessor$9;->val$overHeight:I

    iput p3, p0, Lco/bxvip/refresh/processor/AnimProcessor$9;->val$time:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 9
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 376
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$9;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v0}, Lco/bxvip/refresh/processor/AnimProcessor;->access$500(Lco/bxvip/refresh/processor/AnimProcessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$9;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v0}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v0

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isEnableKeepIView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$9;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v0}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v0

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->showLoadingWhenOverScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$9;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-virtual {v0}, Lco/bxvip/refresh/processor/AnimProcessor;->animBottomToLoad()V

    .line 378
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$9;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lco/bxvip/refresh/processor/AnimProcessor;->access$1402(Lco/bxvip/refresh/processor/AnimProcessor;Z)Z

    .line 379
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$9;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v0, v1}, Lco/bxvip/refresh/processor/AnimProcessor;->access$1502(Lco/bxvip/refresh/processor/AnimProcessor;Z)Z

    .line 380
    return-void

    .line 382
    :cond_0
    iget-object v2, p0, Lco/bxvip/refresh/processor/AnimProcessor$9;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    iget v3, p0, Lco/bxvip/refresh/processor/AnimProcessor$9;->val$overHeight:I

    const/4 v4, 0x0

    iget v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$9;->val$time:I

    mul-int/lit8 v0, v0, 0x2

    int-to-long v5, v0

    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$9;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v0}, Lco/bxvip/refresh/processor/AnimProcessor;->access$1600(Lco/bxvip/refresh/processor/AnimProcessor;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v7

    new-instance v8, Lco/bxvip/refresh/processor/AnimProcessor$9$1;

    invoke-direct {v8, p0}, Lco/bxvip/refresh/processor/AnimProcessor$9$1;-><init>(Lco/bxvip/refresh/processor/AnimProcessor$9;)V

    invoke-virtual/range {v2 .. v8}, Lco/bxvip/refresh/processor/AnimProcessor;->animLayoutByTime(IIJLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    .line 389
    return-void
.end method
