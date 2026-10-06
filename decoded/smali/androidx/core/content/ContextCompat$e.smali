.class Landroidx/core/content/ContextCompat$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1c
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/ContextCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# direct methods
.method static a(Landroid/content/Context;)Ljava/util/concurrent/Executor;
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    invoke-static {p0}, Landroidx/core/content/h;->a(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method
