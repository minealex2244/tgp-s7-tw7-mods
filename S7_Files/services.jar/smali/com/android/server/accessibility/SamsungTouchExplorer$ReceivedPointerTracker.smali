.class Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;
.super Ljava/lang/Object;
.source "SamsungTouchExplorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungTouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReceivedPointerTracker"
.end annotation


# static fields
.field private static final LOG_TAG_RECEIVED_POINTER_TRACKER:Ljava/lang/String; = "ReceivedPointerTracker"


# instance fields
.field private mLastReceivedDownEdgeFlags:I

.field private mLastReceivedEvent:Landroid/view/MotionEvent;

.field private mLastReceivedUpPointerDownTime:J

.field private mLastReceivedUpPointerDownX:F

.field private mLastReceivedUpPointerDownY:F

.field private mPrimaryPointerId:I

.field private final mReceivedPointerDownTime:[J

.field private final mReceivedPointerDownX:[F

.field private final mReceivedPointerDownY:[F

.field private mReceivedPointersDown:I

.field final synthetic this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/accessibility/SamsungTouchExplorer;

    .prologue
    const/16 v1, 0x20

    .line 1588
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1592
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    .line 1593
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    .line 1594
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    .line 1588
    return-void
.end method

.method private findPrimaryPointerId()I
    .locals 8

    .prologue
    .line 1797
    const/4 v6, -0x1

    .line 1798
    .local v6, "primaryPointerId":I
    const-wide v2, 0x7fffffffffffffffL

    .line 1801
    .local v2, "minDownTime":J
    iget v5, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 1802
    .local v5, "pointerIdBits":I
    :cond_0
    :goto_0
    if-lez v5, :cond_1

    .line 1803
    invoke-static {v5}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    .line 1804
    .local v4, "pointerId":I
    const/4 v7, 0x1

    shl-int/2addr v7, v4

    not-int v7, v7

    and-int/2addr v5, v7

    .line 1805
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    aget-wide v0, v7, v4

    .line 1806
    .local v0, "downPointerTime":J
    cmp-long v7, v0, v2

    if-gez v7, :cond_0

    .line 1807
    move-wide v2, v0

    .line 1808
    move v6, v4

    goto :goto_0

    .line 1811
    .end local v0    # "downPointerTime":J
    .end local v4    # "pointerId":I
    :cond_1
    return v6
.end method

.method private handleReceivedPointerDown(ILandroid/view/MotionEvent;)V
    .locals 6
    .param p1, "pointerIndex"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 1752
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1753
    .local v1, "pointerId":I
    const/4 v2, 0x1

    shl-int v0, v2, v1

    .line 1755
    .local v0, "pointerFlag":I
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownTime:J

    .line 1756
    iput v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    .line 1757
    iput v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    .line 1759
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedDownEdgeFlags:I

    .line 1761
    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    or-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 1762
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v2, v1

    .line 1763
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v2, v1

    .line 1764
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 1766
    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    .line 1751
    return-void
.end method

.method private handleReceivedPointerUp(ILandroid/view/MotionEvent;)V
    .locals 6
    .param p1, "pointerIndex"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 1776
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1777
    .local v1, "pointerId":I
    const/4 v2, 0x1

    shl-int v0, v2, v1

    .line 1779
    .local v0, "pointerFlag":I
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownTime(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownTime:J

    .line 1780
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    aget v2, v2, v1

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    .line 1781
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    aget v2, v2, v1

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownY:F

    .line 1783
    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    not-int v3, v0

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 1784
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    aput v4, v2, v1

    .line 1785
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    aput v4, v2, v1

    .line 1786
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v1

    .line 1788
    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    if-ne v2, v1, :cond_0

    .line 1789
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    .line 1775
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1617
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 1618
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 1619
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->fill([JJ)V

    .line 1620
    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 1621
    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    .line 1622
    iput-wide v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownTime:J

    .line 1623
    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    .line 1624
    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownY:F

    .line 1616
    return-void
.end method

.method public getLastReceivedDownEdgeFlags()I
    .locals 1

    .prologue
    .line 1742
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedDownEdgeFlags:I

    return v0
.end method

.method public getLastReceivedEvent()Landroid/view/MotionEvent;
    .locals 1

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getLastReceivedUpPointerDownTime()J
    .locals 2

    .prologue
    .line 1721
    iget-wide v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownTime:J

    return-wide v0
.end method

.method public getLastReceivedUpPointerDownX()F
    .locals 1

    .prologue
    .line 1728
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    return v0
.end method

.method public getLastReceivedUpPointerDownY()F
    .locals 1

    .prologue
    .line 1735
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownY:F

    return v0
.end method

.method public getPrimaryPointerId()I
    .locals 2

    .prologue
    .line 1711
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1712
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->findPrimaryPointerId()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    .line 1714
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    return v0
.end method

.method public getReceivedPointerDownCount()I
    .locals 1

    .prologue
    .line 1669
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public getReceivedPointerDownTime(I)J
    .locals 2
    .param p1, "pointerId"    # I

    .prologue
    .line 1704
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getReceivedPointerDownX(I)F
    .locals 1
    .param p1, "pointerId"    # I

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    aget v0, v0, p1

    return v0
.end method

.method public getReceivedPointerDownY(I)F
    .locals 1
    .param p1, "pointerId"    # I

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    aget v0, v0, p1

    return v0
.end method

.method public isReceivedPointerDown(I)Z
    .locals 4
    .param p1, "pointerId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1679
    shl-int v0, v1, p1

    .line 1680
    .local v0, "pointerFlag":I
    iget v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1633
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    .line 1634
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 1636
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedEvent:Landroid/view/MotionEvent;

    .line 1638
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1639
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1632
    :goto_0
    :pswitch_0
    return-void

    .line 1641
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->handleReceivedPointerDown(ILandroid/view/MotionEvent;)V

    goto :goto_0

    .line 1644
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->handleReceivedPointerDown(ILandroid/view/MotionEvent;)V

    goto :goto_0

    .line 1647
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->handleReceivedPointerUp(ILandroid/view/MotionEvent;)V

    goto :goto_0

    .line 1650
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->handleReceivedPointerUp(ILandroid/view/MotionEvent;)V

    goto :goto_0

    .line 1639
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1817
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "========================="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1818
    const-string/jumbo v2, "\nDown pointers #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1819
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1820
    const-string/jumbo v2, " [ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1821
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    .line 1822
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->isReceivedPointerDown(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1823
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1824
    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1821
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1827
    :cond_1
    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1828
    const-string/jumbo v2, "\nPrimary pointer id [ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1829
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1830
    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1831
    const-string/jumbo v2, "\n========================="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1832
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
