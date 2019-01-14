.class public Lco/bxvip/android/commonlib/utils/KeybordS;
.super Ljava/lang/Object;
.source "KeybordS.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeKeybord(Landroid/widget/EditText;Landroid/content/Context;)V
    .locals 3
    .param p0, "mEditText"    # Landroid/widget/EditText;
    .param p1, "mContext"    # Landroid/content/Context;

    .line 35
    const-string v0, "input_method"

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 37
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 38
    return-void
.end method

.method public static isSoftInputShow(Landroid/app/Activity;)Z
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 51
    const-string v2, "input_method"

    .line 52
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 55
    .local v2, "inputmanger":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 57
    .end local v2    # "inputmanger":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return v1
.end method

.method public static openKeybord(Landroid/widget/EditText;Landroid/content/Context;)V
    .locals 3
    .param p0, "mEditText"    # Landroid/widget/EditText;
    .param p1, "mContext"    # Landroid/content/Context;

    .line 19
    const-string v0, "input_method"

    .line 20
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 21
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 22
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 24
    return-void
.end method
