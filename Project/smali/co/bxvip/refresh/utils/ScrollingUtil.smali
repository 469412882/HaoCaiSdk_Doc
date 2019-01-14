.class public Lco/bxvip/refresh/utils/ScrollingUtil;
.super Ljava/lang/Object;
.source "ScrollingUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static canChildScrollDown(Landroid/view/View;)Z
    .locals 5
    .param p0, "mChildView"    # Landroid/view/View;

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0xe

    if-ge v0, v2, :cond_5

    .line 70
    instance-of v0, p0, Landroid/widget/AbsListView;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 71
    move-object v0, p0

    check-cast v0, Landroid/widget/AbsListView;

    .line 72
    .local v0, "absListView":Landroid/widget/AbsListView;
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 73
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v1

    if-lt v3, v4, :cond_0

    .line 74
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v4

    if-le v3, v4, :cond_1

    :cond_0
    goto :goto_0

    .line 72
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 76
    .end local v0    # "absListView":Landroid/widget/AbsListView;
    :cond_2
    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-gez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    nop

    :cond_4
    :goto_1
    return v1

    .line 79
    :cond_5
    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static canChildScrollUp(Landroid/view/View;)Z
    .locals 5
    .param p0, "mChildView"    # Landroid/view/View;

    .line 47
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 48
    return v0

    .line 50
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    const/4 v3, -0x1

    if-ge v1, v2, :cond_6

    .line 51
    instance-of v1, p0, Landroid/widget/AbsListView;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 52
    move-object v1, p0

    check-cast v1, Landroid/widget/AbsListView;

    .line 53
    .local v1, "absListView":Landroid/widget/AbsListView;
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 54
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 55
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 53
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 55
    :cond_2
    nop

    .line 53
    :goto_0
    return v0

    .line 57
    .end local v1    # "absListView":Landroid/widget/AbsListView;
    :cond_3
    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-lez v1, :cond_4

    goto :goto_1

    :cond_4
    goto :goto_2

    :cond_5
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0

    .line 60
    :cond_6
    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method private static getRecyclerViewItemTopInset(Landroid/support/v7/widget/RecyclerView$LayoutParams;)I
    .locals 3
    .param p0, "layoutParams"    # Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 168
    :try_start_0
    const-class v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const-string v1, "mDecorInsets"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 169
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 171
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 172
    .local v1, "decorInsets":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->top:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 173
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v1    # "decorInsets":Landroid/graphics/Rect;
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 306
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 307
    .local v0, "windowManager":Landroid/view/WindowManager;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 308
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 309
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    return v2
.end method

.method public static isAbsListViewToBottom(Landroid/widget/AbsListView;)Z
    .locals 5
    .param p0, "absListView"    # Landroid/widget/AbsListView;

    .line 201
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_1

    .line 202
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 204
    .local v1, "lastChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getMeasuredHeight()I

    move-result v4

    if-gt v2, v4, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 206
    .end local v1    # "lastChild":Landroid/view/View;
    :cond_1
    return v0
.end method

.method public static isAbsListViewToTop(Landroid/widget/AbsListView;)Z
    .locals 4
    .param p0, "absListView"    # Landroid/widget/AbsListView;

    .line 102
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, "firstChildTop":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 106
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v3

    sub-int v1, v2, v3

    .line 108
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    .line 109
    const/4 v0, 0x1

    return v0

    .line 112
    .end local v1    # "firstChildTop":I
    :cond_1
    return v0
.end method

.method public static isRecyclerViewToBottom(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 9
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 210
    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 211
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 212
    .local v1, "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 216
    :cond_0
    instance-of v2, v1, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    .line 218
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 219
    .local v2, "lastVisibleChild":Landroid/view/View;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v5

    if-lt v4, v5, :cond_3

    .line 220
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-ge v4, v5, :cond_2

    .line 221
    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollY()I

    move-result v4

    if-ltz v4, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0

    .line 223
    :cond_2
    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    xor-int/2addr v0, v3

    return v0

    .line 227
    :cond_3
    move-object v4, v1

    check-cast v4, Landroid/support/v7/widget/LinearLayoutManager;

    .line 228
    .local v4, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v5

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager;->getItemCount()I

    move-result v6

    sub-int/2addr v6, v3

    if-ne v5, v6, :cond_4

    .line 229
    return v3

    .line 231
    .end local v2    # "lastVisibleChild":Landroid/view/View;
    .end local v4    # "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    :cond_4
    goto :goto_2

    :cond_5
    instance-of v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v2, :cond_8

    .line 232
    move-object v2, v1

    check-cast v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .line 234
    .local v2, "layoutManager":Landroid/support/v7/widget/StaggeredGridLayoutManager;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findLastCompletelyVisibleItemPositions([I)[I

    move-result-object v4

    .line 235
    .local v4, "out":[I
    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getItemCount()I

    move-result v5

    sub-int/2addr v5, v3

    .line 236
    .local v5, "lastPosition":I
    array-length v6, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_8

    aget v8, v4, v7

    .line 237
    .local v8, "position":I
    if-ne v8, v5, :cond_6

    .line 238
    return v3

    .line 236
    .end local v8    # "position":I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 213
    .end local v2    # "layoutManager":Landroid/support/v7/widget/StaggeredGridLayoutManager;
    .end local v4    # "out":[I
    .end local v5    # "lastPosition":I
    :cond_7
    :goto_1
    return v0

    .line 243
    .end local v1    # "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_8
    :goto_2
    return v0
.end method

.method public static isRecyclerViewToTop(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 9
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 116
    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 117
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 118
    .local v1, "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 119
    return v2

    .line 121
    :cond_0
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 122
    return v2

    .line 125
    :cond_1
    const/4 v3, 0x0

    .line 126
    .local v3, "firstChildTop":I
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_5

    .line 128
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 129
    .local v4, "firstVisibleChild":Landroid/view/View;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v6

    if-lt v5, v6, :cond_4

    .line 130
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    const/4 v7, -0x1

    if-ge v5, v6, :cond_3

    .line 131
    invoke-static {p0, v7}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollY()I

    move-result v5

    if-gtz v5, :cond_2

    const/4 v0, 0x1

    nop

    :cond_2
    return v0

    .line 133
    :cond_3
    invoke-static {p0, v7}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    xor-int/2addr v0, v2

    return v0

    .line 140
    :cond_4
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 141
    .local v5, "firstChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 142
    .local v6, "layoutParams":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    iget v8, v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v7, v8

    invoke-static {v6}, Lco/bxvip/refresh/utils/ScrollingUtil;->getRecyclerViewItemTopInset(Landroid/support/v7/widget/RecyclerView$LayoutParams;)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v8

    sub-int v3, v7, v8

    .line 144
    .end local v4    # "firstVisibleChild":Landroid/view/View;
    .end local v5    # "firstChild":Landroid/view/View;
    .end local v6    # "layoutParams":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    :cond_5
    instance-of v4, v1, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v4, :cond_7

    .line 145
    move-object v4, v1

    check-cast v4, Landroid/support/v7/widget/LinearLayoutManager;

    .line 146
    .local v4, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v5

    if-ge v5, v2, :cond_6

    if-nez v3, :cond_6

    .line 147
    return v2

    .line 149
    .end local v4    # "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    :cond_6
    goto :goto_0

    :cond_7
    instance-of v4, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v4, :cond_8

    .line 150
    move-object v4, v1

    check-cast v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .line 151
    .local v4, "layoutManager":Landroid/support/v7/widget/StaggeredGridLayoutManager;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstCompletelyVisibleItemPositions([I)[I

    move-result-object v5

    .line 152
    .local v5, "out":[I
    aget v6, v5, v0

    if-ge v6, v2, :cond_8

    if-nez v3, :cond_8

    .line 153
    return v2

    .line 157
    .end local v1    # "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .end local v3    # "firstChildTop":I
    .end local v4    # "layoutManager":Landroid/support/v7/widget/StaggeredGridLayoutManager;
    .end local v5    # "out":[I
    :cond_8
    :goto_0
    return v0
.end method

.method public static isScrollViewOrWebViewToTop(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 84
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isScrollViewToBottom(Landroid/widget/ScrollView;)Z
    .locals 3
    .param p0, "scrollView"    # Landroid/widget/ScrollView;

    .line 190
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 191
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 192
    .local v1, "scrollContentHeight":I
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 193
    .local v2, "realContentHeight":I
    if-ne v1, v2, :cond_0

    .line 194
    const/4 v0, 0x1

    return v0

    .line 197
    .end local v1    # "scrollContentHeight":I
    .end local v2    # "realContentHeight":I
    :cond_0
    return v0
.end method

.method public static isViewGroupToBottom(Landroid/view/ViewGroup;)Z
    .locals 5
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;

    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 186
    .local v1, "subChildView":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    if-gt v2, v3, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0
.end method

.method public static isViewToBottom(Landroid/view/View;I)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mTouchSlop"    # I

    .line 94
    instance-of v0, p0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/widget/AbsListView;

    invoke-static {v0}, Lco/bxvip/refresh/utils/ScrollingUtil;->isAbsListViewToBottom(Landroid/widget/AbsListView;)Z

    move-result v0

    return v0

    .line 95
    :cond_0
    instance-of v0, p0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Lco/bxvip/refresh/utils/ScrollingUtil;->isRecyclerViewToBottom(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    return v0

    .line 96
    :cond_1
    instance-of v0, p0, Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/webkit/WebView;

    invoke-static {v0, p1}, Lco/bxvip/refresh/utils/ScrollingUtil;->isWebViewToBottom(Landroid/webkit/WebView;I)Z

    move-result v0

    return v0

    .line 97
    :cond_2
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lco/bxvip/refresh/utils/ScrollingUtil;->isViewGroupToBottom(Landroid/view/ViewGroup;)Z

    move-result v0

    return v0

    .line 98
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public static isViewToTop(Landroid/view/View;I)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mTouchSlop"    # I

    .line 88
    instance-of v0, p0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/widget/AbsListView;

    invoke-static {v0}, Lco/bxvip/refresh/utils/ScrollingUtil;->isAbsListViewToTop(Landroid/widget/AbsListView;)Z

    move-result v0

    return v0

    .line 89
    :cond_0
    instance-of v0, p0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Lco/bxvip/refresh/utils/ScrollingUtil;->isRecyclerViewToTop(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    return v0

    .line 90
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v1, p1, 0x2

    if-gt v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isWebViewToBottom(Landroid/webkit/WebView;I)Z
    .locals 3
    .param p0, "webview"    # Landroid/webkit/WebView;
    .param p1, "mTouchSlop"    # I

    .line 181
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScale()F

    move-result v1

    mul-float v0, v0, v1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    mul-int/lit8 v1, p1, 0x2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static scrollAViewBy(Landroid/view/View;I)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "height"    # I

    .line 247
    instance-of v0, p0, Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    goto :goto_0

    .line 248
    :cond_0
    instance-of v0, p0, Landroid/widget/ScrollView;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, p1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    goto :goto_0

    .line 249
    :cond_1
    instance-of v0, p0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p1, v1}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_0

    .line 252
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "smoothScrollBy"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Integer;

    aput-object v5, v4, v1

    const-class v5, Ljava/lang/Integer;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 253
    .local v0, "method":Ljava/lang/reflect/Method;
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    .end local v0    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->scrollBy(II)V

    .line 258
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static scrollToBottom(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 286
    if-eqz p0, :cond_0

    .line 287
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 288
    new-instance v0, Lco/bxvip/refresh/utils/ScrollingUtil$3;

    invoke-direct {v0, p0}, Lco/bxvip/refresh/utils/ScrollingUtil$3;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 296
    :cond_0
    return-void
.end method

.method public static scrollToBottom(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 299
    instance-of v0, p0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Lco/bxvip/refresh/utils/ScrollingUtil;->scrollToBottom(Landroid/support/v7/widget/RecyclerView;)V

    .line 300
    :cond_0
    instance-of v0, p0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/widget/AbsListView;

    invoke-static {v0}, Lco/bxvip/refresh/utils/ScrollingUtil;->scrollToBottom(Landroid/widget/AbsListView;)V

    .line 301
    :cond_1
    instance-of v0, p0, Landroid/widget/ScrollView;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-static {v0}, Lco/bxvip/refresh/utils/ScrollingUtil;->scrollToBottom(Landroid/widget/ScrollView;)V

    .line 302
    :cond_2
    return-void
.end method

.method public static scrollToBottom(Landroid/widget/AbsListView;)V
    .locals 1
    .param p0, "absListView"    # Landroid/widget/AbsListView;

    .line 273
    if-eqz p0, :cond_0

    .line 274
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 275
    new-instance v0, Lco/bxvip/refresh/utils/ScrollingUtil$2;

    invoke-direct {v0, p0}, Lco/bxvip/refresh/utils/ScrollingUtil$2;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 283
    :cond_0
    return-void
.end method

.method public static scrollToBottom(Landroid/widget/ScrollView;)V
    .locals 1
    .param p0, "scrollView"    # Landroid/widget/ScrollView;

    .line 262
    if-eqz p0, :cond_0

    .line 263
    new-instance v0, Lco/bxvip/refresh/utils/ScrollingUtil$1;

    invoke-direct {v0, p0}, Lco/bxvip/refresh/utils/ScrollingUtil$1;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 270
    :cond_0
    return-void
.end method
