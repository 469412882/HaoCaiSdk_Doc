.class public final Lcom/qihoo360/replugin/sdk/log/LogService;
.super Landroid/app/Service;
.source "LogService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo360/replugin/sdk/log/LogService$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\"\u0010\u0007\u001a\u00020\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/qihoo360/replugin/sdk/log/LogService;",
        "Landroid/app/Service;",
        "()V",
        "onBind",
        "Landroid/os/IBinder;",
        "var1",
        "Landroid/content/Intent;",
        "onStartCommand",
        "",
        "var2",
        "var3",
        "Companion",
        "host-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field public static final Companion:Lcom/qihoo360/replugin/sdk/log/LogService$Companion;

.field private static a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/qihoo360/replugin/sdk/log/LogService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qihoo360/replugin/sdk/log/LogService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/qihoo360/replugin/sdk/log/LogService;->Companion:Lcom/qihoo360/replugin/sdk/log/LogService$Companion;

    .line 82
    const-class v0, Lcom/qihoo360/replugin/sdk/log/LogService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qihoo360/replugin/sdk/log/LogService;->j:Ljava/lang/String;

    .line 83
    const-string v0, "action_event_download"

    sput-object v0, Lcom/qihoo360/replugin/sdk/log/LogService;->a:Ljava/lang/String;

    .line 84
    const-string v0, "action_event_install"

    sput-object v0, Lcom/qihoo360/replugin/sdk/log/LogService;->b:Ljava/lang/String;

    .line 85
    const-string v0, "action_event_open_error"

    sput-object v0, Lcom/qihoo360/replugin/sdk/log/LogService;->c:Ljava/lang/String;

    .line 86
    const-string v0, "action_event_install_error"

    sput-object v0, Lcom/qihoo360/replugin/sdk/log/LogService;->d:Ljava/lang/String;

    .line 87
    const-string v0, "path"

    sput-object v0, Lcom/qihoo360/replugin/sdk/log/LogService;->e:Ljava/lang/String;

    .line 88
    const-string v0, "error_reason"

    sput-object v0, Lcom/qihoo360/replugin/sdk/log/LogService;->f:Ljava/lang/String;

    .line 89
    const-string v0, "package_name"

    sput-object v0, Lcom/qihoo360/replugin/sdk/log/LogService;->g:Ljava/lang/String;

    .line 90
    const-string v0, "package_version"

    sput-object v0, Lcom/qihoo360/replugin/sdk/log/LogService;->h:Ljava/lang/String;

    .line 91
    const-string v0, "plugin_name"

    sput-object v0, Lcom/qihoo360/replugin/sdk/log/LogService;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static final synthetic access$getA$cp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 34
    sget-object v0, Lcom/qihoo360/replugin/sdk/log/LogService;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getB$cp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 34
    sget-object v0, Lcom/qihoo360/replugin/sdk/log/LogService;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getC$cp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 34
    sget-object v0, Lcom/qihoo360/replugin/sdk/log/LogService;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getD$cp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 34
    sget-object v0, Lcom/qihoo360/replugin/sdk/log/LogService;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getE$cp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 34
    sget-object v0, Lcom/qihoo360/replugin/sdk/log/LogService;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getF$cp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 34
    sget-object v0, Lcom/qihoo360/replugin/sdk/log/LogService;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getG$cp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 34
    sget-object v0, Lcom/qihoo360/replugin/sdk/log/LogService;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getH$cp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 34
    sget-object v0, Lcom/qihoo360/replugin/sdk/log/LogService;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getI$cp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 34
    sget-object v0, Lcom/qihoo360/replugin/sdk/log/LogService;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getJ$cp()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/qihoo360/replugin/sdk/log/LogService;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setA$cp(Ljava/lang/String;)V
    .locals 0
    .param p0, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 34
    sput-object p0, Lcom/qihoo360/replugin/sdk/log/LogService;->a:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setB$cp(Ljava/lang/String;)V
    .locals 0
    .param p0, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 34
    sput-object p0, Lcom/qihoo360/replugin/sdk/log/LogService;->b:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setC$cp(Ljava/lang/String;)V
    .locals 0
    .param p0, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 34
    sput-object p0, Lcom/qihoo360/replugin/sdk/log/LogService;->c:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setD$cp(Ljava/lang/String;)V
    .locals 0
    .param p0, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 34
    sput-object p0, Lcom/qihoo360/replugin/sdk/log/LogService;->d:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setE$cp(Ljava/lang/String;)V
    .locals 0
    .param p0, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 34
    sput-object p0, Lcom/qihoo360/replugin/sdk/log/LogService;->e:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setF$cp(Ljava/lang/String;)V
    .locals 0
    .param p0, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 34
    sput-object p0, Lcom/qihoo360/replugin/sdk/log/LogService;->f:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setG$cp(Ljava/lang/String;)V
    .locals 0
    .param p0, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 34
    sput-object p0, Lcom/qihoo360/replugin/sdk/log/LogService;->g:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setH$cp(Ljava/lang/String;)V
    .locals 0
    .param p0, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 34
    sput-object p0, Lcom/qihoo360/replugin/sdk/log/LogService;->h:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setI$cp(Ljava/lang/String;)V
    .locals 0
    .param p0, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 34
    sput-object p0, Lcom/qihoo360/replugin/sdk/log/LogService;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "var1"    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "var1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 12
    .param p1, "var1"    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "var2"    # I
    .param p3, "var3"    # I

    .line 41
    nop

    .line 42
    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/qihoo360/replugin/sdk/log/LogService;->Companion:Lcom/qihoo360/replugin/sdk/log/LogService$Companion;

    invoke-static {v1}, Lcom/qihoo360/replugin/sdk/log/LogService$Companion;->access$getJ$p(Lcom/qihoo360/replugin/sdk/log/LogService$Companion;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onStartCommand"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    if-eqz p1, :cond_3

    .line 44
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 44
    .local v3, "var6":I
    const/4 v4, 0x0

    move-object v5, v4

    .line 45
    .local v1, "var4":Ljava/lang/String;
    .local v5, "var5":Ljava/lang/String;
    nop

    .line 46
    nop

    .line 47
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 48
    .local v6, "var00":Ljava/util/Date;
    sget-object v7, Lcom/qihoo360/replugin/sdk/log/LogService;->Companion:Lcom/qihoo360/replugin/sdk/log/LogService$Companion;

    invoke-virtual {v7}, Lcom/qihoo360/replugin/sdk/log/LogService$Companion;->getA()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x3

    if-eqz v7, :cond_0

    .line 49
    sget-object v4, Lcom/qihoo360/replugin/sdk/log/LogService;->Companion:Lcom/qihoo360/replugin/sdk/log/LogService$Companion;

    invoke-virtual {v4}, Lcom/qihoo360/replugin/sdk/log/LogService$Companion;->getG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "var1.getStringExtra(g)"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .end local v5    # "var5":Ljava/lang/String;
    .local v4, "var5":Ljava/lang/String;
    sget-object v5, Lcom/qihoo360/replugin/sdk/log/LogService;->Companion:Lcom/qihoo360/replugin/sdk/log/LogService$Companion;

    invoke-virtual {v5}, Lcom/qihoo360/replugin/sdk/log/LogService$Companion;->getH()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 51
    .end local v3    # "var6":I
    .local v2, "var6":I
    const-string v3, "plugin-sdk"

    sget-object v5, Lcom/qihoo360/replugin/sdk/log/LogService;->Companion:Lcom/qihoo360/replugin/sdk/log/LogService$Companion;

    invoke-virtual {v5}, Lcom/qihoo360/replugin/sdk/log/LogService$Companion;->getA()Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "p:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",v:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ":time:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v3, v5, v7, v9}, Lcom/qihoo360/replugin/sdk/l/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 51
    .end local v2    # "var6":I
    .end local v4    # "var5":Ljava/lang/String;
    .restart local v3    # "var6":I
    .restart local v5    # "var5":Ljava/lang/String;
    :cond_0
    move-object v7, v4

    .line 53
    .local v7, "var7":Lcom/qihoo360/replugin/sdk/model/P;
    nop

    .line 54
    sget-object v9, Lcom/qihoo360/replugin/sdk/log/LogService;->Companion:Lcom/qihoo360/replugin/sdk/log/LogService$Companion;

    invoke-virtual {v9}, Lcom/qihoo360/replugin/sdk/log/LogService$Companion;->getB()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 55
    sget-object v4, Lcom/qihoo360/replugin/sdk/log/LogService;->Companion:Lcom/qihoo360/replugin/sdk/log/LogService$Companion;

    invoke-virtual {v4}, Lcom/qihoo360/replugin/sdk/log/LogService$Companion;->getG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v9, "var1.getStringExtra(g)"

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .end local v5    # "var5":Ljava/lang/String;
    .restart local v4    # "var5":Ljava/lang/String;
    sget-object v5, Lcom/qihoo360/replugin/sdk/log/LogService;->Companion:Lcom/qihoo360/replugin/sdk/log/LogService$Companion;

    invoke-virtual {v5}, Lcom/qihoo360/replugin/sdk/log/LogService$Companion;->getH()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 57
    .end local v3    # "var6":I
    .restart local v2    # "var6":I
    new-instance v3, Lcom/qihoo360/replugin/sdk/model/P;

    invoke-direct {v3}, Lcom/qihoo360/replugin/sdk/model/P;-><init>()V

    .line 58
    .end local v7    # "var7":Lcom/qihoo360/replugin/sdk/model/P;
    .local v3, "var7":Lcom/qihoo360/replugin/sdk/model/P;
    invoke-virtual {v3, v2}, Lcom/qihoo360/replugin/sdk/model/P;->setVersion(I)V

    .line 59
    invoke-virtual {v3, v4}, Lcom/qihoo360/replugin/sdk/model/P;->setPackagename(Ljava/lang/String;)V

    .line 60
    const-string v5, "plugin-sdk"

    sget-object v7, Lcom/qihoo360/replugin/sdk/log/LogService;->Companion:Lcom/qihoo360/replugin/sdk/log/LogService$Companion;

    invoke-virtual {v7}, Lcom/qihoo360/replugin/sdk/log/LogService$Companion;->getB()Ljava/lang/String;

    move-result-object v7

    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "p:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ",v:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ":time:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v5, v7, v9, v10}, Lcom/qihoo360/replugin/sdk/l/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 60
    .end local v2    # "var6":I
    .end local v4    # "var5":Ljava/lang/String;
    .local v3, "var6":I
    .restart local v5    # "var5":Ljava/lang/String;
    .restart local v7    # "var7":Lcom/qihoo360/replugin/sdk/model/P;
    :cond_1
    move-object v2, v4

    .line 62
    .local v2, "var8":Ljava/lang/String;
    nop

    .line 63
    sget-object v4, Lcom/qihoo360/replugin/sdk/log/LogService;->Companion:Lcom/qihoo360/replugin/sdk/log/LogService$Companion;

    invoke-virtual {v4}, Lcom/qihoo360/replugin/sdk/log/LogService$Companion;->getD()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 64
    sget-object v4, Lcom/qihoo360/replugin/sdk/log/LogService;->Companion:Lcom/qihoo360/replugin/sdk/log/LogService$Companion;

    invoke-virtual {v4}, Lcom/qihoo360/replugin/sdk/log/LogService$Companion;->getE()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "var1.getStringExtra(e)"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .end local v5    # "var5":Ljava/lang/String;
    .restart local v4    # "var5":Ljava/lang/String;
    sget-object v5, Lcom/qihoo360/replugin/sdk/log/LogService;->Companion:Lcom/qihoo360/replugin/sdk/log/LogService$Companion;

    invoke-virtual {v5}, Lcom/qihoo360/replugin/sdk/log/LogService$Companion;->getF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "var1.getStringExtra(f)"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v5

    .line 66
    const-string v5, "plugin-sdk"

    sget-object v8, Lcom/qihoo360/replugin/sdk/log/LogService;->Companion:Lcom/qihoo360/replugin/sdk/log/LogService$Companion;

    invoke-virtual {v8}, Lcom/qihoo360/replugin/sdk/log/LogService$Companion;->getD()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "p:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ",error:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":time:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v5, v8, v9, v10}, Lcom/qihoo360/replugin/sdk/l/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    .end local v4    # "var5":Ljava/lang/String;
    .restart local v5    # "var5":Ljava/lang/String;
    :cond_2
    sget-object v4, Lcom/qihoo360/replugin/sdk/log/LogService;->Companion:Lcom/qihoo360/replugin/sdk/log/LogService$Companion;

    invoke-virtual {v4}, Lcom/qihoo360/replugin/sdk/log/LogService$Companion;->getC()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 68
    sget-object v4, Lcom/qihoo360/replugin/sdk/log/LogService;->Companion:Lcom/qihoo360/replugin/sdk/log/LogService$Companion;

    invoke-virtual {v4}, Lcom/qihoo360/replugin/sdk/log/LogService$Companion;->getI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "var1.getStringExtra(i)"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .end local v5    # "var5":Ljava/lang/String;
    .restart local v4    # "var5":Ljava/lang/String;
    sget-object v5, Lcom/qihoo360/replugin/sdk/log/LogService;->Companion:Lcom/qihoo360/replugin/sdk/log/LogService$Companion;

    invoke-virtual {v5}, Lcom/qihoo360/replugin/sdk/log/LogService$Companion;->getF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "var1.getStringExtra(f)"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v5

    .line 70
    const-string v5, "plugin-sdk"

    sget-object v8, Lcom/qihoo360/replugin/sdk/log/LogService;->Companion:Lcom/qihoo360/replugin/sdk/log/LogService$Companion;

    invoke-virtual {v8}, Lcom/qihoo360/replugin/sdk/log/LogService$Companion;->getC()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "p:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ",error:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":time:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v5, v8, v9, v10}, Lcom/qihoo360/replugin/sdk/l/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v1    # "var4":Ljava/lang/String;
    .end local v2    # "var8":Ljava/lang/String;
    .end local v3    # "var6":I
    .end local v4    # "var5":Ljava/lang/String;
    .end local v6    # "var00":Ljava/util/Date;
    .end local v7    # "var7":Lcom/qihoo360/replugin/sdk/model/P;
    :cond_3
    :goto_0
    nop

    .line 72
    nop

    .line 73
    goto :goto_1

    .line 75
    :catch_0
    move-exception v1

    .line 77
    :goto_1
    nop

    .line 78
    return v0
.end method
