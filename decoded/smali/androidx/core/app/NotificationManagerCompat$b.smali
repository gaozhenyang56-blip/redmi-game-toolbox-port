.class Landroidx/core/app/NotificationManagerCompat$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method static a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    invoke-static {p0, p1}, Landroidx/core/app/u0;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    return-void
.end method

.method static b(Landroid/app/NotificationManager;Landroid/app/NotificationChannelGroup;)V
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    invoke-static {p0, p1}, Landroidx/core/app/s0;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannelGroup;)V

    return-void
.end method

.method static c(Landroid/app/NotificationManager;Ljava/util/List;)V
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/NotificationManager;",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Landroidx/core/app/r0;->a(Landroid/app/NotificationManager;Ljava/util/List;)V

    return-void
.end method

.method static d(Landroid/app/NotificationManager;Ljava/util/List;)V
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/NotificationManager;",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Landroidx/core/app/t0;->a(Landroid/app/NotificationManager;Ljava/util/List;)V

    return-void
.end method

.method static e(Landroid/app/NotificationManager;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    invoke-static {p0, p1}, Landroidx/core/app/m0;->a(Landroid/app/NotificationManager;Ljava/lang/String;)V

    return-void
.end method

.method static f(Landroid/app/NotificationManager;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    invoke-static {p0, p1}, Landroidx/core/app/p0;->a(Landroid/app/NotificationManager;Ljava/lang/String;)V

    return-void
.end method

.method static g(Landroid/app/NotificationChannel;)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static h(Landroid/app/NotificationChannelGroup;)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static i(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    invoke-static {p0, p1}, Landroidx/core/app/q0;->a(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0
.end method

.method static j(Landroid/app/NotificationManager;)Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/NotificationManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroidx/core/app/o0;->a(Landroid/app/NotificationManager;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static k(Landroid/app/NotificationManager;)Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/NotificationManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroidx/core/app/n0;->a(Landroid/app/NotificationManager;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
