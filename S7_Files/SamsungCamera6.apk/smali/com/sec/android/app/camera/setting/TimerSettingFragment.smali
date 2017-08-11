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
.field private static final CAMERA_SETTING:Ljava/lang/String; = "setting"

.field private static final DIM_ALPHA_VALUE:F = 0.37f

.field private static final TAG:Ljava/lang/String; = "TimerSettingFragment"


# instance fields
.field private mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

.field private mIntervalSummaryTextView:Landroid/widget/TextView;

.field private mIntervalSwitch:Landroid/widget/Switch;

.field private mIntervalTextView:Landroid/widget/TextView;

.field private mList:[Ljava/lang/String;

.field mTimerAdapter:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;

.field public onTimerListener:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerSelectListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/setting/TimerSettingFragment;)Lcom/sec/android/app/camera/setting/CameraSettingsImpl;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/TimerSettingFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/setting/TimerSettingFragment;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/TimerSettingFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mList:[Ljava/lang/String;

    return-object v0
.end method

.method private initializeList()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const v12, 0x7f0b01ad

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 144
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    if-nez v1, :cond_0

    .line 196
    :goto_0
    return-void

    .line 147
    :cond_0
    const/4 v11, 0x0

    .line 148
    .local v11, "savedPos":I
    const v1, 0x7f0a00f5

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 150
    .local v9, "actionBarTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0c0009

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mList:[Ljava/lang/String;

    .line 151
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getTimer()I

    move-result v11

    .line 153
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_INTERVAL_CAPTURE:Z

    if-eqz v1, :cond_2

    .line 154
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f040017

    invoke-virtual {v1, v4, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 155
    .local v10, "layout":Landroid/view/View;
    invoke-virtual {v10, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    const v1, 0x7f100043

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalTextView:Landroid/widget/TextView;

    .line 157
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalTextView:Landroid/widget/TextView;

    const v4, 0x7f0a00c1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 158
    const v1, 0x7f100044

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSummaryTextView:Landroid/widget/TextView;

    .line 159
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a01b1

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e002f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    const v1, 0x7f100045

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSwitch:Landroid/widget/Switch;

    .line 162
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isAttachImageMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isAttachVideoMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 163
    :cond_1
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->setIntervalDim(Z)V

    .line 167
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSwitch:Landroid/widget/Switch;

    new-instance v4, Lcom/sec/android/app/camera/setting/TimerSettingFragment$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment$1;-><init>(Lcom/sec/android/app/camera/setting/TimerSettingFragment;)V

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 176
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 177
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v10, v13, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 178
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 181
    .end local v10    # "layout":Landroid/view/View;
    :cond_2
    new-instance v1, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f040018

    iget-object v6, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mList:[Ljava/lang/String;

    invoke-direct {v1, p0, v4, v5, v6}, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;-><init>(Lcom/sec/android/app/camera/setting/TimerSettingFragment;Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerAdapter:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;

    .line 182
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerAdapter:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;

    invoke-virtual {v1, v11}, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;->setSelectedIndex(I)V

    .line 183
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerAdapter:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;->notifyDataSetChanged()V

    .line 184
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerAdapter:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 185
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 188
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 189
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

    .line 193
    .local v0, "insetDivider":Landroid/graphics/drawable/InsetDrawable;
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 195
    invoke-direct {p0, v9}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->setActionBarTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 165
    .end local v0    # "insetDivider":Landroid/graphics/drawable/InsetDrawable;
    .restart local v10    # "layout":Landroid/view/View;
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getTimer()I

    move-result v1

    if-nez v1, :cond_4

    move v1, v3

    :goto_3
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->setIntervalDim(Z)V

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_3

    .line 191
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

.method public static newInstance(Lcom/sec/android/app/camera/setting/CameraSettingsImpl;)Lcom/sec/android/app/camera/setting/TimerSettingFragment;
    .locals 3
    .param p0, "settings"    # Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    .prologue
    .line 69
    new-instance v1, Lcom/sec/android/app/camera/setting/TimerSettingFragment;

    invoke-direct {v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;-><init>()V

    .line 70
    .local v1, "fragment":Lcom/sec/android/app/camera/setting/TimerSettingFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "setting"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 72
    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->setArguments(Landroid/os/Bundle;)V

    .line 73
    return-object v1
.end method

.method private setActionBarTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 205
    .local v0, "mActionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 206
    return-void
.end method

.method private setIntervalDim(Z)V
    .locals 6
    .param p1, "isDim"    # Z

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3ebd70a4    # 0.37f

    .line 209
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

    .line 210
    if-eqz p1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 221
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getInterval()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x7f0d0052

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 80
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "setting"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->initializeList()V

    .line 83
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/content/Context;)V

    .line 88
    check-cast p1, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerSelectListener;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->onTimerListener:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerSelectListener;

    .line 89
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100042

    if-ne v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mIntervalSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 109
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
    .line 115
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerAdapter:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerAdapter:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;->getCount()I

    move-result v1

    if-lt p3, v1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerAdapter:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;

    invoke-virtual {v1, p3}, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;->setSelectedIndex(I)V

    .line 120
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mTimerAdapter:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerAdapter;->notifyDataSetChanged()V

    .line 122
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->onTimerListener:Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerSelectListener;

    invoke-interface {v1, p3}, Lcom/sec/android/app/camera/setting/TimerSettingFragment$TimerSelectListener;->onTimerSelect(I)V

    .line 124
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_INTERVAL_CAPTURE:Z

    if-eqz v1, :cond_3

    .line 125
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isAttachImageMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isAttachVideoMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getTimer()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->setIntervalDim(Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 129
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 131
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_4
    :goto_2
    const v1, 0x7f0a021c

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->setActionBarTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
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

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/16 v4, 0x7f

    const/4 v3, 0x6

    .line 93
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 94
    const-string v1, "TimerSettingFragment"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSettingValue(I)I

    move-result v1

    invoke-static {v3, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "extraValue":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getSettingValue(I)I

    move-result v2

    invoke-static {v4, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "G010"

    invoke-static {v2, v0}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/Util;->broadcastGeneralEventForLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 101
    .end local v0    # "extraValue":Ljava/lang/String;
    :cond_0
    return-void
.end method
