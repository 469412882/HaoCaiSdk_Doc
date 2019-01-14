.class public final Lcom/qihoo360/loader2/alc/ActivityController;
.super Ljava/lang/Object;
.source "ActivityController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/loader2/alc/ActivityController$IActivityUpdate;
    }
.end annotation


# static fields
.field private static sActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sActivityThreadActivities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation
.end field

.field private static sActivityThreadServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation
.end field

.field private static sHandler:Ljava/lang/reflect/InvocationHandler;

.field private static sListener:Lcom/qihoo360/loader2/alc/ActivityController$IActivityUpdate;

.field private static sStub:Lcom/qihoo360/loader2/alc/IActivityWatcher$Stub;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 41
    sget-object v0, Lcom/qihoo360/loader2/alc/ActivityController;->sActivityThreadActivities:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .line 41
    sget-object v0, Lcom/qihoo360/loader2/alc/ActivityController;->sActivityThreadServices:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200()Lcom/qihoo360/loader2/alc/ActivityController$IActivityUpdate;
    .locals 1

    .line 41
    sget-object v0, Lcom/qihoo360/loader2/alc/ActivityController;->sListener:Lcom/qihoo360/loader2/alc/ActivityController$IActivityUpdate;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/ArrayList;
    .locals 1

    .line 41
    sget-object v0, Lcom/qihoo360/loader2/alc/ActivityController;->sActivities:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static final init()V
    .locals 0

    .line 62
    invoke-static {}, Lcom/qihoo360/loader2/alc/ActivityController;->loadVar()V

    .line 63
    return-void
.end method

.method public static final install(Landroid/app/Application;)V
    .locals 2
    .param p0, "application"    # Landroid/app/Application;

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 67
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "ws000"

    const-string v1, "install activity watcher"

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    invoke-static {}, Lcom/qihoo360/loader2/alc/ActivityController;->install2x()V

    .line 71
    return-void

    .line 74
    :cond_1
    sget-boolean v0, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v0, :cond_2

    .line 75
    const-string v0, "ws000"

    const-string v1, "install activity lifecycle callbacks"

    invoke-static {v0, v1}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_2
    invoke-static {p0}, Lcom/qihoo360/loader2/alc/ActivityController;->install4x(Landroid/app/Application;)V

    .line 78
    return-void
.end method

.method private static final install2x()V
    .locals 10

    .line 102
    new-instance v0, Lcom/qihoo360/loader2/alc/ActivityController$1;

    invoke-direct {v0}, Lcom/qihoo360/loader2/alc/ActivityController$1;-><init>()V

    sput-object v0, Lcom/qihoo360/loader2/alc/ActivityController;->sStub:Lcom/qihoo360/loader2/alc/IActivityWatcher$Stub;

    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "clsAMN":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    move-object v2, v1

    .line 130
    .local v2, "clsIAW":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v3, "android.app.ActivityManagerNative"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v0, v3

    .line 131
    const-string v3, "android.app.IActivityWatcher"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    move-object v2, v3

    .line 135
    nop

    .line 136
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_0

    .line 137
    const-string v3, "ws000"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AMN="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " IAW="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    const/4 v3, 0x0

    .line 141
    .local v3, "m1":Ljava/lang/reflect/Method;
    move-object v4, v1

    .line 143
    .local v4, "m2":Ljava/lang/reflect/Method;
    :try_start_1
    const-string v5, "getDefault"

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v3, v5

    .line 144
    const-string v5, "registerActivityWatcher"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    aput-object v2, v8, v6

    invoke-virtual {v0, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v4, v5

    .line 151
    nop

    .line 152
    sget-boolean v5, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v5, :cond_1

    .line 153
    const-string v5, "ws000"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDefault="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " registerActivityWatcher="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_1
    move-object v5, v1

    .line 158
    .local v5, "oAMN":Ljava/lang/Object;
    :try_start_2
    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    .line 159
    new-array v1, v7, [Ljava/lang/Object;

    sget-object v7, Lcom/qihoo360/loader2/alc/ActivityController;->sStub:Lcom/qihoo360/loader2/alc/IActivityWatcher$Stub;

    aput-object v7, v1, v6

    invoke-virtual {v4, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0

    .line 169
    nop

    .line 170
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_2

    .line 171
    const-string v1, "ws000"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "oAMN="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_2
    return-void

    .line 166
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 168
    return-void

    .line 163
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 165
    return-void

    .line 160
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 161
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 162
    return-void

    .line 148
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "oAMN":Ljava/lang/Object;
    :catch_3
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 150
    return-void

    .line 145
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 147
    return-void

    .line 132
    .end local v1    # "e":Ljava/lang/SecurityException;
    .end local v3    # "m1":Ljava/lang/reflect/Method;
    .end local v4    # "m2":Ljava/lang/reflect/Method;
    :catch_5
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 134
    return-void
.end method

.method private static final install4x(Landroid/app/Application;)V
    .locals 9
    .param p0, "application"    # Landroid/app/Application;

    .line 177
    new-instance v0, Lcom/qihoo360/loader2/alc/ActivityController$2;

    invoke-direct {v0}, Lcom/qihoo360/loader2/alc/ActivityController$2;-><init>()V

    sput-object v0, Lcom/qihoo360/loader2/alc/ActivityController;->sHandler:Ljava/lang/reflect/InvocationHandler;

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/qihoo360/loader2/alc/ActivityController;->sActivities:Ljava/util/ArrayList;

    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "appClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    move-object v2, v1

    .line 217
    .local v2, "cbClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v3, "android.app.Application"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v0, v3

    .line 218
    const-string v3, "android.app.Application$ActivityLifecycleCallbacks"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    move-object v2, v3

    .line 222
    nop

    .line 223
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_0

    .line 224
    const-string v3, "ws000"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "install activity lifecycle callbacks: class="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    nop

    .line 229
    .local v1, "m":Ljava/lang/reflect/Method;
    :try_start_1
    const-string v3, "registerActivityLifecycleCallbacks"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v1, v3

    .line 236
    nop

    .line 237
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_1

    .line 238
    const-string v3, "ws000"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "install activity lifecycle callbacks: m="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_1
    const-class v3, Lcom/qihoo360/loader2/alc/ActivityController;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v2, v5, v6

    sget-object v7, Lcom/qihoo360/loader2/alc/ActivityController;->sHandler:Ljava/lang/reflect/InvocationHandler;

    invoke-static {v3, v5, v7}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    .line 242
    .local v3, "cb":Ljava/lang/Object;
    sget-boolean v5, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v5, :cond_2

    .line 243
    const-string v5, "ws000"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "install activity lifecycle callbacks: cb="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_2
    :try_start_2
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v6

    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0

    .line 257
    nop

    .line 258
    sget-boolean v4, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v4, :cond_3

    .line 259
    const-string v4, "ws000"

    const-string v5, "install activity lifecycle callbacks: ok"

    invoke-static {v4, v5}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_3
    return-void

    .line 254
    :catch_0
    move-exception v4

    .line 255
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 256
    return-void

    .line 251
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v4

    .line 252
    .local v4, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 253
    return-void

    .line 248
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v4

    .line 249
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 250
    return-void

    .line 233
    .end local v3    # "cb":Ljava/lang/Object;
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v3

    .line 234
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 235
    return-void

    .line 230
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v3

    .line 231
    .local v3, "e":Ljava/lang/SecurityException;
    invoke-virtual {v3}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 232
    return-void

    .line 219
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "e":Ljava/lang/SecurityException;
    :catch_5
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 221
    return-void
.end method

.method private static final loadVar()V
    .locals 10

    .line 264
    const/4 v0, 0x0

    move-object v1, v0

    .line 266
    .local v1, "clsAT":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v2, "android.app.ActivityThread"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_a

    move-object v1, v2

    .line 270
    nop

    .line 271
    sget-boolean v2, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v2, :cond_0

    .line 272
    const-string v2, "ws000"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clsAT="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    move-object v2, v0

    .line 277
    .local v2, "m0":Ljava/lang/reflect/Method;
    :try_start_1
    const-string v3, "currentActivityThread"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_8

    move-object v2, v3

    .line 284
    nop

    .line 285
    sget-boolean v3, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v3, :cond_1

    .line 286
    const-string v3, "ws000"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentActivityThread="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_1
    move-object v3, v0

    .line 291
    .local v3, "oAT":Ljava/lang/Object;
    :try_start_2
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5

    move-object v3, v4

    .line 301
    nop

    .line 302
    sget-boolean v4, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v4, :cond_2

    .line 303
    const-string v4, "ws000"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oAT="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_2
    const/4 v4, 0x0

    .line 307
    .local v4, "f1":Ljava/lang/reflect/Field;
    move-object v5, v0

    .line 309
    .local v5, "f2":Ljava/lang/reflect/Field;
    :try_start_3
    const-string v6, "mActivities"

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    move-object v4, v6

    .line 310
    const-string v6, "mServices"

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v5, v6

    .line 317
    nop

    .line 318
    sget-boolean v6, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v6, :cond_3

    .line 319
    const-string v6, "ws000"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AT f1="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " f2="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_3
    const/4 v6, 0x0

    .line 323
    .local v6, "o1":Ljava/lang/Object;
    nop

    .line 325
    .local v0, "o2":Ljava/lang/Object;
    const/4 v7, 0x1

    :try_start_4
    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 326
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v6, v8

    .line 327
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 328
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v7

    .line 335
    nop

    .line 336
    sget-boolean v7, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v7, :cond_4

    .line 337
    const-string v7, "ws000"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AT activities="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " services="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_4
    :try_start_5
    move-object v7, v6

    check-cast v7, Ljava/util/Map;

    sput-object v7, Lcom/qihoo360/loader2/alc/ActivityController;->sActivityThreadActivities:Ljava/util/Map;

    .line 342
    move-object v7, v0

    check-cast v7, Ljava/util/Map;

    sput-object v7, Lcom/qihoo360/loader2/alc/ActivityController;->sActivityThreadServices:Ljava/util/Map;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 346
    nop

    .line 348
    sget-boolean v7, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v7, :cond_5

    .line 349
    const-string v7, "ws000"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "converted: activities="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/qihoo360/loader2/alc/ActivityController;->sActivityThreadActivities:Ljava/util/Map;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " services="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/qihoo360/loader2/alc/ActivityController;->sActivityThreadServices:Ljava/util/Map;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_5
    return-void

    .line 343
    :catch_0
    move-exception v7

    .line 344
    .local v7, "e":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 345
    return-void

    .line 332
    .end local v7    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v7

    .line 333
    .local v7, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v7}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 334
    return-void

    .line 329
    .end local v7    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v7

    .line 330
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 331
    return-void

    .line 314
    .end local v0    # "o2":Ljava/lang/Object;
    .end local v6    # "o1":Ljava/lang/Object;
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 316
    return-void

    .line 311
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_4
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 313
    return-void

    .line 298
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v4    # "f1":Ljava/lang/reflect/Field;
    .end local v5    # "f2":Ljava/lang/reflect/Field;
    :catch_5
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 300
    return-void

    .line 295
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_6
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 297
    return-void

    .line 292
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_7
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 294
    return-void

    .line 281
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "oAT":Ljava/lang/Object;
    :catch_8
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 283
    return-void

    .line 278
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_9
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 280
    return-void

    .line 267
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v2    # "m0":Ljava/lang/reflect/Method;
    :catch_a
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 269
    return-void
.end method

.method public static final setListener(Lcom/qihoo360/loader2/alc/ActivityController$IActivityUpdate;)V
    .locals 0
    .param p0, "listener"    # Lcom/qihoo360/loader2/alc/ActivityController$IActivityUpdate;

    .line 84
    sput-object p0, Lcom/qihoo360/loader2/alc/ActivityController;->sListener:Lcom/qihoo360/loader2/alc/ActivityController$IActivityUpdate;

    .line 85
    return-void
.end method

.method public static final sumActivities()I
    .locals 4

    .line 88
    const/4 v0, -0x1

    .line 89
    .local v0, "sum":I
    sget-object v1, Lcom/qihoo360/loader2/alc/ActivityController;->sActivities:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 90
    sget-object v1, Lcom/qihoo360/loader2/alc/ActivityController;->sActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 91
    :cond_0
    sget-object v1, Lcom/qihoo360/loader2/alc/ActivityController;->sActivityThreadActivities:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 92
    sget-object v1, Lcom/qihoo360/loader2/alc/ActivityController;->sActivityThreadActivities:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    .line 94
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/qihoo360/replugin/helper/LogDebug;->LOG:Z

    if-eqz v1, :cond_2

    .line 95
    const-string v1, "ws000"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process sumActivities = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo360/replugin/helper/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_2
    return v0
.end method
