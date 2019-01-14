.class public Landroid/support/v7/widget/builder/RecycleViewDimen;
.super Ljava/lang/Object;
.source "RecycleViewDimen.java"


# static fields
.field public static fastscroll_default_thickness:I

.field public static fastscroll_margin:I

.field public static fastscroll_minimum_range:I

.field public static item_touch_helper_max_drag_scroll_per_frame:I

.field public static item_touch_helper_previous_elevation:I

.field public static item_touch_helper_swipe_escape_max_velocity:I

.field public static item_touch_helper_swipe_escape_velocity:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const/16 v0, 0x8

    sput v0, Landroid/support/v7/widget/builder/RecycleViewDimen;->fastscroll_default_thickness:I

    .line 13
    const/4 v0, 0x0

    sput v0, Landroid/support/v7/widget/builder/RecycleViewDimen;->fastscroll_margin:I

    .line 14
    const/16 v0, 0x32

    sput v0, Landroid/support/v7/widget/builder/RecycleViewDimen;->fastscroll_minimum_range:I

    .line 15
    const/16 v0, 0x14

    sput v0, Landroid/support/v7/widget/builder/RecycleViewDimen;->item_touch_helper_max_drag_scroll_per_frame:I

    .line 16
    const/16 v0, 0x320

    sput v0, Landroid/support/v7/widget/builder/RecycleViewDimen;->item_touch_helper_swipe_escape_max_velocity:I

    .line 17
    const/16 v0, 0x78

    sput v0, Landroid/support/v7/widget/builder/RecycleViewDimen;->item_touch_helper_swipe_escape_velocity:I

    .line 19
    const v0, 0x7f06000d

    sput v0, Landroid/support/v7/widget/builder/RecycleViewDimen;->item_touch_helper_previous_elevation:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dip2Px(Landroid/content/res/Resources;I)I
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "dp"    # I

    .line 22
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method
