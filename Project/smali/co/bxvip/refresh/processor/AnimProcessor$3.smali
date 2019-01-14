.class Lco/bxvip/refresh/processor/AnimProcessor$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/refresh/processor/AnimProcessor;->animBottomToLoad()V
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

    .line 191
    iput-object p1, p0, Lco/bxvip/refresh/processor/AnimProcessor$3;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 194
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$3;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lco/bxvip/refresh/processor/AnimProcessor;->access$402(Lco/bxvip/refresh/processor/AnimProcessor;Z)Z

    .line 196
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$3;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v0}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v0

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$3;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v0}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v0

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 200
    :cond_0
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$3;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v0}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->setLoadVisible(Z)V

    .line 201
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$3;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v0}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v0

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isEnableKeepIView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$3;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v0}, Lco/bxvip/refresh/processor/AnimProcessor;->access$500(Lco/bxvip/refresh/processor/AnimProcessor;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 203
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$3;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v0}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v0

    invoke-virtual {v0, v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->setLoadingMore(Z)V

    .line 204
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$3;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v0}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v0

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->onLoadMore()V

    .line 205
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$3;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v0, v1}, Lco/bxvip/refresh/processor/AnimProcessor;->access$502(Lco/bxvip/refresh/processor/AnimProcessor;Z)Z

    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$3;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v0}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v0

    invoke-virtual {v0, v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->setLoadingMore(Z)V

    .line 209
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor$3;->this$0:Lco/bxvip/refresh/processor/AnimProcessor;

    invoke-static {v0}, Lco/bxvip/refresh/processor/AnimProcessor;->access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    move-result-object v0

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->onLoadMore()V

    .line 211
    :cond_2
    :goto_0
    return-void
.end method
