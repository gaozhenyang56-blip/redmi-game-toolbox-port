.class public Lve/l;
.super Lve/b;
.source "SourceFile"


# static fields
.field private static g:Lve/l;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lve/b;-><init>()V

    const-string v0, "01-18-04"

    invoke-virtual {p0, v0}, Lve/b;->B(Ljava/lang/String;)V

    const-string v0, "https://adv.sec.miui.com/info/videoAdv"

    invoke-virtual {p0, v0}, Lve/b;->C(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized F()Lve/l;
    .locals 2

    const-class v0, Lve/l;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lve/l;->g:Lve/l;

    if-nez v1, :cond_0

    new-instance v1, Lve/l;

    invoke-direct {v1}, Lve/l;-><init>()V

    sput-object v1, Lve/l;->g:Lve/l;

    :cond_0
    sget-object v1, Lve/l;->g:Lve/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public G(Lcom/miui/gamebooster/model/ActiveModel;)V
    .locals 4

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getDislikeId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "active_ad_id_dislike"

    invoke-static {v2, v1}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2, v1}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    invoke-static {}, Li8/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lve/b;->A(Lcom/miui/gamebooster/model/ActiveModel;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public j(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/ActiveModel;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lve/b;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lve/l;->l()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gamebooster/model/ActiveModel;

    invoke-virtual {v3}, Lcom/miui/gamebooster/model/ActiveModel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_4
    :goto_1
    return-object p1
.end method

.method protected l()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "active_ad_id_dislike"

    invoke-static {v1, v0}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x2

    if-ge v7, v8, :cond_1

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-virtual {p0, v7}, Lve/b;->f(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_2

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_4
    invoke-static {v1, v0}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v3
.end method

.method protected p()V
    .locals 0

    invoke-super {p0}, Lve/b;->p()V

    return-void
.end method
