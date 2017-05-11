.class Lcom/android/launcher3/folder/view/FolderView$10;
.super Ljava/lang/Object;
.source "FolderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/view/FolderView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/view/FolderView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 493
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    # getter for: Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;
    invoke-static {v1}, Lcom/android/launcher3/folder/view/FolderView;->access$500(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    iget v7, v1, Lcom/android/launcher3/folder/FolderInfo;->color:I

    .line 494
    .local v7, "oldColor":I
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/folder/view/FolderView;->getFolderColorByView(Landroid/view/View;)Lcom/android/launcher3/folder/view/FolderView$FolderColor;

    move-result-object v0

    .line 495
    .local v0, "color":Lcom/android/launcher3/folder/view/FolderView$FolderColor;
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    const/4 v6, 0x1

    # invokes: Lcom/android/launcher3/folder/view/FolderView;->setFolderColor(Lcom/android/launcher3/folder/view/FolderView$FolderColor;Z)V
    invoke-static {v1, v0, v6}, Lcom/android/launcher3/folder/view/FolderView;->access$700(Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/folder/view/FolderView$FolderColor;Z)V

    .line 496
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->toggleColorPicker()V

    .line 498
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    # getter for: Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;
    invoke-static {v1}, Lcom/android/launcher3/folder/view/FolderView;->access$500(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/folder/FolderInfo;->color:I

    if-eq v7, v1, :cond_0

    const-wide/16 v4, 0x1

    .line 499
    .local v4, "colorChanged":J
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 500
    .local v8, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    # getter for: Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;
    invoke-static {v1}, Lcom/android/launcher3/folder/view/FolderView;->access$500(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderInfo;->isContainApps()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f080179

    .line 501
    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 502
    .local v2, "screenID":Ljava/lang/String;
    :goto_1
    const v1, 0x7f080105

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 503
    .local v3, "eventID":Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderView$10;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    # getter for: Lcom/android/launcher3/folder/view/FolderView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;
    invoke-static {v6}, Lcom/android/launcher3/folder/view/FolderView;->access$500(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v6

    iget v6, v6, Lcom/android/launcher3/folder/FolderInfo;->color:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 504
    return-void

    .line 498
    .end local v2    # "screenID":Ljava/lang/String;
    .end local v3    # "eventID":Ljava/lang/String;
    .end local v4    # "colorChanged":J
    .end local v8    # "res":Landroid/content/res/Resources;
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 501
    .restart local v4    # "colorChanged":J
    .restart local v8    # "res":Landroid/content/res/Resources;
    :cond_1
    const v1, 0x7f080185

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
