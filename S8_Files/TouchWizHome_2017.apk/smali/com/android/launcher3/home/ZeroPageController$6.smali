.class Lcom/android/launcher3/home/ZeroPageController$6;
.super Ljava/lang/Object;
.source "ZeroPageController.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/ZeroPageController;->addZeroPageSwitch(Lcom/android/launcher3/home/WorkspaceCellLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/ZeroPageController;

.field final synthetic val$zeroPageScreen:Lcom/android/launcher3/home/WorkspaceCellLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/ZeroPageController;Lcom/android/launcher3/home/WorkspaceCellLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/ZeroPageController;

    .prologue
    .line 1081
    iput-object p1, p0, Lcom/android/launcher3/home/ZeroPageController$6;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    iput-object p2, p0, Lcom/android/launcher3/home/ZeroPageController$6;->val$zeroPageScreen:Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 11
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 1084
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$6;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    # getter for: Lcom/android/launcher3/home/ZeroPageController;->mInstalled:Z
    invoke-static {v3}, Lcom/android/launcher3/home/ZeroPageController;->access$500(Lcom/android/launcher3/home/ZeroPageController;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p2, :cond_0

    .line 1085
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$6;->val$zeroPageScreen:Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getZeroPageSwitch()Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1086
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$6;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    iget-object v4, p0, Lcom/android/launcher3/home/ZeroPageController$6;->val$zeroPageScreen:Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-virtual {v4}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getZeroPageSwitch()Landroid/widget/Switch;

    move-result-object v4

    # invokes: Lcom/android/launcher3/home/ZeroPageController;->showZeroPageDownloadDialog(Landroid/widget/Switch;Z)V
    invoke-static {v3, v4, v10}, Lcom/android/launcher3/home/ZeroPageController;->access$1600(Lcom/android/launcher3/home/ZeroPageController;Landroid/widget/Switch;Z)V

    .line 1115
    :goto_0
    return-void

    .line 1090
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$6;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    # getter for: Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;
    invoke-static {v3}, Lcom/android/launcher3/home/ZeroPageController;->access$100(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/launcher3/home/ZeroPageController;->setZeroPageActiveState(Landroid/content/Context;Z)V

    .line 1091
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$6;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v4

    # invokes: Lcom/android/launcher3/home/ZeroPageController;->updateZeroPageBg(ZZ)V
    invoke-static {v3, p2, v4}, Lcom/android/launcher3/home/ZeroPageController;->access$1700(Lcom/android/launcher3/home/ZeroPageController;ZZ)V

    .line 1093
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$6;->val$zeroPageScreen:Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getZeroPageSwitchLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 1094
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v3

    const-string v4, "HOEO"

    const-string v5, "Zero page"

    const-wide/16 v6, -0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1099
    :cond_1
    if-eqz p2, :cond_2

    .line 1100
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$6;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    iget-object v4, p0, Lcom/android/launcher3/home/ZeroPageController$6;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    # getter for: Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;
    invoke-static {v4}, Lcom/android/launcher3/home/ZeroPageController;->access$100(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/Launcher;

    move-result-object v4

    # invokes: Lcom/android/launcher3/home/ZeroPageController;->startActivityInVirtualScreen(Landroid/content/Context;ZZ)V
    invoke-static {v3, v4, v10, v8}, Lcom/android/launcher3/home/ZeroPageController;->access$1800(Lcom/android/launcher3/home/ZeroPageController;Landroid/content/Context;ZZ)V

    .line 1101
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$6;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    # invokes: Lcom/android/launcher3/home/ZeroPageController;->bindVirtualScreen()V
    invoke-static {v3}, Lcom/android/launcher3/home/ZeroPageController;->access$1900(Lcom/android/launcher3/home/ZeroPageController;)V

    goto :goto_0

    .line 1104
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$6;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    # getter for: Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;
    invoke-static {v3}, Lcom/android/launcher3/home/ZeroPageController;->access$1100(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/home/ZeroPageController$6;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    # getter for: Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;
    invoke-static {v4}, Lcom/android/launcher3/home/ZeroPageController;->access$1100(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v4

    .line 1105
    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v4

    .line 1104
    invoke-virtual {v3, v4}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v4

    const-wide/16 v6, -0x12d

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 1106
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$6;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    # getter for: Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;
    invoke-static {v3}, Lcom/android/launcher3/home/ZeroPageController;->access$1100(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/home/ZeroPageController$6;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    # getter for: Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;
    invoke-static {v4}, Lcom/android/launcher3/home/ZeroPageController;->access$1100(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/home/ZeroPageController$6;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    .line 1107
    # getter for: Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;
    invoke-static {v5}, Lcom/android/launcher3/home/ZeroPageController;->access$1100(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 1106
    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/home/Workspace;->updateDefaultHome(II)V

    .line 1109
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$6;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    # getter for: Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;
    invoke-static {v3}, Lcom/android/launcher3/home/ZeroPageController;->access$100(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    move-object v0, v3

    check-cast v0, Landroid/app/ActivityManager;

    move-object v2, v0

    .line 1110
    .local v2, "am":Landroid/app/ActivityManager;
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController$6;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    # invokes: Lcom/android/launcher3/home/ZeroPageController;->getZeroPagePackageName()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/launcher3/home/ZeroPageController;->access$2000(Lcom/android/launcher3/home/ZeroPageController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->semForceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1111
    .end local v2    # "am":Landroid/app/ActivityManager;
    :catch_0
    move-exception v9

    .line 1112
    .local v9, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "forceStopPackage exception for zero page - onCheckedChanged"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
