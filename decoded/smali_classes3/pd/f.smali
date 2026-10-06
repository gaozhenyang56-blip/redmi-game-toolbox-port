.class public Lpd/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/continuity/messagecenter/PublisherManager$SubscriberListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lpd/f;->b:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lpd/f;->c:Ljava/util/HashMap;

    iput-object p1, p0, Lpd/f;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onSubscribe(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/continuity/messagecenter/MessageData;)V
    .locals 7

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lcom/xiaomi/continuity/messagecenter/MessageData;->getExtendData()[B

    move-result-object p2

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lx4/y;->s()Z

    move-result p2

    const-string v0, "power_channel_SUBSCIRIBER"

    if-nez p2, :cond_1

    const-string p1, "onSubscribe not tablet return"

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p2, p0, Lpd/f;->a:Landroid/content/Context;

    invoke-static {p2}, La8/t1;->c(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p1, "onSubscribe isScreenLocked return"

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lpd/f;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lpd/e;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p1, "onSubscribe not SameRegionWithLocal return"

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lpd/f;->c:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_4

    iget-object p2, p0, Lpd/f;->c:Ljava/util/HashMap;

    iget v1, p0, Lpd/f;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lpd/f;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {p3}, Lcom/xiaomi/continuity/messagecenter/MessageData;->getExtendData()[B

    move-result-object p2

    array-length p2, p2

    if-eqz p2, :cond_5

    new-instance p2, Ljava/lang/String;

    invoke-virtual {p3}, Lcom/xiaomi/continuity/messagecenter/MessageData;->getExtendData()[B

    move-result-object p3

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p3, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-class p3, Lcom/miui/powercenter/bean/PowerContinuityNotifiBean;

    invoke-static {p2, p3}, Lx4/l0;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/powercenter/bean/PowerContinuityNotifiBean;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/miui/powercenter/bean/PowerContinuityNotifiBean;->getState()I

    move-result p3

    if-ne p3, v0, :cond_5

    iget-object p3, p0, Lpd/f;->a:Landroid/content/Context;

    iget-object v0, p0, Lpd/f;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p3, v0}, Lcom/miui/powercenter/continuity/PowerContinuityNoticeUtils;->a(Landroid/content/Context;I)V

    iget-object v1, p0, Lpd/f;->a:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/miui/powercenter/bean/PowerContinuityNotifiBean;->getLevel()I

    move-result v2

    invoke-virtual {p2}, Lcom/miui/powercenter/bean/PowerContinuityNotifiBean;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/miui/powercenter/bean/PowerContinuityNotifiBean;->getTime()I

    move-result v4

    iget-object p2, p0, Lpd/f;->c:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/miui/powercenter/continuity/PowerContinuityNoticeUtils;->h(Landroid/content/Context;ILjava/lang/String;IILjava/lang/String;)V

    const-string p2, "onSubscribe"

    invoke-static {p2}, Lhd/a;->Z0(Ljava/lang/String;)V

    :cond_5
    iget-object p2, p0, Lpd/f;->a:Landroid/content/Context;

    invoke-static {p2}, Lpd/c;->t(Landroid/content/Context;)Lpd/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lpd/c;->u(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lpd/f;->a:Landroid/content/Context;

    invoke-static {p2}, Lpd/c;->t(Landroid/content/Context;)Lpd/c;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lpd/c;->p(Ljava/lang/String;I)V

    :cond_6
    :goto_1
    return-void
.end method
