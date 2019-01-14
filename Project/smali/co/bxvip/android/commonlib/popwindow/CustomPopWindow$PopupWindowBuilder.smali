.class public Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;
.super Ljava/lang/Object;
.source "CustomPopWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PopupWindowBuilder"
.end annotation


# instance fields
.field private mCustomPopWindow:Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    new-instance v0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;-><init>(Landroid/content/Context;Ljava/lang/Object;Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$1;)V

    iput-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;->mCustomPopWindow:Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;

    .line 251
    return-void
.end method


# virtual methods
.method public builder()Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;
    .locals 0

    .line 348
    return-object p0
.end method

.method public create()Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;
    .locals 1

    .line 343
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;->mCustomPopWindow:Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;

    invoke-static {v0}, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->access$1900(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;)Landroid/widget/PopupWindow;

    .line 344
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;->mCustomPopWindow:Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;

    return-object v0
.end method

.method public enableBackgroundDark(Z)Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;
    .locals 1
    .param p1, "isDark"    # Z

    .line 328
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;->mCustomPopWindow:Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;

    invoke-static {v0, p1}, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->access$1602(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;Z)Z

    .line 329
    return-object p0
.end method

.method public enableOutsideTouchableDissmiss(Z)Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;
    .locals 1
    .param p1, "disMiss"    # Z

    .line 338
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;->mCustomPopWindow:Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;

    invoke-static {v0, p1}, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->access$1802(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;Z)Z

    .line 339
    return-object p0
.end method

.method public resetView(Landroid/view/View;)Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 277
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;->mCustomPopWindow:Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->access$602(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;Landroid/view/View;)Landroid/view/View;

    .line 278
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;->mCustomPopWindow:Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;

    invoke-static {v0, p1}, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->access$602(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;Landroid/view/View;)Landroid/view/View;

    .line 279
    return-object p0
.end method

.method public setAnimationStyle(I)Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;
    .locals 1
    .param p1, "animationStyle"    # I

    .line 288
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;->mCustomPopWindow:Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;

    invoke-static {v0, p1}, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->access$802(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;I)I

    .line 289
    return-object p0
.end method

.method public setBgDarkAlpha(F)Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;
    .locals 1
    .param p1, "darkValue"    # F

    .line 333
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;->mCustomPopWindow:Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;

    invoke-static {v0, p1}, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->access$1702(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;F)F

    .line 334
    return-object p0
.end method

.method public setClippingEnable(Z)Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;
    .locals 1
    .param p1, "enable"    # Z

    .line 293
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;->mCustomPopWindow:Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;

    invoke-static {v0, p1}, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->access$902(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;Z)Z

    .line 294
    return-object p0
.end method

.method public setFocusable(Z)Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;
    .locals 1
    .param p1, "focusable"    # Z

    .line 260
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;->mCustomPopWindow:Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;

    invoke-static {v0, p1}, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->access$402(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;Z)Z

    .line 261
    return-object p0
.end method

.method public setIgnoreCheekPress(Z)Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;
    .locals 1
    .param p1, "ignoreCheekPress"    # Z

    .line 298
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;->mCustomPopWindow:Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;

    invoke-static {v0, p1}, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->access$1002(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;Z)Z

    .line 299
    return-object p0
.end method

.method public setInputMethodMode(I)Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;
    .locals 1
    .param p1, "mode"    # I

    .line 303
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;->mCustomPopWindow:Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;

    invoke-static {v0, p1}, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->access$1102(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;I)I

    .line 304
    return-object p0
.end method

.method public setOnDissmissListener(Landroid/widget/PopupWindow$OnDismissListener;)Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;
    .locals 1
    .param p1, "onDissmissListener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .line 308
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;->mCustomPopWindow:Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;

    invoke-static {v0, p1}, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->access$1202(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;Landroid/widget/PopupWindow$OnDismissListener;)Landroid/widget/PopupWindow$OnDismissListener;

    .line 309
    return-object p0
.end method

.method public setOutsideTouchable(Z)Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;
    .locals 1
    .param p1, "outsideTouchable"    # Z

    .line 283
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;->mCustomPopWindow:Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;

    invoke-static {v0, p1}, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->access$702(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;Z)Z

    .line 284
    return-object p0
.end method

.method public setSoftInputMode(I)Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;
    .locals 1
    .param p1, "softInputMode"    # I

    .line 313
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;->mCustomPopWindow:Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;

    invoke-static {v0, p1}, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->access$1302(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;I)I

    .line 314
    return-object p0
.end method

.method public setTouchIntercepter(Landroid/view/View$OnTouchListener;)Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;
    .locals 1
    .param p1, "touchIntercepter"    # Landroid/view/View$OnTouchListener;

    .line 323
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;->mCustomPopWindow:Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;

    invoke-static {v0, p1}, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->access$1502(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;Landroid/view/View$OnTouchListener;)Landroid/view/View$OnTouchListener;

    .line 324
    return-object p0
.end method

.method public setTouchable(Z)Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;
    .locals 1
    .param p1, "touchable"    # Z

    .line 318
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;->mCustomPopWindow:Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;

    invoke-static {v0, p1}, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->access$1402(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;Z)Z

    .line 319
    return-object p0
.end method

.method public setView(I)Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;
    .locals 2
    .param p1, "resLayoutId"    # I

    .line 265
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;->mCustomPopWindow:Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;

    invoke-static {v0, p1}, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->access$502(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;I)I

    .line 266
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;->mCustomPopWindow:Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->access$602(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;Landroid/view/View;)Landroid/view/View;

    .line 267
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 271
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;->mCustomPopWindow:Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;

    invoke-static {v0, p1}, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->access$602(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;Landroid/view/View;)Landroid/view/View;

    .line 272
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;->mCustomPopWindow:Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->access$502(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;I)I

    .line 273
    return-object p0
.end method

.method public size(II)Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 254
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;->mCustomPopWindow:Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;

    invoke-static {v0, p1}, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->access$102(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;I)I

    .line 255
    iget-object v0, p0, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow$PopupWindowBuilder;->mCustomPopWindow:Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;

    invoke-static {v0, p2}, Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;->access$202(Lco/bxvip/android/commonlib/popwindow/CustomPopWindow;I)I

    .line 256
    return-object p0
.end method
