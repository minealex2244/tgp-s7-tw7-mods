.class final Lcom/android/launcher3/allapps/model/AppsLoader$26;
.super Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;
.source "AppsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/model/AppsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1789
    invoke-direct {p0}, Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 12
    .param p1, "obj1"    # Ljava/lang/Object;
    .param p2, "obj2"    # Ljava/lang/Object;

    .prologue
    const-wide/16 v10, -0x1

    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 1793
    instance-of v5, p1, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v5, :cond_4

    move-object v0, p1

    .line 1794
    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .local v0, "a":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object v1, p2

    .line 1795
    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1801
    .end local p1    # "obj1":Ljava/lang/Object;
    .end local p2    # "obj2":Ljava/lang/Object;
    .local v1, "b":Lcom/android/launcher3/common/base/item/ItemInfo;
    :goto_0
    const/4 v2, 0x0

    .line 1802
    .local v2, "ret":I
    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_5

    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_5

    .line 1804
    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget-wide v8, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    # invokes: Lcom/android/launcher3/allapps/model/AppsLoader;->longCompare(JJ)I
    invoke-static {v6, v7, v8, v9}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$3300(JJ)I

    move-result v2

    .line 1805
    if-nez v2, :cond_0

    .line 1806
    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iget v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    # invokes: Lcom/android/launcher3/allapps/model/AppsLoader;->integerCompare(II)I
    invoke-static {v5, v6}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$3400(II)I

    move-result v2

    .line 1817
    :cond_0
    :goto_1
    if-nez v2, :cond_3

    .line 1819
    iget-object v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v5, :cond_7

    iget-object v5, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v5, :cond_7

    .line 1820
    # getter for: Lcom/android/launcher3/allapps/model/AppsLoader;->sCollator:Ljava/text/Collator;
    invoke-static {}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$800()Ljava/text/Collator;

    move-result-object v5

    iget-object v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1825
    :cond_1
    :goto_2
    if-nez v2, :cond_3

    .line 1827
    iget-object v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v5, :cond_9

    iget-object v5, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v5, :cond_9

    .line 1828
    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    # invokes: Lcom/android/launcher3/allapps/model/AppsLoader;->longCompare(JJ)I
    invoke-static {v4, v5, v6, v7}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$3300(JJ)I

    move-result v2

    .line 1829
    if-nez v2, :cond_2

    .line 1830
    iget-object v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v2

    .line 1835
    :cond_2
    :goto_3
    if-nez v2, :cond_3

    .line 1839
    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    # invokes: Lcom/android/launcher3/allapps/model/AppsLoader;->longCompare(JJ)I
    invoke-static {v4, v5, v6, v7}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$3300(JJ)I

    move-result v2

    .line 1843
    :cond_3
    return v2

    .line 1797
    .end local v0    # "a":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v1    # "b":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v2    # "ret":I
    .restart local p1    # "obj1":Ljava/lang/Object;
    .restart local p2    # "obj2":Ljava/lang/Object;
    :cond_4
    check-cast p1, Landroid/view/View;

    .end local p1    # "obj1":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1798
    .restart local v0    # "a":Lcom/android/launcher3/common/base/item/ItemInfo;
    check-cast p2, Landroid/view/View;

    .end local p2    # "obj2":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .restart local v1    # "b":Lcom/android/launcher3/common/base/item/ItemInfo;
    goto :goto_0

    .line 1808
    .restart local v2    # "ret":I
    :cond_5
    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget-wide v8, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    .line 1815
    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v5, v6, v10

    if-nez v5, :cond_6

    move v2, v3

    :goto_4
    goto :goto_1

    :cond_6
    move v2, v4

    goto :goto_4

    .line 1821
    :cond_7
    iget-object v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eq v5, v6, :cond_1

    .line 1823
    iget-object v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez v5, :cond_8

    move v2, v4

    :goto_5
    goto :goto_2

    :cond_8
    move v2, v3

    goto :goto_5

    .line 1831
    :cond_9
    iget-object v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    iget-object v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eq v5, v6, :cond_2

    .line 1833
    iget-object v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-nez v5, :cond_a

    move v2, v4

    :goto_6
    goto :goto_3

    :cond_a
    move v2, v3

    goto :goto_6
.end method

.method protected normalize(Ljava/util/ArrayList;IZLjava/util/ArrayList;I)I
    .locals 14
    .param p2, "maxItemsPerScreen"    # I
    .param p3, "keepEmptyPages"    # Z
    .param p5, "targetPage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;IZ",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 1849
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .local p4, "viewsOfScreen":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1850
    const/4 v9, 0x0

    .line 1851
    .local v9, "targetScreen":I
    const/4 v8, 0x0

    .line 1852
    .local v8, "targetCell":I
    const-wide/16 v4, 0x0

    .line 1860
    .local v4, "priorScreen":J
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1861
    .local v3, "o":Ljava/lang/Object;
    instance-of v10, v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v10, :cond_5

    move-object v2, v3

    .line 1862
    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1867
    .local v2, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :goto_1
    iget-wide v6, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1868
    .local v6, "screen":J
    move/from16 v0, p2

    if-ne v8, v0, :cond_0

    .line 1869
    add-int/lit8 v9, v9, 0x1

    .line 1870
    const/4 v8, 0x0

    .line 1873
    :cond_0
    cmp-long v10, v6, v4

    if-eqz v10, :cond_2

    const-wide/16 v12, -0x1

    cmp-long v10, v6, v12

    if-eqz v10, :cond_2

    .line 1874
    int-to-long v12, v9

    cmp-long v10, v6, v12

    if-lez v10, :cond_1

    if-eqz v8, :cond_1

    .line 1875
    add-int/lit8 v9, v9, 0x1

    .line 1876
    const/4 v8, 0x0

    .line 1878
    :cond_1
    move-wide v4, v6

    .line 1882
    :cond_2
    int-to-long v12, v9

    cmp-long v10, v6, v12

    if-nez v10, :cond_3

    iget v10, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    if-eq v10, v8, :cond_4

    .line 1883
    :cond_3
    if-eqz p4, :cond_6

    instance-of v10, v3, Landroid/view/View;

    if-eqz v10, :cond_6

    .line 1884
    move/from16 v0, p5

    if-ne v0, v9, :cond_4

    move-object v10, v3

    .line 1885
    check-cast v10, Landroid/view/View;

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1893
    :cond_4
    :goto_2
    if-eqz p4, :cond_7

    instance-of v10, v3, Landroid/view/View;

    if-eqz v10, :cond_7

    .line 1894
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .end local v2    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v6    # "screen":J
    :cond_5
    move-object v10, v3

    .line 1864
    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .restart local v2    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    goto :goto_1

    .line 1888
    .restart local v6    # "screen":J
    :cond_6
    const/4 v10, 0x1

    iput-boolean v10, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    .line 1889
    int-to-long v12, v9

    iput-wide v12, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1890
    iput v8, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    goto :goto_2

    .line 1896
    :cond_7
    # getter for: Lcom/android/launcher3/allapps/model/AppsLoader;->mCellCountX:I
    invoke-static {}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$900()I

    move-result v10

    rem-int v10, v8, v10

    iput v10, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 1897
    # getter for: Lcom/android/launcher3/allapps/model/AppsLoader;->mCellCountX:I
    invoke-static {}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$900()I

    move-result v10

    div-int v10, v8, v10

    iput v10, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 1898
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1901
    .end local v2    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v3    # "o":Ljava/lang/Object;
    .end local v6    # "screen":J
    :cond_8
    return v9
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1906
    const-string v0, "MenuAppModel.MENU_CUSTOM_NORMALIZER"

    return-object v0
.end method
