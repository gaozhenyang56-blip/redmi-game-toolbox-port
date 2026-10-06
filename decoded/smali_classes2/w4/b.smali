.class public Lw4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw4/b$b;
    }
.end annotation


# static fields
.field private static D:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lw4/c;",
            ">;"
        }
    .end annotation
.end field

.field private static final E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lw4/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Z

.field private B:Z

.field private C:I

.field private a:Landroid/content/Context;

.field private b:Ljava/lang/CharSequence;

.field private c:Ljava/lang/CharSequence;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/content/Intent;

.field private i:Landroid/app/PendingIntent;

.field private j:I

.field private k:Landroid/content/Intent;

.field private l:Landroid/app/PendingIntent;

.field private m:I

.field private n:Landroid/os/Bundle;

.field private o:Z

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:I

.field private x:Z

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lw4/b;->D:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lw4/b;->E:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lw4/b;->o:Z

    const/4 v0, -0x1

    iput v0, p0, Lw4/b;->y:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lw4/b;->z:Z

    iput-boolean v0, p0, Lw4/b;->A:Z

    iput-boolean v0, p0, Lw4/b;->B:Z

    const/4 v0, 0x5

    iput v0, p0, Lw4/b;->C:I

    return-void
.end method

.method private A()I
    .locals 1

    invoke-static {}, Ldb/c;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0e039b

    return v0

    :cond_0
    invoke-static {}, Lx4/y;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0e0268

    return v0

    :cond_1
    const v0, 0x7f0e039a

    return v0
.end method

.method private static B(Landroid/content/Context;I)Z
    .locals 4

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static C(Landroid/content/Context;)V
    .locals 5

    sget-object v0, Lw4/b;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw4/c;

    invoke-virtual {v2}, Lw4/c;->a()Lw4/b;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lw4/c;->c()I

    move-result v3

    invoke-virtual {v2}, Lw4/c;->a()Lw4/b;

    move-result-object v4

    iget v4, v4, Lw4/b;->p:I

    invoke-static {p0, v4}, Lw4/b;->B(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lw4/c;->g(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw4/c;

    invoke-virtual {v0}, Lw4/c;->a()Lw4/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lw4/b;->F(Z)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static D(Landroid/content/Context;)V
    .locals 7

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    if-eqz p0, :cond_3

    sget-object v0, Lw4/b;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    sget-object v2, Lw4/b;->E:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw4/c;

    invoke-virtual {v2}, Lw4/c;->a()Lw4/b;

    move-result-object v2

    iget v2, v2, Lw4/b;->p:I

    array-length v3, p0

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_1

    aget-object v6, p0, v5

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    if-ne v6, v2, :cond_0

    move v4, v1

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-nez v4, :cond_2

    sget-object v2, Lw4/b;->E:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static E(Landroid/content/Context;)V
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    sget-object v0, Lw4/b;->D:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Lw4/b;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lw4/b;->D:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw4/c;

    invoke-virtual {v3}, Lw4/c;->a()Lw4/b;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lw4/c;->c()I

    move-result v4

    invoke-virtual {v3}, Lw4/c;->a()Lw4/b;

    move-result-object v5

    iget v5, v5, Lw4/b;->p:I

    invoke-static {p0, v5}, Lw4/b;->B(Landroid/content/Context;I)Z

    move-result v5

    invoke-virtual {v3}, Lw4/c;->a()Lw4/b;

    move-result-object v6

    iget v6, v6, Lw4/b;->C:I

    if-ge v4, v6, :cond_1

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lw4/c;->g(I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p0, Lw4/b$a;

    invoke-direct {p0}, Lw4/b$a;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le p0, v2, :cond_4

    add-int/lit8 v2, p0, -0x1

    :goto_1
    if-ge v2, p0, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw4/c;

    invoke-virtual {v3}, Lw4/c;->a()Lw4/b;

    move-result-object v3

    invoke-direct {v3, v1}, Lw4/b;->F(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v2, v1

    :goto_2
    if-ge v2, p0, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw4/c;

    invoke-virtual {v3}, Lw4/c;->a()Lw4/b;

    move-result-object v3

    invoke-direct {v3, v1}, Lw4/b;->F(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private F(Z)V
    .locals 2

    iget-object v0, p0, Lw4/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lw4/b;->D(Landroid/content/Context;)V

    new-instance v0, Lw4/c;

    invoke-direct {v0}, Lw4/c;-><init>()V

    invoke-virtual {v0, p0}, Lw4/c;->e(Lw4/b;)V

    iget v1, p0, Lw4/b;->w:I

    invoke-virtual {v0, v1}, Lw4/c;->f(I)V

    sget-object v1, Lw4/b;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lx4/t;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/common/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lw4/b;->G(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lw4/b;->H(Z)V

    :goto_0
    return-void
.end method

.method private G(Z)V
    .locals 10

    iget-object v0, p0, Lw4/b;->b:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lw4/b;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lw4/b;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lw4/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lw4/b;->A()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget v1, p0, Lw4/b;->e:I

    if-eqz v1, :cond_1

    const v2, 0x7f0b081e

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :cond_1
    iget-object v1, p0, Lw4/b;->c:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    const v3, 0x7f0b0821

    if-eqz v1, :cond_2

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lw4/b;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_0
    const v1, 0x7f0b0822

    iget-object v3, p0, Lw4/b;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v1, p0, Lw4/b;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/high16 v3, 0x4000000

    const/4 v4, 0x0

    const v5, 0x7f0b081d

    if-eqz v1, :cond_3

    invoke-virtual {v0, v5, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget v1, p0, Lw4/b;->g:I

    if-eqz v1, :cond_5

    const v1, 0x7f0b0653

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget v2, p0, Lw4/b;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v1, p0, Lw4/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v1, p0, Lw4/b;->k:Landroid/content/Intent;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lw4/b;->a:Landroid/content/Context;

    iget v4, p0, Lw4/b;->m:I

    invoke-static {v2, v4, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lw4/b;->l:Landroid/app/PendingIntent;

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    :goto_2
    iget-object v1, p0, Lw4/b;->a:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iget-object v5, p0, Lw4/b;->q:Ljava/lang/String;

    iget-object v6, p0, Lw4/b;->r:Ljava/lang/String;

    iget v7, p0, Lw4/b;->s:I

    iget-boolean v8, p0, Lw4/b;->z:Z

    iget-boolean v9, p0, Lw4/b;->A:Z

    move-object v4, v1

    invoke-static/range {v4 .. v9}, Lx4/e1;->d(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;IZZ)V

    iget-object v2, p0, Lw4/b;->a:Landroid/content/Context;

    iget-object v4, p0, Lw4/b;->q:Ljava/lang/String;

    invoke-static {v2, v4}, Lx4/e1;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    iget v4, p0, Lw4/b;->s:I

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    iget v4, p0, Lw4/b;->f:I

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    iget-object v4, p0, Lw4/b;->n:Landroid/os/Bundle;

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-boolean v4, p0, Lw4/b;->B:Z

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    iget-object v4, p0, Lw4/b;->h:Landroid/content/Intent;

    if-eqz v4, :cond_6

    iget-object v5, p0, Lw4/b;->a:Landroid/content/Context;

    iget v6, p0, Lw4/b;->j:I

    invoke-static {v5, v6, v4, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    :goto_3
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lw4/b;->i:Landroid/app/PendingIntent;

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    :goto_4
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-boolean v2, p0, Lw4/b;->o:Z

    if-eqz v2, :cond_8

    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/app/Notification;->flags:I

    :cond_8
    iget-boolean v2, p0, Lw4/b;->x:Z

    if-eqz v2, :cond_9

    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v0, Landroid/app/Notification;->flags:I

    :cond_9
    invoke-static {v0, p1}, Lx4/e1;->j(Landroid/app/Notification;Z)V

    iget-boolean p1, p0, Lw4/b;->u:Z

    invoke-static {v0, p1}, Lx4/e1;->k(Landroid/app/Notification;Z)V

    const/4 p1, 0x1

    invoke-static {v0, p1}, Lx4/e1;->i(Landroid/app/Notification;Z)V

    iget p1, p0, Lw4/b;->y:I

    if-ltz p1, :cond_a

    invoke-static {v0, p1}, Lx4/e1;->l(Landroid/app/Notification;I)V

    :cond_a
    iget p1, p0, Lw4/b;->p:I

    iget-boolean v2, p0, Lw4/b;->A:Z

    invoke-static {v1, p1, v0, v2}, Lw4/b;->K(Landroid/app/NotificationManager;ILandroid/app/Notification;Z)V

    return-void

    :cond_b
    :goto_5
    const-string p1, "CommonNotification"

    const-string v0, "Params not support!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private H(Z)V
    .locals 8

    iget-object v0, p0, Lw4/b;->b:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lw4/b;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lw4/b;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lw4/b;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p0, Lw4/b;->q:Ljava/lang/String;

    iget-object v2, p0, Lw4/b;->r:Ljava/lang/String;

    iget v3, p0, Lw4/b;->s:I

    iget-boolean v4, p0, Lw4/b;->z:Z

    invoke-static {v0, v1, v2, v3, v4}, Lx4/e1;->c(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;IZ)V

    iget-object v1, p0, Lw4/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lw4/b;->q:Ljava/lang/String;

    invoke-static {v1, v2}, Lx4/e1;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    iget v2, p0, Lw4/b;->s:I

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    iget v2, p0, Lw4/b;->f:I

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-static {}, Lx4/t;->n()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lw4/b;->e:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lw4/b;->n:Landroid/os/Bundle;

    if-nez v2, :cond_1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lw4/b;->n:Landroid/os/Bundle;

    :cond_1
    iget-object v2, p0, Lw4/b;->n:Landroid/os/Bundle;

    const-string v3, "miui.appIcon"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lw4/b;->n:Landroid/os/Bundle;

    iget-object v4, p0, Lw4/b;->a:Landroid/content/Context;

    iget v5, p0, Lw4/b;->e:I

    invoke-static {v4, v5}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2
    iget-object v2, p0, Lw4/b;->h:Landroid/content/Intent;

    const/high16 v3, 0x4000000

    if-eqz v2, :cond_3

    iget-object v4, p0, Lw4/b;->a:Landroid/content/Context;

    iget v5, p0, Lw4/b;->j:I

    invoke-static {v4, v5, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lw4/b;->i:Landroid/app/PendingIntent;

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v2, p0, Lw4/b;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v2, p0, Lw4/b;->c:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v2, p0, Lw4/b;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_c

    invoke-static {}, Lcom/miui/common/a;->d()Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_6

    iget-object v2, p0, Lw4/b;->l:Landroid/app/PendingIntent;

    if-nez v2, :cond_5

    iget-object v6, p0, Lw4/b;->k:Landroid/content/Intent;

    if-eqz v6, :cond_5

    iget-object v2, p0, Lw4/b;->a:Landroid/content/Context;

    iget v7, p0, Lw4/b;->m:I

    invoke-static {v2, v7, v6, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    :cond_5
    if-eqz v2, :cond_b

    iget-object v3, p0, Lw4/b;->n:Landroid/os/Bundle;

    if-eqz v3, :cond_b

    const-string v6, "miui.showAction"

    invoke-virtual {v3, v6, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lw4/b;->k:Landroid/content/Intent;

    if-eqz v2, :cond_7

    :goto_2
    iget-object v6, p0, Lw4/b;->a:Landroid/content/Context;

    iget v7, p0, Lw4/b;->m:I

    invoke-static {v6, v7, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lw4/b;->l:Landroid/app/PendingIntent;

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    iget-object v2, p0, Lw4/b;->h:Landroid/content/Intent;

    if-eqz v2, :cond_9

    goto :goto_2

    :cond_9
    iget-object v2, p0, Lw4/b;->i:Landroid/app/PendingIntent;

    if-eqz v2, :cond_a

    goto :goto_3

    :cond_a
    move-object v2, v5

    :cond_b
    :goto_3
    if-eqz v2, :cond_c

    new-instance v3, Landroid/app/Notification$Action$Builder;

    iget-object v6, p0, Lw4/b;->d:Ljava/lang/String;

    invoke-direct {v3, v5, v6, v2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v3}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    :cond_c
    iget-object v2, p0, Lw4/b;->n:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-boolean v2, p0, Lw4/b;->B:Z

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    iget-boolean v2, p0, Lw4/b;->o:Z

    if-eqz v2, :cond_d

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    :cond_d
    iget-boolean v2, p0, Lw4/b;->x:Z

    if-eqz v2, :cond_e

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Landroid/app/Notification;->flags:I

    :cond_e
    invoke-static {v1, p1}, Lx4/e1;->j(Landroid/app/Notification;Z)V

    iget-boolean p1, p0, Lw4/b;->u:Z

    invoke-static {v1, p1}, Lx4/e1;->k(Landroid/app/Notification;Z)V

    invoke-static {v1, v4}, Lx4/e1;->i(Landroid/app/Notification;Z)V

    iget p1, p0, Lw4/b;->y:I

    if-ltz p1, :cond_f

    invoke-static {v1, p1}, Lx4/e1;->l(Landroid/app/Notification;I)V

    :cond_f
    iget p1, p0, Lw4/b;->p:I

    iget-boolean v2, p0, Lw4/b;->A:Z

    invoke-static {v0, p1, v1, v2}, Lw4/b;->K(Landroid/app/NotificationManager;ILandroid/app/Notification;Z)V

    return-void

    :cond_10
    :goto_4
    const-string p1, "CommonNotification"

    const-string v0, "Params not support!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static K(Landroid/app/NotificationManager;ILandroid/app/Notification;Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    const-string v0, "com.miui.securitymanager"

    invoke-static {p0, v0, p3, p1, p2}, Lw4/a;->a(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method static synthetic a(Lw4/b;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lw4/b;->a:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic b(Lw4/b;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lw4/b;->b:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic c(Lw4/b;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    iput-object p1, p0, Lw4/b;->l:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic d(Lw4/b;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Lw4/b;->n:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic e(Lw4/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lw4/b;->o:Z

    return p1
.end method

.method static synthetic f(Lw4/b;I)I
    .locals 0

    iput p1, p0, Lw4/b;->p:I

    return p1
.end method

.method static synthetic g(Lw4/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lw4/b;->q:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic h(Lw4/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lw4/b;->r:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic i(Lw4/b;I)I
    .locals 0

    iput p1, p0, Lw4/b;->s:I

    return p1
.end method

.method static synthetic j(Lw4/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lw4/b;->x:Z

    return p1
.end method

.method static synthetic k(Lw4/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lw4/b;->t:Z

    return p1
.end method

.method static synthetic l(Lw4/b;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lw4/b;->c:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic m(Lw4/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lw4/b;->u:Z

    return p1
.end method

.method static synthetic n(Lw4/b;I)I
    .locals 0

    iput p1, p0, Lw4/b;->y:I

    return p1
.end method

.method static synthetic o(Lw4/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lw4/b;->z:Z

    return p1
.end method

.method static synthetic p(Lw4/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lw4/b;->v:Z

    return p1
.end method

.method static synthetic q(Lw4/b;I)I
    .locals 0

    iput p1, p0, Lw4/b;->w:I

    return p1
.end method

.method static synthetic r(Lw4/b;I)I
    .locals 0

    iput p1, p0, Lw4/b;->C:I

    return p1
.end method

.method static synthetic s(Lw4/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lw4/b;->B:Z

    return p1
.end method

.method static synthetic t(Lw4/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lw4/b;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic u(Lw4/b;I)I
    .locals 0

    iput p1, p0, Lw4/b;->e:I

    return p1
.end method

.method static synthetic v(Lw4/b;I)I
    .locals 0

    iput p1, p0, Lw4/b;->f:I

    return p1
.end method

.method static synthetic w(Lw4/b;I)I
    .locals 0

    iput p1, p0, Lw4/b;->g:I

    return p1
.end method

.method static synthetic x(Lw4/b;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lw4/b;->h:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic y(Lw4/b;I)I
    .locals 0

    iput p1, p0, Lw4/b;->j:I

    return p1
.end method

.method static synthetic z(Lw4/b;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    iput-object p1, p0, Lw4/b;->i:Landroid/app/PendingIntent;

    return-object p1
.end method


# virtual methods
.method public I()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lw4/b;->J(Z)V

    return-void
.end method

.method public J(Z)V
    .locals 3

    iget-object v0, p0, Lw4/b;->b:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lw4/b;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lw4/b;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lw4/b;->v:Z

    if-eqz v0, :cond_3

    new-instance v0, Lw4/c;

    invoke-direct {v0}, Lw4/c;-><init>()V

    invoke-virtual {v0, p0}, Lw4/c;->e(Lw4/b;)V

    iget v1, p0, Lw4/b;->w:I

    invoke-virtual {v0, v1}, Lw4/c;->f(I)V

    const-class v1, Lw4/b;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lw4/b;->D:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lw4/b;->D:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    sget-object v2, Lw4/b;->D:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    iput-boolean p1, p0, Lw4/b;->A:Z

    iget-boolean p1, p0, Lw4/b;->t:Z

    invoke-direct {p0, p1}, Lw4/b;->F(Z)V

    return-void

    :cond_4
    :goto_1
    const-string p1, "CommonNotification"

    const-string v0, "Params not support!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lw4/b;

    iget v2, p0, Lw4/b;->p:I

    iget v3, p1, Lw4/b;->p:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lw4/b;->q:Ljava/lang/String;

    iget-object v3, p1, Lw4/b;->q:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lw4/b;->r:Ljava/lang/String;

    iget-object p1, p1, Lw4/b;->r:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lw4/b;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lw4/b;->q:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lw4/b;->r:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
