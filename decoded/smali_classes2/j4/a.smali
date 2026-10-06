.class public Lj4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lj4/a;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, "ContinuityPublishManager"

    const-string v0, "ContinuityManager get context null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lj4/a;->a:Landroid/content/Context;

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/continuity/messagecenter/MessageData;
    .locals 3

    new-instance v0, Lcom/xiaomi/continuity/messagecenter/MessageData;

    invoke-direct {v0}, Lcom/xiaomi/continuity/messagecenter/MessageData;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/continuity/messagecenter/MessageData;->setBaseData([B)V

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/continuity/messagecenter/MessageData;->setExtendData([B)V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultMessageData baseData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",extendData:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContinuityPublishManager"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private c()Lcom/xiaomi/continuity/messagecenter/MessageOptions;
    .locals 2

    new-instance v0, Lcom/xiaomi/continuity/messagecenter/MessageOptions;

    invoke-direct {v0}, Lcom/xiaomi/continuity/messagecenter/MessageOptions;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/continuity/messagecenter/MessageOptions;->setTrustedTypes(I)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/continuity/messagecenter/MessageOptions;->setDataDispatch(I)V

    return-object v0
.end method

.method public static declared-synchronized d(Landroid/content/Context;)Lj4/a;
    .locals 2

    const-class v0, Lj4/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lj4/a;->b:Lj4/a;

    if-nez v1, :cond_0

    new-instance v1, Lj4/a;

    invoke-direct {v1, p0}, Lj4/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lj4/a;->b:Lj4/a;

    :cond_0
    sget-object p0, Lj4/a;->b:Lj4/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a(Lcom/miui/common/continuity/bean/ContinuityMessageData;Lcom/xiaomi/continuity/messagecenter/PublisherManager$IPublishResult;)V
    .locals 4

    invoke-virtual {p1}, Lcom/miui/common/continuity/bean/ContinuityMessageData;->getTopicName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/common/continuity/bean/ContinuityMessageData;->getBaseData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/common/continuity/bean/ContinuityMessageData;->getExtraData()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lj4/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/continuity/messagecenter/PublisherManager;

    move-result-object v2

    invoke-direct {p0}, Lj4/a;->c()Lcom/xiaomi/continuity/messagecenter/MessageOptions;

    move-result-object v3

    invoke-direct {p0, v1, p1}, Lj4/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/continuity/messagecenter/MessageData;

    move-result-object p1

    invoke-virtual {v2, v0, v3, p1, p2}, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->publish(Ljava/lang/String;Lcom/xiaomi/continuity/messagecenter/MessageOptions;Lcom/xiaomi/continuity/messagecenter/MessageData;Lcom/xiaomi/continuity/messagecenter/PublisherManager$IPublishResult;)I

    return-void
.end method

.method public e(Ljava/lang/String;Lcom/xiaomi/continuity/messagecenter/PublisherManager$SubscriberListener;)V
    .locals 1

    iget-object v0, p0, Lj4/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/continuity/messagecenter/PublisherManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->addSubscribeListener(Ljava/lang/String;Lcom/xiaomi/continuity/messagecenter/PublisherManager$SubscriberListener;)I

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lj4/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/continuity/messagecenter/PublisherManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->removeSubscribeListener(Ljava/lang/String;)I

    return-void
.end method
