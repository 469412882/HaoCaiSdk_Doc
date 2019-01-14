.class public Lcom/qihoo360/mobilesafe/parser/manifest/bean/DataBean;
.super Ljava/lang/Object;
.source "DataBean.java"


# instance fields
.field public host:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public pathPattern:Ljava/lang/String;

.field public pathPrefix:Ljava/lang/String;

.field public port:Ljava/lang/String;

.field public scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPatternMatcherType()I
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/bean/DataBean;->pathPattern:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/bean/DataBean;->pathPattern:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const/4 v0, 0x0

    return v0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/qihoo360/mobilesafe/parser/manifest/bean/DataBean;->pathPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    const/4 v0, 0x1

    return v0

    .line 50
    :cond_1
    const/4 v0, 0x2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 37
    const-string v0, "{scheme:%s, host:%s, mimeType:%s, path:%s, pathPattern:%s, pathPrefix:%s, port:%s}"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/qihoo360/mobilesafe/parser/manifest/bean/DataBean;->scheme:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/qihoo360/mobilesafe/parser/manifest/bean/DataBean;->host:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/qihoo360/mobilesafe/parser/manifest/bean/DataBean;->mimeType:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/qihoo360/mobilesafe/parser/manifest/bean/DataBean;->pathPattern:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/qihoo360/mobilesafe/parser/manifest/bean/DataBean;->pathPrefix:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/qihoo360/mobilesafe/parser/manifest/bean/DataBean;->path:Ljava/lang/String;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/qihoo360/mobilesafe/parser/manifest/bean/DataBean;->port:Ljava/lang/String;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
