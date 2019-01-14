.class Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$1;
.super Landroid/view/animation/Animation;
.source "MaterialProgressDrawable.java"


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

    .line 362
    iput-object p1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$1;->this$0:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;

    iput-object p2, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$1;->val$ring:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 9
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 365
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$1;->this$0:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;

    iget-boolean v0, v0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->mFinishing:Z

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$1;->this$0:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;

    iget-object v1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$1;->val$ring:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-static {v0, p1, v1}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->access$000(Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;FLco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;)V

    goto :goto_0

    .line 370
    :cond_0
    iget-object v0, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$1;->this$0:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;

    iget-object v1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$1;->val$ring:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-static {v0, v1}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->access$100(Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;)F

    move-result v0

    .line 371
    .local v0, "minProgressArc":F
    iget-object v1, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$1;->val$ring:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v1

    .line 372
    .local v1, "startingEndTrim":F
    iget-object v2, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$1;->val$ring:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v2}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v2

    .line 373
    .local v2, "startingTrim":F
    iget-object v3, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$1;->val$ring:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v3}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v3

    .line 375
    .local v3, "startingRotation":F
    iget-object v4, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$1;->this$0:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;

    iget-object v5, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$1;->val$ring:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-static {v4, p1, v5}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->access$200(Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;FLco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;)V

    .line 379
    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v5, p1, v4

    const v6, 0x3f4ccccd    # 0.8f

    if-gtz v5, :cond_1

    .line 383
    div-float v5, p1, v4

    .line 385
    .local v5, "scaledTime":F
    sub-float v7, v6, v0

    .line 386
    invoke-static {}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->access$300()Landroid/view/animation/Interpolator;

    move-result-object v8

    .line 387
    invoke-interface {v8, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v8

    mul-float v7, v7, v8

    add-float/2addr v7, v2

    .line 388
    .local v7, "startTrim":F
    iget-object v8, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$1;->val$ring:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v8, v7}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 393
    .end local v5    # "scaledTime":F
    .end local v7    # "startTrim":F
    :cond_1
    cmpl-float v5, p1, v4

    if-lez v5, :cond_2

    .line 397
    sub-float/2addr v6, v0

    .line 398
    .local v6, "minArc":F
    sub-float v5, p1, v4

    div-float/2addr v5, v4

    .line 400
    .restart local v5    # "scaledTime":F
    nop

    .line 401
    invoke-static {}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->access$300()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    mul-float v4, v4, v6

    add-float/2addr v4, v1

    .line 402
    .local v4, "endTrim":F
    iget-object v7, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$1;->val$ring:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v7, v4}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 405
    .end local v4    # "endTrim":F
    .end local v5    # "scaledTime":F
    .end local v6    # "minArc":F
    :cond_2
    const/high16 v4, 0x3e800000    # 0.25f

    mul-float v4, v4, p1

    add-float/2addr v4, v3

    .line 406
    .local v4, "rotation":F
    iget-object v5, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$1;->val$ring:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v5, v4}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 408
    const/high16 v5, 0x43580000    # 216.0f

    mul-float v5, v5, p1

    const/high16 v6, 0x44870000    # 1080.0f

    iget-object v7, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$1;->this$0:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;

    .line 409
    invoke-static {v7}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->access$400(Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;)F

    move-result v7

    const/high16 v8, 0x40a00000    # 5.0f

    div-float/2addr v7, v8

    mul-float v7, v7, v6

    add-float/2addr v5, v7

    .line 410
    .local v5, "groupRotation":F
    iget-object v6, p0, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable$1;->this$0:Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;

    invoke-virtual {v6, v5}, Lco/bxvip/refresh/header/progresslayout/MaterialProgressDrawable;->setRotation(F)V

    .line 412
    .end local v0    # "minProgressArc":F
    .end local v1    # "startingEndTrim":F
    .end local v2    # "startingTrim":F
    .end local v3    # "startingRotation":F
    .end local v4    # "rotation":F
    .end local v5    # "groupRotation":F
    :goto_0
    return-void
.end method
