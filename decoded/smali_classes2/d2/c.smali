.class public Ld2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile c:Ld2/c;


# instance fields
.field private a:Landroid/widget/Toast;

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Ld2/c;
    .locals 2

    sget-object v0, Ld2/c;->c:Ld2/c;

    if-nez v0, :cond_1

    const-class v0, Ld2/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ld2/c;->c:Ld2/c;

    if-nez v1, :cond_0

    new-instance v1, Ld2/c;

    invoke-direct {v1}, Ld2/c;-><init>()V

    sput-object v1, Ld2/c;->c:Ld2/c;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Ld2/c;->c:Ld2/c;

    return-object v0
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;I)Ld2/c;
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ld2/c;->a()V

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Ld2/c;->a:Landroid/widget/Toast;

    :cond_0
    return-object p0
.end method

.method private d()Ld2/c;
    .locals 2

    iget-object v0, p0, Ld2/c;->a:Landroid/widget/Toast;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ld2/c;->b:J

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 6

    sget-object v0, Ld2/c;->c:Ld2/c;

    if-eqz v0, :cond_1

    sget-object v0, Ld2/c;->c:Ld2/c;

    iget-object v0, v0, Ld2/c;->a:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    sget-object v0, Ld2/c;->c:Ld2/c;

    iget-wide v0, v0, Ld2/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Ld2/c;->c:Ld2/c;

    iget-object v0, v0, Ld2/c;->a:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    sget-object v0, Ld2/c;->c:Ld2/c;

    iget-object v0, v0, Ld2/c;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Ld2/c;->c:Ld2/c;

    iget-wide v4, v4, Ld2/c;->b:J

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    sget-object v0, Ld2/c;->c:Ld2/c;

    iget-object v0, v0, Ld2/c;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    sget-object v0, Ld2/c;->c:Ld2/c;

    const/4 v1, 0x0

    iput-object v1, v0, Ld2/c;->a:Landroid/widget/Toast;

    :cond_1
    return-void
.end method

.method public e(Landroid/content/Context;I)Ld2/c;
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x7d0

    invoke-direct {p0, p1, p2, v0}, Ld2/c;->c(Landroid/content/Context;Ljava/lang/String;I)Ld2/c;

    move-result-object p1

    invoke-direct {p1}, Ld2/c;->d()Ld2/c;

    move-result-object p1

    return-object p1
.end method
