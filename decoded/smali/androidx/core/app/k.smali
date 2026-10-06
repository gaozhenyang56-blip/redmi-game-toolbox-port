.class public Landroidx/core/app/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/k$a;,
        Landroidx/core/app/k$b;,
        Landroidx/core/app/k$c;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field b:Ljava/lang/CharSequence;

.field c:I

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Z

.field g:Landroid/net/Uri;

.field h:Landroid/media/AudioAttributes;

.field i:Z

.field j:I

.field k:Z

.field l:[J

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/app/k;->f:Z

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/core/app/k;->g:Landroid/net/Uri;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/core/app/k;->j:I

    invoke-static {p1}, Lb0/h;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/core/app/k;->a:Ljava/lang/String;

    iput p2, p0, Landroidx/core/app/k;->c:I

    sget-object p1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object p1, p0, Landroidx/core/app/k;->h:Landroid/media/AudioAttributes;

    return-void
.end method


# virtual methods
.method a()Landroid/app/NotificationChannel;
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroidx/core/app/k;->a:Ljava/lang/String;

    iget-object v2, p0, Landroidx/core/app/k;->b:Ljava/lang/CharSequence;

    iget v3, p0, Landroidx/core/app/k;->c:I

    invoke-static {v1, v2, v3}, Landroidx/core/app/k$a;->c(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v1

    iget-object v2, p0, Landroidx/core/app/k;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Landroidx/core/app/k$a;->p(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/core/app/k;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Landroidx/core/app/k$a;->q(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    iget-boolean v2, p0, Landroidx/core/app/k;->f:Z

    invoke-static {v1, v2}, Landroidx/core/app/k$a;->s(Landroid/app/NotificationChannel;Z)V

    iget-object v2, p0, Landroidx/core/app/k;->g:Landroid/net/Uri;

    iget-object v3, p0, Landroidx/core/app/k;->h:Landroid/media/AudioAttributes;

    invoke-static {v1, v2, v3}, Landroidx/core/app/k$a;->t(Landroid/app/NotificationChannel;Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    iget-boolean v2, p0, Landroidx/core/app/k;->i:Z

    invoke-static {v1, v2}, Landroidx/core/app/k$a;->d(Landroid/app/NotificationChannel;Z)V

    iget v2, p0, Landroidx/core/app/k;->j:I

    invoke-static {v1, v2}, Landroidx/core/app/k$a;->r(Landroid/app/NotificationChannel;I)V

    iget-object v2, p0, Landroidx/core/app/k;->l:[J

    invoke-static {v1, v2}, Landroidx/core/app/k$a;->u(Landroid/app/NotificationChannel;[J)V

    iget-boolean v2, p0, Landroidx/core/app/k;->k:Z

    invoke-static {v1, v2}, Landroidx/core/app/k$a;->e(Landroid/app/NotificationChannel;Z)V

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Landroidx/core/app/k;->m:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroidx/core/app/k;->n:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-static {v1, v0, v2}, Landroidx/core/app/k$b;->d(Landroid/app/NotificationChannel;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method
