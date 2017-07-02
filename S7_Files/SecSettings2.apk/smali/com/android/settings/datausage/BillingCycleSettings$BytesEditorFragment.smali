.class public Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;
.super Landroid/app/DialogFragment;
.source "BillingCycleSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/BillingCycleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BytesEditorFragment"
.end annotation


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private formatText(F)Ljava/lang/String;
    .locals 2
    .param p1, "v"    # F

    .prologue
    const/high16 v1, 0x42c80000    # 100.0f

    .line 305
    mul-float v0, p1, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float p1, v0, v1

    .line 306
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setupPicker(Landroid/widget/EditText;Landroid/widget/Spinner;)V
    .locals 12
    .param p1, "bytesPicker"    # Landroid/widget/EditText;
    .param p2, "type"    # Landroid/widget/Spinner;

    .prologue
    const/4 v11, 0x0

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/settings/datausage/BillingCycleSettings;

    .line 281
    .local v5, "target":Lcom/android/settings/datausage/BillingCycleSettings;
    iget-object v9, v5, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v3, v9, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    .line 283
    .local v3, "editor":Lcom/android/settingslib/NetworkPolicyEditor;
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "template"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkTemplate;

    .line 284
    .local v8, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "limit"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 285
    .local v4, "isLimit":Z
    if-eqz v4, :cond_1

    invoke-virtual {v3, v8}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v0

    .line 287
    .local v0, "bytes":J
    :goto_0
    if-eqz v4, :cond_0

    :cond_0
    const-wide/16 v6, -0x1

    .line 289
    .local v6, "limitDisabled":J
    long-to-float v9, v0

    const/high16 v10, 0x4ec00000

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2

    .line 290
    long-to-float v9, v0

    const/high16 v10, 0x4e800000

    div-float/2addr v9, v10

    invoke-direct {p0, v9}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->formatText(F)Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, "bytesText":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 292
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1, v11, v9}, Landroid/widget/EditText;->setSelection(II)V

    .line 294
    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Landroid/widget/Spinner;->setSelection(I)V

    .line 279
    :goto_1
    return-void

    .line 286
    .end local v0    # "bytes":J
    .end local v2    # "bytesText":Ljava/lang/String;
    .end local v6    # "limitDisabled":J
    :cond_1
    invoke-virtual {v3, v8}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v0

    .restart local v0    # "bytes":J
    goto :goto_0

    .line 296
    .restart local v6    # "limitDisabled":J
    :cond_2
    long-to-float v9, v0

    const/high16 v10, 0x49800000    # 1048576.0f

    div-float/2addr v9, v10

    invoke-direct {p0, v9}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->formatText(F)Ljava/lang/String;

    move-result-object v2

    .line 297
    .restart local v2    # "bytesText":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 298
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1, v11, v9}, Landroid/widget/EditText;->setSelection(II)V

    .line 300
    invoke-virtual {p2, v11}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1
.end method

.method public static show(Lcom/android/settings/datausage/BillingCycleSettings;Z)V
    .locals 4
    .param p0, "parent"    # Lcom/android/settings/datausage/BillingCycleSettings;
    .param p1, "isLimit"    # Z

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 250
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 251
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "template"

    invoke-static {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->-get0(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 252
    const-string/jumbo v2, "limit"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 254
    new-instance v1, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;

    invoke-direct {v1}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;-><init>()V

    .line 255
    .local v1, "dialog":Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 256
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "warningEditor"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 247
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 311
    const/4 v10, -0x1

    if-eq p2, v10, :cond_0

    .line 312
    return-void

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v8

    check-cast v8, Lcom/android/settings/datausage/BillingCycleSettings;

    .line 315
    .local v8, "target":Lcom/android/settings/datausage/BillingCycleSettings;
    iget-object v10, v8, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v5, v10, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    .line 317
    .local v5, "editor":Lcom/android/settingslib/NetworkPolicyEditor;
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string/jumbo v11, "template"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/NetworkTemplate;

    .line 318
    .local v9, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string/jumbo v11, "limit"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 319
    .local v6, "isLimit":Z
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    const v11, 0x7f11024d

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 320
    .local v2, "bytesField":Landroid/widget/EditText;
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    const v11, 0x7f11024e

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    .line 322
    .local v7, "spinner":Landroid/widget/Spinner;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 323
    .local v3, "bytesString":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 324
    const-string/jumbo v3, "0"

    .line 326
    :cond_1
    const-wide/16 v0, 0x0

    .line 328
    .local v0, "bytes":J
    :try_start_0
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v12

    .line 329
    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-nez v10, :cond_2

    const-wide/32 v10, 0x100000

    :goto_0
    long-to-float v10, v10

    .line 328
    mul-float/2addr v10, v12

    float-to-long v0, v10

    .line 334
    :goto_1
    if-eqz v6, :cond_3

    .line 335
    const-string/jumbo v10, "BillingCycleSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setPolicyLimitBytes() limitBytes"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {v5, v9, v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 341
    :goto_2
    invoke-static {v8}, Lcom/android/settings/datausage/BillingCycleSettings;->-wrap1(Lcom/android/settings/datausage/BillingCycleSettings;)V

    .line 310
    return-void

    .line 329
    :cond_2
    const-wide/32 v10, 0x40000000

    goto :goto_0

    .line 330
    :catch_0
    move-exception v4

    .line 331
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v10, "BillingCycleSettings"

    const-string/jumbo v11, "could not persist insert byte"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 338
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    const-string/jumbo v10, "BillingCycleSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setPolicyWarningBytes() WarningBytes"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {v5, v9, v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    goto :goto_2
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 265
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 266
    .local v1, "dialogInflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "limit"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 267
    .local v3, "isLimit":Z
    const v4, 0x7f0400a2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    .line 268
    iget-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    const v5, 0x7f11024e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 269
    .local v2, "dialog_spinner":Landroid/widget/Spinner;
    invoke-virtual {v2}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f0d0205

    invoke-virtual {v0, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 270
    iget-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    const v5, 0x7f11024d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-direct {p0, v4, v2}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->setupPicker(Landroid/widget/EditText;Landroid/widget/Spinner;)V

    .line 271
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 272
    if-eqz v3, :cond_0

    const v4, 0x7f0b17df

    .line 271
    :goto_0
    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 274
    iget-object v5, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    .line 271
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 275
    const v5, 0x7f0b17dd

    .line 271
    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 273
    :cond_0
    const v4, 0x7f0b17de

    goto :goto_0
.end method
