.class Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$2;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;

.field final synthetic val$ring:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;


# direct methods
.method constructor <init>(Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;)V
    .locals 0
    .param p1, "this$0"    # Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;

    .line 417
    iput-object p1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$2;->this$0:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;

    iput-object p2, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$2;->val$ring:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 427
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 431
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$2;->val$ring:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->storeOriginals()V

    .line 432
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$2;->val$ring:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->goToNextColor()V

    .line 433
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$2;->val$ring:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    iget-object v1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$2;->val$ring:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->getEndTrim()F

    move-result v1

    invoke-virtual {v0, v1}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 434
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$2;->this$0:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;

    iget-boolean v0, v0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mFinishing:Z

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$2;->this$0:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mFinishing:Z

    .line 438
    const-wide/16 v2, 0x534

    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 439
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$2;->val$ring:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    goto :goto_0

    .line 441
    :cond_0
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$2;->this$0:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;

    iget-object v1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$2;->this$0:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;

    invoke-static {v1}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->access$400(Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    rem-float/2addr v1, v2

    invoke-static {v0, v1}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->access$402(Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;F)F

    .line 443
    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 421
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$2;->this$0:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->access$402(Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;F)F

    .line 422
    return-void
.end method
