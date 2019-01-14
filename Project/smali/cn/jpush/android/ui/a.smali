.class public final Lcn/jpush/android/ui/a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field private final a:Lcn/jpush/android/data/b;

.field private final b:Landroid/content/Context;

.field private c:Z


# direct methods
.method public constructor <init>(Lcn/jpush/android/data/b;Landroid/content/Context;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jpush/android/ui/a;->c:Z

    .line 38
    iput-object p1, p0, Lcn/jpush/android/ui/a;->a:Lcn/jpush/android/data/b;

    .line 39
    iput-object p2, p0, Lcn/jpush/android/ui/a;->b:Landroid/content/Context;

    .line 40
    return-void
.end method

.method static synthetic a(Lcn/jpush/android/ui/a;Z)Z
    .locals 0

    .line 25
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/jpush/android/ui/a;->c:Z

    return p1
.end method


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 140
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 135
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 130
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 131
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 145
    iget-boolean p1, p0, Lcn/jpush/android/ui/a;->c:Z

    if-eqz p1, :cond_0

    .line 146
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 147
    return-void

    .line 150
    :cond_0
    iget-object p1, p0, Lcn/jpush/android/ui/a;->b:Landroid/content/Context;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/jpush/android/ui/a;->b:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p3, Landroid/app/Activity;

    invoke-virtual {p1, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 156
    :cond_1
    :try_start_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p3, p0, Lcn/jpush/android/ui/a;->b:Landroid/content/Context;

    invoke-direct {p1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 157
    const-string p3, "\u63d0\u793a"

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 158
    const-string p3, "SSL \u8bc1\u4e66\u5f02\u5e38\uff0c\u662f\u5426\u7ee7\u7eed\u52a0\u8f7d\uff1f"

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 159
    const-string p3, "\u5426"

    new-instance v0, Lcn/jpush/android/ui/a$1;

    invoke-direct {v0, p0, p2}, Lcn/jpush/android/ui/a$1;-><init>(Lcn/jpush/android/ui/a;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {p1, p3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 166
    const-string p3, "\u662f"

    new-instance v0, Lcn/jpush/android/ui/a$2;

    invoke-direct {v0, p0, p2}, Lcn/jpush/android/ui/a$2;-><init>(Lcn/jpush/android/ui/a;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {p1, p3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 174
    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 175
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 176
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    return-void

    .line 177
    :catch_0
    move-exception p1

    .line 178
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 179
    const-string p2, "JPushWebViewClient"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "show dialog error:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void

    .line 151
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 152
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8

    .line 44
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    const-string v1, "JPushWebViewClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Url vaule is :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 48
    invoke-static {p1}, Lcn/jpush/android/d/a;->a(Landroid/webkit/WebView;)V

    .line 49
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "{\"url\":\"%s\"}"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p2, v5, v3

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 50
    iget-object v4, p0, Lcn/jpush/android/ui/a;->a:Lcn/jpush/android/data/b;

    iget-boolean v4, v4, Lcn/jpush/android/data/b;->F:Z

    const/16 v5, 0x3f8

    if-eqz v4, :cond_0

    .line 51
    new-instance p1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p1, v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 52
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 53
    iget-object p1, p0, Lcn/jpush/android/ui/a;->a:Lcn/jpush/android/data/b;

    iget-object p1, p1, Lcn/jpush/android/data/b;->c:Ljava/lang/String;

    sget-object p2, Lcn/jpush/android/a;->e:Landroid/content/Context;

    invoke-static {p1, v5, v2, p2}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    .line 54
    return v1

    .line 57
    :cond_0
    const-string v4, ".mp3"

    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v2, "audio/*"

    invoke-virtual {v0, p2, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 61
    return v1

    .line 63
    :cond_1
    const-string v4, ".mp4"

    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, ".3gp"

    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_3

    .line 69
    :cond_2
    const-string v4, ".apk"

    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v0, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 71
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 72
    return v1

    .line 74
    :cond_3
    const-string p1, "http"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 76
    iget-object p1, p0, Lcn/jpush/android/ui/a;->a:Lcn/jpush/android/data/b;

    iget-object p1, p1, Lcn/jpush/android/data/b;->c:Ljava/lang/String;

    sget-object p2, Lcn/jpush/android/a;->e:Landroid/content/Context;

    invoke-static {p1, v5, v2, p2}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_2

    .line 77
    :cond_4
    const-string p1, "mailto"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 78
    const-string p1, "direct="

    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    .line 79
    if-gez p1, :cond_6

    const-string p1, "mailto"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 80
    const-string p1, "?"

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_5

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&direct=false"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 85
    :goto_0
    move-object p2, p1

    goto :goto_1

    .line 83
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "?direct=false"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 85
    :goto_1
    const-string p1, "direct="

    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 89
    :cond_6
    const-string p1, "?"

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    .line 90
    invoke-virtual {p2, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 91
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 93
    const-string p2, "JPushWebViewClient"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Uri: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v6}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string p2, "JPushWebViewClient"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "QueryString: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v6}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/4 p2, 0x0

    .line 98
    const-string v6, "mailto"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 99
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 100
    array-length v6, v4

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    .line 102
    const-string p2, "title="

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0x6

    .line 103
    const-string v6, "&content="

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 104
    invoke-virtual {p1, p2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 105
    add-int/lit8 v6, v6, 0x9

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 106
    new-array v6, v1, [Ljava/lang/String;

    aget-object v4, v4, v1

    aput-object v4, v6, v3

    .line 107
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    const-string v4, "plain/text"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v4, "android.intent.extra.EMAIL"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v4, "android.intent.extra.SUBJECT"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string p2, "android.intent.extra.TEXT"

    invoke-virtual {v3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    move-object p2, v3

    :cond_7
    if-eqz p2, :cond_8

    .line 116
    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 118
    :cond_8
    iget-object p1, p0, Lcn/jpush/android/ui/a;->a:Lcn/jpush/android/data/b;

    iget-object p1, p1, Lcn/jpush/android/data/b;->c:Ljava/lang/String;

    sget-object p2, Lcn/jpush/android/a;->e:Landroid/content/Context;

    invoke-static {p1, v5, v2, p2}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    .line 119
    return v1

    .line 121
    :cond_9
    :goto_2
    return v3

    .line 64
    :cond_a
    :goto_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v2, "video/*"

    invoke-virtual {v0, p2, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    return v1

    .line 122
    :catch_0
    move-exception p1

    .line 123
    const-string p1, "JPushWebViewClient"

    const-string p2, "Invalid url"

    invoke-static {p1, p2}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return v1
.end method
