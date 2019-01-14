.class final Lcn/jiguang/a/a/b/b;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field final synthetic a:Lcn/jiguang/a/a/b/a;


# direct methods
.method public constructor <init>(Lcn/jiguang/a/a/b/a;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/a/a/b/b;->a:Lcn/jiguang/a/a/b/a;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    iget-object v0, p0, Lcn/jiguang/a/a/b/b;->a:Lcn/jiguang/a/a/b/a;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p1

    invoke-static {v0, p1}, Lcn/jiguang/a/a/b/a;->a(Lcn/jiguang/a/a/b/a;I)I

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcn/jiguang/a/a/b/b;->a:Lcn/jiguang/a/a/b/a;

    invoke-static {v0, p1}, Lcn/jiguang/a/a/b/a;->a(Lcn/jiguang/a/a/b/a;Lorg/json/JSONArray;)V

    const-string p1, "CellInfoManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSignalStrengthsChanged:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jiguang/a/a/b/b;->a:Lcn/jiguang/a/a/b/a;

    invoke-static {v1}, Lcn/jiguang/a/a/b/a;->a(Lcn/jiguang/a/a/b/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/jiguang/a/a/b/b;->a:Lcn/jiguang/a/a/b/a;

    invoke-virtual {p1}, Lcn/jiguang/a/a/b/a;->d()V

    return-void
.end method
