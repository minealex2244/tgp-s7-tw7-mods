.class Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;
.super Ljava/lang/Object;
.source "NotificationPreviewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preview/NotificationPreviewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 85
    iget-object v5, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-get5(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)Landroid/widget/TextView;

    move-result-object v5

    if-ne p1, v5, :cond_0

    .line 86
    iget-object v5, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-get0(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 87
    iget-object v5, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-get0(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToLockedShade(Landroid/view/View;)V

    .line 88
    return-void

    .line 92
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-wrap1(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)I

    move-result v1

    .line 93
    .local v1, "displayedPreview":I
    move-object v4, p1

    .line 94
    .local v4, "target":Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-get3(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 95
    iget-object v5, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-get3(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, "child":Landroid/view/View;
    if-ne v0, p1, :cond_1

    .line 97
    iget-object v5, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-static {v5, v0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-wrap0(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;Landroid/view/View;)Lcom/android/systemui/statusbar/preview/NotificationPreview;

    move-result-object v3

    .line 98
    .local v3, "np":Lcom/android/systemui/statusbar/preview/NotificationPreview;
    if-eqz v3, :cond_1

    .line 99
    if-ne v1, v2, :cond_2

    .line 100
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->isClicked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 101
    iget-object v5, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-static {v5, v3}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-wrap4(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;Lcom/android/systemui/statusbar/preview/NotificationPreview;)V

    .line 94
    .end local v3    # "np":Lcom/android/systemui/statusbar/preview/NotificationPreview;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    .restart local v3    # "np":Lcom/android/systemui/statusbar/preview/NotificationPreview;
    :cond_2
    if-ne v1, v10, :cond_3

    .line 104
    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->setIsClicked(Z)V

    .line 105
    iget-object v5, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->getRow()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v6

    invoke-static {v5, v6, v7}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-wrap2(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    .line 106
    iget-object v5, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-static {v5, p1, v7}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-wrap3(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;Landroid/view/View;Z)V

    goto :goto_1

    .line 108
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    new-instance v6, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3$1;

    invoke-direct {v6, p0, v3, p1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3$1;-><init>(Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;Lcom/android/systemui/statusbar/preview/NotificationPreview;Landroid/view/View;)V

    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-set0(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 118
    iget-object v5, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-get2(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-get1(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 v8, 0xa6

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 124
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "np":Lcom/android/systemui/statusbar/preview/NotificationPreview;
    :cond_4
    if-eq v1, v10, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-get4(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 125
    iget-object v5, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-get4(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 126
    iget-object v5, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-get4(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/preview/NotificationPreview;

    .line 127
    .restart local v3    # "np":Lcom/android/systemui/statusbar/preview/NotificationPreview;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->isClicked()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 128
    iget-object v5, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-static {v5, v3}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-wrap4(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;Lcom/android/systemui/statusbar/preview/NotificationPreview;)V

    .line 133
    .end local v3    # "np":Lcom/android/systemui/statusbar/preview/NotificationPreview;
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-get0(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 134
    iget-object v5, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-get0(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->userActivity()V

    .line 84
    :cond_6
    return-void
.end method