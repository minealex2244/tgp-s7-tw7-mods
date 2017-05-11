.class public Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderParser;
.super Ljava/lang/Object;
.source "DefaultLayoutParser.java"

# interfaces
.implements Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/model/DefaultLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FolderParser"
.end annotation


# instance fields
.field private final mFolderElements:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCSC:Z

.field private mIsInvalidFolder:Z

.field final synthetic this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/common/model/DefaultLayoutParser;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/launcher3/common/model/DefaultLayoutParser;

    .prologue
    .line 688
    invoke-virtual {p1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getFolderElementsMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderParser;-><init>(Lcom/android/launcher3/common/model/DefaultLayoutParser;Ljava/util/HashMap;)V

    .line 689
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/common/model/DefaultLayoutParser;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/launcher3/common/model/DefaultLayoutParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "elements":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;>;"
    const/4 v0, 0x0

    .line 691
    iput-object p1, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 684
    iput-boolean v0, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderParser;->mIsCSC:Z

    .line 685
    iput-boolean v0, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderParser;->mIsInvalidFolder:Z

    .line 692
    iput-object p2, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderParser;->mFolderElements:Ljava/util/HashMap;

    .line 693
    return-void
.end method


# virtual methods
.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 28
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 708
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderParser;->mIsCSC:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v24, v0

    const-string v25, "title"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getCSCFolderTitleWithTranslation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 725
    .local v20, "title":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v24, "carrier"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 727
    .local v8, "carrier":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    move-object/from16 v24, v0

    const-string v25, "title"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    move-object/from16 v24, v0

    const-string v25, "itemType"

    const/16 v26, 0x2

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    move-object/from16 v24, v0

    const-string v25, "spanX"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    move-object/from16 v24, v0

    const-string v25, "spanY"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    move-object/from16 v24, v0

    const-string v25, "_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mCallback:Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;->generateNewItemId()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 732
    const-wide/16 v12, -0x1

    .line 733
    .local v12, "folderId":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderParser;->mIsInvalidFolder:Z

    move/from16 v24, v0

    if-nez v24, :cond_5

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mCallback:Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, p2

    move-object/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;->insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v12

    .line 735
    const-wide/16 v24, 0x0

    cmp-long v24, v12, v24

    if-gez v24, :cond_5

    .line 736
    const-string v24, "DefaultLayoutParser"

    const-string v25, "Unable to add folder"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const-wide/16 v4, -0x1

    .line 825
    :cond_1
    :goto_1
    return-wide v4

    .line 711
    .end local v8    # "carrier":Ljava/lang/String;
    .end local v12    # "folderId":J
    .end local v20    # "title":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/content/res/XmlResourceParser;

    move/from16 v24, v0

    if-eqz v24, :cond_4

    move-object/from16 v24, p1

    .line 712
    check-cast v24, Landroid/content/res/XmlResourceParser;

    const-string v25, "title"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v21

    .line 713
    .local v21, "titleResId":I
    if-eqz v21, :cond_3

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mSourceRes:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 721
    .end local v21    # "titleResId":I
    .restart local v20    # "title":Ljava/lang/String;
    :goto_2
    if-nez v20, :cond_0

    .line 722
    const-string v20, ""

    goto/16 :goto_0

    .line 716
    .end local v20    # "title":Ljava/lang/String;
    .restart local v21    # "titleResId":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v24, v0

    const-string v25, "title"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getCSCFolderTitleWithTranslation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "title":Ljava/lang/String;
    goto :goto_2

    .line 719
    .end local v20    # "title":Ljava/lang/String;
    .end local v21    # "titleResId":I
    :cond_4
    const-string v24, "title"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "title":Ljava/lang/String;
    goto :goto_2

    .line 741
    .restart local v8    # "carrier":Ljava/lang/String;
    .restart local v12    # "folderId":J
    :cond_5
    new-instance v16, Landroid/content/ContentValues;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 742
    .local v16, "myValues":Landroid/content/ContentValues;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 745
    .local v11, "folderItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    .line 746
    .local v10, "folderDepth":I
    const/16 v18, 0x0

    .line 747
    .local v18, "rank":I
    :cond_6
    :goto_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v22

    .local v22, "type":I
    const/16 v24, 0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 748
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v24

    move/from16 v0, v24

    if-le v0, v10, :cond_a

    .line 749
    :cond_7
    const/16 v24, 0x2

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 753
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderParser;->mIsInvalidFolder:Z

    move/from16 v24, v0

    if-nez v24, :cond_6

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentValues;->clear()V

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    move-object/from16 v24, v0

    const-string v25, "container"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    move-object/from16 v24, v0

    const-string v25, "rank"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderParser;->mFolderElements:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;

    .line 762
    .local v19, "tagParser":Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;
    if-eqz v19, :cond_9

    .line 763
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;

    move/from16 v24, v0

    if-eqz v24, :cond_8

    move-object/from16 v6, v19

    .line 764
    check-cast v6, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;

    .line 765
    .local v6, "appShortcutTag":Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;->setFolderInfo(Landroid/content/ContentValues;)V

    .line 768
    .end local v6    # "appShortcutTag":Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;
    :cond_8
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v14

    .line 769
    .local v14, "id":J
    const-wide/16 v24, 0x0

    cmp-long v24, v14, v24

    if-ltz v24, :cond_6

    .line 770
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 774
    .end local v14    # "id":J
    :cond_9
    new-instance v24, Ljava/lang/RuntimeException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Invalid folder item "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 778
    .end local v19    # "tagParser":Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderParser;->mIsInvalidFolder:Z

    move/from16 v24, v0

    if-eqz v24, :cond_b

    .line 779
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderParser;->mIsInvalidFolder:Z

    .line 780
    const-wide/16 v4, -0x1

    goto/16 :goto_1

    .line 783
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    .line 784
    invoke-static/range {v24 .. v24}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v24

    const-wide/16 v26, -0x64

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/customer/PostPositionController;->getSharedPref(J)Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    move-result-object v17

    .line 786
    .local v17, "ppPref":Lcom/android/launcher3/common/customer/PostPositionSharedPref;
    move-wide v4, v12

    .line 791
    .local v4, "addedId":J
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_c

    .line 793
    invoke-static {v12, v13}, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v23

    .line 794
    .local v23, "uri":Landroid/net/Uri;
    new-instance v7, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v7, v0, v1, v2}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 795
    .local v7, "args":Lcom/android/launcher3/LauncherProvider$SqlArguments;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v24, v0

    iget-object v0, v7, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    move-object/from16 v25, v0

    iget-object v0, v7, Lcom/android/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    move-object/from16 v26, v0

    iget-object v0, v7, Lcom/android/launcher3/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v24 .. v27}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 796
    const-wide/16 v4, -0x1

    .line 800
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 801
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 802
    .local v9, "childValues":Landroid/content/ContentValues;
    const-string v24, "container"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-static {v0, v9, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->copyInteger(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 803
    const-string v24, "screen"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-static {v0, v9, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->copyInteger(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 804
    const-string v24, "cellX"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-static {v0, v9, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->copyInteger(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 805
    const-string v24, "cellY"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-static {v0, v9, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->copyInteger(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 807
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v24, v0

    const-string v25, "favorites"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "_id="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 812
    if-eqz v17, :cond_1

    .line 813
    const/16 v24, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v24

    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->writeFolderId(Ljava/lang/String;JZ)V

    goto/16 :goto_1

    .line 817
    .end local v7    # "args":Lcom/android/launcher3/LauncherProvider$SqlArguments;
    .end local v9    # "childValues":Landroid/content/ContentValues;
    .end local v23    # "uri":Landroid/net/Uri;
    :cond_c
    if-eqz v17, :cond_1

    .line 818
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12, v13}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->writePreloadedFolderId(Ljava/lang/String;J)V

    goto/16 :goto_1
.end method

.method public setInvalidFolder(Z)V
    .locals 0
    .param p1, "isInvalidFolder"    # Z

    .prologue
    .line 700
    iput-boolean p1, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderParser;->mIsInvalidFolder:Z

    .line 701
    return-void
.end method

.method public setIsCSC(Z)V
    .locals 0
    .param p1, "isCSC"    # Z

    .prologue
    .line 696
    iput-boolean p1, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderParser;->mIsCSC:Z

    .line 697
    return-void
.end method
