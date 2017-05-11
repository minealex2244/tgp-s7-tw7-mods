.class public Lcom/sec/android/app/camera/setting/TimerSettingFragment;
.super Landroid/app/ListFragment;
.source "TimerSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;,
        Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerListItemHolder;,
        Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerSelectListener;
    }
.end annotation


# static fields
.field private static final DIM_ALPHA_VALUE:F = 0.37f

.field protected static final FRONT_TIMER_LIST:I = 0x1

.field protected static final REAR_TIMER_LIST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TimerSettingFragment"

.field private static final TIMER_TYPE:Ljava/lang/String; = "type"


# instance fields
.field private mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

.field private mIntervalSummaryTextView:Landroid/widget/TextView;

.field private mIntervalSwitch:Landroid/widget/Switch;

.field private mIntervalTextView:Landroid/widget/TextView;

.field private mList:[Ljava/lang/String;

.field mTimerAdapter:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;

.field private mTimerType:I

.field public onTimerListener:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerSelectListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/setting/TimerSettingFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/TimerSettingFragment;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getTimer()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/setting/TimerSettingFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/TimerSettingFragment;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->setInterval(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/setting/TimerSettingFragment;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/TimerSettingFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mList:[Ljava/lang/String;

    return-object v0
.end method

.method private getInterval()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 164
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getTimer()I

    move-result v1

    if-nez v1, :cond_0

    .line 170
    :goto_0
    return v0

    .line 167
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerType:I

    if-nez v1, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_interval_key"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_camera_front_interval_key"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private getTimer()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 186
    iget v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerType:I

    if-nez v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_timer_key"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 189
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_front_timer_key"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private initializeList()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const v12, 0x7f0a01cd

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 201
    const/4 v11, 0x0

    .line 202
    .local v11, "savedPos":I
    const v1, 0x7f0900f4

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 204
    .local v9, "actionBarTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0c0012

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mList:[Ljava/lang/String;

    .line 205
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getTimer()I

    move-result v11

    .line 207
    iget v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerType:I

    if-nez v1, :cond_2

    .line 208
    const-string v1, "606"

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    .line 212
    :goto_0
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_INTERVAL_CAPTURE:Z

    if-eqz v1, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f04001c

    invoke-virtual {v1, v4, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 214
    .local v10, "layout":Landroid/view/View;
    invoke-virtual {v10, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    const v1, 0x7f0f0058

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalTextView:Landroid/widget/TextView;

    .line 216
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalTextView:Landroid/widget/TextView;

    const v4, 0x7f0900c0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 217
    const v1, 0x7f0f0059

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSummaryTextView:Landroid/widget/TextView;

    .line 218
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901b0

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b003e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    const v1, 0x7f0f005a

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSwitch:Landroid/widget/Switch;

    .line 221
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isAttachImageMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isAttachVideoMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 222
    :cond_0
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->setIntervalDim(Z)V

    .line 226
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSwitch:Landroid/widget/Switch;

    new-instance v4, Lcom/sec/android/app/camera/setting/TimerSettingFragment$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment$1;-><init>(Lcom/sec/android/app/camera/setting/TimerSettingFragment;)V

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 235
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 236
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v10, v13, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 237
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 240
    .end local v10    # "layout":Landroid/view/View;
    :cond_1
    new-instance v1, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f04001d

    iget-object v6, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mList:[Ljava/lang/String;

    invoke-direct {v1, p0, v4, v5, v6}, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;-><init>(Lcom/sec/android/app/camera/setting/TimerSettingFragment;Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerAdapter:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;

    .line 241
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerAdapter:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;

    invoke-virtual {v1, v11}, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;->setSelectedIndex(I)V

    .line 242
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerAdapter:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;->notifyDataSetChanged()V

    .line 243
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerAdapter:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 244
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 247
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 248
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v4, v3

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 252
    .local v0, "insetDivider":Landroid/graphics/drawable/InsetDrawable;
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 254
    invoke-direct {p0, v9}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->setActionBarTitle(Ljava/lang/String;)V

    .line 255
    return-void

    .line 210
    .end local v0    # "insetDivider":Landroid/graphics/drawable/InsetDrawable;
    :cond_2
    const-string v1, "607"

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 224
    .restart local v10    # "layout":Landroid/view/View;
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getTimer()I

    move-result v1

    if-nez v1, :cond_4

    move v1, v3

    :goto_3
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->setIntervalDim(Z)V

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_3

    .line 250
    .end local v10    # "layout":Landroid/view/View;
    :cond_5
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v5, v1

    move-object v3, v0

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .restart local v0    # "insetDivider":Landroid/graphics/drawable/InsetDrawable;
    goto :goto_2
.end method

.method public static newInstance(I)Lcom/sec/android/app/camera/setting/TimerSettingFragment;
    .locals 3
    .param p0, "timerType"    # I

    .prologue
    .line 74
    new-instance v1, Lcom/sec/android/app/camera/setting/TimerSettingFragment;

    invoke-direct {v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;-><init>()V

    .line 75
    .local v1, "fragment":Lcom/sec/android/app/camera/setting/TimerSettingFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 76
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "type"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->setArguments(Landroid/os/Bundle;)V

    .line 78
    return-object v1
.end method

.method private setActionBarTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 264
    .local v0, "mActionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 265
    return-void
.end method

.method private setInterval(I)V
    .locals 4
    .param p1, "interval"    # I

    .prologue
    .line 175
    iget v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerType:I

    if-nez v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_interval_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v0, "6082"

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    .line 182
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->setButtonDim(II)V

    .line 183
    return-void

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_front_interval_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v0, "6084"

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private setIntervalDim(Z)V
    .locals 6
    .param p1, "isDim"    # Z

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3ebd70a4    # 0.37f

    .line 268
    const-string v0, "TimerSettingFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIntervalDim "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    if-eqz p1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 280
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getInterval()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method public getTimerType()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerType:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerType:I

    .line 86
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    .line 87
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->initializeList()V

    .line 88
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/content/Context;)V

    .line 93
    check-cast p1, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerSelectListener;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->onTimerListener:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerSelectListener;

    .line 94
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0f0057

    if-ne v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSwitch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "list"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 108
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerAdapter:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerAdapter:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;->getCount()I

    move-result v1

    if-lt p3, v1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerAdapter:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;

    invoke-virtual {v1, p3}, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;->setSelectedIndex(I)V

    .line 113
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerAdapter:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;->notifyDataSetChanged()V

    .line 116
    iget v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerType:I

    if-nez v1, :cond_3

    .line 117
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->onTimerListener:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerSelectListener;

    invoke-interface {v1, p3}, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerSelectListener;->onTimerSelect(I)V

    .line 122
    :goto_1
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_INTERVAL_CAPTURE:Z

    if-eqz v1, :cond_5

    .line 123
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isAttachImageMode()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isAttachVideoMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 124
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getTimer()I

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_2
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->setIntervalDim(Z)V

    .line 137
    :cond_2
    :goto_3
    iget v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerType:I

    if-nez v1, :cond_7

    .line 138
    const-string v1, "6081"

    invoke-static {p3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getDetailByTimerMode(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->onTimerListener:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerSelectListener;

    invoke-interface {v1, p3}, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerSelectListener;->onFrontTimerSelect(I)V

    goto :goto_1

    .line 124
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 127
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 129
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :cond_6
    :goto_4
    const v1, 0x7f090222

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->setActionBarTitle(Ljava/lang/String;)V

    goto :goto_3

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "TimerSettingFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemClick : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 140
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_7
    const-string v1, "6083"

    invoke-static {p3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getDetailByTimerMode(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 146
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 148
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getTimer()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "extraValue":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7f

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getInterval()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "G010"

    invoke-static {v2, v0}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/Util;->broadcastGeneralEventForLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 151
    return-void
.end method

.method public refreshMenu()V
    .locals 2

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "savedPos":I
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getTimer()I

    move-result v0

    .line 156
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerAdapter:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;->setSelectedIndex(I)V

    .line 157
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerAdapter:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;->notifyDataSetChanged()V

    .line 158
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_INTERVAL_CAPTURE:Z

    if-eqz v1, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getTimer()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->setIntervalDim(Z)V

    .line 161
    :cond_0
    return-void

    .line 159
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
