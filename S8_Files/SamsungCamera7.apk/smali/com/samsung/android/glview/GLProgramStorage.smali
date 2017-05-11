.class public Lcom/samsung/android/glview/GLProgramStorage;
.super Ljava/lang/Object;
.source "GLProgramStorage.java"


# static fields
.field public static final BASE_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nuniform lowp sampler2D tex_sampler;\nuniform lowp float u_alpha;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler, v_texcoord) * u_alpha;\n}\n"

.field public static final BASE_TINT_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nuniform lowp sampler2D tex_sampler;\nuniform lowp float u_alpha;\nuniform lowp vec4  u_tint_color;\nvarying vec2 v_texcoord;\nvoid main() {\n  lowp vec4 color = texture2D(tex_sampler, v_texcoord);\n  gl_FragColor = (u_tint_color * color.a) * u_alpha;\n}\n"

.field public static final BASE_VERTEX_SHADER:Ljava/lang/String; = "precision highp float;\nuniform mat4 u_MVPMatrix;\nattribute vec4 a_position;\nattribute vec2 a_texcoord;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_Position = u_MVPMatrix * a_position;\n  v_texcoord = a_texcoord;\n}\n"

.field public static final CIRCLE_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nuniform lowp vec4 tex_sampler;\nuniform lowp float u_alpha;\nvarying vec2 v_texcoord;\nuniform float u_thickness;\nuniform float u_type;\nuniform float u_param;\nconst float center = 0.5;\nvoid main() {\n  if (abs(distance(v_texcoord, vec2(center, center))) <= center) {\n     if (u_type == 1.0 || pow(v_texcoord.x - center, 2.0) / pow(center - u_thickness, 2.0) + pow((1.0 - v_texcoord.y - center), 2.0) / pow(center - u_thickness * u_param, 2.0) >= 1.0) {\n         gl_FragColor = vec4(tex_sampler.rgb, 1.0) * u_alpha * tex_sampler.a;\n     } else {\n      discard;\n     }\n  } else {\n      discard;\n  }\n}\n"

.field public static final CIRCULAR_CLIP_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nuniform lowp sampler2D tex_sampler;\nuniform lowp float u_alpha;\nvarying lowp vec2 v_texcoord;\nuniform float u_step;\nconst float diameter = 0.9999;\nconst float center = 0.5;\nvoid main() {\n  vec2 coord = v_texcoord - vec2(center, center);\n  float dist = length(coord / diameter);\n  if ((dist < center) && (dist > center * u_step)) {\n      gl_FragColor = texture2D(tex_sampler, v_texcoord) * u_alpha;\n  } else {\n      gl_FragColor = vec4(0.0, 0.0, 0.0, 0.0);\n  }\n}\n"

.field public static final FADE_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nuniform lowp sampler2D tex_sampler;\nvarying lowp vec2 v_texcoord;\nuniform float u_step;\nuniform float u_param;\nuniform float u_alpha;\nconst float accel_pos = 0.2;\nvoid main() {\n    float orientation_pos = sign(u_step);\n    float direction = sign(1.0 - abs(u_step));\n    float alpha = 1.0;\n    float pos = ((1.0 - direction) + direction * abs(u_step)) * (1.0 + u_param);\n    if (pos < accel_pos) {\n        pos = sin(radians(90.0 * (1.0 / accel_pos) * pos)) * accel_pos;\n    }\n    orientation_pos = v_texcoord.x * sign(1.0 - orientation_pos) + v_texcoord.y * sign(1.0 + orientation_pos);\n    if (orientation_pos < pos) {\n        alpha = max(0.0, (orientation_pos - (pos - u_param)) / u_param);\n    }\n    direction = sign(direction + 0.5);\n    alpha = sign(1.0 - direction) + direction * alpha;\n    gl_FragColor = texture2D(tex_sampler, v_texcoord) * (alpha * u_alpha);\n}\n"

.field public static final LINE_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nuniform lowp vec4 tex_sampler;\nuniform lowp float u_alpha;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = vec4(tex_sampler.rgb, 1.0) * u_alpha * tex_sampler.a;\n}\n"

.field public static final LINE_VERTEX_SHADER:Ljava/lang/String; = "precision highp float;\nuniform mat4 u_MVPMatrix;\nattribute vec4 a_position;\nattribute float a_pointsize;\nvoid main() {\n  gl_Position = u_MVPMatrix * a_position;\n  gl_PointSize = a_pointsize;\n}\n"

.field public static final RECTANGLE_FRAGMENT_SHADER:Ljava/lang/String; = "precision highp float;\nuniform lowp vec4 tex_sampler;\nuniform lowp vec4 fill_color;\nuniform lowp float u_alpha;\nvarying vec2 v_texcoord;\nuniform float u_thickness;\nuniform float u_type;\nuniform float u_param;\nvoid main() {\n  if (v_texcoord.x <= u_thickness || v_texcoord.x >= (1.0 - u_thickness) || v_texcoord.y <= u_thickness * u_param || v_texcoord.y >= (1.0 - u_thickness * u_param)) {\n     gl_FragColor = vec4(tex_sampler.rgb, 1.0) * u_alpha * tex_sampler.a;\n  } else if (u_type == 1.0) {\n     gl_FragColor = vec4(fill_color.rgb, 1.0) * u_alpha * fill_color.a;\n  } else {\n     discard;\n  }\n}\n"

.field public static final ROUND_RECT_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nuniform lowp sampler2D tex_sampler;\nuniform lowp float u_alpha;\nvarying lowp vec2 v_texcoord;\nuniform float u_step;\nuniform float u_param;\nconst float center = 0.5;\nvoid main() {\n  vec2 new_center = vec2(center * u_param, center);\n  vec2 new_texcoord = v_texcoord * vec2(u_param, 1.0);\n  vec2 coord = new_texcoord - new_center;\n  float fix_pos = max(0.0, sign(u_param - 1.0));\n  vec2 mini_circle_pos = new_center + sign(coord) * ( u_step * min(1.0, u_param) * vec2(center, center) + vec2(fix_pos, 1.0 - fix_pos) * center * abs(u_param - 1.0) );\n  float dist = center * min(1.0, u_param) * (1.0 - u_step);\n  float mini_dist = length(new_texcoord - mini_circle_pos);\n  if ( sign(new_texcoord - mini_circle_pos) == sign(coord) && mini_dist > dist) {\n      gl_FragColor = vec4(0.0, 0.0, 0.0, 0.0);\n  } else {\n      gl_FragColor = texture2D(tex_sampler, v_texcoord) * u_alpha;\n  }\n}\n"

.field public static final SCALE_CIRCLE_TEXTURE_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nuniform lowp sampler2D tex_sampler;\nuniform lowp float u_alpha;\nvarying vec2 v_texcoord;\nuniform float u_param;\nconst float center = 0.5;\nvoid main() {\n  float dist = distance(vec2(center, center), v_texcoord);\n  float delta = 0.009;\n  float alpha = smoothstep(0.5 - delta, 0.5, dist);\n  vec2 new_texcoord = v_texcoord - vec2(center);\n  new_texcoord = new_texcoord * u_param;\n  new_texcoord = new_texcoord + vec2(center);\n  gl_FragColor = mix(texture2D(tex_sampler, new_texcoord), vec4(0.0, 0.0, 0.0, 0.0), alpha) * u_alpha;\n}\n"

.field public static final TYPE_PROGRAM_BASIC:I = 0x3e9

.field public static final TYPE_PROGRAM_CIRCLE:I = 0x3ec

.field public static final TYPE_PROGRAM_CIRCULAR_CLIP:I = 0x3ee

.field public static final TYPE_PROGRAM_FADE:I = 0x3ef

.field public static final TYPE_PROGRAM_LINE:I = 0x3eb

.field public static final TYPE_PROGRAM_RECTANGLE:I = 0x3f0

.field public static final TYPE_PROGRAM_ROUND_RECT:I = 0x3ed

.field public static final TYPE_PROGRAM_SCALE_CIRCLE_TEXTURE:I = 0x3f1

.field public static final TYPE_PROGRAM_TINT_BASIC:I = 0x3ea


# instance fields
.field private final mProgramObjMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/glview/GLProgram;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/glview/GLProgramStorage;->mProgramObjMap:Ljava/util/Hashtable;

    .line 225
    return-void
.end method

.method private deleteStorage()V
    .locals 4

    .prologue
    .line 350
    iget-object v2, p0, Lcom/samsung/android/glview/GLProgramStorage;->mProgramObjMap:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    .line 351
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/android/glview/GLProgram;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLProgram;

    .line 352
    .local v1, "obj":Lcom/samsung/android/glview/GLProgram;
    instance-of v3, v1, Lcom/samsung/android/glview/GLProgram;

    if-eqz v3, :cond_0

    .line 353
    invoke-virtual {v1}, Lcom/samsung/android/glview/GLProgram;->release()V

    goto :goto_0

    .line 356
    .end local v1    # "obj":Lcom/samsung/android/glview/GLProgram;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLProgramStorage;->mProgramObjMap:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 357
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/glview/GLProgramStorage;
    .locals 1

    .prologue
    .line 228
    new-instance v0, Lcom/samsung/android/glview/GLProgramStorage;

    invoke-direct {v0}, Lcom/samsung/android/glview/GLProgramStorage;-><init>()V

    return-object v0
.end method

.method public static releaseInstance(Lcom/samsung/android/glview/GLProgramStorage;)V
    .locals 0
    .param p0, "storage"    # Lcom/samsung/android/glview/GLProgramStorage;

    .prologue
    .line 232
    if-eqz p0, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/samsung/android/glview/GLProgramStorage;->deleteStorage()V

    .line 234
    const/4 p0, 0x0

    .line 236
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addProgram(I)Z
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLProgramStorage;->mProgramObjMap:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    const/4 v1, 0x0

    .line 340
    :goto_0
    monitor-exit p0

    return v1

    .line 243
    :cond_0
    const/4 v0, 0x0

    .line 245
    .local v0, "program":Lcom/samsung/android/glview/GLProgram;
    packed-switch p1, :pswitch_data_0

    .line 337
    :goto_1
    if-eqz v0, :cond_1

    .line 338
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLProgramStorage;->mProgramObjMap:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 247
    :pswitch_0
    new-instance v0, Lcom/samsung/android/glview/GLProgram;

    .end local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    const-string v1, "precision highp float;\nuniform mat4 u_MVPMatrix;\nattribute vec4 a_position;\nattribute vec2 a_texcoord;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_Position = u_MVPMatrix * a_position;\n  v_texcoord = a_texcoord;\n}\n"

    const-string v2, "precision mediump float;\nuniform lowp sampler2D tex_sampler;\nuniform lowp float u_alpha;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler, v_texcoord) * u_alpha;\n}\n"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/glview/GLProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .restart local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    const-string v1, "a_position"

    const/16 v2, 0x66

    const/16 v3, 0xcf

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 249
    const-string v1, "a_texcoord"

    const/16 v2, 0x66

    const/16 v3, 0xcd

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 250
    const-string v1, "u_MVPMatrix"

    const/16 v2, 0x67

    const/16 v3, 0xd8

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 251
    const-string v1, "u_alpha"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 240
    .end local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 255
    .restart local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    :pswitch_1
    :try_start_2
    new-instance v0, Lcom/samsung/android/glview/GLProgram;

    .end local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    const-string v1, "precision highp float;\nuniform mat4 u_MVPMatrix;\nattribute vec4 a_position;\nattribute vec2 a_texcoord;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_Position = u_MVPMatrix * a_position;\n  v_texcoord = a_texcoord;\n}\n"

    const-string v2, "precision mediump float;\nuniform lowp sampler2D tex_sampler;\nuniform lowp float u_alpha;\nuniform lowp vec4  u_tint_color;\nvarying vec2 v_texcoord;\nvoid main() {\n  lowp vec4 color = texture2D(tex_sampler, v_texcoord);\n  gl_FragColor = (u_tint_color * color.a) * u_alpha;\n}\n"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/glview/GLProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .restart local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    const-string v1, "u_MVPMatrix"

    const/16 v2, 0x67

    const/16 v3, 0xd8

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 257
    const-string v1, "a_texcoord"

    const/16 v2, 0x66

    const/16 v3, 0xcd

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 258
    const-string v1, "a_position"

    const/16 v2, 0x66

    const/16 v3, 0xcf

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 259
    const-string v1, "u_alpha"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 260
    const-string v1, "u_tint_color"

    const/16 v2, 0x67

    const/16 v3, 0xcf

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    goto :goto_1

    .line 264
    :pswitch_2
    new-instance v0, Lcom/samsung/android/glview/GLProgram;

    .end local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    const-string v1, "precision highp float;\nuniform mat4 u_MVPMatrix;\nattribute vec4 a_position;\nattribute float a_pointsize;\nvoid main() {\n  gl_Position = u_MVPMatrix * a_position;\n  gl_PointSize = a_pointsize;\n}\n"

    const-string v2, "precision mediump float;\nuniform lowp vec4 tex_sampler;\nuniform lowp float u_alpha;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = vec4(tex_sampler.rgb, 1.0) * u_alpha * tex_sampler.a;\n}\n"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/glview/GLProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .restart local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    const-string v1, "a_position"

    const/16 v2, 0x66

    const/16 v3, 0xcf

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 266
    const-string v1, "a_pointsize"

    const/16 v2, 0x66

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 267
    const-string v1, "tex_sampler"

    const/16 v2, 0x67

    const/16 v3, 0xcf

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 268
    const-string v1, "u_MVPMatrix"

    const/16 v2, 0x67

    const/16 v3, 0xd8

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 269
    const-string v1, "u_alpha"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    goto/16 :goto_1

    .line 273
    :pswitch_3
    new-instance v0, Lcom/samsung/android/glview/GLProgram;

    .end local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    const-string v1, "precision highp float;\nuniform mat4 u_MVPMatrix;\nattribute vec4 a_position;\nattribute vec2 a_texcoord;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_Position = u_MVPMatrix * a_position;\n  v_texcoord = a_texcoord;\n}\n"

    const-string v2, "precision highp float;\nuniform lowp vec4 tex_sampler;\nuniform lowp vec4 fill_color;\nuniform lowp float u_alpha;\nvarying vec2 v_texcoord;\nuniform float u_thickness;\nuniform float u_type;\nuniform float u_param;\nvoid main() {\n  if (v_texcoord.x <= u_thickness || v_texcoord.x >= (1.0 - u_thickness) || v_texcoord.y <= u_thickness * u_param || v_texcoord.y >= (1.0 - u_thickness * u_param)) {\n     gl_FragColor = vec4(tex_sampler.rgb, 1.0) * u_alpha * tex_sampler.a;\n  } else if (u_type == 1.0) {\n     gl_FragColor = vec4(fill_color.rgb, 1.0) * u_alpha * fill_color.a;\n  } else {\n     discard;\n  }\n}\n"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/glview/GLProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .restart local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    const-string v1, "u_MVPMatrix"

    const/16 v2, 0x67

    const/16 v3, 0xd8

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 275
    const-string v1, "a_position"

    const/16 v2, 0x66

    const/16 v3, 0xcf

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 276
    const-string v1, "a_texcoord"

    const/16 v2, 0x66

    const/16 v3, 0xcd

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 277
    const-string v1, "tex_sampler"

    const/16 v2, 0x67

    const/16 v3, 0xcf

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 278
    const-string v1, "u_alpha"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 279
    const-string v1, "u_thickness"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 280
    const-string v1, "u_param"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 281
    const-string v1, "u_type"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 282
    const-string v1, "fill_color"

    const/16 v2, 0x67

    const/16 v3, 0xcf

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    goto/16 :goto_1

    .line 286
    :pswitch_4
    new-instance v0, Lcom/samsung/android/glview/GLProgram;

    .end local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    const-string v1, "precision highp float;\nuniform mat4 u_MVPMatrix;\nattribute vec4 a_position;\nattribute vec2 a_texcoord;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_Position = u_MVPMatrix * a_position;\n  v_texcoord = a_texcoord;\n}\n"

    const-string v2, "precision mediump float;\nuniform lowp vec4 tex_sampler;\nuniform lowp float u_alpha;\nvarying vec2 v_texcoord;\nuniform float u_thickness;\nuniform float u_type;\nuniform float u_param;\nconst float center = 0.5;\nvoid main() {\n  if (abs(distance(v_texcoord, vec2(center, center))) <= center) {\n     if (u_type == 1.0 || pow(v_texcoord.x - center, 2.0) / pow(center - u_thickness, 2.0) + pow((1.0 - v_texcoord.y - center), 2.0) / pow(center - u_thickness * u_param, 2.0) >= 1.0) {\n         gl_FragColor = vec4(tex_sampler.rgb, 1.0) * u_alpha * tex_sampler.a;\n     } else {\n      discard;\n     }\n  } else {\n      discard;\n  }\n}\n"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/glview/GLProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .restart local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    const-string v1, "a_position"

    const/16 v2, 0x66

    const/16 v3, 0xcf

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 288
    const-string v1, "a_texcoord"

    const/16 v2, 0x66

    const/16 v3, 0xcd

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 289
    const-string v1, "tex_sampler"

    const/16 v2, 0x67

    const/16 v3, 0xcf

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 290
    const-string v1, "u_MVPMatrix"

    const/16 v2, 0x67

    const/16 v3, 0xd8

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 291
    const-string v1, "u_alpha"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 292
    const-string v1, "u_param"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 293
    const-string v1, "u_thickness"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 294
    const-string v1, "u_type"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    goto/16 :goto_1

    .line 298
    :pswitch_5
    new-instance v0, Lcom/samsung/android/glview/GLProgram;

    .end local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    const-string v1, "precision highp float;\nuniform mat4 u_MVPMatrix;\nattribute vec4 a_position;\nattribute vec2 a_texcoord;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_Position = u_MVPMatrix * a_position;\n  v_texcoord = a_texcoord;\n}\n"

    const-string v2, "precision mediump float;\nuniform lowp sampler2D tex_sampler;\nuniform lowp float u_alpha;\nvarying vec2 v_texcoord;\nuniform float u_param;\nconst float center = 0.5;\nvoid main() {\n  float dist = distance(vec2(center, center), v_texcoord);\n  float delta = 0.009;\n  float alpha = smoothstep(0.5 - delta, 0.5, dist);\n  vec2 new_texcoord = v_texcoord - vec2(center);\n  new_texcoord = new_texcoord * u_param;\n  new_texcoord = new_texcoord + vec2(center);\n  gl_FragColor = mix(texture2D(tex_sampler, new_texcoord), vec4(0.0, 0.0, 0.0, 0.0), alpha) * u_alpha;\n}\n"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/glview/GLProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .restart local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    const-string v1, "a_position"

    const/16 v2, 0x66

    const/16 v3, 0xcf

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 300
    const-string v1, "a_texcoord"

    const/16 v2, 0x66

    const/16 v3, 0xcd

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 301
    const-string v1, "u_MVPMatrix"

    const/16 v2, 0x67

    const/16 v3, 0xd8

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 302
    const-string v1, "u_alpha"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 303
    const-string v1, "u_param"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    goto/16 :goto_1

    .line 307
    :pswitch_6
    new-instance v0, Lcom/samsung/android/glview/GLProgram;

    .end local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    const-string v1, "precision highp float;\nuniform mat4 u_MVPMatrix;\nattribute vec4 a_position;\nattribute vec2 a_texcoord;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_Position = u_MVPMatrix * a_position;\n  v_texcoord = a_texcoord;\n}\n"

    const-string v2, "precision mediump float;\nuniform lowp sampler2D tex_sampler;\nuniform lowp float u_alpha;\nvarying lowp vec2 v_texcoord;\nuniform float u_step;\nuniform float u_param;\nconst float center = 0.5;\nvoid main() {\n  vec2 new_center = vec2(center * u_param, center);\n  vec2 new_texcoord = v_texcoord * vec2(u_param, 1.0);\n  vec2 coord = new_texcoord - new_center;\n  float fix_pos = max(0.0, sign(u_param - 1.0));\n  vec2 mini_circle_pos = new_center + sign(coord) * ( u_step * min(1.0, u_param) * vec2(center, center) + vec2(fix_pos, 1.0 - fix_pos) * center * abs(u_param - 1.0) );\n  float dist = center * min(1.0, u_param) * (1.0 - u_step);\n  float mini_dist = length(new_texcoord - mini_circle_pos);\n  if ( sign(new_texcoord - mini_circle_pos) == sign(coord) && mini_dist > dist) {\n      gl_FragColor = vec4(0.0, 0.0, 0.0, 0.0);\n  } else {\n      gl_FragColor = texture2D(tex_sampler, v_texcoord) * u_alpha;\n  }\n}\n"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/glview/GLProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .restart local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    const-string v1, "a_position"

    const/16 v2, 0x66

    const/16 v3, 0xcf

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 309
    const-string v1, "a_texcoord"

    const/16 v2, 0x66

    const/16 v3, 0xcd

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 310
    const-string v1, "u_MVPMatrix"

    const/16 v2, 0x67

    const/16 v3, 0xd8

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 311
    const-string v1, "u_alpha"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 312
    const-string v1, "u_step"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 313
    const-string v1, "u_param"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    goto/16 :goto_1

    .line 317
    :pswitch_7
    new-instance v0, Lcom/samsung/android/glview/GLProgram;

    .end local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    const-string v1, "precision highp float;\nuniform mat4 u_MVPMatrix;\nattribute vec4 a_position;\nattribute vec2 a_texcoord;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_Position = u_MVPMatrix * a_position;\n  v_texcoord = a_texcoord;\n}\n"

    const-string v2, "precision mediump float;\nuniform lowp sampler2D tex_sampler;\nuniform lowp float u_alpha;\nvarying lowp vec2 v_texcoord;\nuniform float u_step;\nconst float diameter = 0.9999;\nconst float center = 0.5;\nvoid main() {\n  vec2 coord = v_texcoord - vec2(center, center);\n  float dist = length(coord / diameter);\n  if ((dist < center) && (dist > center * u_step)) {\n      gl_FragColor = texture2D(tex_sampler, v_texcoord) * u_alpha;\n  } else {\n      gl_FragColor = vec4(0.0, 0.0, 0.0, 0.0);\n  }\n}\n"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/glview/GLProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .restart local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    const-string v1, "a_position"

    const/16 v2, 0x66

    const/16 v3, 0xcf

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 319
    const-string v1, "a_texcoord"

    const/16 v2, 0x66

    const/16 v3, 0xcd

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 320
    const-string v1, "u_MVPMatrix"

    const/16 v2, 0x67

    const/16 v3, 0xd8

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 321
    const-string v1, "u_alpha"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 322
    const-string v1, "u_step"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 323
    const-string v1, "u_param"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    goto/16 :goto_1

    .line 327
    :pswitch_8
    new-instance v0, Lcom/samsung/android/glview/GLProgram;

    .end local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    const-string v1, "precision highp float;\nuniform mat4 u_MVPMatrix;\nattribute vec4 a_position;\nattribute vec2 a_texcoord;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_Position = u_MVPMatrix * a_position;\n  v_texcoord = a_texcoord;\n}\n"

    const-string v2, "precision mediump float;\nuniform lowp sampler2D tex_sampler;\nvarying lowp vec2 v_texcoord;\nuniform float u_step;\nuniform float u_param;\nuniform float u_alpha;\nconst float accel_pos = 0.2;\nvoid main() {\n    float orientation_pos = sign(u_step);\n    float direction = sign(1.0 - abs(u_step));\n    float alpha = 1.0;\n    float pos = ((1.0 - direction) + direction * abs(u_step)) * (1.0 + u_param);\n    if (pos < accel_pos) {\n        pos = sin(radians(90.0 * (1.0 / accel_pos) * pos)) * accel_pos;\n    }\n    orientation_pos = v_texcoord.x * sign(1.0 - orientation_pos) + v_texcoord.y * sign(1.0 + orientation_pos);\n    if (orientation_pos < pos) {\n        alpha = max(0.0, (orientation_pos - (pos - u_param)) / u_param);\n    }\n    direction = sign(direction + 0.5);\n    alpha = sign(1.0 - direction) + direction * alpha;\n    gl_FragColor = texture2D(tex_sampler, v_texcoord) * (alpha * u_alpha);\n}\n"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/glview/GLProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .restart local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    const-string v1, "a_position"

    const/16 v2, 0x66

    const/16 v3, 0xcf

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 329
    const-string v1, "a_texcoord"

    const/16 v2, 0x66

    const/16 v3, 0xcd

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 330
    const-string v1, "u_MVPMatrix"

    const/16 v2, 0x67

    const/16 v3, 0xd8

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 331
    const-string v1, "u_alpha"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 332
    const-string v1, "u_step"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 333
    const-string v1, "u_param"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public declared-synchronized getProgram(I)Lcom/samsung/android/glview/GLProgram;
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 345
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLProgramStorage;->mProgramObjMap:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLProgram;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
