.class public final Landroidx/core/view/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/p0$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/PointerIcon;


# direct methods
.method private constructor <init>(Landroid/view/PointerIcon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/p0;->a:Landroid/view/PointerIcon;

    return-void
.end method

.method public static b(Landroid/content/Context;I)Landroidx/core/view/p0;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/core/view/p0;

    invoke-static {p0, p1}, Landroidx/core/view/p0$a;->b(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/core/view/p0;-><init>(Landroid/view/PointerIcon;)V

    return-object v0

    :cond_0
    new-instance p0, Landroidx/core/view/p0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/core/view/p0;-><init>(Landroid/view/PointerIcon;)V

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->c:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/view/p0;->a:Landroid/view/PointerIcon;

    return-object v0
.end method
