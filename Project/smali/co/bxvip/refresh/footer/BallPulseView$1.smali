.class Lco/bxvip/refresh/footer/BallPulseView$1;
.super Ljava/lang/Object;
.source "BallPulseView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/refresh/footer/BallPulseView;->createAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/bxvip/refresh/footer/BallPulseView;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lco/bxvip/refresh/footer/BallPulseView;I)V
    .locals 0
    .param p1, "this$0"    # Lco/bxvip/refresh/footer/BallPulseView;

    .line 146
    iput-object p1, p0, Lco/bxvip/refresh/footer/BallPulseView$1;->this$0:Lco/bxvip/refresh/footer/BallPulseView;

    iput p2, p0, Lco/bxvip/refresh/footer/BallPulseView$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 149
    iget-object v0, p0, Lco/bxvip/refresh/footer/BallPulseView$1;->this$0:Lco/bxvip/refresh/footer/BallPulseView;

    invoke-static {v0}, Lco/bxvip/refresh/footer/BallPulseView;->access$000(Lco/bxvip/refresh/footer/BallPulseView;)[F

    move-result-object v0

    iget v1, p0, Lco/bxvip/refresh/footer/BallPulseView$1;->val$index:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    .line 150
    iget-object v0, p0, Lco/bxvip/refresh/footer/BallPulseView$1;->this$0:Lco/bxvip/refresh/footer/BallPulseView;

    invoke-virtual {v0}, Lco/bxvip/refresh/footer/BallPulseView;->postInvalidate()V

    .line 151
    return-void
.end method
