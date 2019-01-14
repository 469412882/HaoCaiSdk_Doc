.class public Landroid/support/v7/widget/builder/RecyclerBuilder;
.super Ljava/lang/Object;
.source "RecyclerBuilder.java"


# instance fields
.field private descendantFocusability:I

.field private fastScrollEnabled:Z

.field private fastScrollHorizontalThumbDrawable:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private fastScrollHorizontalTrackDrawable:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private fastScrollVerticalThumbDrawable:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private fastScrollVerticalTrackDrawable:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private layoutManager:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "android.support.v7.widget.LinearLayoutManager"

    iput-object v0, p0, Landroid/support/v7/widget/builder/RecyclerBuilder;->layoutManager:Ljava/lang/String;

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/builder/RecyclerBuilder;->descendantFocusability:I

    .line 26
    return-void
.end method

.method public static newBuild()Landroid/support/v7/widget/builder/RecyclerBuilder;
    .locals 1

    .line 64
    new-instance v0, Landroid/support/v7/widget/builder/RecyclerBuilder;

    invoke-direct {v0}, Landroid/support/v7/widget/builder/RecyclerBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public descendantFocusability(I)Landroid/support/v7/widget/builder/RecyclerBuilder;
    .locals 0
    .param p1, "descendantFocusability"    # I

    .line 34
    iput p1, p0, Landroid/support/v7/widget/builder/RecyclerBuilder;->descendantFocusability:I

    .line 35
    return-object p0
.end method

.method public fastScrollEnabled(Z)Landroid/support/v7/widget/builder/RecyclerBuilder;
    .locals 0
    .param p1, "fastScrollEnabled"    # Z

    .line 39
    iput-boolean p1, p0, Landroid/support/v7/widget/builder/RecyclerBuilder;->fastScrollEnabled:Z

    .line 40
    return-object p0
.end method

.method public fastScrollHorizontalThumbDrawable(I)Landroid/support/v7/widget/builder/RecyclerBuilder;
    .locals 0
    .param p1, "fastScrollHorizontalThumbDrawable"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 54
    iput p1, p0, Landroid/support/v7/widget/builder/RecyclerBuilder;->fastScrollHorizontalThumbDrawable:I

    .line 55
    return-object p0
.end method

.method public fastScrollHorizontalTrackDrawable(I)Landroid/support/v7/widget/builder/RecyclerBuilder;
    .locals 0
    .param p1, "fastScrollHorizontalTrackDrawable"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 59
    iput p1, p0, Landroid/support/v7/widget/builder/RecyclerBuilder;->fastScrollHorizontalTrackDrawable:I

    .line 60
    return-object p0
.end method

.method public fastScrollVerticalThumbDrawable(I)Landroid/support/v7/widget/builder/RecyclerBuilder;
    .locals 0
    .param p1, "fastScrollVerticalThumbDrawable"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 44
    iput p1, p0, Landroid/support/v7/widget/builder/RecyclerBuilder;->fastScrollVerticalThumbDrawable:I

    .line 45
    return-object p0
.end method

.method public fastScrollVerticalTrackDrawable(I)Landroid/support/v7/widget/builder/RecyclerBuilder;
    .locals 0
    .param p1, "fastScrollVerticalTrackDrawable"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 49
    iput p1, p0, Landroid/support/v7/widget/builder/RecyclerBuilder;->fastScrollVerticalTrackDrawable:I

    .line 50
    return-object p0
.end method

.method public getDescendantFocusability()I
    .locals 1

    .line 72
    iget v0, p0, Landroid/support/v7/widget/builder/RecyclerBuilder;->descendantFocusability:I

    return v0
.end method

.method public getFastScrollHorizontalThumbDrawable()I
    .locals 1

    .line 88
    iget v0, p0, Landroid/support/v7/widget/builder/RecyclerBuilder;->fastScrollHorizontalThumbDrawable:I

    return v0
.end method

.method public getFastScrollHorizontalTrackDrawable()I
    .locals 1

    .line 92
    iget v0, p0, Landroid/support/v7/widget/builder/RecyclerBuilder;->fastScrollHorizontalTrackDrawable:I

    return v0
.end method

.method public getFastScrollVerticalThumbDrawable()I
    .locals 1

    .line 80
    iget v0, p0, Landroid/support/v7/widget/builder/RecyclerBuilder;->fastScrollVerticalThumbDrawable:I

    return v0
.end method

.method public getFastScrollVerticalTrackDrawable()I
    .locals 1

    .line 84
    iget v0, p0, Landroid/support/v7/widget/builder/RecyclerBuilder;->fastScrollVerticalTrackDrawable:I

    return v0
.end method

.method public getLayoutManager()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Landroid/support/v7/widget/builder/RecyclerBuilder;->layoutManager:Ljava/lang/String;

    return-object v0
.end method

.method public isFastScrollEnabled()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Landroid/support/v7/widget/builder/RecyclerBuilder;->fastScrollEnabled:Z

    return v0
.end method

.method public layoutManager(Ljava/lang/String;)Landroid/support/v7/widget/builder/RecyclerBuilder;
    .locals 0
    .param p1, "layoutManager"    # Ljava/lang/String;

    .line 29
    iput-object p1, p0, Landroid/support/v7/widget/builder/RecyclerBuilder;->layoutManager:Ljava/lang/String;

    .line 30
    return-object p0
.end method
