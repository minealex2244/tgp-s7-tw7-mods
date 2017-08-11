.class public Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
.super Ljava/lang/Object;
.source "ResourceIDMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceIDSet"
.end annotation


# instance fields
.field public mAbbTitle:I

.field public mContentDescription:I

.field public mDim:I

.field public mListNormal:I

.field public mNormal:I

.field public mPress:I

.field public mTitle:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "normal"    # I
    .param p2, "press"    # I
    .param p3, "dim"    # I
    .param p4, "title"    # I

    .prologue
    const/4 v0, 0x0

    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 610
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    .line 611
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    .line 612
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    .line 613
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    .line 614
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mAbbTitle:I

    .line 615
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mContentDescription:I

    .line 616
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mListNormal:I

    .line 619
    iput p1, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    .line 620
    iput p2, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    .line 621
    iput p3, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    .line 622
    iput p4, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    .line 623
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 1
    .param p1, "normal"    # I
    .param p2, "press"    # I
    .param p3, "dim"    # I
    .param p4, "title"    # I
    .param p5, "contentDescription"    # I

    .prologue
    const/4 v0, 0x0

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 610
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    .line 611
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    .line 612
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    .line 613
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    .line 614
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mAbbTitle:I

    .line 615
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mContentDescription:I

    .line 616
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mListNormal:I

    .line 626
    iput p1, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    .line 627
    iput p2, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    .line 628
    iput p3, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    .line 629
    iput p4, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    .line 630
    iput p5, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mContentDescription:I

    .line 631
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 1
    .param p1, "normal"    # I
    .param p2, "press"    # I
    .param p3, "dim"    # I
    .param p4, "title"    # I
    .param p5, "abbTitle"    # I
    .param p6, "contentDescription"    # I

    .prologue
    const/4 v0, 0x0

    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 610
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    .line 611
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    .line 612
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    .line 613
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    .line 614
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mAbbTitle:I

    .line 615
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mContentDescription:I

    .line 616
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mListNormal:I

    .line 634
    iput p1, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    .line 635
    iput p2, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    .line 636
    iput p3, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    .line 637
    iput p4, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    .line 638
    iput p5, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mAbbTitle:I

    .line 639
    iput p6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mContentDescription:I

    .line 640
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 1
    .param p1, "normal"    # I
    .param p2, "press"    # I
    .param p3, "dim"    # I
    .param p4, "title"    # I
    .param p5, "abbTitle"    # I
    .param p6, "contentDescription"    # I
    .param p7, "listNormal"    # I

    .prologue
    const/4 v0, 0x0

    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 610
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    .line 611
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    .line 612
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    .line 613
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    .line 614
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mAbbTitle:I

    .line 615
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mContentDescription:I

    .line 616
    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mListNormal:I

    .line 643
    iput p1, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    .line 644
    iput p2, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    .line 645
    iput p3, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    .line 646
    iput p4, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    .line 647
    iput p5, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mAbbTitle:I

    .line 648
    iput p6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mContentDescription:I

    .line 649
    iput p7, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mListNormal:I

    .line 650
    return-void
.end method
