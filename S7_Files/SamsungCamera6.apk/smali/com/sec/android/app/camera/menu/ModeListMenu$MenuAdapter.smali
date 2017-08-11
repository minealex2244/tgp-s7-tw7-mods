.class Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;
.super Ljava/lang/Object;
.source "ModeListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLAbsList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/ModeListMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private final mItemList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;",
            "Lcom/sec/android/app/camera/widget/gl/ModeItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/menu/ModeListMenu;)V
    .locals 1

    .prologue
    .line 1519
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1520
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->mItemList:Ljava/util/HashMap;

    .line 1521
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/menu/ModeListMenu;Lcom/sec/android/app/camera/menu/ModeListMenu$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/menu/ModeListMenu;
    .param p2, "x1"    # Lcom/sec/android/app/camera/menu/ModeListMenu$1;

    .prologue
    .line 1511
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/ModeListMenu;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$100(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;->getNumberOfItems()I

    move-result v0

    return v0
.end method

.method public getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
    .locals 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v12, 0x0

    .line 1530
    if-nez p2, :cond_d

    .line 1532
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$200(Lcom/sec/android/app/camera/menu/ModeListMenu;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1533
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$100(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    .line 1542
    .local v6, "itemData":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    :goto_0
    if-nez v6, :cond_2

    .line 1655
    .end local v6    # "itemData":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    :goto_1
    return-object v10

    .line 1535
    :cond_0
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_DOWNLOAD_SHOOTING_MODES:Z

    if-eqz v1, :cond_1

    .line 1536
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$100(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$200(Lcom/sec/android/app/camera/menu/ModeListMenu;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;->findBundle(I)Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    move-result-object v6

    .restart local v6    # "itemData":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    goto :goto_0

    .line 1538
    .end local v6    # "itemData":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$100(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    move-result-object v3

    const/4 v4, 0x3

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$200(Lcom/sec/android/app/camera/menu/ModeListMenu;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v4, v1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;->findBundle(II)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    .restart local v6    # "itemData":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    goto :goto_0

    .line 1546
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->mItemList:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    .line 1549
    .local v0, "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedAndPreloadedShootingMode(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1550
    :cond_3
    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getCommandId()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommandWithSub(Ljava/lang/String;ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v7

    .line 1555
    .local v7, "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :goto_2
    if-nez v0, :cond_d

    .line 1556
    if-eqz v7, :cond_d

    instance-of v1, v7, Lcom/sec/android/app/camera/command/EmptyCommand;

    if-nez v1, :cond_d

    .line 1557
    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1558
    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getShootingMode(ILjava/lang/String;)Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;

    move-result-object v11

    .line 1559
    .local v11, "mode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    if-nez v11, :cond_5

    .line 1560
    const-string v1, "ModeListMenu"

    const-string v2, "PlugInShootingModesLoader isn\'t ready yet."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1552
    .end local v7    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v11    # "mode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    :cond_4
    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getCommandId()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v7

    .restart local v7    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    goto :goto_2

    .line 1565
    :cond_5
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    .end local v0    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_WIDTH:F
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$300(Lcom/sec/android/app/camera/menu/ModeListMenu;)F

    move-result v4

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$400(Lcom/sec/android/app/camera/menu/ModeListMenu;)F

    move-result v5

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getDownloaded()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v8

    move v3, v2

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/widget/gl/ModeItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;Z)V

    .line 1566
    .restart local v0    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$500(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/samsung/android/glview/GLGridList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 1567
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$500(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/samsung/android/glview/GLGridList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    .line 1568
    new-instance v1, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter$1;-><init>(Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1576
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_DOWNLOAD_SHOOTING_MODES:Z

    if-nez v1, :cond_6

    .line 1577
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_6

    .line 1578
    invoke-virtual {v0, v12}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setDraggable(Z)V

    .line 1581
    :cond_6
    new-instance v1, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter$2;-><init>(Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setSelectListener(Lcom/sec/android/app/camera/widget/gl/ModeItem$SelectListener;)V

    .line 1589
    new-instance v1, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter$3;-><init>(Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setCheckBoxSelectListener(Lcom/sec/android/app/camera/widget/gl/ModeItem$CheckBoxSelectListener;)V

    .line 1600
    new-instance v1, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter$4;-><init>(Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setDeleteClickListener(Lcom/sec/android/app/camera/widget/gl/ModeItem$DeleteClickListener;)V

    .line 1619
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$1000(Lcom/sec/android/app/camera/menu/ModeListMenu;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 1620
    invoke-virtual {v0, v12}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setDeleteButtonVisibility(I)V

    .line 1621
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 1632
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->mItemList:Ljava/util/HashMap;

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1634
    if-nez p1, :cond_8

    .line 1635
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # invokes: Lcom/sec/android/app/camera/menu/ModeListMenu;->refreshNextFocus(Lcom/samsung/android/glview/GLView;)V
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$1100(Lcom/sec/android/app/camera/menu/ModeListMenu;Lcom/samsung/android/glview/GLView;)V

    .line 1638
    :cond_8
    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getCommandId()I

    move-result v1

    const/16 v2, 0x12c

    if-eq v1, v2, :cond_9

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getCommandId()I

    move-result v1

    const/16 v2, 0x154

    if-ne v1, v2, :cond_b

    .line 1639
    :cond_9
    invoke-virtual {v0, v12}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setDraggable(Z)V

    move-object v10, v0

    .line 1640
    goto/16 :goto_1

    .line 1622
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$1000(Lcom/sec/android/app/camera/menu/ModeListMenu;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 1623
    invoke-virtual {v0, v12}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setShortCutCheckBoxVisibility(I)V

    .line 1624
    invoke-virtual {v0, v12}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setDraggable(Z)V

    .line 1625
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    .line 1627
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutCheckedList:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$900(Lcom/sec/android/app/camera/menu/ModeListMenu;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    .line 1628
    .local v9, "checkValue":Ljava/lang/Boolean;
    if-eqz v9, :cond_7

    .line 1629
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setShortCutCheckBoxSelected(Z)V

    goto :goto_3

    .line 1642
    .end local v9    # "checkValue":Ljava/lang/Boolean;
    :cond_b
    new-instance v10, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$1200(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mLastBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$1300(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    move-result-object v3

    invoke-direct {v10, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;-><init>(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;)V

    .line 1643
    .local v10, "dropBox":Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # setter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mLastBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    invoke-static {v1, v10}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$1302(Lcom/sec/android/app/camera/menu/ModeListMenu;Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;)Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    .line 1644
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # getter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mFirstBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$1400(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    move-result-object v1

    if-nez v1, :cond_c

    .line 1645
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # setter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mFirstBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    invoke-static {v1, v10}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$1402(Lcom/sec/android/app/camera/menu/ModeListMenu;Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;)Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    .line 1647
    :cond_c
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    invoke-virtual {v10, v1}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->setDropListener(Lcom/sec/android/app/camera/widget/gl/DragDropBox$DropListener;)V

    .line 1648
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    invoke-virtual {v10, v1}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->setDragListener(Lcom/samsung/android/glview/GLView$DragListener;)V

    .line 1649
    invoke-virtual {v10, v0}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_1

    .end local v0    # "item":Lcom/sec/android/app/camera/widget/gl/ModeItem;
    .end local v6    # "itemData":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    .end local v7    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v10    # "dropBox":Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    :cond_d
    move-object v10, p2

    .line 1655
    goto/16 :goto_1
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1660
    const-string v0, "ModeListMenu"

    const-string v1, "MenuAdapter reset"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->mItemList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1663
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # setter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mFirstBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$1402(Lcom/sec/android/app/camera/menu/ModeListMenu;Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;)Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    .line 1664
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    # setter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mLastBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$1302(Lcom/sec/android/app/camera/menu/ModeListMenu;Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;)Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    .line 1665
    return-void
.end method

.method public setResourceData(Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V
    .locals 1
    .param p1, "resourceData"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeListMenu;

    check-cast p1, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    .end local p1    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    # setter for: Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;
    invoke-static {v0, p1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->access$102(Lcom/sec/android/app/camera/menu/ModeListMenu;Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;)Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    .line 1675
    return-void
.end method
