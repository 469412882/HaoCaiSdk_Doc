.class Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil$ClassComparator;
.super Ljava/lang/Object;
.source "OrmLiteConfigUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClassComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil$1;

    .line 444
    invoke-direct {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil$ClassComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Class;Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 448
    .local p1, "arg0":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "arg1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 444
    check-cast p1, Ljava/lang/Class;

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcom/j256/ormlite/android/apptools/OrmLiteConfigUtil$ClassComparator;->compare(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result p1

    return p1
.end method
