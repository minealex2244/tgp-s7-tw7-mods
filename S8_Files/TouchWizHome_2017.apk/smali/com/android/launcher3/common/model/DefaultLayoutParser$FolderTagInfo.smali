.class Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;
.super Ljava/lang/Object;
.source "DefaultLayoutParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/model/DefaultLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FolderTagInfo"
.end annotation


# instance fields
.field protected mFolderCellX:I

.field protected mFolderCellY:I

.field protected mFolderScreen:I

.field protected mFolderTitle:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput v0, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;->mFolderScreen:I

    .line 215
    iput v0, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;->mFolderCellX:I

    iput v0, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;->mFolderCellY:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/common/model/DefaultLayoutParser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher3/common/model/DefaultLayoutParser$1;

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;-><init>()V

    return-void
.end method


# virtual methods
.method setFolderInfo(Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 220
    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;->mFolderTitle:Ljava/lang/String;

    .line 221
    const-string v0, "screen"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    const-string v0, "screen"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;->mFolderScreen:I

    .line 224
    :cond_0
    const-string v0, "cellX"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 225
    const-string v0, "cellX"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;->mFolderCellX:I

    .line 227
    :cond_1
    const-string v0, "cellY"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 228
    const-string v0, "cellY"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;->mFolderCellY:I

    .line 230
    :cond_2
    return-void
.end method
