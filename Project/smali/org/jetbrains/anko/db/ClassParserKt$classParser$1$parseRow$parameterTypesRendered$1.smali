.class final Lorg/jetbrains/anko/db/ClassParserKt$classParser$1$parseRow$parameterTypesRendered$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ClassParser.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jetbrains/anko/db/ClassParserKt$classParser$1;->parseRow([Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Class<",
        "*>;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001\"\u0004\u0008\u0000\u0010\u00032\u0016\u0010\u0004\u001a\u0012\u0012\u0002\u0008\u0003 \u0002*\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00050\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "kotlin.jvm.PlatformType",
        "T",
        "it",
        "Ljava/lang/Class;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/jetbrains/anko/db/ClassParserKt$classParser$1$parseRow$parameterTypesRendered$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/jetbrains/anko/db/ClassParserKt$classParser$1$parseRow$parameterTypesRendered$1;

    invoke-direct {v0}, Lorg/jetbrains/anko/db/ClassParserKt$classParser$1$parseRow$parameterTypesRendered$1;-><init>()V

    sput-object v0, Lorg/jetbrains/anko/db/ClassParserKt$classParser$1$parseRow$parameterTypesRendered$1;->INSTANCE:Lorg/jetbrains/anko/db/ClassParserKt$classParser$1$parseRow$parameterTypesRendered$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 51
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lorg/jetbrains/anko/db/ClassParserKt$classParser$1$parseRow$parameterTypesRendered$1;->invoke(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .param p1, "it"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 57
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "it.canonicalName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
