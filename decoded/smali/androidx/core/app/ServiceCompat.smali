.class public final Landroidx/core/app/ServiceCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/ServiceCompat$b;,
        Landroidx/core/app/ServiceCompat$a;,
        Landroidx/core/app/ServiceCompat$StopForegroundFlags;
    }
.end annotation


# direct methods
.method public static a(Landroid/app/Service;ILandroid/app/Notification;I)V
    .locals 2
    .param p0    # Landroid/app/Service;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Notification;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1, p2, p3}, Landroidx/core/app/ServiceCompat$b;->a(Landroid/app/Service;ILandroid/app/Notification;I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    invoke-static {p0, p1, p2, p3}, Landroidx/core/app/ServiceCompat$a;->a(Landroid/app/Service;ILandroid/app/Notification;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :goto_0
    return-void
.end method
