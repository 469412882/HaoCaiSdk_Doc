.class Lco/bxvip/refresh/processor/AnimProcessor$12;
.super Ljava/lang/Object;
.source "AnimProcessor.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/bxvip/refresh/processor/AnimProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/bxvip/refresh/processor/AnimProcessor;


# direct methods
.method constructor <init>(Lco/bxvip/refresh/processor/AnimProcessor;)V
    .locals 0
    .param p1, "this$0"    # Lco/bxvip/refresh/processor/AnimProcessor;

    .line 429
    iput-object p1, p0, Lco/bxvip/refresh/processor/AnimProcessor$12;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 432
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 433
    .local v0, "height":I
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor$12;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v1}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v1

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isOverScrollTopShow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor$12;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v1}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v1

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 435
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor$12;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v1}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v1

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 438
    :cond_0
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor$12;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v1}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v1

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 439
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor$12;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v1}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v1

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 442
    :cond_1
    :goto_0
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor$12;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v1}, Lco/bxvip/refresh/processor/AnimProcessor;->access$200(Lco/bxvip/refresh/processor/AnimProcessor;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor$12;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v1}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v1

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isEnableKeepIView()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 443
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor$12;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    int-to-float v2, v0

    invoke-static {v1, v2}, Lco/bxvip/refresh/processor/AnimProcessor;->access$1700(Lco/bxvip/refresh/processor/AnimProcessor;F)V

    goto :goto_1

    .line 445
    :cond_2
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor$12;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v1}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v1

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 446
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor$12;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v1}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v1

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 447
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor$12;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v1}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v1

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 448
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor$12;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v1}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->onPullDownReleasing(F)V

    .line 451
    :goto_1
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor$12;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v1}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v1

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getTargetView()Landroid/view/View;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 452
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor$12;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v1, v0}, Lco/bxvip/refresh/processor/AnimProcessor;->access$1800(Lco/bxvip/refresh/processor/AnimProcessor;I)V

    .line 453
    return-void
.end method
