.class Landroid/widget/AbsListView$PerformClick;
.super Landroid/widget/AbsListView$WindowRunnnable;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClick"
.end annotation


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    .prologue
    .line 4149
    iput-object p1, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView$WindowRunnnable;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$WindowRunnnable;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$PerformClick;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    .line 4156
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v6}, Landroid/widget/AbsListView;->-get12(Landroid/widget/AbsListView;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-boolean v6, v6, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v6, :cond_0

    return-void

    .line 4158
    :cond_0
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-object v0, v6, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4159
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget v4, p0, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    .line 4160
    .local v4, "motionPosition":I
    const/4 v3, 0x0

    .line 4161
    .local v3, "handledNotifykeyPress":Z
    const/4 v2, 0x0

    .line 4162
    .local v2, "handledNotifyMultiSelect":Z
    if-eqz v0, :cond_4

    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget v6, v6, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v6, :cond_4

    .line 4163
    if-eq v4, v10, :cond_4

    .line 4164
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-ge v4, v6, :cond_4

    invoke-virtual {p0}, Landroid/widget/AbsListView$PerformClick;->sameWindow()Z

    move-result v6

    .line 4162
    if-eqz v6, :cond_4

    .line 4165
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    .line 4162
    if-eqz v6, :cond_4

    .line 4166
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-object v7, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget v7, v7, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v7, v4, v7

    invoke-virtual {v6, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4169
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_4

    .line 4171
    :try_start_0
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    invoke-virtual {v6, v5, v4, v8, v9}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 4173
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v6}, Landroid/widget/AbsListView;->-get17(Landroid/widget/AbsListView;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v6}, Landroid/widget/AbsListView;->-get13(Landroid/widget/AbsListView;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4174
    :cond_1
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    invoke-virtual {v6, v5, v4, v8, v9}, Landroid/widget/AbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    move-result v3

    .line 4179
    .end local v3    # "handledNotifykeyPress":Z
    :cond_2
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v6}, Landroid/widget/AbsListView;->-get17(Landroid/widget/AbsListView;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v6}, Landroid/widget/AbsListView;->-get13(Landroid/widget/AbsListView;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-object v6, v6, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v6, :cond_4

    .line 4181
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v6}, Landroid/widget/AbsListView;->-get13(Landroid/widget/AbsListView;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 4182
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    const/4 v7, -0x1

    invoke-static {v6, v4, v7}, Landroid/widget/AbsListView;->-wrap7(Landroid/widget/AbsListView;II)V

    .line 4153
    .end local v5    # "view":Landroid/view/View;
    :cond_4
    :goto_0
    return-void

    .line 4183
    .restart local v5    # "view":Landroid/view/View;
    :cond_5
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v6}, Landroid/widget/AbsListView;->-get17(Landroid/widget/AbsListView;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4184
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 4185
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v6}, Landroid/widget/AbsListView;->-get9(Landroid/widget/AbsListView;)I

    move-result v6

    if-ne v6, v10, :cond_6

    .line 4186
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    const/4 v7, -0x1

    invoke-static {v6, v4, v7}, Landroid/widget/AbsListView;->-wrap7(Landroid/widget/AbsListView;II)V

    .line 4187
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v6, v4}, Landroid/widget/AbsListView;->-set0(Landroid/widget/AbsListView;I)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4193
    :catch_0
    move-exception v1

    .line 4194
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0

    .line 4189
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_6
    :try_start_1
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-object v7, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v7}, Landroid/widget/AbsListView;->-get9(Landroid/widget/AbsListView;)I

    move-result v7

    invoke-static {v6, v7, v4}, Landroid/widget/AbsListView;->-wrap7(Landroid/widget/AbsListView;II)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method