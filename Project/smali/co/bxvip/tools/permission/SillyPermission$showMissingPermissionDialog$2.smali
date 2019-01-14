.class final Lco/bxvip/tools/permission/SillyPermission$showMissingPermissionDialog$2;
.super Ljava/lang/Object;
.source "SillyPermission.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/bxvip/tools/permission/SillyPermission;->showMissingPermissionDialog(Landroid/content/Context;Ljava/lang/String;Lco/bxvip/tools/permission/SillyPermissionClick;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 1>",
        "",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field public static final INSTANCE:Lco/bxvip/tools/permission/SillyPermission$showMissingPermissionDialog$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lco/bxvip/tools/permission/SillyPermission$showMissingPermissionDialog$2;

    invoke-direct {v0}, Lco/bxvip/tools/permission/SillyPermission$showMissingPermissionDialog$2;-><init>()V

    sput-object v0, Lco/bxvip/tools/permission/SillyPermission$showMissingPermissionDialog$2;->INSTANCE:Lco/bxvip/tools/permission/SillyPermission$showMissingPermissionDialog$2;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "$noName_0"    # Landroid/content/DialogInterface;
    .param p2, "$noName_1"    # I

    .line 269
    sget-object v0, Lco/bxvip/tools/permission/SillyPermission;->INSTANCE:Lco/bxvip/tools/permission/SillyPermission;

    invoke-static {v0}, Lco/bxvip/tools/permission/SillyPermission;->access$getMSillyPermissionClick$p(Lco/bxvip/tools/permission/SillyPermission;)Lco/bxvip/tools/permission/SillyPermissionClick;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lco/bxvip/tools/permission/SillyPermissionClick;->onClickYES()V

    .line 270
    :cond_0
    return-void
.end method
