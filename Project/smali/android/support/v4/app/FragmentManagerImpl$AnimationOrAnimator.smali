.class Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
.super Ljava/lang/Object;
.source "FragmentManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationOrAnimator"
.end annotation


# instance fields
.field public final animation:Landroid/view/animation/Animation;

.field public final animator:Landroid/animation/Animator;


# direct methods
.method private constructor <init>(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 3308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3309
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    .line 3310
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    .line 3311
    if-nez p1, :cond_0

    .line 3312
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Animator cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3314
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/animation/Animator;Landroid/support/v4/app/FragmentManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/animation/Animator;
    .param p2, "x1"    # Landroid/support/v4/app/FragmentManagerImpl$1;

    .line 3296
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V

    return-void
.end method

.method private constructor <init>(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 3300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3301
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    .line 3302
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    .line 3303
    if-nez p1, :cond_0

    .line 3304
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Animation cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3306
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/animation/Animation;Landroid/support/v4/app/FragmentManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/animation/Animation;
    .param p2, "x1"    # Landroid/support/v4/app/FragmentManagerImpl$1;

    .line 3296
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    return-void
.end method
