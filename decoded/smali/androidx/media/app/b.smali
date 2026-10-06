.class public Landroidx/media/app/b;
.super Landroidx/core/app/NotificationCompat$d;
.source "SourceFile"


# instance fields
.field e:[I

.field f:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field g:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$d;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media/app/b;->e:[I

    return-void
.end method


# virtual methods
.method public b(Landroidx/core/app/j;)V
    .locals 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->a:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    invoke-interface {p1}, Landroidx/core/app/j;->a()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-static {}, Landroidx/media/app/a;->a()Landroid/app/Notification$MediaStyle;

    move-result-object v0

    iget-object v1, p0, Landroidx/media/app/b;->e:[I

    iget-object v2, p0, Landroidx/media/app/b;->f:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-static {v0, v1, v2}, Landroidx/media/app/a;->b(Landroid/app/Notification$MediaStyle;[ILandroid/support/v4/media/session/MediaSessionCompat$Token;)Landroid/app/Notification$MediaStyle;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/media/app/a;->d(Landroid/app/Notification$Builder;Landroid/app/Notification$MediaStyle;)V

    return-void
.end method

.method public d(Landroidx/core/app/j;)Landroid/widget/RemoteViews;
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->a:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public e(Landroidx/core/app/j;)Landroid/widget/RemoteViews;
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->a:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public h(Landroid/app/PendingIntent;)Landroidx/media/app/b;
    .locals 0

    iput-object p1, p0, Landroidx/media/app/b;->g:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public i(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroidx/media/app/b;
    .locals 0

    iput-object p1, p0, Landroidx/media/app/b;->f:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object p0
.end method

.method public varargs j([I)Landroidx/media/app/b;
    .locals 0

    iput-object p1, p0, Landroidx/media/app/b;->e:[I

    return-object p0
.end method

.method public k(Z)Landroidx/media/app/b;
    .locals 0

    return-object p0
.end method
