.class public Lcom/miui/luckymoney/service/QQGroupCollector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/luckymoney/service/QQGroupCollector$QQGroupInfo;
    }
.end annotation


# static fields
.field private static final idMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/luckymoney/service/QQGroupCollector$QQGroupInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/luckymoney/service/QQGroupCollector;->idMaps:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized collect(Landroid/content/Context;Lcom/miui/luckymoney/model/message/Impl/QQMessage;)V
    .locals 3

    const-class p0, Lcom/miui/luckymoney/service/QQGroupCollector;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->isGroupMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/luckymoney/service/QQGroupCollector;->idMaps:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/luckymoney/service/QQGroupCollector$QQGroupInfo;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/luckymoney/service/QQGroupCollector$QQGroupInfo;

    invoke-direct {v1}, Lcom/miui/luckymoney/service/QQGroupCollector$QQGroupInfo;-><init>()V

    iget-object v2, p1, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationId:Ljava/lang/String;

    iput-object v2, v1, Lcom/miui/luckymoney/service/QQGroupCollector$QQGroupInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v0, p1, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->type:I

    iput v0, v1, Lcom/miui/luckymoney/service/QQGroupCollector$QQGroupInfo;->type:I

    iget-object p1, p1, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationName:Ljava/lang/String;

    iput-object p1, v1, Lcom/miui/luckymoney/service/QQGroupCollector$QQGroupInfo;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized findQQGroupByName(Ljava/lang/String;)Lcom/miui/luckymoney/service/QQGroupCollector$QQGroupInfo;
    .locals 7

    const-class v0, Lcom/miui/luckymoney/service/QQGroupCollector;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v4, Lcom/miui/luckymoney/service/QQGroupCollector;->idMaps:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/luckymoney/service/QQGroupCollector$QQGroupInfo;

    iget-object v6, v5, Lcom/miui/luckymoney/service/QQGroupCollector$QQGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ne p0, v3, :cond_3

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/luckymoney/service/QQGroupCollector$QQGroupInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_3
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
