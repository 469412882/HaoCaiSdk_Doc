.class public Lcn/jpush/android/api/BasicPushNotificationBuilder;
.super Lcn/jpush/android/api/DefaultPushNotificationBuilder;
.source "SourceFile"


# instance fields
.field protected a:Landroid/content/Context;

.field public developerArg0:Ljava/lang/String;

.field public notificationDefaults:I

.field public notificationFlags:I

.field public statusBarDrawable:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcn/jpush/android/api/DefaultPushNotificationBuilder;-><init>()V

    .line 21
    const/4 v0, -0x2

    iput v0, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->notificationDefaults:I

    .line 24
    const/16 v0, 0x10

    iput v0, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->notificationFlags:I

    .line 27
    sget v0, Lcn/jpush/android/a;->b:I

    iput v0, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->statusBarDrawable:I

    .line 30
    const-string v0, "developerArg0"

    iput-object v0, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->developerArg0:Ljava/lang/String;

    .line 35
    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "NULL context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_0
    iput-object p1, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->a:Landroid/content/Context;

    .line 37
    return-void
.end method

.method static a(Ljava/lang/String;)Lcn/jpush/android/api/PushNotificationBuilder;
    .locals 2

    .line 94
    const-string v0, "_____"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 96
    const/4 v0, 0x0

    aget-object v0, p0, v0

    .line 98
    const-string v1, "basic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    new-instance v0, Lcn/jpush/android/api/BasicPushNotificationBuilder;

    sget-object v1, Lcn/jpush/android/a;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/jpush/android/api/BasicPushNotificationBuilder;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 100
    :cond_0
    const-string v1, "custom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    new-instance v0, Lcn/jpush/android/api/CustomPushNotificationBuilder;

    sget-object v1, Lcn/jpush/android/a;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/jpush/android/api/CustomPushNotificationBuilder;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 103
    :cond_1
    new-instance v0, Lcn/jpush/android/api/BasicPushNotificationBuilder;

    sget-object v1, Lcn/jpush/android/a;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/jpush/android/api/BasicPushNotificationBuilder;-><init>(Landroid/content/Context;)V

    .line 106
    :goto_0
    invoke-virtual {v0, p0}, Lcn/jpush/android/api/BasicPushNotificationBuilder;->a([Ljava/lang/String;)V

    .line 108
    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->notificationDefaults:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_____"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->notificationFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_____"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->statusBarDrawable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_____"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->developerArg0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 82
    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->notificationDefaults:I

    .line 83
    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->notificationFlags:I

    .line 84
    const/4 v0, 0x3

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->statusBarDrawable:I

    .line 86
    array-length v0, p1

    const/4 v1, 0x5

    if-ne v1, v0, :cond_0

    .line 87
    const/4 v0, 0x4

    aget-object p1, p1, v0

    iput-object p1, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->developerArg0:Ljava/lang/String;

    .line 91
    :cond_0
    return-void
.end method

.method public getDeveloperArg0()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->developerArg0:Ljava/lang/String;

    return-object v0
.end method

.method getNotification(Landroid/app/Notification$Builder;)Landroid/app/Notification;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 47
    iget v0, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->notificationDefaults:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 49
    iget v0, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->notificationDefaults:I

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 51
    :cond_0
    iget v0, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->statusBarDrawable:I

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 53
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p1

    .line 58
    :goto_0
    iget v0, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->notificationFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/app/Notification;->flags:I

    .line 59
    return-object p1
.end method

.method resetNotificationParams(Landroid/app/Notification;)V
    .locals 1

    .line 64
    iget v0, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->notificationDefaults:I

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 65
    iget v0, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->notificationFlags:I

    iput v0, p1, Landroid/app/Notification;->flags:I

    .line 66
    iget v0, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->statusBarDrawable:I

    iput v0, p1, Landroid/app/Notification;->icon:I

    .line 67
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "basic_____"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jpush/android/api/BasicPushNotificationBuilder;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
