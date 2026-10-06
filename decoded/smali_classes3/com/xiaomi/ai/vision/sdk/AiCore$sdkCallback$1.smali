.class public final Lcom/xiaomi/ai/vision/sdk/AiCore$sdkCallback$1;
.super Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/ai/vision/sdk/AiCore;-><init>(Landroid/content/Context;Lji/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00005\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u000b*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\t\u001a\u00020\u0004H\u0016J\u0010\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016J \u0010\u0010\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0002H\u0016J\u0018\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u0002H\u0016J\u0018\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u0002H\u0016J\u0010\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0002H\u0016J\u0010\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0002H\u0016J\u0010\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0002H\u0016J \u0010\u001d\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u0002H\u0016J \u0010\u001e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u0002H\u0016\u00a8\u0006\u001f"
    }
    d2 = {
        "com/xiaomi/ai/vision/sdk/AiCore$sdkCallback$1",
        "Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkCallback$Stub;",
        "",
        "reason",
        "Loj/t;",
        "w",
        "",
        "result",
        "x2",
        "E0",
        "Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;",
        "aiTranslateResult",
        "D6",
        "text",
        "lang",
        "dialogId",
        "T",
        "",
        "sampleRate",
        "D0",
        "",
        "data",
        "A4",
        "Q4",
        "T6",
        "R1",
        "n",
        "code",
        "msg",
        "L0",
        "V7",
        "AiCapability_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/ai/vision/sdk/AiCore;


# direct methods
.method constructor <init>(Lcom/xiaomi/ai/vision/sdk/AiCore;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore$sdkCallback$1;->a:Lcom/xiaomi/ai/vision/sdk/AiCore;

    invoke-direct {p0}, Lcom/xiaomi/aiasst/vision/sdk/ITranslateSdkCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public A4([BLjava/lang/String;)V
    .locals 5
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-class v0, Lji/f;

    const-string v1, "data"

    invoke-static {p1, v1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "dialogId"

    invoke-static {p2, v1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTtsData, dialogId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AiCore"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore$sdkCallback$1;->a:Lcom/xiaomi/ai/vision/sdk/AiCore;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const-string v0, "getCallback, key is empty"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    invoke-static {v0, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->h(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lji/f;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move-object v4, v0

    goto :goto_2

    :cond_3
    const-class v2, Lji/d;

    invoke-static {v0, v2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->f(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lji/d;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    check-cast v0, Lji/f;

    goto :goto_1

    :cond_5
    const-class v2, Lji/e;

    invoke-static {v0, v2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->g(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lji/e;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_6
    const-class v2, Lji/c;

    invoke-static {v0, v2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->e(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lji/c;

    if-nez v0, :cond_4

    :cond_7
    :goto_2
    if-eqz v4, :cond_8

    invoke-interface {v4, p2, p1}, Lji/f;->b(Ljava/lang/String;[B)V

    :cond_8
    return-void
.end method

.method public D0(ILjava/lang/String;)V
    .locals 5
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-class v0, Lji/f;

    const-string v1, "dialogId"

    invoke-static {p2, v1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTtsStart, sampleRate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dialogId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AiCore"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore$sdkCallback$1;->a:Lcom/xiaomi/ai/vision/sdk/AiCore;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const-string v0, "getCallback, key is empty"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    invoke-static {v0, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->h(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lji/f;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move-object v4, v0

    goto :goto_2

    :cond_3
    const-class v2, Lji/d;

    invoke-static {v0, v2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->f(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lji/d;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    check-cast v0, Lji/f;

    goto :goto_1

    :cond_5
    const-class v2, Lji/e;

    invoke-static {v0, v2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->g(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lji/e;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_6
    const-class v2, Lji/c;

    invoke-static {v0, v2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->e(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lji/c;

    if-nez v0, :cond_4

    :cond_7
    :goto_2
    if-eqz v4, :cond_8

    invoke-interface {v4, p2, p1}, Lji/f;->a(Ljava/lang/String;I)V

    :cond_8
    return-void
.end method

.method public D6(Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;)V
    .locals 18
    .param p1    # Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-class v2, Lji/c;

    const-class v3, Lji/d;

    const-class v4, Lji/f;

    const-class v5, Lji/e;

    const-string v6, "aiTranslateResult"

    invoke-static {v1, v6}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onTextTranslateResult, result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AiCore"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v1, Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;->dialogId:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-nez v10, :cond_0

    goto :goto_0

    :cond_0
    move v10, v8

    goto :goto_1

    :cond_1
    :goto_0
    move v10, v9

    :goto_1
    if-eqz v10, :cond_2

    return-void

    :cond_2
    iget-object v10, v0, Lcom/xiaomi/ai/vision/sdk/AiCore$sdkCallback$1;->a:Lcom/xiaomi/ai/vision/sdk/AiCore;

    const-string v11, "dialogId"

    invoke-static {v6, v11}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-nez v12, :cond_3

    move v8, v9

    :cond_3
    const/4 v9, 0x0

    if-eqz v8, :cond_4

    const-string v8, "getCallback, key is empty"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    invoke-static {v5, v4}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {v10}, Lcom/xiaomi/ai/vision/sdk/AiCore;->h(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lji/f;

    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    check-cast v7, Lji/e;

    :cond_6
    move-object v9, v7

    goto :goto_2

    :cond_7
    invoke-static {v5, v3}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {v10}, Lcom/xiaomi/ai/vision/sdk/AiCore;->f(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lji/d;

    if-nez v7, :cond_5

    goto :goto_2

    :cond_8
    invoke-static {v5, v5}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {v10}, Lcom/xiaomi/ai/vision/sdk/AiCore;->g(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lji/e;

    if-nez v7, :cond_6

    goto :goto_2

    :cond_9
    invoke-static {v5, v2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {v10}, Lcom/xiaomi/ai/vision/sdk/AiCore;->e(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lji/c;

    if-nez v7, :cond_5

    :cond_a
    :goto_2
    if-eqz v9, :cond_f

    iget-object v13, v1, Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;->dialogId:Ljava/lang/String;

    iget-object v7, v1, Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;->srcStr:Ljava/lang/String;

    const-string v8, ""

    if-nez v7, :cond_b

    move-object/from16 v16, v8

    goto :goto_3

    :cond_b
    move-object/from16 v16, v7

    :goto_3
    iget-object v7, v1, Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;->destStr:Ljava/lang/String;

    if-nez v7, :cond_c

    move-object/from16 v17, v8

    goto :goto_4

    :cond_c
    move-object/from16 v17, v7

    :goto_4
    iget-object v7, v1, Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;->srcLang:Ljava/lang/String;

    if-nez v7, :cond_d

    move-object v14, v8

    goto :goto_5

    :cond_d
    move-object v14, v7

    :goto_5
    iget-object v1, v1, Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;->destLang:Ljava/lang/String;

    if-nez v1, :cond_e

    move-object v15, v8

    goto :goto_6

    :cond_e
    move-object v15, v1

    :goto_6
    new-instance v1, Lki/b;

    invoke-static {v13, v11}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lki/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v1}, Lji/e;->a(Lki/b;)V

    :cond_f
    iget-object v1, v0, Lcom/xiaomi/ai/vision/sdk/AiCore$sdkCallback$1;->a:Lcom/xiaomi/ai/vision/sdk/AiCore;

    invoke-static {v5, v4}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-static {v1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->h(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v1

    :goto_7
    invoke-interface {v1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_10
    invoke-static {v5, v3}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-static {v1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->f(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v1

    goto :goto_7

    :cond_11
    invoke-static {v5, v5}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-static {v1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->g(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v1

    goto :goto_7

    :cond_12
    invoke-static {v5, v2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {v1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->e(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v1

    goto :goto_7

    :cond_13
    :goto_8
    return-void
.end method

.method public E0()V
    .locals 2

    const-string v0, "AiCore"

    const-string v1, "onShowCtaDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/ai/vision/sdk/AiCore$sdkCallback$1;->a:Lcom/xiaomi/ai/vision/sdk/AiCore;

    invoke-static {v0}, Lcom/xiaomi/ai/vision/sdk/AiCore;->d(Lcom/xiaomi/ai/vision/sdk/AiCore;)Lji/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lji/b;->onShow()V

    :cond_0
    return-void
.end method

.method public L0(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dialogId"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEvent, dialogId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", code: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", msg: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AiCore"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore$sdkCallback$1;->a:Lcom/xiaomi/ai/vision/sdk/AiCore;

    invoke-virtual {p1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->v()Lji/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p2, p3}, Lji/a;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Q4(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-class v0, Lji/f;

    const-string v1, "dialogId"

    invoke-static {p1, v1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTtsFinish, dialogId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AiCore"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore$sdkCallback$1;->a:Lcom/xiaomi/ai/vision/sdk/AiCore;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const-string v0, "getCallback, key is empty"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    invoke-static {v0, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->h(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lji/f;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move-object v4, v0

    goto :goto_2

    :cond_3
    const-class v2, Lji/d;

    invoke-static {v0, v2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->f(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lji/d;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    check-cast v0, Lji/f;

    goto :goto_1

    :cond_5
    const-class v2, Lji/e;

    invoke-static {v0, v2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->g(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lji/e;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_6
    const-class v2, Lji/c;

    invoke-static {v0, v2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->e(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lji/c;

    if-nez v0, :cond_4

    :cond_7
    :goto_2
    if-eqz v4, :cond_8

    invoke-interface {v4, p1}, Lji/f;->c(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public R1(Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;)V
    .locals 21
    .param p1    # Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-class v2, Lji/e;

    const-string v3, "aiTranslateResult"

    invoke-static {v1, v3}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRecognizeResult, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AiCore"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;->dialogId:Ljava/lang/String;

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v5

    :goto_1
    if-eqz v6, :cond_2

    return-void

    :cond_2
    iget-object v6, v0, Lcom/xiaomi/ai/vision/sdk/AiCore$sdkCallback$1;->a:Lcom/xiaomi/ai/vision/sdk/AiCore;

    invoke-static {v6}, Lcom/xiaomi/ai/vision/sdk/AiCore;->f(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "dialogId"

    const-string v8, ""

    if-eqz v6, :cond_a

    iget-object v6, v0, Lcom/xiaomi/ai/vision/sdk/AiCore$sdkCallback$1;->a:Lcom/xiaomi/ai/vision/sdk/AiCore;

    invoke-static {v6}, Lcom/xiaomi/ai/vision/sdk/AiCore;->f(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lji/d;

    if-eqz v6, :cond_a

    invoke-static {v3, v7}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v10, v1, Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;->segId:I

    iget-object v9, v1, Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;->srcStr:Ljava/lang/String;

    if-nez v9, :cond_3

    move-object v11, v8

    goto :goto_2

    :cond_3
    move-object v11, v9

    :goto_2
    iget-object v9, v1, Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;->destStr:Ljava/lang/String;

    if-nez v9, :cond_4

    move-object v12, v8

    goto :goto_3

    :cond_4
    move-object v12, v9

    :goto_3
    iget-object v9, v1, Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;->srcLang:Ljava/lang/String;

    if-nez v9, :cond_5

    move-object v13, v8

    goto :goto_4

    :cond_5
    move-object v13, v9

    :goto_4
    iget-object v9, v1, Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;->destLang:Ljava/lang/String;

    if-nez v9, :cond_6

    move-object v14, v8

    goto :goto_5

    :cond_6
    move-object v14, v9

    :goto_5
    iget v15, v1, Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;->speakId:I

    iget-object v9, v1, Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;->timestamp:Ljava/lang/String;

    iget-object v4, v0, Lcom/xiaomi/ai/vision/sdk/AiCore$sdkCallback$1;->a:Lcom/xiaomi/ai/vision/sdk/AiCore;

    if-eqz v9, :cond_8

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v17

    if-nez v17, :cond_7

    goto :goto_6

    :cond_7
    const/16 v16, 0x0

    goto :goto_7

    :cond_8
    :goto_6
    move/from16 v16, v5

    :goto_7
    if-eqz v16, :cond_9

    invoke-static {}, Lqj/l;->h()Ljava/util/List;

    move-result-object v4

    goto :goto_8

    :cond_9
    invoke-static {v4}, Lcom/xiaomi/ai/vision/sdk/AiCore;->c(Lcom/xiaomi/ai/vision/sdk/AiCore;)Lcom/google/gson/Gson;

    move-result-object v4

    new-instance v5, Lcom/xiaomi/ai/vision/sdk/AiCore$sdkCallback$1$a;

    invoke-direct {v5}, Lcom/xiaomi/ai/vision/sdk/AiCore$sdkCallback$1$a;-><init>()V

    invoke-virtual {v5}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {v4, v9, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "{\n                      \u2026                        }"

    invoke-static {v4, v5}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/util/List;

    :goto_8
    move-object/from16 v16, v4

    iget-wide v4, v1, Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;->segTimestamp:J

    iget-boolean v9, v1, Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;->isFinal:Z

    move-object/from16 v20, v8

    new-instance v8, Lki/a;

    move/from16 v19, v9

    move-object v9, v8

    move-wide/from16 v17, v4

    invoke-direct/range {v9 .. v19}, Lki/a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;JZ)V

    invoke-interface {v6, v3, v8}, Lji/d;->a(Ljava/lang/String;Lki/a;)V

    goto :goto_9

    :cond_a
    move-object/from16 v20, v8

    :goto_9
    iget-object v4, v0, Lcom/xiaomi/ai/vision/sdk/AiCore$sdkCallback$1;->a:Lcom/xiaomi/ai/vision/sdk/AiCore;

    invoke-static {v4}, Lcom/xiaomi/ai/vision/sdk/AiCore;->g(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, v0, Lcom/xiaomi/ai/vision/sdk/AiCore$sdkCallback$1;->a:Lcom/xiaomi/ai/vision/sdk/AiCore;

    invoke-static {v4}, Lcom/xiaomi/ai/vision/sdk/AiCore;->g(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lji/e;

    if-eqz v4, :cond_f

    iget-object v9, v1, Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;->dialogId:Ljava/lang/String;

    iget-object v5, v1, Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;->srcStr:Ljava/lang/String;

    if-nez v5, :cond_b

    move-object/from16 v12, v20

    goto :goto_a

    :cond_b
    move-object v12, v5

    :goto_a
    iget-object v5, v1, Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;->destStr:Ljava/lang/String;

    if-nez v5, :cond_c

    move-object/from16 v13, v20

    goto :goto_b

    :cond_c
    move-object v13, v5

    :goto_b
    iget-object v5, v1, Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;->srcLang:Ljava/lang/String;

    if-nez v5, :cond_d

    move-object/from16 v10, v20

    goto :goto_c

    :cond_d
    move-object v10, v5

    :goto_c
    iget-object v1, v1, Lcom/xiaomi/aiasst/vision/sdk/AiTranslateResult;->destLang:Ljava/lang/String;

    if-nez v1, :cond_e

    move-object/from16 v11, v20

    goto :goto_d

    :cond_e
    move-object v11, v1

    :goto_d
    new-instance v1, Lki/b;

    invoke-static {v9, v7}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lki/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Lji/e;->a(Lki/b;)V

    :cond_f
    iget-object v1, v0, Lcom/xiaomi/ai/vision/sdk/AiCore$sdkCallback$1;->a:Lcom/xiaomi/ai/vision/sdk/AiCore;

    invoke-static {v3, v7}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v4, Lji/f;

    invoke-static {v2, v4}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-static {v1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->h(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v1

    :goto_e
    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_10
    const-class v4, Lji/d;

    invoke-static {v2, v4}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-static {v1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->f(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v1

    goto :goto_e

    :cond_11
    invoke-static {v2, v2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-static {v1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->g(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v1

    goto :goto_e

    :cond_12
    const-class v4, Lji/c;

    invoke-static {v2, v4}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {v1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->e(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v1

    goto :goto_e

    :cond_13
    :goto_f
    return-void
.end method

.method public T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-class v0, Lji/f;

    const-string v1, "text"

    invoke-static {p1, v1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "lang"

    invoke-static {p2, v1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "dialogId"

    invoke-static {p3, v1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTtsSpeak, text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", lang: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", dialogId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AiCore"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore$sdkCallback$1;->a:Lcom/xiaomi/ai/vision/sdk/AiCore;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const-string v0, "getCallback, key is empty"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    invoke-static {v0, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->h(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lji/f;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move-object v4, v0

    goto :goto_2

    :cond_3
    const-class v2, Lji/d;

    invoke-static {v0, v2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->f(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lji/d;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    check-cast v0, Lji/f;

    goto :goto_1

    :cond_5
    const-class v2, Lji/e;

    invoke-static {v0, v2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->g(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lji/e;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_6
    const-class v2, Lji/c;

    invoke-static {v0, v2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->e(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lji/c;

    if-nez v0, :cond_4

    :cond_7
    :goto_2
    if-eqz v4, :cond_8

    invoke-interface {v4, p3, p1, p2}, Lji/f;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public T6(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dialogId"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public V7(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-class v0, Lji/c;

    const-string v1, "dialogId"

    invoke-static {p1, v1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "msg"

    invoke-static {p3, v1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError, dialogId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AiCore"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore$sdkCallback$1;->a:Lcom/xiaomi/ai/vision/sdk/AiCore;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const-string p1, "getCallback, key is empty"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-class v2, Lji/f;

    invoke-static {v0, v2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->h(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lji/f;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    check-cast p1, Lji/c;

    :cond_3
    move-object v4, p1

    goto :goto_1

    :cond_4
    const-class v2, Lji/d;

    invoke-static {v0, v2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->f(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lji/d;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_5
    const-class v2, Lji/e;

    invoke-static {v0, v2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->g(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lji/e;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_6
    invoke-static {v0, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->e(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lji/c;

    if-nez p1, :cond_3

    :cond_7
    :goto_1
    invoke-static {v1, v4, p2, p3}, Lcom/xiaomi/ai/vision/sdk/AiCore;->k(Lcom/xiaomi/ai/vision/sdk/AiCore;Lji/c;ILjava/lang/String;)V

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-class v0, Lji/d;

    const-string v1, "dialogId"

    invoke-static {p1, v1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecognizeStop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AiCore"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore$sdkCallback$1;->a:Lcom/xiaomi/ai/vision/sdk/AiCore;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const-string v0, "getCallback, key is empty"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    const-class v2, Lji/f;

    invoke-static {v0, v2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->h(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lji/f;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    check-cast v0, Lji/d;

    goto :goto_1

    :cond_3
    invoke-static {v0, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->f(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lji/d;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    move-object v4, v0

    goto :goto_2

    :cond_5
    const-class v2, Lji/e;

    invoke-static {v0, v2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->g(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lji/e;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_6
    const-class v2, Lji/c;

    invoke-static {v0, v2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v1}, Lcom/xiaomi/ai/vision/sdk/AiCore;->e(Lcom/xiaomi/ai/vision/sdk/AiCore;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lji/c;

    if-nez v0, :cond_2

    :cond_7
    :goto_2
    if-eqz v4, :cond_8

    invoke-interface {v4, p1}, Lji/d;->n(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "reason"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterrupt, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AiCore"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/ai/vision/sdk/AiCore$sdkCallback$1;->a:Lcom/xiaomi/ai/vision/sdk/AiCore;

    invoke-virtual {v0}, Lcom/xiaomi/ai/vision/sdk/AiCore;->v()Lji/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lji/a;->w(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public x2(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCTAResult, result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AiCore"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/ai/vision/sdk/AiCore$sdkCallback$1;->a:Lcom/xiaomi/ai/vision/sdk/AiCore;

    invoke-static {v0}, Lcom/xiaomi/ai/vision/sdk/AiCore;->d(Lcom/xiaomi/ai/vision/sdk/AiCore;)Lji/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lji/b;->a(Z)V

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/ai/vision/sdk/AiCore$sdkCallback$1;->a:Lcom/xiaomi/ai/vision/sdk/AiCore;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaomi/ai/vision/sdk/AiCore;->l(Lcom/xiaomi/ai/vision/sdk/AiCore;Lji/b;)V

    return-void
.end method
