.class final Lcom/qihoo360/replugin/model/PluginInfo$2;
.super Ljava/lang/Object;
.source "PluginInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qihoo360/replugin/model/PluginInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/qihoo360/replugin/model/PluginInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/qihoo360/replugin/model/PluginInfo;Lcom/qihoo360/replugin/model/PluginInfo;)I
    .locals 6
    .param p1, "lhs"    # Lcom/qihoo360/replugin/model/PluginInfo;
    .param p2, "rhs"    # Lcom/qihoo360/replugin/model/PluginInfo;

    .line 989
    invoke-virtual {p1}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersionValue()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/qihoo360/replugin/model/PluginInfo;->getVersionValue()J

    move-result-wide v2

    sub-long v4, v0, v2

    .line 990
    .local v4, "diff":J
    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-lez v2, :cond_0

    .line 991
    const/4 v0, 0x1

    return v0

    .line 992
    :cond_0
    cmp-long v2, v4, v0

    if-gez v2, :cond_1

    .line 993
    const/4 v0, -0x1

    return v0

    .line 995
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 985
    check-cast p1, Lcom/qihoo360/replugin/model/PluginInfo;

    check-cast p2, Lcom/qihoo360/replugin/model/PluginInfo;

    invoke-virtual {p0, p1, p2}, Lcom/qihoo360/replugin/model/PluginInfo$2;->compare(Lcom/qihoo360/replugin/model/PluginInfo;Lcom/qihoo360/replugin/model/PluginInfo;)I

    move-result p1

    return p1
.end method
