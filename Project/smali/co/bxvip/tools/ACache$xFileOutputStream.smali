.class Lco/bxvip/tools/ACache$xFileOutputStream;
.super Ljava/io/FileOutputStream;
.source "ACache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/bxvip/tools/ACache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "xFileOutputStream"
.end annotation


# instance fields
.field file:Ljava/io/File;

.field final synthetic this$0:Lco/bxvip/tools/ACache;


# direct methods
.method public constructor <init>(Lco/bxvip/tools/ACache;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lco/bxvip/tools/ACache;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lco/bxvip/tools/ACache$xFileOutputStream;->this$0:Lco/bxvip/tools/ACache;

    .line 105
    invoke-direct {p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 106
    iput-object p2, p0, Lco/bxvip/tools/ACache$xFileOutputStream;->file:Ljava/io/File;

    .line 107
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    invoke-super {p0}, Ljava/io/FileOutputStream;->close()V

    .line 111
    iget-object v0, p0, Lco/bxvip/tools/ACache$xFileOutputStream;->this$0:Lco/bxvip/tools/ACache;

    invoke-static {v0}, Lco/bxvip/tools/ACache;->access$100(Lco/bxvip/tools/ACache;)Lco/bxvip/tools/ACache$ACacheManager;

    move-result-object v0

    iget-object v1, p0, Lco/bxvip/tools/ACache$xFileOutputStream;->file:Ljava/io/File;

    invoke-static {v0, v1}, Lco/bxvip/tools/ACache$ACacheManager;->access$200(Lco/bxvip/tools/ACache$ACacheManager;Ljava/io/File;)V

    .line 112
    return-void
.end method
