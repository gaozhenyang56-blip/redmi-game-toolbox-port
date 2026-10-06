.class Landroidx/transition/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static a(Landroid/view/ViewGroup;)Landroidx/transition/w;
    .locals 1
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroidx/transition/v;

    invoke-direct {v0, p0}, Landroidx/transition/v;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method private static b(Landroid/view/ViewGroup;Z)V
    .locals 1
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x12
    .end annotation

    sget-boolean v0, Landroidx/transition/y;->a:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p0, p1}, Landroidx/transition/x;->a(Landroid/view/ViewGroup;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    sput-boolean p0, Landroidx/transition/y;->a:Z

    :cond_0
    :goto_0
    return-void
.end method

.method static c(Landroid/view/ViewGroup;Z)V
    .locals 2
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroidx/transition/x;->a(Landroid/view/ViewGroup;Z)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroidx/transition/y;->b(Landroid/view/ViewGroup;Z)V

    :goto_0
    return-void
.end method
