.class public Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;
.super Ljava/lang/Object;
.source "CustomPopWindow.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;
    }
.end annotation


# static fields
.field private static final DEFAULT_ALPHA:F = 0.7f

.field private static final TAG:Ljava/lang/String; = "CustomPopWindow"


# instance fields
.field private enableOutsideTouchDisMiss:Z

.field private mAnimationStyle:I

.field private mBackgroundDrakValue:F

.field private mClippEnable:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private mIgnoreCheekPress:Z

.field private mInputMode:I

.field private mIsBackgroundDark:Z

.field private mIsFocusable:Z

.field private mIsOutside:Z

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mResLayoutId:I

.field private mSoftInputMode:I

.field private mTouchable:Z

.field private mWidth:I

.field private mWindow:Landroid/view/Window;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "o"    # Ljava/lang/Object;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mIsFocusable:Z

    .line 48
    iput-boolean v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mIsOutside:Z

    .line 49
    const/4 v1, -0x1

    iput v1, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mResLayoutId:I

    .line 50
    iput v1, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mAnimationStyle:I

    .line 51
    iput-boolean v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mClippEnable:Z

    .line 52
    const/4 v2, 0x0

    iput-boolean v2, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mIgnoreCheekPress:Z

    .line 53
    iput v1, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mInputMode:I

    .line 54
    iput v1, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mSoftInputMode:I

    .line 55
    iput-boolean v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mTouchable:Z

    .line 56
    iput-boolean v2, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mIsBackgroundDark:Z

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mBackgroundDrakValue:F

    .line 58
    iput-boolean v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->enableOutsideTouchDisMiss:Z

    .line 59
    iput-object p1, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$1;

    .line 22
    invoke-direct {p0, p1, p2}, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;

    .line 22
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$100(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;)I
    .locals 1
    .param p0, "x0"    # Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;

    .line 22
    iget v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mWidth:I

    return v0
.end method

.method static synthetic access$1002(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;
    .param p1, "x1"    # Z

    .line 22
    iput-boolean p1, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mIgnoreCheekPress:Z

    return p1
.end method

.method static synthetic access$102(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;I)I
    .locals 0
    .param p0, "x0"    # Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;
    .param p1, "x1"    # I

    .line 22
    iput p1, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mWidth:I

    return p1
.end method

.method static synthetic access$1102(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;I)I
    .locals 0
    .param p0, "x0"    # Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;
    .param p1, "x1"    # I

    .line 22
    iput p1, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mInputMode:I

    return p1
.end method

.method static synthetic access$1202(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;Landroid/widget/PopupWindow$OnDismissListener;)Landroid/widget/PopupWindow$OnDismissListener;
    .locals 0
    .param p0, "x0"    # Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;
    .param p1, "x1"    # Landroid/widget/PopupWindow$OnDismissListener;

    .line 22
    iput-object p1, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-object p1
.end method

.method static synthetic access$1302(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;I)I
    .locals 0
    .param p0, "x0"    # Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;
    .param p1, "x1"    # I

    .line 22
    iput p1, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mSoftInputMode:I

    return p1
.end method

.method static synthetic access$1402(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;
    .param p1, "x1"    # Z

    .line 22
    iput-boolean p1, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mTouchable:Z

    return p1
.end method

.method static synthetic access$1502(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;Landroid/view/View$OnTouchListener;)Landroid/view/View$OnTouchListener;
    .locals 0
    .param p0, "x0"    # Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;
    .param p1, "x1"    # Landroid/view/View$OnTouchListener;

    .line 22
    iput-object p1, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-object p1
.end method

.method static synthetic access$1602(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;
    .param p1, "x1"    # Z

    .line 22
    iput-boolean p1, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mIsBackgroundDark:Z

    return p1
.end method

.method static synthetic access$1702(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;F)F
    .locals 0
    .param p0, "x0"    # Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;
    .param p1, "x1"    # F

    .line 22
    iput p1, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mBackgroundDrakValue:F

    return p1
.end method

.method static synthetic access$1802(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;
    .param p1, "x1"    # Z

    .line 22
    iput-boolean p1, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->enableOutsideTouchDisMiss:Z

    return p1
.end method

.method static synthetic access$1900(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;

    .line 22
    invoke-direct {p0}, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->build()Landroid/widget/PopupWindow;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;)I
    .locals 1
    .param p0, "x0"    # Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;

    .line 22
    iget v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mHeight:I

    return v0
.end method

.method static synthetic access$202(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;I)I
    .locals 0
    .param p0, "x0"    # Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;
    .param p1, "x1"    # I

    .line 22
    iput p1, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mHeight:I

    return p1
.end method

.method static synthetic access$402(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;
    .param p1, "x1"    # Z

    .line 22
    iput-boolean p1, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mIsFocusable:Z

    return p1
.end method

.method static synthetic access$502(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;I)I
    .locals 0
    .param p0, "x0"    # Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;
    .param p1, "x1"    # I

    .line 22
    iput p1, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mResLayoutId:I

    return p1
.end method

.method static synthetic access$602(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;
    .param p1, "x1"    # Landroid/view/View;

    .line 22
    iput-object p1, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mContentView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$702(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;
    .param p1, "x1"    # Z

    .line 22
    iput-boolean p1, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mIsOutside:Z

    return p1
.end method

.method static synthetic access$802(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;I)I
    .locals 0
    .param p0, "x0"    # Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;
    .param p1, "x1"    # I

    .line 22
    iput p1, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mAnimationStyle:I

    return p1
.end method

.method static synthetic access$902(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;
    .param p1, "x1"    # Z

    .line 22
    iput-boolean p1, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mClippEnable:Z

    return p1
.end method

.method private apply(Landroid/widget/PopupWindow;)V
    .locals 2
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;

    .line 120
    iget-boolean v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mClippEnable:Z

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 121
    iget-boolean v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->setIgnoreCheekPress()V

    .line 125
    :cond_0
    iget v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mInputMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 126
    iget v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mInputMode:I

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 129
    :cond_1
    iget v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mSoftInputMode:I

    if-eq v0, v1, :cond_2

    .line 130
    iget v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mSoftInputMode:I

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 133
    :cond_2
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_3

    .line 134
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 137
    :cond_3
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_4

    .line 138
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 141
    :cond_4
    iget-boolean v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mTouchable:Z

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 142
    return-void
.end method

.method private build()Landroid/widget/PopupWindow;
    .locals 6

    .line 145
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mContentView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v2, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mResLayoutId:I

    move-object v3, v1

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mContentView:Landroid/view/View;

    .line 149
    :cond_0
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 150
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mIsBackgroundDark:Z

    if-eqz v2, :cond_2

    .line 151
    iget v2, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mBackgroundDrakValue:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget v2, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mBackgroundDrakValue:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iget v2, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mBackgroundDrakValue:F

    goto :goto_0

    :cond_1
    const v2, 0x3f333333    # 0.7f

    .line 152
    .local v2, "alpha":F
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    iput-object v3, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mWindow:Landroid/view/Window;

    .line 153
    iget-object v3, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 154
    .local v3, "params":Landroid/view/WindowManager$LayoutParams;
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 155
    iget-object v4, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mWindow:Landroid/view/Window;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 156
    iget-object v4, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 159
    .end local v2    # "alpha":F
    .end local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget v2, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mWidth:I

    if-eqz v2, :cond_3

    iget v2, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mHeight:I

    if-eqz v2, :cond_3

    .line 160
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mContentView:Landroid/view/View;

    iget v4, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mWidth:I

    iget v5, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mHeight:I

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    goto :goto_1

    .line 162
    :cond_3
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mContentView:Landroid/view/View;

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 165
    :goto_1
    iget v2, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mAnimationStyle:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 166
    iget-object v2, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v3, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mAnimationStyle:I

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 169
    :cond_4
    iget-object v2, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-direct {p0, v2}, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->apply(Landroid/widget/PopupWindow;)V

    .line 170
    iget v2, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mWidth:I

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    iget v2, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mHeight:I

    if-nez v2, :cond_6

    .line 171
    :cond_5
    iget-object v2, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/View;->measure(II)V

    .line 172
    iget-object v2, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mWidth:I

    .line 173
    iget-object v2, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mHeight:I

    .line 176
    :cond_6
    iget-object v2, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 177
    iget-boolean v2, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->enableOutsideTouchDisMiss:Z

    if-nez v2, :cond_7

    .line 178
    iget-object v2, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 179
    iget-object v2, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 180
    iget-object v2, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    iget-object v1, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 182
    iget-object v1, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 183
    iget-object v1, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$1;

    invoke-direct {v2, p0}, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$1;-><init>(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 193
    iget-object v1, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v2, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$2;

    invoke-direct {v2, p0}, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$2;-><init>(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    .line 212
    :cond_7
    iget-object v1, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-boolean v2, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mIsFocusable:Z

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 213
    iget-object v1, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    iget-object v1, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-boolean v2, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mIsOutside:Z

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 217
    :goto_2
    iget-object v1, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->update()V

    .line 218
    iget-object v1, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v1
.end method


# virtual methods
.method public dissmiss()V
    .locals 2

    .line 226
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 230
    :cond_0
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 232
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 233
    iget-object v1, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 236
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 240
    :cond_2
    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 67
    iget v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mHeight:I

    return v0
.end method

.method public getPopupWindow()Landroid/widget/PopupWindow;
    .locals 1

    .line 243
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 63
    iget v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mWidth:I

    return v0
.end method

.method public isShow()Z
    .locals 2

    .line 112
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 114
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0

    .line 116
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDismiss()V
    .locals 0

    .line 222
    invoke-virtual {p0}, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->dissmiss()V

    .line 223
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .line 79
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 83
    :cond_0
    return-object p0
.end method

.method public showAsDropDown(Landroid/view/View;II)Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xOff"    # I
    .param p3, "yOff"    # I

    .line 71
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 75
    :cond_0
    return-object p0
.end method

.method public showAsDropDown(Landroid/view/View;III)Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xOff"    # I
    .param p3, "yOff"    # I
    .param p4, "gravity"    # I
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x13
    .end annotation

    .line 90
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 94
    :cond_0
    return-object p0
.end method

.method public showAtLocation(Landroid/view/View;III)Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 98
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 102
    :cond_0
    return-object p0
.end method
