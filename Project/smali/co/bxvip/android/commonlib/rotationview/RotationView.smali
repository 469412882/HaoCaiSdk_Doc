.class public Lco/bxvip/android/commonlib/rotationview/RotationView;
.super Landroid/widget/ImageView;
.source "RotationView.java"


# instance fields
.field public animator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lco/bxvip/android/commonlib/rotationview/RotationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lco/bxvip/android/commonlib/rotationview/RotationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method


# virtual methods
.method public getAnimator()Landroid/animation/ObjectAnimator;
    .locals 1

    .line 18
    iget-object v0, p0, Lco/bxvip/android/commonlib/rotationview/RotationView;->animator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public setAnimator(Landroid/animation/ObjectAnimator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/ObjectAnimator;

    .line 22
    iput-object p1, p0, Lco/bxvip/android/commonlib/rotationview/RotationView;->animator:Landroid/animation/ObjectAnimator;

    .line 23
    return-void
.end method

.method public start()V
    .locals 4

    .line 41
    invoke-virtual {p0}, Lco/bxvip/android/commonlib/rotationview/RotationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 42
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 44
    iget-object v1, p0, Lco/bxvip/android/commonlib/rotationview/RotationView;->animator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lco/bxvip/android/commonlib/rotationview/RotationView;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 48
    :cond_0
    const-string v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lco/bxvip/android/commonlib/rotationview/RotationView;->animator:Landroid/animation/ObjectAnimator;

    .line 49
    iget-object v1, p0, Lco/bxvip/android/commonlib/rotationview/RotationView;->animator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 50
    iget-object v1, p0, Lco/bxvip/android/commonlib/rotationview/RotationView;->animator:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 51
    iget-object v1, p0, Lco/bxvip/android/commonlib/rotationview/RotationView;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 53
    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method
