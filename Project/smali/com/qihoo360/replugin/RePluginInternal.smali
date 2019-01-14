.class public Lcom/qihoo360/replugin/RePluginInternal;
.super Ljava/lang/Object;
.source "RePluginInternal.java"


# static fields
.field public static final FOR_DEV:Z

.field static sAppContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    sget-boolean v0, Lcom/qihoo360/mobilesafe/core/BuildConfig;->DEBUG:Z

    sput-boolean v0, Lcom/qihoo360/replugin/RePluginInternal;->FOR_DEV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 53
    invoke-static {}, Lcom/qihoo360/replugin/RePluginInternal;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .line 46
    sget-object v0, Lcom/qihoo360/replugin/RePluginInternal;->sAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static init(Landroid/app/Application;)V
    .locals 0
    .param p0, "app"    # Landroid/app/Application;

    .line 39
    sput-object p0, Lcom/qihoo360/replugin/RePluginInternal;->sAppContext:Landroid/content/Context;

    .line 40
    return-void
.end method
