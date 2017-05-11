.class public final Landroid/preference/PreferenceScreen;
.super Landroid/preference/PreferenceGroup;
.source "PreferenceScreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceScreen$SavedState;,
        Landroid/preference/PreferenceScreen$TouchListener;
    }
.end annotation


# static fields
.field private static final HUGE_FONT_FIRST:I = 0x7

.field private static final HUGE_FONT_FOURTH:I = 0xa

.field private static final HUGE_FONT_SECOND:I = 0x8

.field private static final HUGE_FONT_THIRD:I = 0x9

.field private static final INTENT_EXTRA_HUGE_FONT:Ljava/lang/String; = "large_font"

.field private static final INTENT_FONT_SIZE_CHANGED:Ljava/lang/String; = "com.samsung.settings.FONT_SIZE_CHANGED"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mDialog:Landroid/app/Dialog;

.field private mIsChangedPressedItem:Z

.field private mIsCheckedSwitch:Z

.field private mIsNeedClick:Z

.field private mIsPassedActionMove:Z

.field private mIsRTL:Z

.field private mIsUsingTouchListener:Z

.field private mListView:Landroid/widget/ListView;

.field private mListViewForTouch:Landroid/widget/ListView;

.field private mLocationTouchDownX:F

.field private mMovedDeltaX:F

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRootAdapter:Landroid/widget/ListAdapter;

.field private mScaledTouchSlop:I

.field private final mTouchListener:Landroid/preference/PreferenceScreen$TouchListener;

.field private pressedPostion:I


# direct methods
.method static synthetic -get0(Landroid/preference/PreferenceScreen;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/preference/PreferenceScreen;->mIsPassedActionMove:Z

    return v0
.end method

.method static synthetic -get1(Landroid/preference/PreferenceScreen;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/preference/PreferenceScreen;->mIsRTL:Z

    return v0
.end method

.method static synthetic -get2(Landroid/preference/PreferenceScreen;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mListViewForTouch:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get3(Landroid/preference/PreferenceScreen;)F
    .locals 1

    iget v0, p0, Landroid/preference/PreferenceScreen;->mLocationTouchDownX:F

    return v0
.end method

.method static synthetic -get4(Landroid/preference/PreferenceScreen;)F
    .locals 1

    iget v0, p0, Landroid/preference/PreferenceScreen;->mMovedDeltaX:F

    return v0
.end method

.method static synthetic -get5(Landroid/preference/PreferenceScreen;)I
    .locals 1

    iget v0, p0, Landroid/preference/PreferenceScreen;->mScaledTouchSlop:I

    return v0
.end method

.method static synthetic -get6(Landroid/preference/PreferenceScreen;)I
    .locals 1

    iget v0, p0, Landroid/preference/PreferenceScreen;->pressedPostion:I

    return v0
.end method

.method static synthetic -set0(Landroid/preference/PreferenceScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/preference/PreferenceScreen;->mIsChangedPressedItem:Z

    return p1
.end method

.method static synthetic -set1(Landroid/preference/PreferenceScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/preference/PreferenceScreen;->mIsCheckedSwitch:Z

    return p1
.end method

.method static synthetic -set2(Landroid/preference/PreferenceScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/preference/PreferenceScreen;->mIsNeedClick:Z

    return p1
.end method

.method static synthetic -set3(Landroid/preference/PreferenceScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/preference/PreferenceScreen;->mIsPassedActionMove:Z

    return p1
.end method

.method static synthetic -set4(Landroid/preference/PreferenceScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/preference/PreferenceScreen;->mIsUsingTouchListener:Z

    return p1
.end method

.method static synthetic -set5(Landroid/preference/PreferenceScreen;F)F
    .locals 0

    iput p1, p0, Landroid/preference/PreferenceScreen;->mLocationTouchDownX:F

    return p1
.end method

.method static synthetic -set6(Landroid/preference/PreferenceScreen;F)F
    .locals 0

    iput p1, p0, Landroid/preference/PreferenceScreen;->mMovedDeltaX:F

    return p1
.end method

.method static synthetic -set7(Landroid/preference/PreferenceScreen;I)I
    .locals 0

    iput p1, p0, Landroid/preference/PreferenceScreen;->pressedPostion:I

    return p1
.end method

.method static synthetic -wrap0(Landroid/preference/PreferenceScreen;)V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceScreen;->setTitleFontSize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    .line 134
    const v0, 0x101008b

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    iput v1, p0, Landroid/preference/PreferenceScreen;->mLocationTouchDownX:F

    .line 109
    iput v1, p0, Landroid/preference/PreferenceScreen;->mMovedDeltaX:F

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Landroid/preference/PreferenceScreen;->pressedPostion:I

    .line 111
    iput-boolean v2, p0, Landroid/preference/PreferenceScreen;->mIsCheckedSwitch:Z

    .line 112
    iput-boolean v2, p0, Landroid/preference/PreferenceScreen;->mIsChangedPressedItem:Z

    .line 113
    const/16 v0, 0x40

    iput v0, p0, Landroid/preference/PreferenceScreen;->mScaledTouchSlop:I

    .line 114
    iput-boolean v2, p0, Landroid/preference/PreferenceScreen;->mIsNeedClick:Z

    .line 115
    iput-boolean v2, p0, Landroid/preference/PreferenceScreen;->mIsPassedActionMove:Z

    .line 116
    const-string/jumbo v0, "PreferenceScreen"

    iput-object v0, p0, Landroid/preference/PreferenceScreen;->TAG:Ljava/lang/String;

    .line 117
    new-instance v0, Landroid/preference/PreferenceScreen$TouchListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/preference/PreferenceScreen$TouchListener;-><init>(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen$TouchListener;)V

    iput-object v0, p0, Landroid/preference/PreferenceScreen;->mTouchListener:Landroid/preference/PreferenceScreen$TouchListener;

    .line 118
    iput-boolean v2, p0, Landroid/preference/PreferenceScreen;->mIsUsingTouchListener:Z

    .line 119
    iput-boolean v2, p0, Landroid/preference/PreferenceScreen;->mIsRTL:Z

    .line 137
    iget-boolean v0, p0, Landroid/preference/PreferenceScreen;->mIsDeviceDefault:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/preference/PreferenceScreen;->TW_SCAFE_2015A:Z

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-direct {p0}, Landroid/preference/PreferenceScreen;->setTitleFontSize()V

    goto :goto_0
.end method

.method private setTitleFontSize()V
    .locals 4

    .prologue
    .line 434
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 435
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "font_size"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/preference/PreferenceScreen;->mLargerFontLevel:I

    .line 436
    iget v1, p0, Landroid/preference/PreferenceScreen;->mLargerFontLevel:I

    packed-switch v1, :pswitch_data_0

    .line 454
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050286

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/preference/PreferenceScreen;->mTitleLargerTextSize:I

    .line 432
    :goto_0
    return-void

    .line 438
    :pswitch_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050282

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/preference/PreferenceScreen;->mTitleLargerTextSize:I

    goto :goto_0

    .line 442
    :pswitch_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050283

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/preference/PreferenceScreen;->mTitleLargerTextSize:I

    goto :goto_0

    .line 446
    :pswitch_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050284

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/preference/PreferenceScreen;->mTitleLargerTextSize:I

    goto :goto_0

    .line 450
    :pswitch_3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050285

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/preference/PreferenceScreen;->mTitleLargerTextSize:I

    goto :goto_0

    .line 436
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showDialog(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 225
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 226
    .local v1, "context":Landroid/content/Context;
    iget-object v5, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    if-eqz v5, :cond_0

    .line 227
    iget-object v5, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 231
    :cond_0
    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 230
    check-cast v3, Landroid/view/LayoutInflater;

    .line 233
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x10900c9

    .line 232
    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 234
    .local v0, "childPrefScreen":Landroid/view/View;
    const v5, 0x102000a

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    .line 235
    iget-object v5, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 238
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 239
    .local v4, "title":Ljava/lang/CharSequence;
    new-instance v2, Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/content/Context;->getThemeResId()I

    move-result v5

    invoke-direct {v2, v1, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 240
    .local v2, "dialog":Landroid/app/Dialog;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 241
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/Window;->requestFeature(I)Z

    .line 245
    :goto_0
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 246
    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 247
    if-eqz p1, :cond_1

    .line 248
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 252
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceManager;->addPreferencesScreen(Landroid/content/DialogInterface;)V

    .line 254
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 224
    return-void

    .line 243
    :cond_2
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public bind(Landroid/widget/ListView;)V
    .locals 4
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 182
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 183
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 185
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 186
    .local v0, "context":Landroid/content/Context;
    iget-boolean v2, p0, Landroid/preference/PreferenceScreen;->mIsDeviceDefault:Z

    if-eqz v2, :cond_0

    .line 187
    iget-object v2, p0, Landroid/preference/PreferenceScreen;->mTouchListener:Landroid/preference/PreferenceScreen$TouchListener;

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 188
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->isRTL()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->hasRTL()Z

    move-result v2

    :goto_0
    iput-boolean v2, p0, Landroid/preference/PreferenceScreen;->mIsRTL:Z

    .line 190
    iget-boolean v2, p0, Landroid/preference/PreferenceScreen;->TW_SCAFE_2015A:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/preference/PreferenceScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 191
    new-instance v2, Landroid/preference/PreferenceScreen$1;

    invoke-direct {v2, p0}, Landroid/preference/PreferenceScreen$1;-><init>(Landroid/preference/PreferenceScreen;)V

    iput-object v2, p0, Landroid/preference/PreferenceScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 202
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 203
    .local v1, "theFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/PreferenceScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 209
    .end local v1    # "theFilter":Landroid/content/IntentFilter;
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/preference/PreferenceScreen;->mScaledTouchSlop:I

    .line 211
    :cond_1
    iput-object p1, p0, Landroid/preference/PreferenceScreen;->mListViewForTouch:Landroid/widget/ListView;

    .line 212
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->onAttachedToActivity()V

    .line 181
    return-void

    .line 188
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getRootAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->onCreateRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    .line 161
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method protected isOnSameScreenAsChildren()Z
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method protected onClick()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 217
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 218
    :cond_0
    return-void

    .line 217
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-direct {p0, v1}, Landroid/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    .line 216
    return-void
.end method

.method protected onCreateRootAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 171
    new-instance v0, Landroid/preference/PreferenceGroupAdapter;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceGroupAdapter;-><init>(Landroid/preference/PreferenceGroup;)V

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 259
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->removePreferencesScreen(Landroid/content/DialogInterface;)V

    .line 257
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v5, 0x0

    .line 273
    instance-of v3, p1, Landroid/widget/ListView;

    if-eqz v3, :cond_0

    .line 274
    check-cast p1, Landroid/widget/ListView;

    .end local p1    # "parent":Landroid/widget/AdapterView;
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr p3, v3

    .line 276
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 277
    .local v0, "item":Ljava/lang/Object;
    instance-of v3, v0, Landroid/preference/Preference;

    if-nez v3, :cond_1

    return-void

    :cond_1
    move-object v1, v0

    .line 279
    check-cast v1, Landroid/preference/Preference;

    .line 281
    .local v1, "preference":Landroid/preference/Preference;
    const/4 v2, 0x0

    .line 282
    .local v2, "tmpSwitch":Landroid/widget/Switch;
    instance-of v3, v1, Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, Landroid/preference/SwitchPreference;

    iget-object v2, v3, Landroid/preference/SwitchPreference;->mSwitch:Landroid/widget/Switch;

    .line 284
    .end local v2    # "tmpSwitch":Landroid/widget/Switch;
    :cond_2
    iget-boolean v3, p0, Landroid/preference/PreferenceScreen;->mIsUsingTouchListener:Z

    if-eqz v3, :cond_5

    instance-of v3, v2, Landroid/widget/Switch;

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Landroid/preference/PreferenceScreen;->mIsCheckedSwitch:Z

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Landroid/preference/PreferenceScreen;->mIsNeedClick:Z

    if-eqz v3, :cond_4

    :cond_3
    iget-boolean v3, p0, Landroid/preference/PreferenceScreen;->mIsChangedPressedItem:Z

    if-eqz v3, :cond_5

    .line 285
    :cond_4
    iput-boolean v5, p0, Landroid/preference/PreferenceScreen;->mIsUsingTouchListener:Z

    .line 286
    iput-boolean v5, p0, Landroid/preference/PreferenceScreen;->mIsChangedPressedItem:Z

    .line 271
    :goto_0
    return-void

    .line 288
    :cond_5
    iput-boolean v5, p0, Landroid/preference/PreferenceScreen;->mIsUsingTouchListener:Z

    .line 289
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 314
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/preference/PreferenceScreen$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 320
    check-cast v0, Landroid/preference/PreferenceScreen$SavedState;

    .line 321
    .local v0, "myState":Landroid/preference/PreferenceScreen$SavedState;
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 322
    iget-boolean v1, v0, Landroid/preference/PreferenceScreen$SavedState;->isDialogShowing:Z

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, v0, Landroid/preference/PreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Landroid/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    .line 313
    :cond_0
    return-void

    .line 316
    .end local v0    # "myState":Landroid/preference/PreferenceScreen$SavedState;
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 317
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 300
    invoke-super {p0}, Landroid/preference/PreferenceGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 301
    .local v2, "superState":Landroid/os/Parcelable;
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 302
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 306
    new-instance v1, Landroid/preference/PreferenceScreen$SavedState;

    invoke-direct {v1, v2}, Landroid/preference/PreferenceScreen$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 307
    .local v1, "myState":Landroid/preference/PreferenceScreen$SavedState;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/preference/PreferenceScreen$SavedState;->isDialogShowing:Z

    .line 308
    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v1, Landroid/preference/PreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    .line 309
    return-object v1

    .line 303
    .end local v1    # "myState":Landroid/preference/PreferenceScreen$SavedState;
    :cond_0
    return-object v2
.end method

.method unregisterReceiver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 426
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/PreferenceScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 428
    iput-object v2, p0, Landroid/preference/PreferenceScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 425
    :cond_0
    return-void
.end method