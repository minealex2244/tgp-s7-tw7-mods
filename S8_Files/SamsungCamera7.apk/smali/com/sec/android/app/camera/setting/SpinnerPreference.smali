.class public Lcom/sec/android/app/camera/setting/SpinnerPreference;
.super Landroid/preference/Preference;
.source "SpinnerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerAdapter;,
        Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerItemHolder;
    }
.end annotation


# static fields
.field private static final DELAY_TIME_TO_SHOW_SPINNER_MENU:I = 0x3e8

.field private static final NOT_FOUND:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SpinnerPreference"


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDefaultValues:I

.field private mEntries:[Ljava/lang/String;

.field private mEntriesCharString:[Ljava/lang/CharSequence;

.field private mEntryValues:[I

.field private mKey:Ljava/lang/String;

.field private mPosition:I

.field private mResolutionAdapter:Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerAdapter;

.field private mSpinner:Landroid/widget/Spinner;

.field private mSummaryDescription:Ljava/lang/String;

.field private mTitleDescription:Ljava/lang/String;

.field private mValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mContext:Landroid/content/Context;

    .line 68
    iget-object v7, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/sec/android/app/camera/R$styleable;->SpinnerCustomPreference:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, p2, v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 70
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x2

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 71
    .local v5, "mAdapterID":I
    iget-object v7, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mEntriesCharString:[Ljava/lang/CharSequence;

    .line 73
    const/4 v3, 0x0

    .line 74
    .local v3, "i":I
    iget-object v7, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mEntriesCharString:[Ljava/lang/CharSequence;

    array-length v7, v7

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mEntries:[Ljava/lang/String;

    .line 75
    iget-object v8, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mEntriesCharString:[Ljava/lang/CharSequence;

    array-length v9, v8

    const/4 v7, 0x0

    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v1, v8, v7

    .line 76
    .local v1, "ch":Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mEntries:[Ljava/lang/String;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    .line 75
    add-int/lit8 v7, v7, 0x1

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 78
    .end local v1    # "ch":Ljava/lang/CharSequence;
    :cond_0
    new-instance v7, Landroid/widget/ArrayAdapter;

    iget-object v8, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mContext:Landroid/content/Context;

    const v9, 0x1090008

    iget-object v10, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mEntries:[Ljava/lang/String;

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v7, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 79
    iget-object v7, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    const v8, 0x1090009

    invoke-virtual {v7, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 80
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 81
    .local v6, "mValuesID":I
    iget-object v7, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mEntryValues:[I

    .line 83
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mDefaultValues:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    .end local v4    # "i":I
    .end local v5    # "mAdapterID":I
    .end local v6    # "mValuesID":I
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mKey:Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->getValue()I

    move-result v7

    iput v7, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mValue:I

    .line 92
    new-instance v7, Landroid/widget/Spinner;

    iget-object v8, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    .line 94
    iget-object v7, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 95
    iget-object v7, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v8, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 96
    iget-object v7, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mEntryValues:[I

    if-nez v7, :cond_1

    .line 97
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mPosition:I

    .line 98
    iget-object v7, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 103
    :goto_2
    iget-object v7, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    new-instance v8, Lcom/sec/android/app/camera/setting/SpinnerPreference$1;

    invoke-direct {v8, p0}, Lcom/sec/android/app/camera/setting/SpinnerPreference$1;-><init>(Lcom/sec/android/app/camera/setting/SpinnerPreference;)V

    invoke-virtual {v7, v8}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 124
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setPersistent(Z)V

    .line 125
    new-instance v7, Lcom/sec/android/app/camera/setting/SpinnerPreference$2;

    invoke-direct {v7, p0}, Lcom/sec/android/app/camera/setting/SpinnerPreference$2;-><init>(Lcom/sec/android/app/camera/setting/SpinnerPreference;)V

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 157
    iget v7, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mDefaultValues:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 158
    return-void

    .line 84
    :catch_0
    move-exception v2

    .line 85
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v7, "SpinnerPreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resource loading fail "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v7

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->getValue()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->findIndexOfValue(I)I

    move-result v7

    iput v7, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mPosition:I

    .line 101
    iget-object v7, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->getValue()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->findIndexOfValue(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/setting/SpinnerPreference;I)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/SpinnerPreference;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->findIndexOfValue(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/setting/SpinnerPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/SpinnerPreference;

    .prologue
    .line 46
    iget v0, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mPosition:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/setting/SpinnerPreference;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/SpinnerPreference;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/setting/SpinnerPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/SpinnerPreference;

    .prologue
    .line 46
    iget v0, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mValue:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/setting/SpinnerPreference;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/SpinnerPreference;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mValue:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/setting/SpinnerPreference;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/SpinnerPreference;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mEntryValues:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/setting/SpinnerPreference;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/SpinnerPreference;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mEntries:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/setting/SpinnerPreference;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/SpinnerPreference;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->persistInt(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/setting/SpinnerPreference;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/SpinnerPreference;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/setting/SpinnerPreference;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/SpinnerPreference;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/setting/SpinnerPreference;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/SpinnerPreference;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/setting/SpinnerPreference;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/SpinnerPreference;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private findIndexOfValue(I)I
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/4 v2, -0x1

    .line 263
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mEntryValues:[I

    if-nez v3, :cond_1

    move v0, v2

    .line 270
    :cond_0
    :goto_0
    return v0

    .line 266
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mEntryValues:[I

    array-length v1, v3

    .local v1, "n":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 267
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mEntryValues:[I

    aget v3, v3, v0

    if-eq v3, p1, :cond_0

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 270
    goto :goto_0
.end method


# virtual methods
.method public getEntry()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->findIndexOfValue(I)I

    move-result v0

    .line 162
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mEntries:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 165
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getValue()I
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mKey:Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mDefaultValues:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mValue:I

    .line 170
    iget v0, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mValue:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 202
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 203
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 206
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    move-object v3, p1

    .line 208
    check-cast v3, Landroid/view/ViewGroup;

    .line 209
    .local v3, "vg":Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 210
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 211
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 212
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    const v4, 0x1020016

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 215
    .local v2, "titleView":Landroid/widget/TextView;
    const v4, 0x1020010

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 217
    .local v1, "summaryView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mTitleDescription:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 218
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mTitleDescription:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 221
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSummaryDescription:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 222
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSummaryDescription:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 228
    if-eqz p1, :cond_0

    .line 229
    iget v1, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mValue:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->getPersistedInt(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mValue:I

    .line 237
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 233
    .local v0, "temp":I
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->persistInt(I)Z

    .line 234
    iput v0, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mValue:I

    goto :goto_0
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 1
    .param p1, "defaultVal"    # Ljava/lang/Object;

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 177
    return-void
.end method

.method public setEntries([Ljava/lang/String;)V
    .locals 0
    .param p1, "entries"    # [Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mEntries:[Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setEntryValues([I)V
    .locals 4
    .param p1, "entryValues"    # [I

    .prologue
    .line 184
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mEntryValues:[I

    .line 186
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mContext:Landroid/content/Context;

    const v2, 0x1090008

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mEntries:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 190
    return-void
.end method

.method public setResolutionEntryValues([I)V
    .locals 4
    .param p1, "entryValues"    # [I

    .prologue
    .line 193
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mEntryValues:[I

    .line 195
    new-instance v0, Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerAdapter;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mContext:Landroid/content/Context;

    const v2, 0x1090008

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mEntries:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerAdapter;-><init>(Lcom/sec/android/app/camera/setting/SpinnerPreference;Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerAdapter;

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/SpinnerPreference$ResolutionSpinnerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 198
    return-void
.end method

.method protected setSelection(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->findIndexOfValue(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 241
    return-void
.end method

.method protected setSummaryDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "summaryDescription"    # Ljava/lang/String;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSummaryDescription:Ljava/lang/String;

    .line 245
    return-void
.end method

.method protected setTitleDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "titleDescription"    # Ljava/lang/String;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mTitleDescription:Ljava/lang/String;

    .line 249
    return-void
.end method

.method protected showSpinnerMenu()V
    .locals 4

    .prologue
    .line 252
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/sec/android/app/camera/setting/SpinnerPreference$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/setting/SpinnerPreference$3;-><init>(Lcom/sec/android/app/camera/setting/SpinnerPreference;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Spinner;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 260
    :cond_0
    return-void
.end method
