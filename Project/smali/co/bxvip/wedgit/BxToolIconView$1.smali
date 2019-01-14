.class Lco/bxvip/wedgit/BxToolIconView$1;
.super Ljava/lang/Object;
.source "BxToolIconView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/wedgit/BxToolIconView;->startProgressRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/bxvip/wedgit/BxToolIconView;


# direct methods
.method constructor <init>(Lco/bxvip/wedgit/BxToolIconView;)V
    .locals 0
    .param p1, "this$0"    # Lco/bxvip/wedgit/BxToolIconView;

    .line 356
    iput-object p1, p0, Lco/bxvip/wedgit/BxToolIconView$1;->this$0:Lco/bxvip/wedgit/BxToolIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 359
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView$1;->this$0:Lco/bxvip/wedgit/BxToolIconView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lco/bxvip/wedgit/BxToolIconView;->access$002(Lco/bxvip/wedgit/BxToolIconView;I)I

    .line 360
    iget-object v0, p0, Lco/bxvip/wedgit/BxToolIconView$1;->this$0:Lco/bxvip/wedgit/BxToolIconView;

    invoke-virtual {v0}, Lco/bxvip/wedgit/BxToolIconView;->invalidate()V

    .line 361
    return-void
.end method
