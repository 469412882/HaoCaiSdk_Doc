.class public Lcn/jpush/android/api/DefaultPushNotificationBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/jpush/android/api/PushNotificationBuilder;


# static fields
.field private static final DEFAULT_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "JPush"

.field private static final DEFAULT_NOTIFICATION_CHANNEL_NAME:Ljava/lang/String; = "Notification"

.field private static final TAG:Ljava/lang/String; = "DefaultPushNotificationBuilder"

.field private static hasCreateNotificationChannel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->hasCreateNotificationChannel:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method buildContentView(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/RemoteViews;
    .locals 0

    .line 41
    const/4 p1, 0x0

    return-object p1
.end method

.method public buildNotification(Ljava/util/Map;)Landroid/app/Notification;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/Notification;"
        }
    .end annotation

    .line 66
    sget-object v0, Lcn/jpush/android/a;->d:Ljava/lang/String;

    .line 67
    const-string v1, ""

    .line 68
    const-string v2, ""

    .line 69
    const-string v3, ""

    .line 70
    nop

    .line 71
    const-string v4, ""

    .line 72
    const-string v5, ""

    .line 73
    nop

    .line 76
    const-string v6, "cn.jpush.android.ALERT"

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 77
    const-string v1, "cn.jpush.android.ALERT"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 80
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    .line 81
    const-string p1, "DefaultPushNotificationBuilder"

    const-string v0, "No notification content to show. Give up."

    invoke-static {p1, v0}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-object v7

    .line 85
    :cond_1
    const-string v6, "cn.jpush.android.NOTIFICATION_CONTENT_TITLE"

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 86
    const-string v0, "cn.jpush.android.NOTIFICATION_CONTENT_TITLE"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89
    :cond_2
    const-string v6, "cn.jpush.android.BIG_TEXT"

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 90
    const-string v2, "cn.jpush.android.BIG_TEXT"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 93
    :cond_3
    const-string v6, "cn.jpush.android.INBOX"

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 94
    const-string v3, "cn.jpush.android.INBOX"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 97
    :cond_4
    const-string v6, "cn.jpush.android.NOTI_PRIORITY"

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const/4 v8, 0x0

    if-eqz v6, :cond_5

    .line 98
    const-string v6, "cn.jpush.android.NOTI_PRIORITY"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    .line 101
    :cond_5
    const/4 v6, 0x0

    :goto_0
    const-string v9, "cn.jpush.android.NOTI_CATEGORY"

    invoke-interface {p1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 102
    const-string v4, "cn.jpush.android.NOTI_CATEGORY"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 105
    :cond_6
    const-string v9, "cn.jpush.android.BIG_PIC_PATH"

    invoke-interface {p1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 106
    const-string v5, "cn.jpush.android.BIG_PIC_PATH"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 109
    :cond_7
    const-string v9, "cn.jpush.android.ALERT_TYPE"

    invoke-interface {p1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, -0x1

    if-eqz v9, :cond_8

    .line 110
    const-string v9, "cn.jpush.android.ALERT_TYPE"

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    .line 113
    :cond_8
    const/4 p1, -0x1

    :goto_1
    if-lt p1, v10, :cond_9

    const/4 v9, 0x7

    if-le p1, v9, :cond_a

    .line 114
    :cond_9
    nop

    .line 118
    const/4 p1, -0x1

    :cond_a
    sget-object v9, Lcn/jpush/android/a;->e:Landroid/content/Context;

    if-eqz v9, :cond_1d

    .line 119
    sget-object v9, Lcn/jpush/android/a;->e:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v11, "jpush_notification_icon"

    const-string v12, "drawable"

    sget-object v13, Lcn/jpush/android/a;->e:Landroid/content/Context;

    .line 120
    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 119
    invoke-virtual {v9, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 121
    if-nez v9, :cond_c

    .line 122
    sget v9, Lcn/jpush/android/a;->b:I

    if-eqz v9, :cond_b

    .line 123
    sget v9, Lcn/jpush/android/a;->b:I

    goto :goto_2

    .line 126
    :cond_b
    :try_start_0
    sget-object v9, Lcn/jpush/android/a;->e:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    sget-object v11, Lcn/jpush/android/a;->e:Landroid/content/Context;

    .line 127
    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 126
    invoke-virtual {v9, v11, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 128
    const-string v11, "DefaultPushNotificationBuilder"

    const-string v12, "JPush.mPackageInconId == 0 ?, get icon from application info."

    invoke-static {v11, v12}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    goto :goto_2

    .line 129
    :catch_0
    move-exception p1

    .line 130
    const-string v0, "DefaultPushNotificationBuilder"

    const-string v1, "failed to get application info and icon."

    invoke-static {v0, v1, p1}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    return-object v7

    .line 142
    :cond_c
    :goto_2
    invoke-virtual {p0, v1, v0}, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->buildContentView(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v11

    .line 144
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0xb

    if-lt v12, v13, :cond_1a

    .line 146
    new-instance v7, Landroid/app/Notification$Builder;

    sget-object v12, Lcn/jpush/android/a;->e:Landroid/content/Context;

    invoke-direct {v7, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 147
    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 148
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 149
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 150
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 153
    const-string v0, "JPush"

    const-string v1, "Notification"

    invoke-static {v7, v0, v1, v6, p1}, Lcn/jpush/android/api/b;->a(Landroid/app/Notification$Builder;Ljava/lang/String;Ljava/lang/CharSequence;II)V

    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_18

    .line 159
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 160
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 161
    invoke-virtual {v0, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 162
    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 165
    :cond_d
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 166
    new-instance v0, Landroid/app/Notification$InboxStyle;

    invoke-direct {v0}, Landroid/app/Notification$InboxStyle;-><init>()V

    .line 168
    :try_start_1
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 169
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 172
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 173
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 174
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 175
    invoke-virtual {v1, v9, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    goto :goto_3

    .line 178
    :cond_e
    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 179
    invoke-virtual {v0, v3}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 180
    goto :goto_4

    .line 181
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " + "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " new messages"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 184
    goto :goto_5

    .line 182
    :catch_1
    move-exception v1

    .line 183
    const-string v2, "DefaultPushNotificationBuilder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "Set inbox style error: "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :goto_5
    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 189
    :cond_10
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 190
    const-string v0, "DefaultPushNotificationBuilder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set notification BPS with picture path:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :try_start_2
    new-instance v0, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    .line 193
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 194
    invoke-virtual {v0, v1}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 195
    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    .line 199
    :catch_2
    move-exception v0

    .line 200
    const-string v1, "DefaultPushNotificationBuilder"

    const-string v2, "Create big picture style failed."

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 196
    :catch_3
    move-exception v0

    .line 197
    const-string v1, "DefaultPushNotificationBuilder"

    const-string v2, "Create bitmap failed caused by OutOfMemoryError."

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 202
    :goto_6
    nop

    .line 205
    :cond_11
    :goto_7
    const/4 v0, 0x1

    if-eqz v6, :cond_16

    .line 207
    if-ne v6, v0, :cond_12

    .line 208
    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    goto :goto_8

    .line 209
    :cond_12
    const/4 v1, 0x2

    if-ne v6, v1, :cond_13

    .line 210
    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    goto :goto_8

    .line 211
    :cond_13
    if-ne v6, v10, :cond_14

    .line 212
    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    goto :goto_8

    .line 213
    :cond_14
    const/4 v1, -0x2

    if-ne v6, v1, :cond_15

    .line 214
    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    goto :goto_8

    .line 216
    :cond_15
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 219
    :cond_16
    :goto_8
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 220
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_17

    .line 222
    :try_start_3
    const-string v1, "android.app.Notification$Builder"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 223
    const-string v2, "setCategory"

    new-array v3, v0, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 224
    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v8

    invoke-virtual {v1, v7, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_9

    .line 229
    :catch_4
    move-exception v0

    .line 230
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 227
    :catch_5
    move-exception v0

    .line 228
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_9

    .line 225
    :catch_6
    move-exception v0

    .line 226
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 231
    :goto_9
    goto :goto_a

    .line 233
    :cond_17
    const-string v0, "DefaultPushNotificationBuilder"

    const-string v1, "Device rom SDK < 21, can not set notification category!"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_18
    :goto_a
    if-eqz v11, :cond_19

    .line 240
    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    goto :goto_b

    .line 242
    :cond_19
    const-string v0, "DefaultPushNotificationBuilder"

    const-string v1, " Use default notification view! "

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :goto_b
    invoke-virtual {v7, p1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 247
    invoke-virtual {p0, v7}, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->getNotification(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object p1

    return-object p1

    .line 251
    :cond_1a
    new-instance v2, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v9, v1, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 252
    invoke-virtual {p0, v2}, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->resetNotificationParams(Landroid/app/Notification;)V

    .line 253
    iput p1, v2, Landroid/app/Notification;->defaults:I

    .line 254
    if-nez v0, :cond_1b

    .line 255
    sget-object v0, Lcn/jpush/android/a;->d:Ljava/lang/String;

    .line 258
    :cond_1b
    if-eqz v11, :cond_1c

    .line 259
    iput-object v11, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_c

    .line 261
    :cond_1c
    sget-object p1, Lcn/jpush/android/a;->e:Landroid/content/Context;

    invoke-static {v2, p1, v0, v1, v7}, Lcn/jpush/android/api/b;->a(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 265
    :goto_c
    return-object v2

    .line 138
    :cond_1d
    const-string p1, "DefaultPushNotificationBuilder"

    const-string v0, "Can\'t find valid context when build notification."

    invoke-static {p1, v0}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-object v7
.end method

.method public getDeveloperArg0()Ljava/lang/String;
    .locals 1

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method getNotification(Landroid/app/Notification$Builder;)Landroid/app/Notification;
    .locals 2

    .line 51
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1

    .line 54
    :cond_0
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 56
    :catch_0
    move-exception p1

    .line 57
    const-string v0, "DefaultPushNotificationBuilder"

    const-string v1, "Build notification error:"

    invoke-static {v0, v1, p1}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    const/4 p1, 0x0

    return-object p1
.end method

.method resetNotificationParams(Landroid/app/Notification;)V
    .locals 0

    .line 46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 270
    const-string v0, ""

    return-object v0
.end method
