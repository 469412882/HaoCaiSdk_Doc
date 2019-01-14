.class final Lcn/jiguang/g/c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/jiguang/g/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field public static final enum d:I

.field public static final enum e:I

.field private static final synthetic f:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x1

    sput v0, Lcn/jiguang/g/c;->a:I

    const/4 v1, 0x2

    sput v1, Lcn/jiguang/g/c;->b:I

    const/4 v2, 0x3

    sput v2, Lcn/jiguang/g/c;->c:I

    const/4 v3, 0x4

    sput v3, Lcn/jiguang/g/c;->d:I

    const/4 v4, 0x5

    sput v4, Lcn/jiguang/g/c;->e:I

    new-array v4, v4, [I

    sget v5, Lcn/jiguang/g/c;->a:I

    const/4 v6, 0x0

    aput v5, v4, v6

    sget v5, Lcn/jiguang/g/c;->b:I

    aput v5, v4, v0

    sget v0, Lcn/jiguang/g/c;->c:I

    aput v0, v4, v1

    sget v0, Lcn/jiguang/g/c;->d:I

    aput v0, v4, v2

    sget v0, Lcn/jiguang/g/c;->e:I

    aput v0, v4, v3

    sput-object v4, Lcn/jiguang/g/c;->f:[I

    return-void
.end method
