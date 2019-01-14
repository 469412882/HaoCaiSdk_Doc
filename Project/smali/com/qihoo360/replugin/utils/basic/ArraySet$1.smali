.class Lcom/qihoo360/replugin/utils/basic/ArraySet$1;
.super Lcom/qihoo360/replugin/utils/basic/MapCollections;
.source "ArraySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qihoo360/replugin/utils/basic/ArraySet;->getCollection()Lcom/qihoo360/replugin/utils/basic/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qihoo360/replugin/utils/basic/MapCollections<",
        "TE;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qihoo360/replugin/utils/basic/ArraySet;


# direct methods
.method constructor <init>(Lcom/qihoo360/replugin/utils/basic/ArraySet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qihoo360/replugin/utils/basic/ArraySet;

    .line 616
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet$1;, "Lcom/qihoo360/replugin/utils/basic/ArraySet.1;"
    iput-object p1, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet$1;->this$0:Lcom/qihoo360/replugin/utils/basic/ArraySet;

    invoke-direct {p0}, Lcom/qihoo360/replugin/utils/basic/MapCollections;-><init>()V

    return-void
.end method


# virtual methods
.method protected colClear()V
    .locals 1

    .line 659
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet$1;, "Lcom/qihoo360/replugin/utils/basic/ArraySet.1;"
    iget-object v0, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet$1;->this$0:Lcom/qihoo360/replugin/utils/basic/ArraySet;

    invoke-virtual {v0}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->clear()V

    .line 660
    return-void
.end method

.method protected colGetEntry(II)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .param p2, "offset"    # I

    .line 624
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet$1;, "Lcom/qihoo360/replugin/utils/basic/ArraySet.1;"
    iget-object v0, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet$1;->this$0:Lcom/qihoo360/replugin/utils/basic/ArraySet;

    iget-object v0, v0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected colGetMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TE;TE;>;"
        }
    .end annotation

    .line 639
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet$1;, "Lcom/qihoo360/replugin/utils/basic/ArraySet.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected colGetSize()I
    .locals 1

    .line 619
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet$1;, "Lcom/qihoo360/replugin/utils/basic/ArraySet.1;"
    iget-object v0, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet$1;->this$0:Lcom/qihoo360/replugin/utils/basic/ArraySet;

    iget v0, v0, Lcom/qihoo360/replugin/utils/basic/ArraySet;->mSize:I

    return v0
.end method

.method protected colIndexOfKey(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 629
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet$1;, "Lcom/qihoo360/replugin/utils/basic/ArraySet.1;"
    iget-object v0, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet$1;->this$0:Lcom/qihoo360/replugin/utils/basic/ArraySet;

    invoke-virtual {v0, p1}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected colIndexOfValue(Ljava/lang/Object;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 634
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet$1;, "Lcom/qihoo360/replugin/utils/basic/ArraySet.1;"
    iget-object v0, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet$1;->this$0:Lcom/qihoo360/replugin/utils/basic/ArraySet;

    invoke-virtual {v0, p1}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .line 644
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet$1;, "Lcom/qihoo360/replugin/utils/basic/ArraySet.1;"
    .local p1, "key":Ljava/lang/Object;, "TE;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet$1;->this$0:Lcom/qihoo360/replugin/utils/basic/ArraySet;

    invoke-virtual {v0, p1}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->add(Ljava/lang/Object;)Z

    .line 645
    return-void
.end method

.method protected colRemoveAt(I)V
    .locals 1
    .param p1, "index"    # I

    .line 654
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet$1;, "Lcom/qihoo360/replugin/utils/basic/ArraySet.1;"
    iget-object v0, p0, Lcom/qihoo360/replugin/utils/basic/ArraySet$1;->this$0:Lcom/qihoo360/replugin/utils/basic/ArraySet;

    invoke-virtual {v0, p1}, Lcom/qihoo360/replugin/utils/basic/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 655
    return-void
.end method

.method protected colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 649
    .local p0, "this":Lcom/qihoo360/replugin/utils/basic/ArraySet$1;, "Lcom/qihoo360/replugin/utils/basic/ArraySet.1;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
