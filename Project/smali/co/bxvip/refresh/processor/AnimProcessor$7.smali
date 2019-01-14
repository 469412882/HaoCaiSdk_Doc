.class Lco/bxvip/refresh/processor/AnimProcessor$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/refresh/processor/AnimProcessor;->animBottomHideByVy(I)V
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

    .line 301
    iput-object p1, p0, Lco/bxvip/refresh/processor/AnimProcessor$7;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 304
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$7;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lco/bxvip/refresh/processor/AnimProcessor;->access$1002(Lco/bxvip/refresh/processor/AnimProcessor;Z)Z

    .line 305
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$7;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v0}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v0

    invoke-virtual {v0, v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->setLoadVisible(Z)V

    .line 306
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$7;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v0}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v0

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isEnableKeepIView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$7;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v0}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v0

    invoke-virtual {v0, v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->setLoadingMore(Z)V

    .line 308
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$7;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v0}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v0

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->onLoadMoreCanceled()V

    .line 309
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$7;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v0}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v0

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->resetBottomView()V

    .line 311
    :cond_0
    return-void
.end method
