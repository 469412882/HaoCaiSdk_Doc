.class public final Lcom/qihoo360/replugin/sdk/model/P;
.super Ljava/lang/Object;
.source "bean.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0017\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008R\u001a\u0010\u0018\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u0008R\u001a\u0010\u001b\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0006\"\u0004\u0008\u001d\u0010\u0008R\u001a\u0010\u001e\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u000c\"\u0004\u0008 \u0010\u000e\u00a8\u0006!"
    }
    d2 = {
        "Lcom/qihoo360/replugin/sdk/model/P;",
        "",
        "()V",
        "desc",
        "",
        "getDesc",
        "()Ljava/lang/String;",
        "setDesc",
        "(Ljava/lang/String;)V",
        "env",
        "",
        "getEnv",
        "()I",
        "setEnv",
        "(I)V",
        "filetype",
        "getFiletype",
        "setFiletype",
        "md5",
        "getMd5",
        "setMd5",
        "packagename",
        "getPackagename",
        "setPackagename",
        "sdkcode",
        "getSdkcode",
        "setSdkcode",
        "url",
        "getUrl",
        "setUrl",
        "version",
        "getVersion",
        "setVersion",
        "host-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field private desc:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private env:I

.field private filetype:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private md5:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private packagename:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sdkcode:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/qihoo360/replugin/sdk/model/P;->desc:Ljava/lang/String;

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/qihoo360/replugin/sdk/model/P;->env:I

    .line 25
    const-string v1, ""

    iput-object v1, p0, Lcom/qihoo360/replugin/sdk/model/P;->filetype:Ljava/lang/String;

    .line 26
    const-string v1, ""

    iput-object v1, p0, Lcom/qihoo360/replugin/sdk/model/P;->sdkcode:Ljava/lang/String;

    .line 27
    const-string v1, ""

    iput-object v1, p0, Lcom/qihoo360/replugin/sdk/model/P;->md5:Ljava/lang/String;

    .line 28
    const-string v1, ""

    iput-object v1, p0, Lcom/qihoo360/replugin/sdk/model/P;->packagename:Ljava/lang/String;

    .line 29
    const-string v1, ""

    iput-object v1, p0, Lcom/qihoo360/replugin/sdk/model/P;->url:Ljava/lang/String;

    .line 30
    iput v0, p0, Lcom/qihoo360/replugin/sdk/model/P;->version:I

    return-void
.end method


# virtual methods
.method public final getDesc()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/model/P;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnv()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/qihoo360/replugin/sdk/model/P;->env:I

    return v0
.end method

.method public final getFiletype()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/model/P;->filetype:Ljava/lang/String;

    return-object v0
.end method

.method public final getMd5()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/model/P;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackagename()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/model/P;->packagename:Ljava/lang/String;

    return-object v0
.end method

.method public final getSdkcode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/model/P;->sdkcode:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/qihoo360/replugin/sdk/model/P;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/qihoo360/replugin/sdk/model/P;->version:I

    return v0
.end method

.method public final setDesc(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/qihoo360/replugin/sdk/model/P;->desc:Ljava/lang/String;

    return-void
.end method

.method public final setEnv(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 24
    iput p1, p0, Lcom/qihoo360/replugin/sdk/model/P;->env:I

    return-void
.end method

.method public final setFiletype(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/qihoo360/replugin/sdk/model/P;->filetype:Ljava/lang/String;

    return-void
.end method

.method public final setMd5(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/qihoo360/replugin/sdk/model/P;->md5:Ljava/lang/String;

    return-void
.end method

.method public final setPackagename(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/qihoo360/replugin/sdk/model/P;->packagename:Ljava/lang/String;

    return-void
.end method

.method public final setSdkcode(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/qihoo360/replugin/sdk/model/P;->sdkcode:Ljava/lang/String;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/qihoo360/replugin/sdk/model/P;->url:Ljava/lang/String;

    return-void
.end method

.method public final setVersion(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 30
    iput p1, p0, Lcom/qihoo360/replugin/sdk/model/P;->version:I

    return-void
.end method
