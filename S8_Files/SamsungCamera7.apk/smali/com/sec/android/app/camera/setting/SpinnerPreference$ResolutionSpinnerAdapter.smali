.class public Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SpinnerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/setting/SpinnerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResolutionSpinnerAdapter"
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

.field final synthetic this$0:Lcom/sec/android/app/camera/setting/SpinnerPreference;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/setting/SpinnerPreference;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/setting/SpinnerPreference;
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "txtViewResourceId"    # I
    .param p4, "objects"    # [Ljava/lang/String;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerAdapter;->this$0:Lcom/sec/android/app/camera/setting/SpinnerPreference;

    .line 283
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 284
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v6, 0x7f0d005b

    const v5, 0x7f0d000c

    .line 289
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerAdapter;->this$0:Lcom/sec/android/app/camera/setting/SpinnerPreference;

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerAdapter;->this$0:Lcom/sec/android/app/camera/setting/SpinnerPreference;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->getValue()I

    move-result v3

    # invokes: Lcom/sec/android/app/camera/setting/SpinnerPreference;->findIndexOfValue(I)I
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->access$000(Lcom/sec/android/app/camera/setting/SpinnerPreference;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerAdapter;->selectedIndex:I

    .line 290
    if-nez p2, :cond_1

    .line 291
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerAdapter;->this$0:Lcom/sec/android/app/camera/setting/SpinnerPreference;

    # getter for: Lcom/sec/android/app/camera/setting/SpinnerPreference;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->access$900(Lcom/sec/android/app/camera/setting/SpinnerPreference;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 292
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040018

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 293
    new-instance v1, Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerItemHolder;

    invoke-direct {v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerItemHolder;-><init>()V

    .line 294
    .local v1, "viewHolder":Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerItemHolder;
    const v2, 0x7f0f0055

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerItemHolder;->mainText:Landroid/widget/TextView;

    .line 295
    iget-object v2, v1, Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerItemHolder;->mainText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerAdapter;->this$0:Lcom/sec/android/app/camera/setting/SpinnerPreference;

    # getter for: Lcom/sec/android/app/camera/setting/SpinnerPreference;->mEntries:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->access$400(Lcom/sec/android/app/camera/setting/SpinnerPreference;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    const v2, 0x7f0f0056

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerItemHolder;->subText:Landroid/widget/TextView;

    .line 297
    iget-object v2, v1, Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerItemHolder;->subText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerAdapter;->this$0:Lcom/sec/android/app/camera/setting/SpinnerPreference;

    # getter for: Lcom/sec/android/app/camera/setting/SpinnerPreference;->mEntryValues:[I
    invoke-static {v4}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->access$300(Lcom/sec/android/app/camera/setting/SpinnerPreference;)[I

    move-result-object v4

    aget v4, v4, p1

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionSubString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget v2, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerAdapter;->selectedIndex:I

    if-ne v2, p1, :cond_0

    .line 299
    iget-object v2, v1, Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerItemHolder;->mainText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerAdapter;->this$0:Lcom/sec/android/app/camera/setting/SpinnerPreference;

    # getter for: Lcom/sec/android/app/camera/setting/SpinnerPreference;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->access$900(Lcom/sec/android/app/camera/setting/SpinnerPreference;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 303
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerAdapter;->this$0:Lcom/sec/android/app/camera/setting/SpinnerPreference;

    # getter for: Lcom/sec/android/app/camera/setting/SpinnerPreference;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->access$900(Lcom/sec/android/app/camera/setting/SpinnerPreference;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerAdapter;->this$0:Lcom/sec/android/app/camera/setting/SpinnerPreference;

    # getter for: Lcom/sec/android/app/camera/setting/SpinnerPreference;->mEntryValues:[I
    invoke-static {v3}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->access$300(Lcom/sec/android/app/camera/setting/SpinnerPreference;)[I

    move-result-object v3

    aget v3, v3, p1

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/Util;->getPictureSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 304
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 315
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_1
    return-object p2

    .line 301
    .restart local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v2, v1, Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerItemHolder;->mainText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerAdapter;->this$0:Lcom/sec/android/app/camera/setting/SpinnerPreference;

    # getter for: Lcom/sec/android/app/camera/setting/SpinnerPreference;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->access$900(Lcom/sec/android/app/camera/setting/SpinnerPreference;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 306
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "viewHolder":Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerItemHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerItemHolder;

    .line 307
    .restart local v1    # "viewHolder":Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerItemHolder;
    iget v2, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerAdapter;->selectedIndex:I

    if-ne v2, p1, :cond_2

    .line 308
    iget-object v2, v1, Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerItemHolder;->mainText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerAdapter;->this$0:Lcom/sec/android/app/camera/setting/SpinnerPreference;

    # getter for: Lcom/sec/android/app/camera/setting/SpinnerPreference;->mEntries:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->access$400(Lcom/sec/android/app/camera/setting/SpinnerPreference;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v2, v1, Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerItemHolder;->subText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerAdapter;->this$0:Lcom/sec/android/app/camera/setting/SpinnerPreference;

    # getter for: Lcom/sec/android/app/camera/setting/SpinnerPreference;->mEntryValues:[I
    invoke-static {v4}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->access$300(Lcom/sec/android/app/camera/setting/SpinnerPreference;)[I

    move-result-object v4

    aget v4, v4, p1

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionSubString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v2, v1, Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerItemHolder;->mainText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerAdapter;->this$0:Lcom/sec/android/app/camera/setting/SpinnerPreference;

    # getter for: Lcom/sec/android/app/camera/setting/SpinnerPreference;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->access$900(Lcom/sec/android/app/camera/setting/SpinnerPreference;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 312
    :cond_2
    iget-object v2, v1, Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerItemHolder;->mainText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerAdapter;->this$0:Lcom/sec/android/app/camera/setting/SpinnerPreference;

    # getter for: Lcom/sec/android/app/camera/setting/SpinnerPreference;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->access$900(Lcom/sec/android/app/camera/setting/SpinnerPreference;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method
