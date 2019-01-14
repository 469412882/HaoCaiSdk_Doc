.class public Lcom/qihoo360/replugin/packages/PluginRunningList;
.super Ljava/lang/Object;
.source "PluginRunningList.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qihoo360/replugin/packages/PluginRunningList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPid:I

.field mProcessName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 140
    new-instance v0, Lcom/qihoo360/replugin/packages/PluginRunningList$1;

    invoke-direct {v0}, Lcom/qihoo360/replugin/packages/PluginRunningList$1;-><init>()V

    sput-object v0, Lcom/qihoo360/replugin/packages/PluginRunningList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/qihoo360/replugin/packages/PluginRunningList;->mPid:I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qihoo360/replugin/packages/PluginRunningList;->mList:Ljava/util/ArrayList;

    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/qihoo360/replugin/packages/PluginRunningList;->mPid:I

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo360/replugin/packages/PluginRunningList;->mProcessName:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qihoo360/replugin/packages/PluginRunningList;->mPid:I

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/qihoo360/replugin/packages/PluginRunningList;->mList:Ljava/util/ArrayList;

    .line 155
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/qihoo360/replugin/packages/PluginRunningList$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/qihoo360/replugin/packages/PluginRunningList$1;

    .line 32
    invoke-direct {p0, p1}, Lcom/qihoo360/replugin/packages/PluginRunningList;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/qihoo360/replugin/packages/PluginRunningList;)V
    .locals 2
    .param p1, "list"    # Lcom/qihoo360/replugin/packages/PluginRunningList;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/qihoo360/replugin/packages/PluginRunningList;->mPid:I

    .line 45
    iget-object v0, p1, Lcom/qihoo360/replugin/packages/PluginRunningList;->mProcessName:Ljava/lang/String;

    iput-object v0, p0, Lcom/qihoo360/replugin/packages/PluginRunningList;->mProcessName:Ljava/lang/String;

    .line 46
    iget v0, p1, Lcom/qihoo360/replugin/packages/PluginRunningList;->mPid:I

    iput v0, p0, Lcom/qihoo360/replugin/packages/PluginRunningList;->mPid:I

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/qihoo360/replugin/packages/PluginRunningList;->getList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/qihoo360/replugin/packages/PluginRunningList;->mList:Ljava/util/ArrayList;

    .line 48
    return-void
.end method


# virtual methods
.method add(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 56
    invoke-virtual {p0, p1}, Lcom/qihoo360/replugin/packages/PluginRunningList;->isRunning(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/qihoo360/replugin/packages/PluginRunningList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_0
    return-void
.end method

.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 125
    new-instance v0, Lcom/qihoo360/replugin/packages/PluginRunningList;

    invoke-direct {v0, p0}, Lcom/qihoo360/replugin/packages/PluginRunningList;-><init>(Lcom/qihoo360/replugin/packages/PluginRunningList;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 104
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 105
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 107
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/qihoo360/replugin/packages/PluginRunningList;

    .line 109
    .local v2, "strings":Lcom/qihoo360/replugin/packages/PluginRunningList;
    iget v3, p0, Lcom/qihoo360/replugin/packages/PluginRunningList;->mPid:I

    iget v4, v2, Lcom/qihoo360/replugin/packages/PluginRunningList;->mPid:I

    if-eq v3, v4, :cond_2

    return v1

    .line 110
    :cond_2
    iget-object v3, p0, Lcom/qihoo360/replugin/packages/PluginRunningList;->mList:Ljava/util/ArrayList;

    iget-object v4, v2, Lcom/qihoo360/replugin/packages/PluginRunningList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    .line 112
    :cond_3
    iget-object v3, p0, Lcom/qihoo360/replugin/packages/PluginRunningList;->mProcessName:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/qihoo360/replugin/packages/PluginRunningList;->mProcessName:Ljava/lang/String;

    iget-object v1, v2, Lcom/qihoo360/replugin/packages/PluginRunningList;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v3, v2, Lcom/qihoo360/replugin/packages/PluginRunningList;->mProcessName:Ljava/lang/String;

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 105
    .end local v2    # "strings":Lcom/qihoo360/replugin/packages/PluginRunningList;
    :cond_6
    :goto_1
    return v1
.end method

.method getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/qihoo360/replugin/packages/PluginRunningList;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method hasRunning()Z
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/qihoo360/replugin/packages/PluginRunningList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/qihoo360/replugin/packages/PluginRunningList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    .line 118
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/qihoo360/replugin/packages/PluginRunningList;->mProcessName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/qihoo360/replugin/packages/PluginRunningList;->mProcessName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    .line 119
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/qihoo360/replugin/packages/PluginRunningList;->mPid:I

    add-int/2addr v0, v2

    .line 120
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method isRunning(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pluginName"    # Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/qihoo360/replugin/packages/PluginRunningList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/qihoo360/replugin/packages/PluginRunningList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method setProcessInfo(Ljava/lang/String;I)V
    .locals 0
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .line 51
    iput-object p1, p0, Lcom/qihoo360/replugin/packages/PluginRunningList;->mProcessName:Ljava/lang/String;

    .line 52
    iput p2, p0, Lcom/qihoo360/replugin/packages/PluginRunningList;->mPid:I

    .line 53
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "PRunningL{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget v1, p0, Lcom/qihoo360/replugin/packages/PluginRunningList;->mPid:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    .line 86
    const-string v1, "<UNKNOWN_PID>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 88
    :cond_0
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    iget-object v1, p0, Lcom/qihoo360/replugin/packages/PluginRunningList;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    iget v1, p0, Lcom/qihoo360/replugin/packages/PluginRunningList;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :goto_0
    iget-object v1, p0, Lcom/qihoo360/replugin/packages/PluginRunningList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 135
    iget-object v0, p0, Lcom/qihoo360/replugin/packages/PluginRunningList;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget v0, p0, Lcom/qihoo360/replugin/packages/PluginRunningList;->mPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-object v0, p0, Lcom/qihoo360/replugin/packages/PluginRunningList;->mList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 138
    return-void
.end method
