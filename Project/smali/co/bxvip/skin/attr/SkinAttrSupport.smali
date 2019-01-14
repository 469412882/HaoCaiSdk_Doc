.class public Lco/bxvip/skin/attr/SkinAttrSupport;
.super Ljava/lang/Object;
.source "SkinAttrSupport.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSkinViews(Landroid/view/View;Ljava/util/List;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lco/bxvip/skin/attr/SkinView;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p1, "skinViews":Ljava/util/List;, "Ljava/util/List<Lco/bxvip/skin/attr/SkinView;>;"
    invoke-static {p0}, Lco/bxvip/skin/attr/SkinAttrSupport;->getSkinView(Landroid/view/View;)Lco/bxvip/skin/attr/SkinView;

    move-result-object v0

    .line 42
    .local v0, "skinView":Lco/bxvip/skin/attr/SkinView;
    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_0
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 45
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    .line 47
    .local v1, "container":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .line 47
    .local v2, "i":I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 47
    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 48
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 49
    .local v4, "child":Landroid/view/View;
    invoke-static {v4, p1}, Lco/bxvip/skin/attr/SkinAttrSupport;->addSkinViews(Landroid/view/View;Ljava/util/List;)V

    .line 47
    .end local v4    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    .end local v1    # "container":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_1
    return-void
.end method

.method private static changeViewTag(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 73
    const v0, 0x7fffff9b

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 74
    .local v1, "tag":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 76
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 79
    :cond_0
    return-void
.end method

.method public static getSkinView(Landroid/view/View;)Lco/bxvip/skin/attr/SkinView;
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .line 56
    const v0, 0x7fffff9b

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 57
    .local v0, "tag":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 60
    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 61
    :cond_1
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_2

    return-object v1

    .line 62
    :cond_2
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 64
    .local v2, "tagStr":Ljava/lang/String;
    invoke-static {v2}, Lco/bxvip/skin/attr/SkinAttrSupport;->parseTag(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 65
    .local v3, "skinAttrs":Ljava/util/List;, "Ljava/util/List<Lco/bxvip/skin/attr/SkinAttr;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 66
    invoke-static {p0}, Lco/bxvip/skin/attr/SkinAttrSupport;->changeViewTag(Landroid/view/View;)V

    .line 67
    new-instance v1, Lco/bxvip/skin/attr/SkinView;

    invoke-direct {v1, p0, v3}, Lco/bxvip/skin/attr/SkinView;-><init>(Landroid/view/View;Ljava/util/List;)V

    return-object v1

    .line 69
    :cond_3
    return-object v1
.end method

.method public static getSkinViews(Landroid/app/Activity;)Ljava/util/List;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/List<",
            "Lco/bxvip/skin/attr/SkinView;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v0, "skinViews":Ljava/util/List;, "Ljava/util/List<Lco/bxvip/skin/attr/SkinView;>;"
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 36
    .local v1, "content":Landroid/view/ViewGroup;
    invoke-static {v1, v0}, Lco/bxvip/skin/attr/SkinAttrSupport;->addSkinViews(Landroid/view/View;Ljava/util/List;)V

    .line 37
    return-object v0
.end method

.method private static getSupportAttrType(Ljava/lang/String;)Lco/bxvip/skin/attr/SkinAttrType;
    .locals 5
    .param p0, "attrName"    # Ljava/lang/String;

    .line 21
    invoke-static {}, Lco/bxvip/skin/attr/SkinAttrType;->values()[Lco/bxvip/skin/attr/SkinAttrType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 22
    .local v3, "attrType":Lco/bxvip/skin/attr/SkinAttrType;
    invoke-virtual {v3}, Lco/bxvip/skin/attr/SkinAttrType;->getAttrType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 23
    return-object v3

    .line 21
    .end local v3    # "attrType":Lco/bxvip/skin/attr/SkinAttrType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static parseTag(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p0, "tagStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lco/bxvip/skin/attr/SkinAttr;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v0, "skinAttrs":Ljava/util/List;, "Ljava/util/List<Lco/bxvip/skin/attr/SkinAttr;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 86
    :cond_0
    const-string v1, "[|]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "items":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 88
    .local v4, "item":Ljava/lang/String;
    const-string v5, "skin:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, "resItems":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    .line 92
    goto :goto_1

    .line 94
    :cond_2
    const/4 v6, 0x1

    aget-object v6, v5, v6

    .line 95
    .local v6, "resName":Ljava/lang/String;
    const/4 v7, 0x2

    aget-object v7, v5, v7

    .line 97
    .local v7, "resType":Ljava/lang/String;
    invoke-static {v7}, Lco/bxvip/skin/attr/SkinAttrSupport;->getSupportAttrType(Ljava/lang/String;)Lco/bxvip/skin/attr/SkinAttrType;

    move-result-object v8

    .line 98
    .local v8, "attrType":Lco/bxvip/skin/attr/SkinAttrType;
    if-nez v8, :cond_3

    .line 98
    .end local v4    # "item":Ljava/lang/String;
    .end local v5    # "resItems":[Ljava/lang/String;
    .end local v6    # "resName":Ljava/lang/String;
    .end local v7    # "resType":Ljava/lang/String;
    .end local v8    # "attrType":Lco/bxvip/skin/attr/SkinAttrType;
    goto :goto_1

    .line 99
    .restart local v4    # "item":Ljava/lang/String;
    .restart local v5    # "resItems":[Ljava/lang/String;
    .restart local v6    # "resName":Ljava/lang/String;
    .restart local v7    # "resType":Ljava/lang/String;
    .restart local v8    # "attrType":Lco/bxvip/skin/attr/SkinAttrType;
    :cond_3
    new-instance v9, Lco/bxvip/skin/attr/SkinAttr;

    invoke-direct {v9, v8, v6}, Lco/bxvip/skin/attr/SkinAttr;-><init>(Lco/bxvip/skin/attr/SkinAttrType;Ljava/lang/String;)V

    .line 100
    .local v9, "attr":Lco/bxvip/skin/attr/SkinAttr;
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .end local v4    # "item":Ljava/lang/String;
    .end local v5    # "resItems":[Ljava/lang/String;
    .end local v6    # "resName":Ljava/lang/String;
    .end local v7    # "resType":Ljava/lang/String;
    .end local v8    # "attrType":Lco/bxvip/skin/attr/SkinAttrType;
    .end local v9    # "attr":Lco/bxvip/skin/attr/SkinAttr;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 102
    :cond_4
    return-object v0
.end method
