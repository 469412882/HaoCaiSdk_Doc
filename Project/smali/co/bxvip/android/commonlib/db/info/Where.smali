.class public Lco/bxvip/android/commonlib/db/info/Where;
.super Ljava/lang/Object;
.source "Where.java"


# static fields
.field public static final AND:Ljava/lang/String; = "and"

.field public static final BETWEEN:Ljava/lang/String; = "between"

.field public static final EQ:Ljava/lang/String; = "equal"

.field public static final GE:Ljava/lang/String; = "ge"

.field public static final GT:Ljava/lang/String; = "gt"

.field public static final IN:Ljava/lang/String; = "in"

.field public static final INIT:Ljava/lang/String; = "init"

.field public static final LE:Ljava/lang/String; = "le"

.field public static final LIKE:Ljava/lang/String; = "like"

.field public static final LT:Ljava/lang/String; = "lt"

.field public static final NE:Ljava/lang/String; = "ne"

.field public static final NOT_IN:Ljava/lang/String; = "notIn"

.field public static final OR:Ljava/lang/String; = "or"

.field public static final UPDATE:Ljava/lang/String; = "update"


# instance fields
.field public andOr:Ljava/lang/String;

.field public high:Ljava/lang/Object;

.field public low:Ljava/lang/Object;

.field public name:Ljava/lang/String;

.field public op:Ljava/lang/String;

.field public value:Ljava/lang/Object;

.field public values:[Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "andOr"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "and"

    iput-object v0, p0, Lco/bxvip/android/commonlib/db/info/Where;->andOr:Ljava/lang/String;

    .line 25
    const-string v0, "init"

    iput-object v0, p0, Lco/bxvip/android/commonlib/db/info/Where;->op:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lco/bxvip/android/commonlib/db/info/Where;->andOr:Ljava/lang/String;

    .line 53
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "andOr"    # Ljava/lang/String;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/Object;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "and"

    iput-object v0, p0, Lco/bxvip/android/commonlib/db/info/Where;->andOr:Ljava/lang/String;

    .line 25
    const-string v0, "init"

    iput-object v0, p0, Lco/bxvip/android/commonlib/db/info/Where;->op:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lco/bxvip/android/commonlib/db/info/Where;->andOr:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lco/bxvip/android/commonlib/db/info/Where;->op:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lco/bxvip/android/commonlib/db/info/Where;->name:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lco/bxvip/android/commonlib/db/info/Where;->value:Ljava/lang/Object;

    .line 60
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "andOr"    # Ljava/lang/String;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "low"    # Ljava/lang/Object;
    .param p5, "high"    # Ljava/lang/Object;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "and"

    iput-object v0, p0, Lco/bxvip/android/commonlib/db/info/Where;->andOr:Ljava/lang/String;

    .line 25
    const-string v0, "init"

    iput-object v0, p0, Lco/bxvip/android/commonlib/db/info/Where;->op:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lco/bxvip/android/commonlib/db/info/Where;->andOr:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lco/bxvip/android/commonlib/db/info/Where;->op:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lco/bxvip/android/commonlib/db/info/Where;->name:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lco/bxvip/android/commonlib/db/info/Where;->low:Ljava/lang/Object;

    .line 67
    iput-object p5, p0, Lco/bxvip/android/commonlib/db/info/Where;->high:Ljava/lang/Object;

    .line 68
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "andOr"    # Ljava/lang/String;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "values"    # [Ljava/lang/Object;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "and"

    iput-object v0, p0, Lco/bxvip/android/commonlib/db/info/Where;->andOr:Ljava/lang/String;

    .line 25
    const-string v0, "init"

    iput-object v0, p0, Lco/bxvip/android/commonlib/db/info/Where;->op:Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lco/bxvip/android/commonlib/db/info/Where;->andOr:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lco/bxvip/android/commonlib/db/info/Where;->op:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lco/bxvip/android/commonlib/db/info/Where;->name:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lco/bxvip/android/commonlib/db/info/Where;->values:[Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public static get(Ljava/lang/String;)Lco/bxvip/android/commonlib/db/info/Where;
    .locals 1
    .param p0, "andOr"    # Ljava/lang/String;

    .line 36
    new-instance v0, Lco/bxvip/android/commonlib/db/info/Where;

    invoke-direct {v0, p0}, Lco/bxvip/android/commonlib/db/info/Where;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/Where;
    .locals 1
    .param p0, "andOr"    # Ljava/lang/String;
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 40
    new-instance v0, Lco/bxvip/android/commonlib/db/info/Where;

    invoke-direct {v0, p0, p1, p2, p3}, Lco/bxvip/android/commonlib/db/info/Where;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/Where;
    .locals 7
    .param p0, "andOr"    # Ljava/lang/String;
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "low"    # Ljava/lang/Object;
    .param p4, "high"    # Ljava/lang/Object;

    .line 48
    new-instance v6, Lco/bxvip/android/commonlib/db/info/Where;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lco/bxvip/android/commonlib/db/info/Where;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lco/bxvip/android/commonlib/db/info/Where;
    .locals 1
    .param p0, "andOr"    # Ljava/lang/String;
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/Object;

    .line 44
    new-instance v0, Lco/bxvip/android/commonlib/db/info/Where;

    invoke-direct {v0, p0, p1, p2, p3}, Lco/bxvip/android/commonlib/db/info/Where;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method
