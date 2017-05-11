.class public Lcom/samsung/android/glview/GLSelectButton;
.super Lcom/samsung/android/glview/GLButton;
.source "GLSelectButton.java"


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V
    .locals 0
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "normalId"    # I
    .param p7, "pressedId"    # I
    .param p8, "dimmedId"    # I

    .prologue
    .line 61
    invoke-direct/range {p0 .. p8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "offBitmap"    # Landroid/graphics/Bitmap;
    .param p7, "onBitmap"    # Landroid/graphics/Bitmap;
    .param p8, "dimmedBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 45
    invoke-direct/range {p0 .. p8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;)V
    .locals 0
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "path"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFII)V
    .locals 8
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "offId"    # I
    .param p5, "onId"    # I

    .prologue
    const/4 v6, 0x0

    .line 84
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFIII)V
    .locals 8
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "offId"    # I
    .param p5, "onId"    # I
    .param p6, "highlightId"    # I

    .prologue
    .line 98
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    .line 99
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFIIII)V
    .locals 0
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "normalId"    # I
    .param p5, "pressedId"    # I
    .param p6, "dimmedId"    # I
    .param p7, "npHighlightId"    # I

    .prologue
    .line 113
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    .line 114
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;II)V
    .locals 6
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "offId"    # I
    .param p3, "onId"    # I

    .prologue
    const/4 v4, 0x0

    .line 124
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;IIII)V

    .line 125
    return-void
.end method


# virtual methods
.method public getSelected()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mSelected:Z

    return v0
.end method

.method public getTtsString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v0, "ttsString":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/samsung/android/glview/GLSelectButton;->mContentDescription:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 159
    iget-object v1, p0, Lcom/samsung/android/glview/GLSelectButton;->mContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/glview/GLUtil;->isTimeInfo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 166
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/glview/GLUtil;->convertTimeInfoForTTS(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLSelectButton;->mSubTitle:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 169
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLSelectButton;->mSubTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLSelectButton;->mSelected:Z

    if-eqz v1, :cond_5

    .line 172
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/glview/R$string;->tts_selected:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->isDim()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 177
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/glview/R$string;->disable:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 160
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/glview/GLSelectButton;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/samsung/android/glview/GLSelectButton;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/glview/R$string;->button:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 174
    :cond_5
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/glview/R$string;->tts_not_selected:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method protected onDraw()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 267
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->checkShapeBackgroundDrawingCondition()Z

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mShapeBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getMatrix()[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLRectangle;->draw([FLandroid/graphics/Rect;)V

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->isDim()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 271
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_4

    .line 272
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mDimBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    .line 302
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mShowText:Z

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->draw([FLandroid/graphics/Rect;)V

    .line 305
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 267
    goto :goto_0

    .line 274
    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mSelected:Z

    if-eqz v0, :cond_5

    .line 275
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    goto :goto_1

    .line 279
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    goto :goto_1

    .line 284
    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mPressed:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mSelected:Z

    if-eqz v0, :cond_a

    .line 285
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mShowHighlight:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mDrawHighlight:Z

    if-eqz v0, :cond_8

    .line 286
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    .line 288
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_9

    .line 289
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mPressedBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    goto :goto_1

    .line 290
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 293
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_b

    .line 294
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mNormalBackground:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 295
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mShowHighlight:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mDrawHighlight:Z

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mHighlight:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getMatrix()[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    .line 297
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mHighlightFadeOut:Z

    if-nez v0, :cond_1

    .line 298
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLSelectButton;->mDrawHighlight:Z

    goto/16 :goto_1
.end method

.method public onKeyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 184
    sparse-switch p1, :sswitch_data_0

    .line 211
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLButton;->onKeyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    .line 187
    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->isDim()Z

    move-result v2

    if-nez v2, :cond_0

    .line 193
    iget-boolean v2, p0, Lcom/samsung/android/glview/GLSelectButton;->mSelected:Z

    if-eqz v2, :cond_3

    .line 194
    invoke-virtual {p0, v5}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    .line 195
    invoke-virtual {p0, v5}, Lcom/samsung/android/glview/GLSelectButton;->setPressed(Z)V

    .line 199
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLSelectButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    if-eqz v2, :cond_0

    .line 200
    iget-boolean v2, p0, Lcom/samsung/android/glview/GLSelectButton;->mMute:Z

    if-nez v2, :cond_1

    .line 201
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 202
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 204
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLSelectButton;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isTalkBackEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 205
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getTtsString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 207
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/glview/GLSelectButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    invoke-interface {v2, p0}, Lcom/samsung/android/glview/GLView$ClickListener;->onClick(Lcom/samsung/android/glview/GLView;)Z

    goto :goto_0

    .line 197
    :cond_3
    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    goto :goto_1

    .line 184
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 219
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->isClickable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 259
    :cond_0
    :goto_0
    return v1

    .line 222
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->isDim()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 223
    iget-boolean v2, p0, Lcom/samsung/android/glview/GLSelectButton;->mPressed:Z

    if-eqz v2, :cond_2

    .line 224
    invoke-virtual {p0, v5}, Lcom/samsung/android/glview/GLSelectButton;->setButtonPressed(Z)V

    .line 225
    invoke-virtual {p0, v5}, Lcom/samsung/android/glview/GLSelectButton;->setDrawHighlight(Z)V

    .line 226
    invoke-virtual {p0, v5}, Lcom/samsung/android/glview/GLSelectButton;->setDrawRippleEffect(Z)V

    .line 228
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/glview/GLSelectButton;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_3

    .line 230
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 233
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->resetDrag()V

    goto :goto_0

    .line 238
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_8

    .line 242
    iget-boolean v2, p0, Lcom/samsung/android/glview/GLSelectButton;->mSelected:Z

    if-eqz v2, :cond_7

    .line 243
    invoke-virtual {p0, v5}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    .line 247
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLSelectButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    if-eqz v2, :cond_0

    .line 248
    iget-boolean v2, p0, Lcom/samsung/android/glview/GLSelectButton;->mMute:Z

    if-nez v2, :cond_5

    .line 249
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 250
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 252
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/glview/GLSelectButton;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_6

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isTalkBackEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 253
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->getTtsString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 255
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/glview/GLSelectButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    invoke-interface {v2, p0}, Lcom/samsung/android/glview/GLView$ClickListener;->onClick(Lcom/samsung/android/glview/GLView;)Z

    goto/16 :goto_0

    .line 245
    :cond_7
    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    goto :goto_1

    .line 259
    :cond_8
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLSelectButton;->mSelected:Z

    if-eq v0, p1, :cond_0

    .line 144
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLSelectButton;->mSelected:Z

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSelectButton;->updateTintColor()V

    .line 147
    :cond_0
    return-void
.end method
