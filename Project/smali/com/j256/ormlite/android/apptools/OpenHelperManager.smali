.class public Lcom/j256/ormlite/android/apptools/OpenHelperManager;
.super Ljava/lang/Object;
.source "OpenHelperManager.java"


# static fields
.field private static final HELPER_CLASS_RESOURCE_NAME:Ljava/lang/String; = "open_helper_classname"

.field private static volatile helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

.field private static helperClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static instanceCount:I

.field private static logger:Lcom/j256/ormlite/logger/Logger;

.field private static wasClosed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->logger:Lcom/j256/ormlite/logger/Logger;

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helperClass:Ljava/lang/Class;

    .line 42
    sput-object v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->wasClosed:Z

    .line 44
    sput v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->instanceCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static constructHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;",
            ">;)",
            "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;"
        }
    .end annotation

    .line 210
    .local p1, "openHelperClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;>;"
    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 215
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    nop

    .line 212
    nop

    .line 217
    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not construct instance of helper class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 211
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_1
    move-exception v0

    .line 212
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find public constructor that has a single (Context) argument for helper class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static declared-synchronized getHelper(Landroid/content/Context;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;

    monitor-enter v0

    .line 105
    :try_start_0
    sget-object v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helperClass:Ljava/lang/Class;

    if-nez v1, :cond_1

    .line 106
    if-nez p0, :cond_0

    .line 107
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "context argument is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 110
    .local v1, "appContext":Landroid/content/Context;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->lookupHelperClass(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->innerSetHelperClass(Ljava/lang/Class;)V

    .line 112
    .end local v1    # "appContext":Landroid/content/Context;
    :cond_1
    sget-object v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helperClass:Ljava/lang/Class;

    invoke-static {p0, v1}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->loadHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 104
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 74
    .local p1, "openHelperClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;

    monitor-enter v0

    .line 74
    if-nez p1, :cond_0

    .line 75
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "openHelperClass argument is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "openHelperClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catchall_0
    move-exception p0

    goto :goto_0

    .line 77
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "openHelperClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_0
    invoke-static {p1}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->innerSetHelperClass(Ljava/lang/Class;)V

    .line 78
    invoke-static {p0, p1}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->loadHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 73
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "openHelperClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :goto_0
    monitor-exit v0

    throw p0
.end method

.method private static innerSetHelperClass(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;",
            ">;)V"
        }
    .end annotation

    .line 147
    .local p0, "openHelperClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;>;"
    if-nez p0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Helper class was trying to be reset to null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    sget-object v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helperClass:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 150
    sput-object p0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helperClass:Ljava/lang/Class;

    goto :goto_0

    .line 151
    :cond_1
    sget-object v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helperClass:Ljava/lang/Class;

    if-eq v0, p0, :cond_2

    .line 152
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Helper class was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helperClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but is trying to be reset to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_2
    :goto_0
    return-void
.end method

.method private static loadHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 158
    .local p1, "openHelperClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    if-nez v0, :cond_2

    .line 159
    sget-boolean v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->wasClosed:Z

    if-eqz v0, :cond_0

    .line 161
    sget-object v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "helper was already closed and is being re-opened"

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/logger/Logger;->info(Ljava/lang/String;)V

    .line 163
    :cond_0
    if-nez p0, :cond_1

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 167
    .local v0, "appContext":Landroid/content/Context;
    invoke-static {v0, p1}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->constructHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v1

    sput-object v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    .line 168
    sget-object v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "zero instances, created helper {}"

    sget-object v3, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    invoke-static {}, Lcom/j256/ormlite/dao/BaseDaoImpl;->clearAllInternalObjectCaches()V

    .line 192
    invoke-static {}, Lcom/j256/ormlite/dao/DaoManager;->clearDaoCache()V

    .line 193
    const/4 v1, 0x0

    sput v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->instanceCount:I

    .line 196
    .end local v0    # "appContext":Landroid/content/Context;
    :cond_2
    sget v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->instanceCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->instanceCount:I

    .line 197
    sget-object v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "returning helper {}, instance count = {} "

    sget-object v2, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    sget v3, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->instanceCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 199
    sget-object v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    .line 200
    .local v0, "castHelper":Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;, "TT;"
    return-object v0
.end method

.method private static lookupHelperClass(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "+",
            "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;",
            ">;"
        }
    .end annotation

    .line 229
    .local p1, "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 230
    .local v0, "resources":Landroid/content/res/Resources;
    const-string v1, "open_helper_classname"

    const-string v2, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 231
    .local v1, "resourceId":I
    if-eqz v1, :cond_0

    .line 232
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "className":Ljava/lang/String;
    nop

    .line 236
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .local v3, "castClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;>;"
    return-object v3

    .line 238
    .end local v3    # "castClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;>;"
    :catch_0
    move-exception v3

    .line 239
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not create helper instance for class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 244
    .end local v2    # "className":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v2, p1

    .line 244
    .local v2, "componentClassWalk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v2, :cond_6

    .line 246
    invoke-virtual {v2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 247
    .local v3, "superType":Ljava/lang/reflect/Type;
    if-eqz v3, :cond_5

    instance-of v4, v3, Ljava/lang/reflect/ParameterizedType;

    if-nez v4, :cond_1

    .line 248
    goto :goto_3

    .line 251
    :cond_1
    move-object v4, v3

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 253
    .local v4, "types":[Ljava/lang/reflect/Type;
    if-eqz v4, :cond_5

    array-length v5, v4

    if-nez v5, :cond_2

    .line 254
    goto :goto_3

    .line 256
    :cond_2
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    .line 258
    .local v7, "type":Ljava/lang/reflect/Type;
    instance-of v8, v7, Ljava/lang/Class;

    if-nez v8, :cond_3

    .line 259
    goto :goto_2

    .line 261
    :cond_3
    move-object v8, v7

    check-cast v8, Ljava/lang/Class;

    .line 262
    .local v8, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v9, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 264
    move-object v5, v8

    .line 266
    .local v5, "castOpenHelperClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;>;"
    return-object v5

    .line 256
    .end local v5    # "castOpenHelperClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;>;"
    .end local v7    # "type":Ljava/lang/reflect/Type;
    .end local v8    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 244
    .end local v3    # "superType":Ljava/lang/reflect/Type;
    .end local v4    # "types":[Ljava/lang/reflect/Type;
    :cond_5
    :goto_3
    nop

    .line 245
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    .line 270
    .end local v2    # "componentClassWalk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find OpenHelperClass because none of the generic parameters of class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " extends OrmLiteSqliteOpenHelper.  You should use getHelper(Context, Class) instead."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static declared-synchronized releaseHelper()V
    .locals 6

    const-class v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;

    monitor-enter v0

    .line 127
    :try_start_0
    sget v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->instanceCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sput v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->instanceCount:I

    .line 128
    sget-object v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "releasing helper {}, instance count = {}"

    sget-object v4, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    sget v5, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->instanceCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    sget v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->instanceCount:I

    if-gtz v1, :cond_1

    .line 130
    sget-object v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    if-eqz v1, :cond_0

    .line 131
    sget-object v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "zero instances, closing helper {}"

    sget-object v4, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    invoke-virtual {v1, v3, v4}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    sget-object v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    invoke-virtual {v1}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->close()V

    .line 133
    const/4 v1, 0x0

    sput-object v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    .line 134
    sput-boolean v2, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->wasClosed:Z

    .line 136
    :cond_0
    sget v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->instanceCount:I

    if-gez v1, :cond_1

    .line 137
    sget-object v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "too many calls to release helper, instance count = {}"

    sget v3, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->instanceCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_1
    monitor-exit v0

    return-void

    .line 126
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setHelper(Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;)V
    .locals 1
    .param p0, "helper"    # Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    const-class v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;

    monitor-enter v0

    .line 64
    :try_start_0
    sput-object p0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit v0

    return-void

    .line 63
    .end local p0    # "helper":Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setOpenHelperClass(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p0, "openHelperClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;>;"
    const-class v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;

    monitor-enter v0

    .line 51
    if-nez p0, :cond_0

    .line 52
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helperClass:Ljava/lang/Class;

    goto :goto_0

    .line 50
    .end local p0    # "openHelperClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;>;"
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 54
    .restart local p0    # "openHelperClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;>;"
    :cond_0
    invoke-static {p0}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->innerSetHelperClass(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :goto_0
    monitor-exit v0

    return-void

    .line 50
    .end local p0    # "openHelperClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;>;"
    :goto_1
    monitor-exit v0

    throw p0
.end method
