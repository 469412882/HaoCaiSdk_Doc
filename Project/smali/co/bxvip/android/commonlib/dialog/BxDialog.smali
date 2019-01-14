.class public Lco/bxvip/android/commonlib/dialog/BxDialog;
.super Landroid/app/AlertDialog;
.source "BxDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/bxvip/android/commonlib/dialog/BxDialog$OnclickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BxDialog"


# instance fields
.field private OnclickListener:Lco/bxvip/android/commonlib/dialog/BxDialog$OnclickListener;

.field private layoutResID:I

.field private layoutView:Landroid/view/View;

.field private mCanceledListener:Lco/bxvip/android/commonlib/dialog/CanceledOnTouchOutsideInterf;

.field private mContext:Landroid/content/Context;

.field private mIsFinish:Z

.field private mStatusListener:Lco/bxvip/android/commonlib/dialog/BxDialogInterf;

.field private final mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    const v0, 0x1030011

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/bxvip/android/commonlib/dialog/BxDialog;->mIsFinish:Z

    .line 43
    iput-object p1, p0, Lco/bxvip/android/commonlib/dialog/BxDialog;->mContext:Landroid/content/Context;

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lco/bxvip/android/commonlib/dialog/BxDialog;->mViews:Landroid/util/SparseArray;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "themeResId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/bxvip/android/commonlib/dialog/BxDialog;->mIsFinish:Z

    .line 49
    iput-object p1, p0, Lco/bxvip/android/commonlib/dialog/BxDialog;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lco/bxvip/android/commonlib/dialog/BxDialog;->mViews:Landroid/util/SparseArray;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lco/bxvip/android/commonlib/dialog/BxDialog;)Lco/bxvip/android/commonlib/dialog/CanceledOnTouchOutsideInterf;
    .locals 1
    .param p0, "x0"    # Lco/bxvip/android/commonlib/dialog/BxDialog;

    .line 29
    iget-object v0, p0, Lco/bxvip/android/commonlib/dialog/BxDialog;->mCanceledListener:Lco/bxvip/android/commonlib/dialog/CanceledOnTouchOutsideInterf;

    return-object v0
.end method

.method private isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 195
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 196
    .local v0, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 197
    .local v1, "y":I
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v2

    .line 198
    .local v2, "slop":I
    invoke-virtual {p0}, Lco/bxvip/android/commonlib/dialog/BxDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 199
    .local v3, "decorView":Landroid/view/View;
    neg-int v4, v2

    if-lt v0, v4, :cond_1

    neg-int v4, v2

    if-lt v1, v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    if-gt v0, v4, :cond_1

    .line 200
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v2

    if-le v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 199
    :goto_1
    return v4
.end method

.method private matchWidth()V
    .locals 3

    .line 96
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 97
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lco/bxvip/android/commonlib/dialog/BxDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 98
    invoke-virtual {p0}, Lco/bxvip/android/commonlib/dialog/BxDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 99
    .local v1, "p":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 101
    invoke-virtual {p0}, Lco/bxvip/android/commonlib/dialog/BxDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 102
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 253
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 254
    iget-object v0, p0, Lco/bxvip/android/commonlib/dialog/BxDialog;->mStatusListener:Lco/bxvip/android/commonlib/dialog/BxDialogInterf;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lco/bxvip/android/commonlib/dialog/BxDialog;->mStatusListener:Lco/bxvip/android/commonlib/dialog/BxDialogInterf;

    invoke-interface {v0}, Lco/bxvip/android/commonlib/dialog/BxDialogInterf;->onDismiss()V

    .line 257
    :cond_0
    return-void
.end method

.method public dismissCancel()Lco/bxvip/android/commonlib/dialog/BxDialog;
    .locals 0

    .line 220
    invoke-virtual {p0}, Lco/bxvip/android/commonlib/dialog/BxDialog;->dismiss()V

    .line 221
    invoke-virtual {p0}, Lco/bxvip/android/commonlib/dialog/BxDialog;->cancel()V

    .line 222
    return-object p0
.end method

.method public getNavigationBarHeight(Landroid/content/Context;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "navigationBarHeight":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 113
    .local v1, "rs":Landroid/content/res/Resources;
    const-string v2, "navigation_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 114
    .local v2, "id":I
    if-lez v2, :cond_0

    .line 115
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 117
    :cond_0
    const-string v3, "BxDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNavigationBarHeight: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return v0
.end method

.method public getStatusBarHeight()I
    .locals 6

    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 129
    .local v1, "obj":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 130
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    .line 130
    .local v3, "x":I
    const/4 v4, 0x0

    .line 132
    .local v4, "sbar":I
    :try_start_0
    const-string v5, "com.android.internal.R$dimen"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v0, v5

    .line 133
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    .line 134
    const-string v5, "status_bar_height"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    move-object v2, v5

    .line 135
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v3, v5

    .line 136
    invoke-virtual {p0}, Lco/bxvip/android/commonlib/dialog/BxDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 139
    goto :goto_0

    .line 137
    :catch_0
    move-exception v5

    .line 138
    .local v5, "e1":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    .end local v5    # "e1":Ljava/lang/Exception;
    :goto_0
    return v4
.end method

.method public getView(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TView:",
            "Landroid/view/View;",
            ">(I)TTView;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lco/bxvip/android/commonlib/dialog/BxDialog;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 294
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 295
    invoke-virtual {p0, p1}, Lco/bxvip/android/commonlib/dialog/BxDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 296
    iget-object v1, p0, Lco/bxvip/android/commonlib/dialog/BxDialog;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 298
    :cond_0
    return-object v0
.end method

.method public loadLayout(I)Lco/bxvip/android/commonlib/dialog/BxDialog;
    .locals 0
    .param p1, "layoutResID"    # I

    .line 68
    iput p1, p0, Lco/bxvip/android/commonlib/dialog/BxDialog;->layoutResID:I

    .line 69
    invoke-virtual {p0}, Lco/bxvip/android/commonlib/dialog/BxDialog;->show()V

    .line 70
    invoke-virtual {p0}, Lco/bxvip/android/commonlib/dialog/BxDialog;->dismiss()V

    .line 71
    return-object p0
.end method

.method public loadLayout(Landroid/view/View;)Lco/bxvip/android/commonlib/dialog/BxDialog;
    .locals 0
    .param p1, "layoutView"    # Landroid/view/View;

    .line 75
    iput-object p1, p0, Lco/bxvip/android/commonlib/dialog/BxDialog;->layoutView:Landroid/view/View;

    .line 76
    invoke-virtual {p0}, Lco/bxvip/android/commonlib/dialog/BxDialog;->show()V

    .line 77
    invoke-virtual {p0}, Lco/bxvip/android/commonlib/dialog/BxDialog;->dismiss()V

    .line 78
    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 83
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 84
    iget-object v0, p0, Lco/bxvip/android/commonlib/dialog/BxDialog;->layoutView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lco/bxvip/android/commonlib/dialog/BxDialog;->layoutView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lco/bxvip/android/commonlib/dialog/BxDialog;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 87
    :cond_0
    iget v0, p0, Lco/bxvip/android/commonlib/dialog/BxDialog;->layoutResID:I

    invoke-virtual {p0, v0}, Lco/bxvip/android/commonlib/dialog/BxDialog;->setContentView(I)V

    .line 88
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/bxvip/android/commonlib/dialog/BxDialog;->setCanceledOnTouchOutside(Z)V

    .line 89
    invoke-direct {p0}, Lco/bxvip/android/commonlib/dialog/BxDialog;->matchWidth()V

    .line 90
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 281
    iget-boolean v0, p0, Lco/bxvip/android/commonlib/dialog/BxDialog;->mIsFinish:Z

    if-eqz v0, :cond_1

    .line 282
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 283
    iget-object v0, p0, Lco/bxvip/android/commonlib/dialog/BxDialog;->OnclickListener:Lco/bxvip/android/commonlib/dialog/BxDialog$OnclickListener;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lco/bxvip/android/commonlib/dialog/BxDialog;->OnclickListener:Lco/bxvip/android/commonlib/dialog/BxDialog$OnclickListener;

    iget-object v1, p0, Lco/bxvip/android/commonlib/dialog/BxDialog;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lco/bxvip/android/commonlib/dialog/BxDialog$OnclickListener;->onBackClick(Landroid/content/Context;)V

    .line 286
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 289
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 179
    invoke-virtual {p0}, Lco/bxvip/android/commonlib/dialog/BxDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lco/bxvip/android/commonlib/dialog/BxDialog;->isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lco/bxvip/android/commonlib/dialog/BxDialog;->mCanceledListener:Lco/bxvip/android/commonlib/dialog/CanceledOnTouchOutsideInterf;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lco/bxvip/android/commonlib/dialog/BxDialog;->mCanceledListener:Lco/bxvip/android/commonlib/dialog/CanceledOnTouchOutsideInterf;

    invoke-interface {v0}, Lco/bxvip/android/commonlib/dialog/CanceledOnTouchOutsideInterf;->CanceledListener()V

    .line 184
    :cond_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setBackgroundColor(II)Lco/bxvip/android/commonlib/dialog/BxDialog;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "color"    # I

    .line 332
    invoke-virtual {p0, p1}, Lco/bxvip/android/commonlib/dialog/BxDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 333
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 334
    return-object p0
.end method

.method public setBackgroundResource(II)Lco/bxvip/android/commonlib/dialog/BxDialog;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "backgroundRes"    # I

    .line 338
    invoke-virtual {p0, p1}, Lco/bxvip/android/commonlib/dialog/BxDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 339
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 340
    return-object p0
.end method

.method public setCanceledListener(Lco/bxvip/android/commonlib/dialog/CanceledOnTouchOutsideInterf;)Lco/bxvip/android/commonlib/dialog/BxDialog;
    .locals 0
    .param p1, "canceledListener"    # Lco/bxvip/android/commonlib/dialog/CanceledOnTouchOutsideInterf;

    .line 210
    iput-object p1, p0, Lco/bxvip/android/commonlib/dialog/BxDialog;->mCanceledListener:Lco/bxvip/android/commonlib/dialog/CanceledOnTouchOutsideInterf;

    .line 211
    return-object p0
.end method

.method public setGCCanceledOnTouchOutside(Z)Lco/bxvip/android/commonlib/dialog/BxDialog;
    .locals 3
    .param p1, "cancel"    # Z

    .line 151
    :try_start_0
    invoke-virtual {p0, p1}, Lco/bxvip/android/commonlib/dialog/BxDialog;->setCanceledOnTouchOutside(Z)V

    .line 153
    iget-object v0, p0, Lco/bxvip/android/commonlib/dialog/BxDialog;->layoutView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lco/bxvip/android/commonlib/dialog/BxDialog;->layoutView:Landroid/view/View;

    .line 154
    .local v0, "inflate":Landroid/view/View;
    goto :goto_0

    .line 156
    .end local v0    # "inflate":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lco/bxvip/android/commonlib/dialog/BxDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lco/bxvip/android/commonlib/dialog/BxDialog;->layoutResID:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 158
    .restart local v0    # "inflate":Landroid/view/View;
    :goto_0
    if-eqz p1, :cond_1

    .line 159
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    new-instance v2, Lco/bxvip/android/commonlib/dialog/BxDialog$1;

    invoke-direct {v2, p0}, Lco/bxvip/android/commonlib/dialog/BxDialog$1;-><init>(Lco/bxvip/android/commonlib/dialog/BxDialog;)V

    invoke-virtual {p0, v1, v2}, Lco/bxvip/android/commonlib/dialog/BxDialog;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lco/bxvip/android/commonlib/dialog/BxDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v0    # "inflate":Landroid/view/View;
    :cond_1
    goto :goto_1

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BxDialog"

    const-string v2, "\u8ddf\u5e03\u5c40\u7f3a\u5c11ID,\u8bf7\u5728\u5e03\u5c40\u6587\u4ef6\u4e2d\u7ed9\u6839\u5e03\u5c40\u52a0\u4e0aID"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object p0
.end method

.method public setImageResource(II)Lco/bxvip/android/commonlib/dialog/BxDialog;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "imageResId"    # I

    .line 326
    invoke-virtual {p0, p1}, Lco/bxvip/android/commonlib/dialog/BxDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 327
    .local v0, "view":Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 328
    return-object p0
.end method

.method public setImageURI(ILandroid/net/Uri;)Lco/bxvip/android/commonlib/dialog/BxDialog;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .line 308
    invoke-virtual {p0, p1}, Lco/bxvip/android/commonlib/dialog/BxDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 309
    .local v0, "view":Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 310
    return-object p0
.end method

.method public setKeyCodeBack(Lco/bxvip/android/commonlib/dialog/BxDialog$OnclickListener;)Lco/bxvip/android/commonlib/dialog/BxDialog;
    .locals 1
    .param p1, "OnclickListener"    # Lco/bxvip/android/commonlib/dialog/BxDialog$OnclickListener;

    .line 266
    if-eqz p1, :cond_0

    .line 267
    iput-object p1, p0, Lco/bxvip/android/commonlib/dialog/BxDialog;->OnclickListener:Lco/bxvip/android/commonlib/dialog/BxDialog$OnclickListener;

    .line 269
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/bxvip/android/commonlib/dialog/BxDialog;->mIsFinish:Z

    .line 270
    return-object p0
.end method

.method public setOnClickListener(ILandroid/view/View$OnClickListener;)Lco/bxvip/android/commonlib/dialog/BxDialog;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 350
    invoke-virtual {p0, p1}, Lco/bxvip/android/commonlib/dialog/BxDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 351
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    return-object p0
.end method

.method public setOnLongClickListener(ILandroid/view/View$OnLongClickListener;)Lco/bxvip/android/commonlib/dialog/BxDialog;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "listener"    # Landroid/view/View$OnLongClickListener;

    .line 362
    invoke-virtual {p0, p1}, Lco/bxvip/android/commonlib/dialog/BxDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 363
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 364
    return-object p0
.end method

.method public setOnTouchListener(ILandroid/view/View$OnTouchListener;)Lco/bxvip/android/commonlib/dialog/BxDialog;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "listener"    # Landroid/view/View$OnTouchListener;

    .line 356
    invoke-virtual {p0, p1}, Lco/bxvip/android/commonlib/dialog/BxDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 357
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 358
    return-object p0
.end method

.method public setStatusListener(Lco/bxvip/android/commonlib/dialog/BxDialogInterf;)Lco/bxvip/android/commonlib/dialog/BxDialog;
    .locals 0
    .param p1, "statusListener"    # Lco/bxvip/android/commonlib/dialog/BxDialogInterf;

    .line 232
    iput-object p1, p0, Lco/bxvip/android/commonlib/dialog/BxDialog;->mStatusListener:Lco/bxvip/android/commonlib/dialog/BxDialogInterf;

    .line 233
    return-object p0
.end method

.method public setText(ILjava/lang/CharSequence;)Lco/bxvip/android/commonlib/dialog/BxDialog;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "value"    # Ljava/lang/CharSequence;

    .line 302
    invoke-virtual {p0, p1}, Lco/bxvip/android/commonlib/dialog/BxDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 303
    .local v0, "view":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    return-object p0
.end method

.method public setTextColor(II)Lco/bxvip/android/commonlib/dialog/BxDialog;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "textColor"    # I

    .line 314
    invoke-virtual {p0, p1}, Lco/bxvip/android/commonlib/dialog/BxDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 315
    .local v0, "view":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 316
    return-object p0
.end method

.method public setTextColorRes(II)Lco/bxvip/android/commonlib/dialog/BxDialog;
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "textColorRes"    # I

    .line 320
    invoke-virtual {p0, p1}, Lco/bxvip/android/commonlib/dialog/BxDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 321
    .local v0, "view":Landroid/widget/TextView;
    iget-object v1, p0, Lco/bxvip/android/commonlib/dialog/BxDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 322
    return-object p0
.end method

.method public setVisible(IZ)Lco/bxvip/android/commonlib/dialog/BxDialog;
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "visible"    # Z

    .line 344
    invoke-virtual {p0, p1}, Lco/bxvip/android/commonlib/dialog/BxDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 345
    .local v0, "view":Landroid/view/View;
    if-eqz p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 346
    return-object p0
.end method

.method public show()V
    .locals 3

    .line 239
    :try_start_0
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 240
    invoke-virtual {p0}, Lco/bxvip/android/commonlib/dialog/BxDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x20008

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 241
    invoke-virtual {p0}, Lco/bxvip/android/commonlib/dialog/BxDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 242
    iget-object v0, p0, Lco/bxvip/android/commonlib/dialog/BxDialog;->mStatusListener:Lco/bxvip/android/commonlib/dialog/BxDialogInterf;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lco/bxvip/android/commonlib/dialog/BxDialog;->mStatusListener:Lco/bxvip/android/commonlib/dialog/BxDialogInterf;

    invoke-interface {v0}, Lco/bxvip/android/commonlib/dialog/BxDialogInterf;->onShow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :cond_0
    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 247
    const-string v1, "BxDialog"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
