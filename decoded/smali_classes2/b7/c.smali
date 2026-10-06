.class public Lb7/c;
.super Lb7/a;
.source "SourceFile"


# direct methods
.method public static c(ILjava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/miui/gamebooster/globalgame/module/CardType$Type;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lb7/a;->a(Ljava/util/Map;)V

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "index"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, ""

    if-nez p1, :cond_0

    move-object p1, p0

    :cond_0
    const-string v1, "card_name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lb7/c;->d(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "card_type"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p4, p4, 0x1

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "game_index"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_1

    move-object p3, p0

    :cond_1
    const-string p0, "game_name"

    invoke-interface {v0, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "info_card_click"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    const-string p1, "event:cardClick"

    invoke-static {p1, p0, v0}, Lb7/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static d(I)Ljava/lang/String;
    .locals 0
    .param p0    # I
        .annotation build Lcom/miui/gamebooster/globalgame/module/CardType$Type;
        .end annotation
    .end param

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string p0, "ignored"

    return-object p0

    :pswitch_1
    const-string p0, "text_banner"

    return-object p0

    :pswitch_2
    const-string p0, "H5_game_card"

    return-object p0

    :pswitch_3
    const-string p0, "pic_banner"

    return-object p0

    :pswitch_4
    const-string p0, "rec_small_card"

    return-object p0

    :pswitch_5
    const-string p0, "rec_big_card"

    return-object p0

    :pswitch_6
    const-string p0, "3_icon_card"

    return-object p0

    :pswitch_7
    const-string p0, "8_icon_card"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static e()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0}, Lb7/a;->a(Ljava/util/Map;)V

    const-string v1, "detail"

    const-string v2, "error"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "exposure_info_main"

    invoke-static {v1, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    const-string v2, "event:detailError"

    invoke-static {v2, v1, v0}, Lb7/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
