.class public abstract Lcom/miui/antispam/service/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/service/a$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Z

.field private c:Z

.field private d:I

.field private e:Lcom/miui/antispam/service/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/antispam/service/a$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/antispam/service/a;->b:Z

    iput-boolean v0, p0, Lcom/miui/antispam/service/a;->c:Z

    iput v0, p0, Lcom/miui/antispam/service/a;->d:I

    iput-object p1, p0, Lcom/miui/antispam/service/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/antispam/service/a;->e:Lcom/miui/antispam/service/a$a;

    invoke-virtual {p0}, Lcom/miui/antispam/service/a;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/service/a;->e:Lcom/miui/antispam/service/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/miui/antispam/service/a$a;->a(Lcom/miui/antispam/service/a;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/service/a;->e:Lcom/miui/antispam/service/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/miui/antispam/service/a$a;->b(Lcom/miui/antispam/service/a;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized c(Z)Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/antispam/service/a;->c:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/antispam/service/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-boolean p1, p0, Lcom/miui/antispam/service/a;->b:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/antispam/service/a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized d(Z)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/antispam/service/a;->b:Z

    iget p1, p0, Lcom/miui/antispam/service/a;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/miui/antispam/service/a;->d:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/miui/antispam/service/a;->d:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/miui/antispam/service/a;->d:I

    iget-boolean v1, p0, Lcom/miui/antispam/service/a;->c:Z

    if-eqz v1, :cond_1

    if-gtz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/antispam/service/a;->b:Z

    invoke-virtual {p0, v0}, Lcom/miui/antispam/service/a;->c(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
