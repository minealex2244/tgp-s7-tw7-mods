.class public Lcom/samsung/android/widget/SemArrayIndexer;
.super Lcom/samsung/android/widget/SemAbstractIndexer;
.source "SemArrayIndexer.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final debug:Z

.field protected mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/CharSequence;)V
    .locals 1
    .param p2, "indexCharacters"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "listData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemAbstractIndexer;-><init>(Ljava/lang/CharSequence;)V

    .line 44
    const-string/jumbo v0, "SemArrayIndexer"

    iput-object v0, p0, Lcom/samsung/android/widget/SemArrayIndexer;->TAG:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemArrayIndexer;->debug:Z

    .line 64
    iput-object p1, p0, Lcom/samsung/android/widget/SemArrayIndexer;->mData:Ljava/util/List;

    .line 62
    return-void
.end method


# virtual methods
.method protected getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getItemAt(I)Ljava/lang/String;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/android/widget/SemArrayIndexer;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected getItemCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/widget/SemArrayIndexer;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected isDataToBeIndexedAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemArrayIndexer;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
