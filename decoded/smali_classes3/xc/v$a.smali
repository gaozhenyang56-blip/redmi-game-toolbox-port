.class public final Lxc/v$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxc/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lbk/g;)V
    .locals 0

    invoke-direct {p0}, Lxc/v$a;-><init>()V

    return-void
.end method

.method private final g(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "configuration.toString()"

    invoke-static {p1, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "mWindowingMode=freeform"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v1, v0, v2, v3}, Ljk/f;->x(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    move v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "SplitSpaceUtils"

    const-string v2, "isInFreeform: "

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v0
.end method

.method private final h(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0, p1}, Lxc/v$a;->f(Landroid/app/Activity;)I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p2, p1, v0, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1, p2}, Lxc/v$a;->h(Landroid/app/Activity;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lx4/t;->F(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lx4/y;->k()Z

    move-result v1

    const v2, 0x7f0708dc

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const v2, 0x7f070b0e

    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p2, p1, v0, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    return-void
.end method

.method public final c(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1, p2}, Lxc/v$a;->b(Landroid/app/Activity;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final d(Lmiuix/appcompat/app/AppCompatActivity;Landroid/view/View;)V
    .locals 2
    .param p1    # Lmiuix/appcompat/app/AppCompatActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lbl/l;->a()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getExtraHorizontalPadding()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0708dc

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p2, v0, p1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public final e(Lmiuix/appcompat/app/AppCompatActivity;Landroid/view/View;)V
    .locals 3
    .param p1    # Lmiuix/appcompat/app/AppCompatActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lbl/l;->a()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0714b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0714b3

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p2, v0, v1, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public final f(Landroid/app/Activity;)I
    .locals 6
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "activity.resources"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lx4/t;->F(Landroid/app/Activity;)Z

    move-result v2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-static {}, Lx4/t;->r()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    const p1, 0x7f0700df

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    move v0, v5

    :cond_3
    if-eqz v0, :cond_1

    const p1, 0x7f0700e3

    goto :goto_0

    :cond_4
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    const v4, 0x7f0708dc

    if-eqz v0, :cond_9

    if-eqz v2, :cond_6

    if-ne v3, v5, :cond_5

    goto :goto_1

    :cond_5
    const p1, 0x7f070b03

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1}, Lxc/v$a;->g(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    const p1, 0x7f0702e5

    goto :goto_0

    :cond_7
    if-ne v3, v5, :cond_8

    const p1, 0x7f070a9f

    goto :goto_0

    :cond_8
    const p1, 0x7f0704ef

    goto :goto_0

    :cond_9
    :goto_1
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_2
    return p1
.end method
