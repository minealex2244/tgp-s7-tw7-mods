.class Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ListSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/setting/ListSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResolutionAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private selectedIndex:I

.field final synthetic this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/setting/ListSettingFragment;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "objects"    # [Ljava/lang/String;

    .prologue
    .line 525
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    .line 526
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 527
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v8, 0x7f090277

    const v7, 0x7f09024e

    const/4 v6, 0x1

    const v5, 0x3ebd70a4    # 0.37f

    .line 532
    if-nez p2, :cond_2

    .line 533
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040017

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 534
    new-instance v1, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;

    invoke-direct {v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;-><init>()V

    .line 535
    .local v1, "viewHolder":Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;
    const v2, 0x1020014

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    iput-object v2, v1, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;->title:Landroid/widget/CheckedTextView;

    .line 536
    const v2, 0x7f0f0054

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;->resolution:Landroid/widget/TextView;

    .line 537
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 541
    :goto_0
    iget-object v2, v1, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;->title:Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    # getter for: Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->access$100(Lcom/sec/android/app/camera/setting/ListSettingFragment;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v2, v1, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;->resolution:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    # getter for: Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I
    invoke-static {v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->access$200(Lcom/sec/android/app/camera/setting/ListSettingFragment;)[I

    move-result-object v4

    aget v4, v4, p1

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionSubString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    iget v2, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->selectedIndex:I

    if-ne v2, p1, :cond_3

    .line 544
    iget-object v2, v1, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;->title:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 548
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    # getter for: Lcom/sec/android/app/camera/setting/ListSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->access$300(Lcom/sec/android/app/camera/setting/ListSettingFragment;)Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isDualBackCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    # getter for: Lcom/sec/android/app/camera/setting/ListSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->access$300(Lcom/sec/android/app/camera/setting/ListSettingFragment;)Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    # getter for: Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I
    invoke-static {v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->access$200(Lcom/sec/android/app/camera/setting/ListSettingFragment;)[I

    move-result-object v3

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isSupportedCameraResolutionForDual(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 549
    iget-object v2, v1, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;->title:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v5}, Landroid/widget/CheckedTextView;->setAlpha(F)V

    .line 550
    iget-object v2, v1, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;->resolution:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 553
    :cond_0
    iget-object v2, v1, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;->title:Landroid/widget/CheckedTextView;

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    .line 554
    .local v0, "isChecked":Z
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    # getter for: Lcom/sec/android/app/camera/setting/ListSettingFragment;->mListType:I
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->access$400(Lcom/sec/android/app/camera/setting/ListSettingFragment;)I

    move-result v2

    if-eq v2, v6, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    # getter for: Lcom/sec/android/app/camera/setting/ListSettingFragment;->mListType:I
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->access$400(Lcom/sec/android/app/camera/setting/ListSettingFragment;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 555
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    # getter for: Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I
    invoke-static {v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->access$200(Lcom/sec/android/app/camera/setting/ListSettingFragment;)[I

    move-result-object v4

    aget v4, v4, p1

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->getPictureSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 556
    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 555
    invoke-virtual {p2, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 561
    :goto_3
    return-object p2

    .line 539
    .end local v0    # "isChecked":Z
    .end local v1    # "viewHolder":Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;

    .restart local v1    # "viewHolder":Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;
    goto/16 :goto_0

    .line 546
    :cond_3
    iget-object v2, v1, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;->title:Landroid/widget/CheckedTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto/16 :goto_1

    .line 555
    .restart local v0    # "isChecked":Z
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    .line 556
    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 558
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    # getter for: Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I
    invoke-static {v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->access$200(Lcom/sec/android/app/camera/setting/ListSettingFragment;)[I

    move-result-object v4

    aget v4, v4, p1

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->getVideoSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 559
    :goto_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 558
    invoke-virtual {p2, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    .line 559
    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public setSelectedIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 565
    iput p1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->selectedIndex:I

    .line 566
    return-void
.end method
