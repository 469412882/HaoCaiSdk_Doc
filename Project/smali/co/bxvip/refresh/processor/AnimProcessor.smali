.class public Lco/bxvip/refresh/processor/AnimProcessor;
.super Ljava/lang/Object;
.source "AnimProcessor.java"

# interfaces
.implements Lco/bxvip/refresh/processor/IAnimRefresh;
.implements Lco/bxvip/refresh/processor/IAnimOverScroll;


# static fields
.field private static final animFraction:F = 1.0f


# instance fields
.field private animBottomUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private animHeadUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private animQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private isAnimBottomBack:Z

.field private isAnimBottomHide:Z

.field private isAnimBottomToLoad:Z

.field private isAnimHeadBack:Z

.field private isAnimHeadHide:Z

.field private isAnimHeadToRefresh:Z

.field private isAnimOsBottom:Z

.field private isAnimOsTop:Z

.field private isOverScrollBottomLocked:Z

.field private isOverScrollTopLocked:Z

.field private overScrollBottomUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private overScrollTopUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private scrollBottomLocked:Z

.field private scrollHeadLocked:Z


# direct methods
.method public constructor <init>(Lco/bxvip/refresh/BxRefreshLayout$CoContext;)V
    .locals 2
    .param p1, "coProcessor"    # Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->scrollHeadLocked:Z

    .line 37
    iput-boolean v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->scrollBottomLocked:Z

    .line 125
    iput-boolean v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->isAnimHeadToRefresh:Z

    .line 157
    iput-boolean v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->isAnimHeadBack:Z

    .line 184
    iput-boolean v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->isAnimBottomToLoad:Z

    .line 215
    iput-boolean v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->isAnimBottomBack:Z

    .line 263
    iput-boolean v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->isAnimHeadHide:Z

    .line 289
    iput-boolean v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->isAnimBottomHide:Z

    .line 315
    iput-boolean v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->isAnimOsTop:Z

    .line 316
    iput-boolean v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->isOverScrollTopLocked:Z

    .line 353
    iput-boolean v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->isAnimOsBottom:Z

    .line 354
    iput-boolean v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->isOverScrollBottomLocked:Z

    .line 394
    new-instance v0, Lco/bxvip/refresh/processor/AnimProcessor$10;

    invoke-direct {v0, p0}, Lco/bxvip/refresh/processor/AnimProcessor$10;-><init>(Lco/bxvip/refresh/processor/AnimProcessor;)V

    iput-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->animHeadUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 413
    new-instance v0, Lco/bxvip/refresh/processor/AnimProcessor$11;

    invoke-direct {v0, p0}, Lco/bxvip/refresh/processor/AnimProcessor$11;-><init>(Lco/bxvip/refresh/processor/AnimProcessor;)V

    iput-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->animBottomUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 429
    new-instance v0, Lco/bxvip/refresh/processor/AnimProcessor$12;

    invoke-direct {v0, p0}, Lco/bxvip/refresh/processor/AnimProcessor$12;-><init>(Lco/bxvip/refresh/processor/AnimProcessor;)V

    iput-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->overScrollTopUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 456
    new-instance v0, Lco/bxvip/refresh/processor/AnimProcessor$13;

    invoke-direct {v0, p0}, Lco/bxvip/refresh/processor/AnimProcessor$13;-><init>(Lco/bxvip/refresh/processor/AnimProcessor;)V

    iput-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->overScrollBottomUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 32
    iput-object p1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    .line 33
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 34
    return-void
.end method

.method static synthetic access$002(Lco/bxvip/refresh/processor/AnimProcessor;Z)Z
    .locals 0
    .param p0, "x0"    # Lco/bxvip/refresh/processor/AnimProcessor;
    .param p1, "x1"    # Z

    .line 24
    iput-boolean p1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->isAnimHeadToRefresh:Z

    return p1
.end method

.method static synthetic access$100(Lco/bxvip/refresh/processor/AnimProcessor;)Lco/bxvip/refresh/BxRefreshLayout$CoContext;
    .locals 1
    .param p0, "x0"    # Lco/bxvip/refresh/processor/AnimProcessor;

    .line 24
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    return-object v0
.end method

.method static synthetic access$1002(Lco/bxvip/refresh/processor/AnimProcessor;Z)Z
    .locals 0
    .param p0, "x0"    # Lco/bxvip/refresh/processor/AnimProcessor;
    .param p1, "x1"    # Z

    .line 24
    iput-boolean p1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->isAnimBottomHide:Z

    return p1
.end method

.method static synthetic access$1102(Lco/bxvip/refresh/processor/AnimProcessor;Z)Z
    .locals 0
    .param p0, "x0"    # Lco/bxvip/refresh/processor/AnimProcessor;
    .param p1, "x1"    # Z

    .line 24
    iput-boolean p1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->isAnimOsTop:Z

    return p1
.end method

.method static synthetic access$1202(Lco/bxvip/refresh/processor/AnimProcessor;Z)Z
    .locals 0
    .param p0, "x0"    # Lco/bxvip/refresh/processor/AnimProcessor;
    .param p1, "x1"    # Z

    .line 24
    iput-boolean p1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->isOverScrollTopLocked:Z

    return p1
.end method

.method static synthetic access$1300(Lco/bxvip/refresh/processor/AnimProcessor;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1
    .param p0, "x0"    # Lco/bxvip/refresh/processor/AnimProcessor;

    .line 24
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->overScrollTopUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object v0
.end method

.method static synthetic access$1402(Lco/bxvip/refresh/processor/AnimProcessor;Z)Z
    .locals 0
    .param p0, "x0"    # Lco/bxvip/refresh/processor/AnimProcessor;
    .param p1, "x1"    # Z

    .line 24
    iput-boolean p1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->isAnimOsBottom:Z

    return p1
.end method

.method static synthetic access$1502(Lco/bxvip/refresh/processor/AnimProcessor;Z)Z
    .locals 0
    .param p0, "x0"    # Lco/bxvip/refresh/processor/AnimProcessor;
    .param p1, "x1"    # Z

    .line 24
    iput-boolean p1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->isOverScrollBottomLocked:Z

    return p1
.end method

.method static synthetic access$1600(Lco/bxvip/refresh/processor/AnimProcessor;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1
    .param p0, "x0"    # Lco/bxvip/refresh/processor/AnimProcessor;

    .line 24
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->overScrollBottomUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object v0
.end method

.method static synthetic access$1700(Lco/bxvip/refresh/processor/AnimProcessor;F)V
    .locals 0
    .param p0, "x0"    # Lco/bxvip/refresh/processor/AnimProcessor;
    .param p1, "x1"    # F

    .line 24
    invoke-direct {p0, p1}, Lco/bxvip/refresh/processor/AnimProcessor;->transHeader(F)V

    return-void
.end method

.method static synthetic access$1800(Lco/bxvip/refresh/processor/AnimProcessor;I)V
    .locals 0
    .param p0, "x0"    # Lco/bxvip/refresh/processor/AnimProcessor;
    .param p1, "x1"    # I

    .line 24
    invoke-direct {p0, p1}, Lco/bxvip/refresh/processor/AnimProcessor;->translateExHead(I)V

    return-void
.end method

.method static synthetic access$1900(Lco/bxvip/refresh/processor/AnimProcessor;F)V
    .locals 0
    .param p0, "x0"    # Lco/bxvip/refresh/processor/AnimProcessor;
    .param p1, "x1"    # F

    .line 24
    invoke-direct {p0, p1}, Lco/bxvip/refresh/processor/AnimProcessor;->transFooter(F)V

    return-void
.end method

.method static synthetic access$200(Lco/bxvip/refresh/processor/AnimProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lco/bxvip/refresh/processor/AnimProcessor;

    .line 24
    iget-boolean v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->scrollHeadLocked:Z

    return v0
.end method

.method static synthetic access$2000(Lco/bxvip/refresh/processor/AnimProcessor;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lco/bxvip/refresh/processor/AnimProcessor;

    .line 24
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->animQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$202(Lco/bxvip/refresh/processor/AnimProcessor;Z)Z
    .locals 0
    .param p0, "x0"    # Lco/bxvip/refresh/processor/AnimProcessor;
    .param p1, "x1"    # Z

    .line 24
    iput-boolean p1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->scrollHeadLocked:Z

    return p1
.end method

.method static synthetic access$302(Lco/bxvip/refresh/processor/AnimProcessor;Z)Z
    .locals 0
    .param p0, "x0"    # Lco/bxvip/refresh/processor/AnimProcessor;
    .param p1, "x1"    # Z

    .line 24
    iput-boolean p1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->isAnimHeadBack:Z

    return p1
.end method

.method static synthetic access$402(Lco/bxvip/refresh/processor/AnimProcessor;Z)Z
    .locals 0
    .param p0, "x0"    # Lco/bxvip/refresh/processor/AnimProcessor;
    .param p1, "x1"    # Z

    .line 24
    iput-boolean p1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->isAnimBottomToLoad:Z

    return p1
.end method

.method static synthetic access$500(Lco/bxvip/refresh/processor/AnimProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lco/bxvip/refresh/processor/AnimProcessor;

    .line 24
    iget-boolean v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->scrollBottomLocked:Z

    return v0
.end method

.method static synthetic access$502(Lco/bxvip/refresh/processor/AnimProcessor;Z)Z
    .locals 0
    .param p0, "x0"    # Lco/bxvip/refresh/processor/AnimProcessor;
    .param p1, "x1"    # Z

    .line 24
    iput-boolean p1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->scrollBottomLocked:Z

    return p1
.end method

.method static synthetic access$600(Lco/bxvip/refresh/processor/AnimProcessor;)I
    .locals 1
    .param p0, "x0"    # Lco/bxvip/refresh/processor/AnimProcessor;

    .line 24
    invoke-direct {p0}, Lco/bxvip/refresh/processor/AnimProcessor;->getVisibleFootHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lco/bxvip/refresh/processor/AnimProcessor;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1
    .param p0, "x0"    # Lco/bxvip/refresh/processor/AnimProcessor;

    .line 24
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->animBottomUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object v0
.end method

.method static synthetic access$802(Lco/bxvip/refresh/processor/AnimProcessor;Z)Z
    .locals 0
    .param p0, "x0"    # Lco/bxvip/refresh/processor/AnimProcessor;
    .param p1, "x1"    # Z

    .line 24
    iput-boolean p1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->isAnimBottomBack:Z

    return p1
.end method

.method static synthetic access$902(Lco/bxvip/refresh/processor/AnimProcessor;Z)Z
    .locals 0
    .param p0, "x0"    # Lco/bxvip/refresh/processor/AnimProcessor;
    .param p1, "x1"    # Z

    .line 24
    iput-boolean p1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->isAnimHeadHide:Z

    return p1
.end method

.method private getVisibleFootHeight()I
    .locals 2

    .line 114
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getVisibleHeadHeight()I
    .locals 2

    .line 110
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private offerToQueue(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 517
    if-nez p1, :cond_0

    return-void

    .line 518
    :cond_0
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->animQueue:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 519
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->animQueue:Ljava/util/LinkedList;

    .line 521
    :cond_1
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->animQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 523
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current Animators\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lco/bxvip/refresh/processor/AnimProcessor;->animQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 525
    new-instance v0, Lco/bxvip/refresh/processor/AnimProcessor$14;

    invoke-direct {v0, p0}, Lco/bxvip/refresh/processor/AnimProcessor$14;-><init>(Lco/bxvip/refresh/processor/AnimProcessor;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 542
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->animQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 543
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 545
    :cond_2
    return-void
.end method

.method private transFooter(F)V
    .locals 2
    .param p1, "offsetY"    # F

    .line 122
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 123
    return-void
.end method

.method private transHeader(F)V
    .locals 2
    .param p1, "offsetY"    # F

    .line 118
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 119
    return-void
.end method

.method private translateExHead(I)V
    .locals 2
    .param p1, "offsetY"    # I

    .line 483
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isExHeadLocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getExHead()Landroid/view/View;

    move-result-object v0

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 484
    :cond_0
    return-void
.end method


# virtual methods
.method public animBottomBack(Z)V
    .locals 4
    .param p1, "isFinishLoading"    # Z

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->isAnimBottomBack:Z

    .line 222
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->scrollBottomLocked:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isEnableKeepIView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1, v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->setPrepareFinishLoadMore(Z)V

    .line 225
    :cond_0
    invoke-direct {p0}, Lco/bxvip/refresh/processor/AnimProcessor;->getVisibleFootHeight()I

    move-result v0

    const/4 v1, 0x0

    new-instance v2, Lco/bxvip/refresh/processor/AnimProcessor$4;

    invoke-direct {v2, p0}, Lco/bxvip/refresh/processor/AnimProcessor$4;-><init>(Lco/bxvip/refresh/processor/AnimProcessor;)V

    new-instance v3, Lco/bxvip/refresh/processor/AnimProcessor$5;

    invoke-direct {v3, p0, p1}, Lco/bxvip/refresh/processor/AnimProcessor$5;-><init>(Lco/bxvip/refresh/processor/AnimProcessor;Z)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lco/bxvip/refresh/processor/AnimProcessor;->animLayoutByTime(IILandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    .line 261
    return-void
.end method

.method public animBottomHideByVy(I)V
    .locals 7
    .param p1, "vy"    # I

    .line 297
    iget-boolean v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->isAnimBottomHide:Z

    if-eqz v0, :cond_0

    return-void

    .line 298
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->isAnimBottomHide:Z

    .line 299
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 300
    const/16 v0, 0x1388

    if-ge p1, v0, :cond_1

    const/16 p1, 0x1f40

    .line 301
    :cond_1
    invoke-direct {p0}, Lco/bxvip/refresh/processor/AnimProcessor;->getVisibleFootHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0}, Lco/bxvip/refresh/processor/AnimProcessor;->getVisibleFootHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    mul-int/lit16 v0, v0, 0x3e8

    div-int/2addr v0, p1

    int-to-long v3, v0

    iget-object v5, p0, Lco/bxvip/refresh/processor/AnimProcessor;->animBottomUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v6, Lco/bxvip/refresh/processor/AnimProcessor$7;

    invoke-direct {v6, p0}, Lco/bxvip/refresh/processor/AnimProcessor$7;-><init>(Lco/bxvip/refresh/processor/AnimProcessor;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lco/bxvip/refresh/processor/AnimProcessor;->animLayoutByTime(IIJLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    .line 313
    return-void
.end method

.method public animBottomToLoad()V
    .locals 4

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->isAnimBottomToLoad:Z

    .line 191
    invoke-direct {p0}, Lco/bxvip/refresh/processor/AnimProcessor;->getVisibleFootHeight()I

    move-result v0

    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getBottomHeight()I

    move-result v1

    iget-object v2, p0, Lco/bxvip/refresh/processor/AnimProcessor;->animBottomUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v3, Lco/bxvip/refresh/processor/AnimProcessor$3;

    invoke-direct {v3, p0}, Lco/bxvip/refresh/processor/AnimProcessor$3;-><init>(Lco/bxvip/refresh/processor/AnimProcessor;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lco/bxvip/refresh/processor/AnimProcessor;->animLayoutByTime(IILandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    .line 213
    return-void
.end method

.method public animHeadBack(Z)V
    .locals 4
    .param p1, "isFinishRefresh"    # Z

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->isAnimHeadBack:Z

    .line 164
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->scrollHeadLocked:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isEnableKeepIView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1, v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->setPrepareFinishRefresh(Z)V

    .line 167
    :cond_0
    invoke-direct {p0}, Lco/bxvip/refresh/processor/AnimProcessor;->getVisibleHeadHeight()I

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lco/bxvip/refresh/processor/AnimProcessor;->animHeadUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v3, Lco/bxvip/refresh/processor/AnimProcessor$2;

    invoke-direct {v3, p0, p1}, Lco/bxvip/refresh/processor/AnimProcessor$2;-><init>(Lco/bxvip/refresh/processor/AnimProcessor;Z)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lco/bxvip/refresh/processor/AnimProcessor;->animLayoutByTime(IILandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    .line 182
    return-void
.end method

.method public animHeadHideByVy(I)V
    .locals 7
    .param p1, "vy"    # I

    .line 271
    iget-boolean v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->isAnimHeadHide:Z

    if-eqz v0, :cond_0

    return-void

    .line 272
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->isAnimHeadHide:Z

    .line 273
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 274
    const/16 v0, 0x1388

    if-ge p1, v0, :cond_1

    const/16 p1, 0x1f40

    .line 275
    :cond_1
    invoke-direct {p0}, Lco/bxvip/refresh/processor/AnimProcessor;->getVisibleHeadHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0}, Lco/bxvip/refresh/processor/AnimProcessor;->getVisibleHeadHeight()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    div-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    int-to-long v3, v0

    iget-object v5, p0, Lco/bxvip/refresh/processor/AnimProcessor;->animHeadUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v6, Lco/bxvip/refresh/processor/AnimProcessor$6;

    invoke-direct {v6, p0}, Lco/bxvip/refresh/processor/AnimProcessor$6;-><init>(Lco/bxvip/refresh/processor/AnimProcessor;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lco/bxvip/refresh/processor/AnimProcessor;->animLayoutByTime(IIJLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    .line 287
    return-void
.end method

.method public animHeadToRefresh()V
    .locals 4

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->isAnimHeadToRefresh:Z

    .line 132
    invoke-direct {p0}, Lco/bxvip/refresh/processor/AnimProcessor;->getVisibleHeadHeight()I

    move-result v0

    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getHeadHeight()I

    move-result v1

    iget-object v2, p0, Lco/bxvip/refresh/processor/AnimProcessor;->animHeadUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v3, Lco/bxvip/refresh/processor/AnimProcessor$1;

    invoke-direct {v3, p0}, Lco/bxvip/refresh/processor/AnimProcessor$1;-><init>(Lco/bxvip/refresh/processor/AnimProcessor;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lco/bxvip/refresh/processor/AnimProcessor;->animLayoutByTime(IILandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    .line 155
    return-void
.end method

.method public animLayoutByTime(IIJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "time"    # J
    .param p5, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 497
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 498
    .local v0, "va":Landroid/animation/ValueAnimator;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 499
    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 500
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 501
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 503
    return-void
.end method

.method public animLayoutByTime(IIJLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "time"    # J
    .param p5, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .param p6, "animatorListener"    # Landroid/animation/Animator$AnimatorListener;

    .line 487
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 488
    .local v0, "va":Landroid/animation/ValueAnimator;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 489
    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 490
    invoke-virtual {v0, p6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 491
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 492
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 494
    return-void
.end method

.method public animLayoutByTime(IILandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .param p4, "animatorListener"    # Landroid/animation/Animator$AnimatorListener;

    .line 506
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 507
    .local v0, "va":Landroid/animation/ValueAnimator;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 508
    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 509
    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 510
    sub-int v1, p1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 511
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 513
    return-void
.end method

.method public animOverScrollBottom(FI)V
    .locals 10
    .param p1, "vy"    # F
    .param p2, "computeTimes"    # I

    .line 363
    iget-boolean v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->isOverScrollBottomLocked:Z

    if-eqz v0, :cond_0

    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->setStatePBU()V

    .line 365
    int-to-float v0, p2

    div-float v0, p1, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 366
    .local v0, "oh":I
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getOsHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getOsHeight()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 367
    .local v1, "overHeight":I
    :goto_0
    const/16 v2, 0x32

    if-gt v1, v2, :cond_2

    const/16 v2, 0x73

    goto :goto_1

    :cond_2
    const-wide v2, 0x3fd3333333333333L    # 0.3

    int-to-double v4, v1

    mul-double v4, v4, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    add-double/2addr v4, v2

    double-to-int v2, v4

    :goto_1
    move v9, v2

    .line 368
    .local v9, "time":I
    iget-boolean v2, p0, Lco/bxvip/refresh/processor/AnimProcessor;->scrollBottomLocked:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v2}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->autoLoadMore()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 369
    iget-object v2, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v2}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->startLoadMore()V

    goto :goto_2

    .line 371
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lco/bxvip/refresh/processor/AnimProcessor;->isOverScrollBottomLocked:Z

    .line 372
    iput-boolean v2, p0, Lco/bxvip/refresh/processor/AnimProcessor;->isAnimOsBottom:Z

    .line 373
    const/4 v3, 0x0

    int-to-long v5, v9

    iget-object v7, p0, Lco/bxvip/refresh/processor/AnimProcessor;->overScrollBottomUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v8, Lco/bxvip/refresh/processor/AnimProcessor$9;

    invoke-direct {v8, p0, v1, v9}, Lco/bxvip/refresh/processor/AnimProcessor$9;-><init>(Lco/bxvip/refresh/processor/AnimProcessor;II)V

    move-object v2, p0

    move v4, v1

    invoke-virtual/range {v2 .. v8}, Lco/bxvip/refresh/processor/AnimProcessor;->animLayoutByTime(IIJLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    .line 392
    :goto_2
    return-void
.end method

.method public animOverScrollTop(FI)V
    .locals 10
    .param p1, "vy"    # F
    .param p2, "computeTimes"    # I

    .line 326
    iget-boolean v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->isOverScrollTopLocked:Z

    if-eqz v0, :cond_0

    return-void

    .line 327
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->isOverScrollTopLocked:Z

    .line 328
    iput-boolean v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->isAnimOsTop:Z

    .line 329
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->setStatePTD()V

    .line 330
    int-to-float v0, p2

    div-float v0, p1, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 331
    .local v0, "oh":I
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getOsHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getOsHeight()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 332
    .local v1, "overHeight":I
    :goto_0
    const/16 v2, 0x32

    if-gt v1, v2, :cond_2

    const/16 v2, 0x73

    goto :goto_1

    :cond_2
    const-wide v2, 0x3fd3333333333333L    # 0.3

    int-to-double v4, v1

    mul-double v4, v4, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    add-double/2addr v4, v2

    double-to-int v2, v4

    :goto_1
    move v9, v2

    .line 333
    .local v9, "time":I
    invoke-direct {p0}, Lco/bxvip/refresh/processor/AnimProcessor;->getVisibleHeadHeight()I

    move-result v3

    int-to-long v5, v9

    iget-object v7, p0, Lco/bxvip/refresh/processor/AnimProcessor;->overScrollTopUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v8, Lco/bxvip/refresh/processor/AnimProcessor$8;

    invoke-direct {v8, p0, v1, v9}, Lco/bxvip/refresh/processor/AnimProcessor$8;-><init>(Lco/bxvip/refresh/processor/AnimProcessor;II)V

    move-object v2, p0

    move v4, v1

    invoke-virtual/range {v2 .. v8}, Lco/bxvip/refresh/processor/AnimProcessor;->animLayoutByTime(IIJLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    .line 351
    return-void
.end method

.method public dealPullDownRelease()V
    .locals 3

    .line 94
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isPureScrollModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->enableRefresh()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lco/bxvip/refresh/processor/AnimProcessor;->getVisibleHeadHeight()I

    move-result v0

    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getHeadHeight()I

    move-result v1

    iget-object v2, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v2}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getTouchSlop()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 95
    invoke-virtual {p0}, Lco/bxvip/refresh/processor/AnimProcessor;->animHeadToRefresh()V

    goto :goto_0

    .line 97
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/bxvip/refresh/processor/AnimProcessor;->animHeadBack(Z)V

    .line 99
    :goto_0
    return-void
.end method

.method public dealPullUpRelease()V
    .locals 3

    .line 102
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isPureScrollModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->enableLoadmore()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lco/bxvip/refresh/processor/AnimProcessor;->getVisibleFootHeight()I

    move-result v0

    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getBottomHeight()I

    move-result v1

    iget-object v2, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v2}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getTouchSlop()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 103
    invoke-virtual {p0}, Lco/bxvip/refresh/processor/AnimProcessor;->animBottomToLoad()V

    goto :goto_0

    .line 105
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/bxvip/refresh/processor/AnimProcessor;->animBottomBack(Z)V

    .line 107
    :goto_0
    return-void
.end method

.method public scrollBottomByMove(F)V
    .locals 3
    .param p1, "moveY"    # F

    .line 69
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getMaxBottomHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float v0, v0, p1

    div-float/2addr v0, v2

    .line 71
    .local v0, "offsetY":F
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isPureScrollModeOn()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->enableLoadmore()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isOverScrollBottomShow()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 72
    :cond_1
    :goto_0
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    .line 73
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 81
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->scrollBottomLocked:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isEnableKeepIView()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 82
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v2}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 84
    :cond_3
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 85
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 86
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getFooter()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 87
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    neg-float v2, v0

    invoke-virtual {v1, v2}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->onPullingUp(F)V

    .line 90
    :goto_2
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getTargetView()Landroid/view/View;

    move-result-object v1

    neg-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 91
    return-void
.end method

.method public scrollHeadByMove(F)V
    .locals 3
    .param p1, "moveY"    # F

    .line 40
    iget-object v0, p0, Lco/bxvip/refresh/processor/AnimProcessor;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getMaxHeadHeight()F

    move-result v1

    div-float v1, p1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float v0, v0, p1

    div-float/2addr v0, v2

    .line 43
    .local v0, "offsetY":F
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isPureScrollModeOn()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->enableRefresh()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isOverScrollTopShow()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    .line 45
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->scrollHeadLocked:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isEnableKeepIView()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 54
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v2}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 56
    :cond_3
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 57
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 58
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getHeader()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 59
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1, v0}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->onPullingDown(F)V

    .line 62
    :goto_2
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->isOpenFloatRefresh()Z

    move-result v1

    if-nez v1, :cond_4

    .line 63
    iget-object v1, p0, Lco/bxvip/refresh/processor/AnimProcessor;->cp:Lco/bxvip/refresh/BxRefreshLayout$CoContext;

    invoke-virtual {v1}, Lco/bxvip/refresh/BxRefreshLayout$CoContext;->getTargetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 64
    float-to-int v1, v0

    invoke-direct {p0, v1}, Lco/bxvip/refresh/processor/AnimProcessor;->translateExHead(I)V

    .line 66
    :cond_4
    return-void
.end method
